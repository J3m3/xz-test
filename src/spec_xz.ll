; ModuleID = 'spec_xz.c'
source_filename = "spec_xz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }

@.str.5 = private unnamed_addr constant [25 x i8] c"Memory allocation failed\00", align 1, !dbg !0
@.str.6 = private unnamed_addr constant [34 x i8] c"Specified preset is not supported\00", align 1, !dbg !7
@.str.7 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1, !dbg !12
@.str.8 = private unnamed_addr constant [66 x i8] c"Error initializing encoder with preset=%u check=%u: %s (code %u)\0A\00", align 1, !dbg !17
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"Decompress write error on %d: %s\0A\00", align 1, !dbg !22
@.str.10 = private unnamed_addr constant [23 x i8] c"Input not in XZ format\00", align 1, !dbg !24
@.str.11 = private unnamed_addr constant [32 x i8] c"Unsupported compression options\00", align 1, !dbg !29
@.str.12 = private unnamed_addr constant [27 x i8] c"Compressed data is corrupt\00", align 1, !dbg !34
@.str.13 = private unnamed_addr constant [50 x i8] c"Compressed data is truncated or otherwise corrupt\00", align 1, !dbg !39
@.str.14 = private unnamed_addr constant [20 x i8] c"Unknown return code\00", align 1, !dbg !44
@.str.15 = private unnamed_addr constant [43 x i8] c"Decompression decoder error: %s (code %u)\0A\00", align 1, !dbg !49
@.str.16 = private unnamed_addr constant [32 x i8] c"Compress write error on %d: %s\0A\00", align 1, !dbg !54
@.str.17 = private unnamed_addr constant [26 x i8] c"File size limits exceeded\00", align 1, !dbg !56
@.str.18 = private unnamed_addr constant [41 x i8] c"Compression encoder error: %s (code %u)\0A\00", align 1, !dbg !61
@.str.19 = private unnamed_addr constant [58 x i8] c"lzma_stream_decoder reports an unsupported check method: \00", align 1, !dbg !66
@.str.25 = private unnamed_addr constant [32 x i8] c"Unsupported decompression flags\00", align 1, !dbg !71
@.str.26 = private unnamed_addr constant [42 x i8] c"Error initializing decoder: %s (code %u)\0A\00", align 1, !dbg !73
@str = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@str.27 = private unnamed_addr constant [6 x i8] c"CRC64\00", align 1
@str.28 = private unnamed_addr constant [6 x i8] c"CRC32\00", align 1
@str.29 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@str.30 = private unnamed_addr constant [33 x i8] c"unknown!  This shouldn't happen.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @init_encoder(ptr noundef %strm, ptr noundef %options, i32 noundef %preset, i32 noundef %check) local_unnamed_addr #0 !dbg !176 {
entry:
  %filters = alloca [5 x %struct.lzma_filter], align 16, !DIAssignID !285
    #dbg_assign(i1 undef, !270, !DIExpression(), !285, ptr %filters, !DIExpression(), !286)
  %lzma_local_options = alloca %struct.lzma_options_lzma, align 8, !DIAssignID !287
    #dbg_assign(i1 undef, !282, !DIExpression(), !287, ptr %lzma_local_options, !DIExpression(), !286)
    #dbg_value(ptr %strm, !263, !DIExpression(), !286)
    #dbg_value(ptr %options, !264, !DIExpression(), !286)
    #dbg_value(i32 %preset, !265, !DIExpression(), !286)
    #dbg_value(i32 %check, !266, !DIExpression(), !286)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %filters) #8, !dbg !288
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %lzma_local_options) #8, !dbg !289
  %cmp = icmp eq ptr %options, null, !dbg !290
  %spec.store.select = select i1 %cmp, ptr %lzma_local_options, ptr %options, !dbg !292
    #dbg_value(ptr %spec.store.select, !264, !DIExpression(), !286)
  %cmp1 = icmp ugt i32 %check, 15, !dbg !293
  %spec.store.select23 = select i1 %cmp1, i32 4, i32 %check, !dbg !295
    #dbg_value(i32 %spec.store.select23, !266, !DIExpression(), !286)
  %call = call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull %spec.store.select, i32 noundef %preset) #8, !dbg !296
  store i64 33, ptr %filters, align 16, !dbg !297, !DIAssignID !298
    #dbg_assign(i64 33, !270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !298, ptr %filters, !DIExpression(), !286)
  %options5 = getelementptr inbounds i8, ptr %filters, i64 8, !dbg !299
  store ptr %spec.store.select, ptr %options5, align 8, !dbg !300, !DIAssignID !301
    #dbg_assign(ptr %spec.store.select, !270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !301, ptr %options5, !DIExpression(), !286)
  %arrayidx6 = getelementptr inbounds i8, ptr %filters, i64 16, !dbg !302
  store i64 -1, ptr %arrayidx6, align 16, !dbg !303, !DIAssignID !304
    #dbg_assign(i64 -1, !270, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !304, ptr %arrayidx6, !DIExpression(), !286)
  %call8 = call i32 @lzma_stream_encoder(ptr noundef %strm, ptr noundef nonnull %filters, i32 noundef %spec.store.select23) #8, !dbg !305
    #dbg_value(i32 %call8, !283, !DIExpression(), !286)
  switch i32 %call8, label %sw.default17 [
    i32 0, label %cleanup
    i32 3, label %sw.bb9
    i32 5, label %sw.epilog18
    i32 8, label %sw.bb16
  ], !dbg !306

sw.bb9:                                           ; preds = %entry
  %call10 = call i32 @lzma_get_check(ptr noundef %strm) #8, !dbg !307
    #dbg_value(ptr poison, !267, !DIExpression(), !286)
    #dbg_value(ptr poison, !267, !DIExpression(), !286)
    #dbg_value(ptr poison, !267, !DIExpression(), !286)
    #dbg_value(ptr poison, !267, !DIExpression(), !286)
    #dbg_value(ptr poison, !267, !DIExpression(), !286)
  br label %sw.epilog18, !dbg !309

sw.bb16:                                          ; preds = %entry
    #dbg_value(ptr @.str.6, !267, !DIExpression(), !286)
  br label %sw.epilog18, !dbg !311

sw.default17:                                     ; preds = %entry
    #dbg_value(ptr @.str.7, !267, !DIExpression(), !286)
  br label %sw.epilog18, !dbg !312

sw.epilog18:                                      ; preds = %entry, %sw.bb9, %sw.default17, %sw.bb16
  %msg.0 = phi ptr [ @.str.7, %sw.default17 ], [ @.str.6, %sw.bb16 ], [ @.str.5, %sw.bb9 ], [ @.str.5, %entry ], !dbg !313
    #dbg_value(ptr %msg.0, !267, !DIExpression(), !286)
  %call19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %preset, i32 noundef %spec.store.select23, ptr noundef nonnull %msg.0, i32 noundef %call8), !dbg !314
  br label %cleanup, !dbg !315

cleanup:                                          ; preds = %entry, %sw.epilog18
  %retval.0 = phi i1 [ false, %sw.epilog18 ], [ true, %entry ], !dbg !286
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lzma_local_options) #8, !dbg !316
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters) #8, !dbg !316
  ret i1 %retval.0, !dbg !316
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !317 zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !321 i32 @lzma_stream_encoder(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !327 i32 @lzma_get_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !332 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @uncompressStream(i32 noundef %zStream, i32 noundef %stream) local_unnamed_addr #0 !dbg !338 {
entry:
  %strm = alloca %struct.lzma_stream, align 8, !DIAssignID !360
    #dbg_assign(i1 undef, !344, !DIExpression(), !360, ptr %strm, !DIExpression(), !361)
  %in = alloca [8192 x i8], align 16, !DIAssignID !362
    #dbg_assign(i1 undef, !347, !DIExpression(), !362, ptr %in, !DIExpression(), !361)
  %out = alloca [8192 x i8], align 16, !DIAssignID !363
    #dbg_assign(i1 undef, !351, !DIExpression(), !363, ptr %out, !DIExpression(), !361)
    #dbg_value(i32 %zStream, !342, !DIExpression(), !361)
    #dbg_value(i32 %stream, !343, !DIExpression(), !361)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %strm) #8, !dbg !364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %strm, i8 0, i64 136, i1 false), !dbg !365, !DIAssignID !366
    #dbg_assign(i8 0, !344, !DIExpression(), !366, ptr %strm, !DIExpression(), !361)
    #dbg_value(i32 0, !345, !DIExpression(), !361)
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %in) #8, !dbg !367
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %out) #8, !dbg !368
    #dbg_value(ptr %strm, !369, !DIExpression(), !376)
  %call.i = call i32 @lzma_stream_decoder(ptr noundef nonnull %strm, i64 noundef -1, i32 noundef 10) #8, !dbg !379
    #dbg_value(i32 %call.i, !375, !DIExpression(), !376)
  switch i32 %call.i, label %sw.default15.i [
    i32 0, label %if.end
    i32 3, label %sw.bb1.i
    i32 5, label %init_decoder.exit
    i32 8, label %sw.bb14.i
  ], !dbg !380

sw.bb1.i:                                         ; preds = %entry
  %call2.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19), !dbg !381
  %call3.i = call i32 @lzma_get_check(ptr noundef nonnull %strm) #8, !dbg !383
  switch i32 %call3.i, label %sw.default.i [
    i32 0, label %if.end.sink.split
    i32 1, label %sw.bb6.i
    i32 4, label %sw.bb8.i
    i32 10, label %sw.bb10.i
  ], !dbg !384

sw.bb6.i:                                         ; preds = %sw.bb1.i
  br label %if.end.sink.split, !dbg !385

sw.bb8.i:                                         ; preds = %sw.bb1.i
  br label %if.end.sink.split, !dbg !387

sw.bb10.i:                                        ; preds = %sw.bb1.i
  br label %if.end.sink.split, !dbg !388

sw.default.i:                                     ; preds = %sw.bb1.i
  br label %if.end.sink.split, !dbg !389

sw.bb14.i:                                        ; preds = %entry
    #dbg_value(ptr @.str.25, !374, !DIExpression(), !376)
  br label %init_decoder.exit, !dbg !390

sw.default15.i:                                   ; preds = %entry
    #dbg_value(ptr @.str.14, !374, !DIExpression(), !376)
  br label %init_decoder.exit, !dbg !391

init_decoder.exit:                                ; preds = %entry, %sw.bb14.i, %sw.default15.i
  %msg.0.i = phi ptr [ @.str.14, %sw.default15.i ], [ @.str.25, %sw.bb14.i ], [ @.str.5, %entry ], !dbg !392
    #dbg_value(ptr %msg.0.i, !374, !DIExpression(), !376)
  %call17.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %msg.0.i, i32 noundef %call.i), !dbg !393
  br label %cleanup47, !dbg !394

if.end.sink.split:                                ; preds = %sw.bb1.i, %sw.bb6.i, %sw.bb8.i, %sw.bb10.i, %sw.default.i
  %str.30.sink = phi ptr [ @str.30, %sw.default.i ], [ @str, %sw.bb10.i ], [ @str.27, %sw.bb8.i ], [ @str.28, %sw.bb6.i ], [ @str.29, %sw.bb1.i ]
  %puts24.i = call i32 @puts(ptr nonnull dereferenceable(1) %str.30.sink), !dbg !395
  br label %if.end, !dbg !396

if.end:                                           ; preds = %if.end.sink.split, %entry
    #dbg_assign(ptr null, !344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !397, ptr %strm, !DIExpression(), !361)
  %avail_in = getelementptr inbounds i8, ptr %strm, i64 8, !dbg !396
    #dbg_assign(i64 0, !344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !397, ptr %avail_in, !DIExpression(), !361)
  %next_out = getelementptr inbounds i8, ptr %strm, i64 24, !dbg !398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %strm, i8 0, i64 16, i1 false), !dbg !399, !DIAssignID !397
  store ptr %out, ptr %next_out, align 8, !dbg !400, !DIAssignID !401
    #dbg_assign(ptr %out, !344, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !401, ptr %next_out, !DIExpression(), !361)
  %avail_out = getelementptr inbounds i8, ptr %strm, i64 32, !dbg !402
  store i64 8192, ptr %avail_out, align 8, !dbg !403, !DIAssignID !404
    #dbg_assign(i64 8192, !344, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !404, ptr %avail_out, !DIExpression(), !361)
  br label %while.cond, !dbg !405

while.condthread-pre-split:                       ; preds = %if.end32
  %.pr = load i64, ptr %avail_in, align 8, !dbg !406
  br label %while.cond, !dbg !406

while.cond:                                       ; preds = %while.condthread-pre-split, %if.end
  %0 = phi i64 [ %.pr, %while.condthread-pre-split ], [ 0, %if.end ], !dbg !406
  %action.0 = phi i32 [ %action.1, %while.condthread-pre-split ], [ 0, %if.end ], !dbg !408
    #dbg_value(i32 %action.0, !345, !DIExpression(), !361)
  %cmp = icmp eq i64 %0, 0, !dbg !409
  br i1 %cmp, label %land.lhs.true, label %if.end13, !dbg !410

land.lhs.true:                                    ; preds = %while.cond
  %1 = load ptr, ptr @spec_fd, align 8, !dbg !411
  %call2 = call i32 @spec_mem_feof(ptr noundef %1, i32 noundef 3, i32 noundef %zStream) #8, !dbg !411
  %tobool.not = icmp eq i32 %call2, 0, !dbg !411
  br i1 %tobool.not, label %if.then3, label %if.end13, !dbg !412

if.then3:                                         ; preds = %land.lhs.true
  store ptr %in, ptr %strm, align 8, !dbg !413, !DIAssignID !415
    #dbg_assign(ptr %in, !344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !415, ptr %strm, !DIExpression(), !361)
  %2 = load ptr, ptr @spec_fd, align 8, !dbg !416
  %call7 = call i64 @spec_mem_fread(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %in, i64 noundef 1, i32 noundef 8192, i32 noundef %zStream) #8, !dbg !416
  store i64 %call7, ptr %avail_in, align 8, !dbg !417, !DIAssignID !418
    #dbg_assign(i64 %call7, !344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !418, ptr %avail_in, !DIExpression(), !361)
  %3 = load ptr, ptr @spec_fd, align 8, !dbg !419
  %call9 = call i32 @spec_mem_feof(ptr noundef %3, i32 noundef 3, i32 noundef %zStream) #8, !dbg !419
  %tobool10.not = icmp eq i32 %call9, 0, !dbg !419
  %spec.select = select i1 %tobool10.not, i32 %action.0, i32 3, !dbg !421
  br label %if.end13, !dbg !421

if.end13:                                         ; preds = %if.then3, %land.lhs.true, %while.cond
  %action.1 = phi i32 [ %action.0, %land.lhs.true ], [ %action.0, %while.cond ], [ %spec.select, %if.then3 ], !dbg !361
    #dbg_value(i32 %action.1, !345, !DIExpression(), !361)
  %call14 = call i32 @lzma_code(ptr noundef nonnull %strm, i32 noundef %action.1) #8, !dbg !422
    #dbg_value(i32 %call14, !352, !DIExpression(), !423)
  %4 = load i64, ptr %avail_out, align 8, !dbg !424
  %cmp16 = icmp eq i64 %4, 0, !dbg !425
  %cmp17 = icmp eq i32 %call14, 1
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp17, !dbg !426
  br i1 %or.cond, label %if.then18, label %if.end32, !dbg !426

if.then18:                                        ; preds = %if.end13
  %sub = sub i64 8192, %4, !dbg !427
    #dbg_value(i64 %sub, !354, !DIExpression(), !428)
  %5 = load ptr, ptr @spec_fd, align 8, !dbg !429
  %conv = trunc i64 %sub to i32, !dbg !429
  %call21 = call i64 @spec_mem_fwrite(ptr noundef %5, i32 noundef 3, ptr noundef nonnull %out, i64 noundef 1, i32 noundef %conv, i32 noundef %stream) #8, !dbg !429
  %cmp22.not = icmp eq i64 %call21, %sub, !dbg !431
  br i1 %cmp22.not, label %cleanup.thread, label %cleanup, !dbg !432

cleanup.thread:                                   ; preds = %if.then18
  store ptr %out, ptr %next_out, align 8, !dbg !433, !DIAssignID !434
    #dbg_assign(ptr %out, !344, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !434, ptr %next_out, !DIExpression(), !361)
  store i64 8192, ptr %avail_out, align 8, !dbg !435, !DIAssignID !436
    #dbg_assign(i64 8192, !344, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !436, ptr %avail_out, !DIExpression(), !361)
  br label %if.end32

cleanup:                                          ; preds = %if.then18
  %call25 = tail call ptr @__errno_location() #9, !dbg !437
  %6 = load i32, ptr %call25, align 4, !dbg !437
  %call26 = call ptr @strerror(i32 noundef %6) #8, !dbg !439
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %stream, ptr noundef %call26), !dbg !440
  br label %cleanup47

if.end32:                                         ; preds = %cleanup.thread, %if.end13
  switch i32 %call14, label %sw.epilog [
    i32 0, label %while.condthread-pre-split
    i32 1, label %sw.bb
    i32 5, label %sw.epilog.loopexit
    i32 7, label %sw.epilog.loopexit69
    i32 8, label %sw.epilog.loopexit78
    i32 9, label %sw.epilog.loopexit87
    i32 10, label %sw.epilog.loopexit96
  ], !dbg !441, !llvm.loop !442

sw.bb:                                            ; preds = %if.end32
  call void @lzma_end(ptr noundef nonnull %strm) #8, !dbg !444
  br label %cleanup47, !dbg !446

sw.epilog.loopexit:                               ; preds = %if.end32
  br label %sw.epilog, !dbg !447

sw.epilog.loopexit69:                             ; preds = %if.end32
  br label %sw.epilog, !dbg !447

sw.epilog.loopexit78:                             ; preds = %if.end32
  br label %sw.epilog, !dbg !447

sw.epilog.loopexit87:                             ; preds = %if.end32
  br label %sw.epilog, !dbg !447

sw.epilog.loopexit96:                             ; preds = %if.end32
  br label %sw.epilog, !dbg !447

sw.epilog:                                        ; preds = %if.end32, %sw.epilog.loopexit96, %sw.epilog.loopexit87, %sw.epilog.loopexit78, %sw.epilog.loopexit69, %sw.epilog.loopexit
  %msg.0 = phi ptr [ @.str.5, %sw.epilog.loopexit ], [ @.str.10, %sw.epilog.loopexit69 ], [ @.str.11, %sw.epilog.loopexit78 ], [ @.str.12, %sw.epilog.loopexit87 ], [ @.str.13, %sw.epilog.loopexit96 ], [ @.str.14, %if.end32 ], !dbg !448
    #dbg_value(ptr %msg.0, !357, !DIExpression(), !449)
  %call41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %msg.0, i32 noundef %call14), !dbg !447
  br label %cleanup47, !dbg !450

cleanup47:                                        ; preds = %cleanup, %init_decoder.exit, %sw.epilog, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %out) #8, !dbg !451
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %in) #8, !dbg !451
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %strm) #8, !dbg !451
  ret void, !dbg !451
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare !dbg !452 i32 @spec_mem_feof(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !470 i64 @spec_mem_fread(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !473 i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !476 i64 @spec_mem_fwrite(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !477 ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !482 ptr @__errno_location() local_unnamed_addr #6

declare !dbg !487 void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @compressStream(i32 noundef %stream, i32 noundef %zStream, i32 noundef %preset) local_unnamed_addr #0 !dbg !490 {
entry:
  %filters.i = alloca [5 x %struct.lzma_filter], align 16, !DIAssignID !510
    #dbg_assign(i1 undef, !270, !DIExpression(), !510, ptr %filters.i, !DIExpression(), !511)
  %lzma_local_options.i = alloca %struct.lzma_options_lzma, align 8, !DIAssignID !514
  %strm = alloca %struct.lzma_stream, align 8, !DIAssignID !515
    #dbg_assign(i1 undef, !497, !DIExpression(), !515, ptr %strm, !DIExpression(), !516)
  %in = alloca [8192 x i8], align 16, !DIAssignID !517
    #dbg_assign(i1 undef, !499, !DIExpression(), !517, ptr %in, !DIExpression(), !516)
  %out = alloca [8192 x i8], align 16, !DIAssignID !518
    #dbg_assign(i1 undef, !500, !DIExpression(), !518, ptr %out, !DIExpression(), !516)
    #dbg_value(i32 %stream, !494, !DIExpression(), !516)
    #dbg_value(i32 %zStream, !495, !DIExpression(), !516)
    #dbg_value(i32 %preset, !496, !DIExpression(), !516)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %strm) #8, !dbg !519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %strm, i8 0, i64 136, i1 false), !dbg !520, !DIAssignID !521
    #dbg_assign(i8 0, !497, !DIExpression(), !521, ptr %strm, !DIExpression(), !516)
    #dbg_value(i32 0, !498, !DIExpression(), !516)
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %in) #8, !dbg !522
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %out) #8, !dbg !523
  %tobool.not = icmp sgt i32 %preset, -1, !dbg !524
  %cond = select i1 %tobool.not, i32 4, i32 10, !dbg !524
    #dbg_value(i32 %cond, !501, !DIExpression(), !516)
    #dbg_assign(i1 undef, !282, !DIExpression(), !514, ptr %lzma_local_options.i, !DIExpression(), !511)
    #dbg_value(ptr %strm, !263, !DIExpression(), !511)
    #dbg_value(ptr null, !264, !DIExpression(), !511)
    #dbg_value(i32 %preset, !265, !DIExpression(), !511)
    #dbg_value(i32 %cond, !266, !DIExpression(), !511)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %filters.i) #8, !dbg !525
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %lzma_local_options.i) #8, !dbg !526
    #dbg_value(ptr %lzma_local_options.i, !264, !DIExpression(), !511)
    #dbg_value(i32 %cond, !266, !DIExpression(), !511)
  %call.i = call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull %lzma_local_options.i, i32 noundef %preset) #8, !dbg !527
  store i64 33, ptr %filters.i, align 16, !dbg !528, !DIAssignID !529
    #dbg_assign(i64 33, !270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !529, ptr %filters.i, !DIExpression(), !511)
  %options5.i = getelementptr inbounds i8, ptr %filters.i, i64 8, !dbg !530
  store ptr %lzma_local_options.i, ptr %options5.i, align 8, !dbg !531, !DIAssignID !532
    #dbg_assign(ptr %lzma_local_options.i, !270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !532, ptr %options5.i, !DIExpression(), !511)
  %arrayidx6.i = getelementptr inbounds i8, ptr %filters.i, i64 16, !dbg !533
  store i64 -1, ptr %arrayidx6.i, align 16, !dbg !534, !DIAssignID !535
    #dbg_assign(i64 -1, !270, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !535, ptr %arrayidx6.i, !DIExpression(), !511)
  %call8.i = call i32 @lzma_stream_encoder(ptr noundef nonnull %strm, ptr noundef nonnull %filters.i, i32 noundef %cond) #8, !dbg !536
    #dbg_value(i32 %call8.i, !283, !DIExpression(), !511)
  switch i32 %call8.i, label %sw.default17.i [
    i32 0, label %if.end
    i32 3, label %sw.bb9.i
    i32 5, label %init_encoder.exit
    i32 8, label %sw.bb16.i
  ], !dbg !537

sw.bb9.i:                                         ; preds = %entry
  %call10.i = call i32 @lzma_get_check(ptr noundef nonnull %strm) #8, !dbg !538
    #dbg_value(ptr poison, !267, !DIExpression(), !511)
    #dbg_value(ptr poison, !267, !DIExpression(), !511)
    #dbg_value(ptr poison, !267, !DIExpression(), !511)
    #dbg_value(ptr poison, !267, !DIExpression(), !511)
    #dbg_value(ptr poison, !267, !DIExpression(), !511)
  br label %init_encoder.exit, !dbg !539

sw.bb16.i:                                        ; preds = %entry
    #dbg_value(ptr @.str.6, !267, !DIExpression(), !511)
  br label %init_encoder.exit, !dbg !540

sw.default17.i:                                   ; preds = %entry
    #dbg_value(ptr @.str.7, !267, !DIExpression(), !511)
  br label %init_encoder.exit, !dbg !541

init_encoder.exit:                                ; preds = %entry, %sw.bb9.i, %sw.bb16.i, %sw.default17.i
  %msg.0.i = phi ptr [ @.str.7, %sw.default17.i ], [ @.str.6, %sw.bb16.i ], [ @.str.5, %sw.bb9.i ], [ @.str.5, %entry ], !dbg !542
    #dbg_value(ptr %msg.0.i, !267, !DIExpression(), !511)
  %call19.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %preset, i32 noundef %cond, ptr noundef nonnull %msg.0.i, i32 noundef %call8.i), !dbg !543
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lzma_local_options.i) #8, !dbg !544
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters.i) #8, !dbg !544
  br label %cleanup45, !dbg !545

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lzma_local_options.i) #8, !dbg !544
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters.i) #8, !dbg !544
    #dbg_assign(ptr null, !497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !546, ptr %strm, !DIExpression(), !516)
  %avail_in = getelementptr inbounds i8, ptr %strm, i64 8, !dbg !547
    #dbg_assign(i64 0, !497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !546, ptr %avail_in, !DIExpression(), !516)
  %next_out = getelementptr inbounds i8, ptr %strm, i64 24, !dbg !548
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %strm, i8 0, i64 16, i1 false), !dbg !549, !DIAssignID !546
  store ptr %out, ptr %next_out, align 8, !dbg !550, !DIAssignID !551
    #dbg_assign(ptr %out, !497, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !551, ptr %next_out, !DIExpression(), !516)
  %avail_out = getelementptr inbounds i8, ptr %strm, i64 32, !dbg !552
  store i64 8192, ptr %avail_out, align 8, !dbg !553, !DIAssignID !554
    #dbg_assign(i64 8192, !497, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !554, ptr %avail_out, !DIExpression(), !516)
  br label %while.cond, !dbg !555

while.condthread-pre-split:                       ; preds = %if.end33
  %.pr = load i64, ptr %avail_in, align 8, !dbg !556
  br label %while.cond, !dbg !556

while.cond:                                       ; preds = %while.condthread-pre-split, %if.end
  %0 = phi i64 [ %.pr, %while.condthread-pre-split ], [ 0, %if.end ], !dbg !556
  %action.0 = phi i32 [ %action.1, %while.condthread-pre-split ], [ 0, %if.end ], !dbg !558
    #dbg_value(i32 %action.0, !498, !DIExpression(), !516)
  %cmp = icmp eq i64 %0, 0, !dbg !559
  br i1 %cmp, label %land.lhs.true, label %if.end14, !dbg !560

land.lhs.true:                                    ; preds = %while.cond
  %1 = load ptr, ptr @spec_fd, align 8, !dbg !561
  %call2 = call i32 @spec_mem_feof(ptr noundef %1, i32 noundef 3, i32 noundef %stream) #8, !dbg !561
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !561
  br i1 %tobool3.not, label %if.then4, label %if.end14, !dbg !562

if.then4:                                         ; preds = %land.lhs.true
  store ptr %in, ptr %strm, align 8, !dbg !563, !DIAssignID !565
    #dbg_assign(ptr %in, !497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !565, ptr %strm, !DIExpression(), !516)
  %2 = load ptr, ptr @spec_fd, align 8, !dbg !566
  %call8 = call i64 @spec_mem_fread(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %in, i64 noundef 1, i32 noundef 8192, i32 noundef %stream) #8, !dbg !566
  store i64 %call8, ptr %avail_in, align 8, !dbg !567, !DIAssignID !568
    #dbg_assign(i64 %call8, !497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !568, ptr %avail_in, !DIExpression(), !516)
  %3 = load ptr, ptr @spec_fd, align 8, !dbg !569
  %call10 = call i32 @spec_mem_feof(ptr noundef %3, i32 noundef 3, i32 noundef %stream) #8, !dbg !569
  %tobool11.not = icmp eq i32 %call10, 0, !dbg !569
  %spec.select = select i1 %tobool11.not, i32 %action.0, i32 3, !dbg !571
  br label %if.end14, !dbg !571

if.end14:                                         ; preds = %if.then4, %land.lhs.true, %while.cond
  %action.1 = phi i32 [ %action.0, %land.lhs.true ], [ %action.0, %while.cond ], [ %spec.select, %if.then4 ], !dbg !516
    #dbg_value(i32 %action.1, !498, !DIExpression(), !516)
  %call15 = call i32 @lzma_code(ptr noundef nonnull %strm, i32 noundef %action.1) #8, !dbg !572
    #dbg_value(i32 %call15, !502, !DIExpression(), !573)
  %4 = load i64, ptr %avail_out, align 8, !dbg !574
  %cmp17 = icmp eq i64 %4, 0, !dbg !575
  %cmp18 = icmp eq i32 %call15, 1
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp18, !dbg !576
  br i1 %or.cond, label %if.then19, label %if.end33, !dbg !576

if.then19:                                        ; preds = %if.end14
  %sub = sub i64 8192, %4, !dbg !577
    #dbg_value(i64 %sub, !504, !DIExpression(), !578)
  %5 = load ptr, ptr @spec_fd, align 8, !dbg !579
  %conv = trunc i64 %sub to i32, !dbg !579
  %call22 = call i64 @spec_mem_fwrite(ptr noundef %5, i32 noundef 3, ptr noundef nonnull %out, i64 noundef 1, i32 noundef %conv, i32 noundef %zStream) #8, !dbg !579
  %cmp23.not = icmp eq i64 %call22, %sub, !dbg !581
  br i1 %cmp23.not, label %cleanup.thread, label %cleanup, !dbg !582

cleanup.thread:                                   ; preds = %if.then19
  store ptr %out, ptr %next_out, align 8, !dbg !583, !DIAssignID !584
    #dbg_assign(ptr %out, !497, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !584, ptr %next_out, !DIExpression(), !516)
  store i64 8192, ptr %avail_out, align 8, !dbg !585, !DIAssignID !586
    #dbg_assign(i64 8192, !497, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !586, ptr %avail_out, !DIExpression(), !516)
  br label %if.end33

cleanup:                                          ; preds = %if.then19
  %call26 = tail call ptr @__errno_location() #9, !dbg !587
  %6 = load i32, ptr %call26, align 4, !dbg !587
  %call27 = call ptr @strerror(i32 noundef %6) #8, !dbg !589
  %call28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %zStream, ptr noundef %call27), !dbg !590
  br label %cleanup45

if.end33:                                         ; preds = %cleanup.thread, %if.end14
  switch i32 %call15, label %sw.epilog [
    i32 0, label %while.condthread-pre-split
    i32 1, label %sw.bb
    i32 5, label %sw.epilog.loopexit
    i32 9, label %sw.epilog.loopexit84
  ], !dbg !591, !llvm.loop !592

sw.bb:                                            ; preds = %if.end33
  call void @lzma_end(ptr noundef nonnull %strm) #8, !dbg !594
  br label %cleanup45, !dbg !596

sw.epilog.loopexit:                               ; preds = %if.end33
  br label %sw.epilog, !dbg !597

sw.epilog.loopexit84:                             ; preds = %if.end33
  br label %sw.epilog, !dbg !597

sw.epilog:                                        ; preds = %if.end33, %sw.epilog.loopexit84, %sw.epilog.loopexit
  %msg.0 = phi ptr [ @.str.5, %sw.epilog.loopexit ], [ @.str.17, %sw.epilog.loopexit84 ], [ @.str.14, %if.end33 ], !dbg !598
    #dbg_value(ptr %msg.0, !507, !DIExpression(), !599)
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %msg.0, i32 noundef %call15), !dbg !597
  br label %cleanup45, !dbg !600

cleanup45:                                        ; preds = %cleanup, %init_encoder.exit, %sw.epilog, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %out) #8, !dbg !601
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %in) #8, !dbg !601
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %strm) #8, !dbg !601
  ret void, !dbg !601
}

declare !dbg !602 i32 @lzma_stream_decoder(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!78}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "spec_xz.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "f22eda92b420f180986f2d97b8a85126")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 25)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 34)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 14)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 66)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !9, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 23)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 32)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 27)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 50)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 189, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 20)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 43)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !31, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 264, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 26)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 271, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 41)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 58)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !31, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 42)
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !79, retainedTypes: !124, globals: !129, splitDebugInlining: false, nameTableKind: None)
!79 = !{!80, !85, !90, !97, !104, !118}
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 44, baseType: !82, size: 32, elements: !83)
!81 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!82 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!83 = !{!84}
!84 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 138, baseType: !82, size: 32, elements: !87)
!86 = !DIFile(filename: "liblzma/api/lzma/lzma.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!89 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 58, baseType: !82, size: 32, elements: !91)
!91 = !{!92, !93, !94, !95, !96}
!92 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!93 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!94 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!95 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!96 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !98, line: 27, baseType: !82, size: 32, elements: !99)
!98 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!99 = !{!100, !101, !102, !103}
!100 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!101 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!102 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!103 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 57, baseType: !82, size: 32, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!106 = !DIEnumerator(name: "LZMA_OK", value: 0)
!107 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!108 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!109 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!110 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!111 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!112 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!113 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!114 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!115 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!116 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!117 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 250, baseType: !82, size: 32, elements: !119)
!119 = !{!120, !121, !122, !123}
!120 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!121 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!122 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!123 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!124 = !{!125, !82, !126}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 18, baseType: !128)
!127 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!128 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!129 = !{!130, !135, !137, !139, !144, !0, !7, !12, !17, !22, !24, !29, !34, !39, !44, !49, !54, !56, !61, !66, !149, !154, !159, !161, !166, !71, !73}
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 31)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !31, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !31, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 33)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 47)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 6)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 7)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !156, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 8)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !9, isLocal: true, isDefinition: true)
!168 = !{i32 7, !"Dwarf Version", i32 5}
!169 = !{i32 2, !"Debug Info Version", i32 3}
!170 = !{i32 1, !"wchar_size", i32 4}
!171 = !{i32 8, !"PIC Level", i32 2}
!172 = !{i32 7, !"PIE Level", i32 2}
!173 = !{i32 7, !"uwtable", i32 2}
!174 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!175 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!176 = distinct !DISubprogram(name: "init_encoder", scope: !2, file: !2, line: 68, type: !177, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !262)
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !180, !229, !234, !261}
!179 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !81, line: 490, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 453, size: 1088, elements: !183)
!183 = !{!184, !192, !193, !196, !198, !199, !200, !214, !218, !219, !220, !221, !222, !223, !224, !225, !226, !228}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !182, file: !81, line: 454, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !188, line: 24, baseType: !189)
!188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !190, line: 38, baseType: !191)
!190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!191 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !182, file: !81, line: 455, baseType: !126, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !182, file: !81, line: 456, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !188, line: 27, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !190, line: 45, baseType: !128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !182, file: !81, line: 458, baseType: !197, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !182, file: !81, line: 459, baseType: !126, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !182, file: !81, line: 460, baseType: !194, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !182, file: !81, line: 468, baseType: !201, size: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !81, line: 403, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 341, size: 192, elements: !204)
!204 = !{!205, !209, !213}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !203, file: !81, line: 376, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!125, !125, !126, !126}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !203, file: !81, line: 390, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !125, !125}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !203, file: !81, line: 401, baseType: !125, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !182, file: !81, line: 471, baseType: !215, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !81, line: 411, baseType: !217)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !81, line: 411, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !182, file: !81, line: 479, baseType: !125, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !182, file: !81, line: 480, baseType: !125, size: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !182, file: !81, line: 481, baseType: !125, size: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !182, file: !81, line: 482, baseType: !125, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !182, file: !81, line: 483, baseType: !194, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !182, file: !81, line: 484, baseType: !194, size: 64, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !182, file: !81, line: 485, baseType: !126, size: 64, offset: 896)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !182, file: !81, line: 486, baseType: !126, size: 64, offset: 960)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !182, file: !81, line: 487, baseType: !227, size: 32, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !81, line: 46, baseType: !80)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !182, file: !81, line: 488, baseType: !227, size: 32, offset: 1056)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !86, line: 399, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 185, size: 896, elements: !232)
!232 = !{!233, !236, !237, !238, !239, !240, !241, !243, !244, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !231, file: !86, line: 217, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !188, line: 26, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !190, line: 42, baseType: !82)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !231, file: !86, line: 240, baseType: !185, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !231, file: !86, line: 254, baseType: !234, size: 32, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !231, file: !86, line: 281, baseType: !234, size: 32, offset: 160)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !231, file: !86, line: 293, baseType: !234, size: 32, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !231, file: !86, line: 316, baseType: !234, size: 32, offset: 224)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !231, file: !86, line: 322, baseType: !242, size: 32, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !86, line: 155, baseType: !85)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !231, file: !86, line: 342, baseType: !234, size: 32, offset: 288)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !231, file: !86, line: 345, baseType: !245, size: 32, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !86, line: 111, baseType: !90)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !231, file: !86, line: 375, baseType: !234, size: 32, offset: 352)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !231, file: !86, line: 384, baseType: !234, size: 32, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !231, file: !86, line: 385, baseType: !234, size: 32, offset: 416)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !231, file: !86, line: 386, baseType: !234, size: 32, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !231, file: !86, line: 387, baseType: !234, size: 32, offset: 480)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !231, file: !86, line: 388, baseType: !234, size: 32, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !231, file: !86, line: 389, baseType: !234, size: 32, offset: 544)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !231, file: !86, line: 390, baseType: !234, size: 32, offset: 576)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !231, file: !86, line: 391, baseType: !234, size: 32, offset: 608)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !231, file: !86, line: 392, baseType: !227, size: 32, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !231, file: !86, line: 393, baseType: !227, size: 32, offset: 672)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !231, file: !86, line: 394, baseType: !227, size: 32, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !231, file: !86, line: 395, baseType: !227, size: 32, offset: 736)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !231, file: !86, line: 396, baseType: !125, size: 64, offset: 768)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !231, file: !86, line: 397, baseType: !125, size: 64, offset: 832)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !98, line: 55, baseType: !97)
!262 = !{!263, !264, !265, !266, !267, !270, !282, !283}
!263 = !DILocalVariable(name: "strm", arg: 1, scope: !176, file: !2, line: 68, type: !180)
!264 = !DILocalVariable(name: "options", arg: 2, scope: !176, file: !2, line: 68, type: !229)
!265 = !DILocalVariable(name: "preset", arg: 3, scope: !176, file: !2, line: 68, type: !234)
!266 = !DILocalVariable(name: "check", arg: 4, scope: !176, file: !2, line: 68, type: !261)
!267 = !DILocalVariable(name: "msg", scope: !176, file: !2, line: 69, type: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!270 = !DILocalVariable(name: "filters", scope: !176, file: !2, line: 70, type: !271)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 640, elements: !280)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !273, line: 65, baseType: !274)
!273 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !273, line: 43, size: 128, elements: !275)
!275 = !{!276, !279}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !274, file: !273, line: 54, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !278, line: 63, baseType: !194)
!278 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!279 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !274, file: !273, line: 63, baseType: !125, size: 64, offset: 64)
!280 = !{!281}
!281 = !DISubrange(count: 5)
!282 = !DILocalVariable(name: "lzma_local_options", scope: !176, file: !2, line: 71, type: !230)
!283 = !DILocalVariable(name: "rc", scope: !176, file: !2, line: 83, type: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !81, line: 237, baseType: !104)
!285 = distinct !DIAssignID()
!286 = !DILocation(line: 0, scope: !176)
!287 = distinct !DIAssignID()
!288 = !DILocation(line: 70, column: 5, scope: !176)
!289 = !DILocation(line: 71, column: 5, scope: !176)
!290 = !DILocation(line: 72, column: 17, scope: !291)
!291 = distinct !DILexicalBlock(scope: !176, file: !2, line: 72, column: 9)
!292 = !DILocation(line: 72, column: 9, scope: !176)
!293 = !DILocation(line: 75, column: 29, scope: !294)
!294 = distinct !DILexicalBlock(scope: !176, file: !2, line: 75, column: 9)
!295 = !DILocation(line: 75, column: 9, scope: !176)
!296 = !DILocation(line: 78, column: 5, scope: !176)
!297 = !DILocation(line: 79, column: 19, scope: !176)
!298 = distinct !DIAssignID()
!299 = !DILocation(line: 80, column: 16, scope: !176)
!300 = !DILocation(line: 80, column: 24, scope: !176)
!301 = distinct !DIAssignID()
!302 = !DILocation(line: 81, column: 5, scope: !176)
!303 = !DILocation(line: 81, column: 19, scope: !176)
!304 = distinct !DIAssignID()
!305 = !DILocation(line: 83, column: 19, scope: !176)
!306 = !DILocation(line: 85, column: 5, scope: !176)
!307 = !DILocation(line: 89, column: 20, scope: !308)
!308 = distinct !DILexicalBlock(scope: !176, file: !2, line: 85, column: 16)
!309 = !DILocation(line: 0, scope: !310)
!310 = distinct !DILexicalBlock(scope: !308, file: !2, line: 89, column: 42)
!311 = !DILocation(line: 113, column: 13, scope: !308)
!312 = !DILocation(line: 116, column: 13, scope: !308)
!313 = !DILocation(line: 0, scope: !308)
!314 = !DILocation(line: 118, column: 5, scope: !176)
!315 = !DILocation(line: 119, column: 5, scope: !176)
!316 = !DILocation(line: 120, column: 1, scope: !176)
!317 = !DISubprogram(name: "lzma_lzma_preset", scope: !86, file: !86, line: 419, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !229, !234}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !81, line: 29, baseType: !191)
!321 = !DISubprogram(name: "lzma_stream_encoder", scope: !322, file: !322, line: 188, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DIFile(filename: "liblzma/api/lzma/container.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "7f878de3abe07c50108c7f7da139bedb")
!323 = !DISubroutineType(types: !324)
!324 = !{!284, !180, !325, !261}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!327 = !DISubprogram(name: "lzma_get_check", scope: !98, file: !98, line: 149, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DISubroutineType(types: !329)
!329 = !{!261, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!332 = !DISubprogram(name: "printf", scope: !333, file: !333, line: 356, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!334 = !DISubroutineType(types: !335)
!335 = !{!336, !337, null}
!336 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!337 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !268)
!338 = distinct !DISubprogram(name: "uncompressStream", scope: !2, file: !2, line: 122, type: !339, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !336, !336}
!341 = !{!342, !343, !344, !345, !347, !351, !352, !354, !357}
!342 = !DILocalVariable(name: "zStream", arg: 1, scope: !338, file: !2, line: 122, type: !336)
!343 = !DILocalVariable(name: "stream", arg: 2, scope: !338, file: !2, line: 122, type: !336)
!344 = !DILocalVariable(name: "strm", scope: !338, file: !2, line: 123, type: !181)
!345 = !DILocalVariable(name: "action", scope: !338, file: !2, line: 124, type: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !81, line: 322, baseType: !118)
!347 = !DILocalVariable(name: "in", scope: !338, file: !2, line: 126, type: !348)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 65536, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 8192)
!351 = !DILocalVariable(name: "out", scope: !338, file: !2, line: 127, type: !348)
!352 = !DILocalVariable(name: "rc", scope: !353, file: !2, line: 152, type: !284)
!353 = distinct !DILexicalBlock(scope: !338, file: !2, line: 141, column: 17)
!354 = !DILocalVariable(name: "write_size", scope: !355, file: !2, line: 155, type: !126)
!355 = distinct !DILexicalBlock(scope: !356, file: !2, line: 154, column: 59)
!356 = distinct !DILexicalBlock(scope: !353, file: !2, line: 154, column: 13)
!357 = !DILocalVariable(name: "msg", scope: !358, file: !2, line: 166, type: !268)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 165, column: 28)
!359 = distinct !DILexicalBlock(scope: !353, file: !2, line: 165, column: 13)
!360 = distinct !DIAssignID()
!361 = !DILocation(line: 0, scope: !338)
!362 = distinct !DIAssignID()
!363 = distinct !DIAssignID()
!364 = !DILocation(line: 123, column: 5, scope: !338)
!365 = !DILocation(line: 123, column: 17, scope: !338)
!366 = distinct !DIAssignID()
!367 = !DILocation(line: 126, column: 5, scope: !338)
!368 = !DILocation(line: 127, column: 5, scope: !338)
!369 = !DILocalVariable(name: "strm", arg: 1, scope: !370, file: !2, line: 27, type: !180)
!370 = distinct !DISubprogram(name: "init_decoder", scope: !2, file: !2, line: 27, type: !371, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !373)
!371 = !DISubroutineType(types: !372)
!372 = !{!179, !180}
!373 = !{!369, !374, !375}
!374 = !DILocalVariable(name: "msg", scope: !370, file: !2, line: 28, type: !268)
!375 = !DILocalVariable(name: "rc", scope: !370, file: !2, line: 29, type: !284)
!376 = !DILocation(line: 0, scope: !370, inlinedAt: !377)
!377 = distinct !DILocation(line: 129, column: 10, scope: !378)
!378 = distinct !DILexicalBlock(scope: !338, file: !2, line: 129, column: 9)
!379 = !DILocation(line: 29, column: 19, scope: !370, inlinedAt: !377)
!380 = !DILocation(line: 30, column: 5, scope: !370, inlinedAt: !377)
!381 = !DILocation(line: 34, column: 13, scope: !382, inlinedAt: !377)
!382 = distinct !DILexicalBlock(scope: !370, file: !2, line: 30, column: 16)
!383 = !DILocation(line: 35, column: 20, scope: !382, inlinedAt: !377)
!384 = !DILocation(line: 35, column: 13, scope: !382, inlinedAt: !377)
!385 = !DILocation(line: 41, column: 21, scope: !386, inlinedAt: !377)
!386 = distinct !DILexicalBlock(scope: !382, file: !2, line: 35, column: 42)
!387 = !DILocation(line: 44, column: 21, scope: !386, inlinedAt: !377)
!388 = !DILocation(line: 47, column: 21, scope: !386, inlinedAt: !377)
!389 = !DILocation(line: 50, column: 21, scope: !386, inlinedAt: !377)
!390 = !DILocation(line: 59, column: 13, scope: !382, inlinedAt: !377)
!391 = !DILocation(line: 62, column: 13, scope: !382, inlinedAt: !377)
!392 = !DILocation(line: 0, scope: !382, inlinedAt: !377)
!393 = !DILocation(line: 64, column: 5, scope: !370, inlinedAt: !377)
!394 = !DILocation(line: 129, column: 9, scope: !338)
!395 = !DILocation(line: 0, scope: !386, inlinedAt: !377)
!396 = !DILocation(line: 138, column: 10, scope: !338)
!397 = distinct !DIAssignID()
!398 = !DILocation(line: 139, column: 10, scope: !338)
!399 = !DILocation(line: 138, column: 19, scope: !338)
!400 = !DILocation(line: 139, column: 19, scope: !338)
!401 = distinct !DIAssignID()
!402 = !DILocation(line: 140, column: 10, scope: !338)
!403 = !DILocation(line: 140, column: 20, scope: !338)
!404 = distinct !DIAssignID()
!405 = !DILocation(line: 141, column: 5, scope: !338)
!406 = !DILocation(line: 142, column: 18, scope: !407)
!407 = distinct !DILexicalBlock(scope: !353, file: !2, line: 142, column: 13)
!408 = !DILocation(line: 124, column: 17, scope: !338)
!409 = !DILocation(line: 142, column: 27, scope: !407)
!410 = !DILocation(line: 142, column: 32, scope: !407)
!411 = !DILocation(line: 142, column: 36, scope: !407)
!412 = !DILocation(line: 142, column: 13, scope: !353)
!413 = !DILocation(line: 143, column: 26, scope: !414)
!414 = distinct !DILexicalBlock(scope: !407, file: !2, line: 142, column: 51)
!415 = distinct !DIAssignID()
!416 = !DILocation(line: 144, column: 29, scope: !414)
!417 = !DILocation(line: 144, column: 27, scope: !414)
!418 = distinct !DIAssignID()
!419 = !DILocation(line: 146, column: 17, scope: !420)
!420 = distinct !DILexicalBlock(scope: !414, file: !2, line: 146, column: 17)
!421 = !DILocation(line: 146, column: 17, scope: !414)
!422 = !DILocation(line: 152, column: 23, scope: !353)
!423 = !DILocation(line: 0, scope: !353)
!424 = !DILocation(line: 154, column: 18, scope: !356)
!425 = !DILocation(line: 154, column: 28, scope: !356)
!426 = !DILocation(line: 154, column: 33, scope: !356)
!427 = !DILocation(line: 155, column: 45, scope: !355)
!428 = !DILocation(line: 0, scope: !355)
!429 = !DILocation(line: 156, column: 25, scope: !430)
!430 = distinct !DILexicalBlock(scope: !355, file: !2, line: 156, column: 17)
!431 = !DILocation(line: 156, column: 60, scope: !430)
!432 = !DILocation(line: 156, column: 17, scope: !355)
!433 = !DILocation(line: 161, column: 27, scope: !355)
!434 = distinct !DIAssignID()
!435 = !DILocation(line: 162, column: 28, scope: !355)
!436 = distinct !DIAssignID()
!437 = !DILocation(line: 157, column: 79, scope: !438)
!438 = distinct !DILexicalBlock(scope: !430, file: !2, line: 156, column: 75)
!439 = !DILocation(line: 157, column: 70, scope: !438)
!440 = !DILocation(line: 157, column: 17, scope: !438)
!441 = !DILocation(line: 165, column: 13, scope: !353)
!442 = distinct !{!442, !405, !443}
!443 = !DILocation(line: 195, column: 5, scope: !338)
!444 = !DILocation(line: 170, column: 21, scope: !445)
!445 = distinct !DILexicalBlock(scope: !358, file: !2, line: 167, column: 24)
!446 = !DILocation(line: 171, column: 21, scope: !445)
!447 = !DILocation(line: 192, column: 13, scope: !358)
!448 = !DILocation(line: 0, scope: !445)
!449 = !DILocation(line: 0, scope: !358)
!450 = !DILocation(line: 193, column: 13, scope: !358)
!451 = !DILocation(line: 202, column: 1, scope: !338)
!452 = !DISubprogram(name: "spec_mem_feof", scope: !453, file: !453, line: 63, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!453 = !DIFile(filename: "spec_mem_io/spec_mem_io.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "20f82235716911ab040d2b344ceb3e0d")
!454 = !DISubroutineType(types: !455)
!455 = !{!336, !456, !82, !336}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "spec_fd_t", file: !453, line: 40, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 34, size: 320, elements: !459)
!459 = !{!460, !465, !466, !467, !468}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !458, file: !453, line: 35, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !462, line: 27, baseType: !463)
!462 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !190, line: 44, baseType: !464)
!464 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !458, file: !453, line: 36, baseType: !461, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !458, file: !453, line: 37, baseType: !461, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !458, file: !453, line: 38, baseType: !336, size: 32, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !458, file: !453, line: 39, baseType: !469, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!470 = !DISubprogram(name: "spec_mem_fread", scope: !453, file: !453, line: 59, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!471 = !DISubroutineType(types: !472)
!472 = !{!461, !456, !82, !469, !461, !336, !336}
!473 = !DISubprogram(name: "lzma_code", scope: !81, file: !81, line: 529, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!474 = !DISubroutineType(types: !475)
!475 = !{!284, !180, !346}
!476 = !DISubprogram(name: "spec_mem_fwrite", scope: !453, file: !453, line: 60, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!477 = !DISubprogram(name: "strerror", scope: !478, file: !478, line: 419, type: !479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!478 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!479 = !DISubroutineType(types: !480)
!480 = !{!481, !336}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!482 = !DISubprogram(name: "__errno_location", scope: !483, file: !483, line: 37, type: !484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!483 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!484 = !DISubroutineType(types: !485)
!485 = !{!486}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!487 = !DISubprogram(name: "lzma_end", scope: !81, file: !81, line: 546, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !180}
!490 = distinct !DISubprogram(name: "compressStream", scope: !2, file: !2, line: 205, type: !491, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !336, !336, !234}
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !504, !507}
!494 = !DILocalVariable(name: "stream", arg: 1, scope: !490, file: !2, line: 205, type: !336)
!495 = !DILocalVariable(name: "zStream", arg: 2, scope: !490, file: !2, line: 205, type: !336)
!496 = !DILocalVariable(name: "preset", arg: 3, scope: !490, file: !2, line: 205, type: !234)
!497 = !DILocalVariable(name: "strm", scope: !490, file: !2, line: 206, type: !181)
!498 = !DILocalVariable(name: "action", scope: !490, file: !2, line: 207, type: !346)
!499 = !DILocalVariable(name: "in", scope: !490, file: !2, line: 209, type: !348)
!500 = !DILocalVariable(name: "out", scope: !490, file: !2, line: 210, type: !348)
!501 = !DILocalVariable(name: "check", scope: !490, file: !2, line: 215, type: !261)
!502 = !DILocalVariable(name: "rc", scope: !503, file: !2, line: 240, type: !284)
!503 = distinct !DILexicalBlock(scope: !490, file: !2, line: 229, column: 17)
!504 = !DILocalVariable(name: "write_size", scope: !505, file: !2, line: 243, type: !126)
!505 = distinct !DILexicalBlock(scope: !506, file: !2, line: 242, column: 59)
!506 = distinct !DILexicalBlock(scope: !503, file: !2, line: 242, column: 13)
!507 = !DILocalVariable(name: "msg", scope: !508, file: !2, line: 254, type: !268)
!508 = distinct !DILexicalBlock(scope: !509, file: !2, line: 253, column: 28)
!509 = distinct !DILexicalBlock(scope: !503, file: !2, line: 253, column: 13)
!510 = distinct !DIAssignID()
!511 = !DILocation(line: 0, scope: !176, inlinedAt: !512)
!512 = distinct !DILocation(line: 217, column: 10, scope: !513)
!513 = distinct !DILexicalBlock(scope: !490, file: !2, line: 217, column: 9)
!514 = distinct !DIAssignID()
!515 = distinct !DIAssignID()
!516 = !DILocation(line: 0, scope: !490)
!517 = distinct !DIAssignID()
!518 = distinct !DIAssignID()
!519 = !DILocation(line: 206, column: 5, scope: !490)
!520 = !DILocation(line: 206, column: 17, scope: !490)
!521 = distinct !DIAssignID()
!522 = !DILocation(line: 209, column: 5, scope: !490)
!523 = !DILocation(line: 210, column: 5, scope: !490)
!524 = !DILocation(line: 215, column: 24, scope: !490)
!525 = !DILocation(line: 70, column: 5, scope: !176, inlinedAt: !512)
!526 = !DILocation(line: 71, column: 5, scope: !176, inlinedAt: !512)
!527 = !DILocation(line: 78, column: 5, scope: !176, inlinedAt: !512)
!528 = !DILocation(line: 79, column: 19, scope: !176, inlinedAt: !512)
!529 = distinct !DIAssignID()
!530 = !DILocation(line: 80, column: 16, scope: !176, inlinedAt: !512)
!531 = !DILocation(line: 80, column: 24, scope: !176, inlinedAt: !512)
!532 = distinct !DIAssignID()
!533 = !DILocation(line: 81, column: 5, scope: !176, inlinedAt: !512)
!534 = !DILocation(line: 81, column: 19, scope: !176, inlinedAt: !512)
!535 = distinct !DIAssignID()
!536 = !DILocation(line: 83, column: 19, scope: !176, inlinedAt: !512)
!537 = !DILocation(line: 85, column: 5, scope: !176, inlinedAt: !512)
!538 = !DILocation(line: 89, column: 20, scope: !308, inlinedAt: !512)
!539 = !DILocation(line: 0, scope: !310, inlinedAt: !512)
!540 = !DILocation(line: 113, column: 13, scope: !308, inlinedAt: !512)
!541 = !DILocation(line: 116, column: 13, scope: !308, inlinedAt: !512)
!542 = !DILocation(line: 0, scope: !308, inlinedAt: !512)
!543 = !DILocation(line: 118, column: 5, scope: !176, inlinedAt: !512)
!544 = !DILocation(line: 120, column: 1, scope: !176, inlinedAt: !512)
!545 = !DILocation(line: 217, column: 9, scope: !490)
!546 = distinct !DIAssignID()
!547 = !DILocation(line: 226, column: 10, scope: !490)
!548 = !DILocation(line: 227, column: 10, scope: !490)
!549 = !DILocation(line: 226, column: 19, scope: !490)
!550 = !DILocation(line: 227, column: 19, scope: !490)
!551 = distinct !DIAssignID()
!552 = !DILocation(line: 228, column: 10, scope: !490)
!553 = !DILocation(line: 228, column: 20, scope: !490)
!554 = distinct !DIAssignID()
!555 = !DILocation(line: 229, column: 5, scope: !490)
!556 = !DILocation(line: 230, column: 18, scope: !557)
!557 = distinct !DILexicalBlock(scope: !503, file: !2, line: 230, column: 13)
!558 = !DILocation(line: 207, column: 17, scope: !490)
!559 = !DILocation(line: 230, column: 27, scope: !557)
!560 = !DILocation(line: 230, column: 32, scope: !557)
!561 = !DILocation(line: 230, column: 36, scope: !557)
!562 = !DILocation(line: 230, column: 13, scope: !503)
!563 = !DILocation(line: 231, column: 26, scope: !564)
!564 = distinct !DILexicalBlock(scope: !557, file: !2, line: 230, column: 50)
!565 = distinct !DIAssignID()
!566 = !DILocation(line: 232, column: 29, scope: !564)
!567 = !DILocation(line: 232, column: 27, scope: !564)
!568 = distinct !DIAssignID()
!569 = !DILocation(line: 234, column: 17, scope: !570)
!570 = distinct !DILexicalBlock(scope: !564, file: !2, line: 234, column: 17)
!571 = !DILocation(line: 234, column: 17, scope: !564)
!572 = !DILocation(line: 240, column: 23, scope: !503)
!573 = !DILocation(line: 0, scope: !503)
!574 = !DILocation(line: 242, column: 18, scope: !506)
!575 = !DILocation(line: 242, column: 28, scope: !506)
!576 = !DILocation(line: 242, column: 33, scope: !506)
!577 = !DILocation(line: 243, column: 45, scope: !505)
!578 = !DILocation(line: 0, scope: !505)
!579 = !DILocation(line: 244, column: 25, scope: !580)
!580 = distinct !DILexicalBlock(scope: !505, file: !2, line: 244, column: 17)
!581 = !DILocation(line: 244, column: 61, scope: !580)
!582 = !DILocation(line: 244, column: 17, scope: !505)
!583 = !DILocation(line: 249, column: 27, scope: !505)
!584 = distinct !DIAssignID()
!585 = !DILocation(line: 250, column: 28, scope: !505)
!586 = distinct !DIAssignID()
!587 = !DILocation(line: 245, column: 78, scope: !588)
!588 = distinct !DILexicalBlock(scope: !580, file: !2, line: 244, column: 76)
!589 = !DILocation(line: 245, column: 69, scope: !588)
!590 = !DILocation(line: 245, column: 17, scope: !588)
!591 = !DILocation(line: 253, column: 13, scope: !503)
!592 = distinct !{!592, !555, !593}
!593 = !DILocation(line: 274, column: 5, scope: !490)
!594 = !DILocation(line: 258, column: 21, scope: !595)
!595 = distinct !DILexicalBlock(scope: !508, file: !2, line: 255, column: 24)
!596 = !DILocation(line: 259, column: 21, scope: !595)
!597 = !DILocation(line: 271, column: 13, scope: !508)
!598 = !DILocation(line: 0, scope: !595)
!599 = !DILocation(line: 0, scope: !508)
!600 = !DILocation(line: 272, column: 13, scope: !508)
!601 = !DILocation(line: 281, column: 1, scope: !490)
!602 = !DISubprogram(name: "lzma_stream_decoder", scope: !322, file: !322, line: 339, type: !603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!603 = !DISubroutineType(types: !604)
!604 = !{!284, !180, !194, !234}
