; ModuleID = 'xz/coder.c'
source_filename = "xz/coder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%union.io_buf = type { [1024 x i64] }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }

@opt_mode = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@opt_format = dso_local local_unnamed_addr global i32 0, align 4, !dbg !89
@opt_auto_adjust = dso_local local_unnamed_addr global i8 1, align 1, !dbg !91
@check = internal unnamed_addr global i32 0, align 4, !dbg !224
@check_default = internal unnamed_addr global i1 false, align 1, !dbg !293
@preset_number = internal unnamed_addr global i32 6, align 4, !dbg !229
@filters_count = internal unnamed_addr global i32 0, align 4, !dbg !231
@.str = private unnamed_addr constant [34 x i8] c"Maximum number of filters is four\00", align 1, !dbg !94
@filters = internal global [5 x %struct.lzma_filter] zeroinitializer, align 16, !dbg !193
@coder_set_compression_settings.opt_lzma = internal global %struct.lzma_options_lzma zeroinitializer, align 8, !dbg !100
@.str.1 = private unnamed_addr constant [43 x i8] c"Using a preset in raw mode is discouraged.\00", align 1, !dbg !161
@.str.2 = private unnamed_addr constant [69 x i8] c"The exact options of the presets may vary between software versions.\00", align 1, !dbg !166
@.str.3 = private unnamed_addr constant [48 x i8] c"The .lzma format supports only the LZMA1 filter\00", align 1, !dbg !171
@.str.4 = private unnamed_addr constant [41 x i8] c"LZMA1 cannot be used with the .xz format\00", align 1, !dbg !176
@.str.5 = private unnamed_addr constant [43 x i8] c"Unsupported filter chain or filter options\00", align 1, !dbg !181
@.str.6 = private unnamed_addr constant [42 x i8] c"Decompression will need %s MiB of memory.\00", align 1, !dbg !183
@.str.7 = private unnamed_addr constant [101 x i8] c"Adjusted LZMA%c dictionary size from %s MiB to %s MiB to not exceed the memory usage limit of %s MiB\00", align 1, !dbg !188
@in_buf = internal global %union.io_buf zeroinitializer, align 8, !dbg !206
@strm = internal global %struct.lzma_stream zeroinitializer, align 8, !dbg !238
@user_abort = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"Memory usage limit is too low for the given filter setup.\00", align 1, !dbg !233
@opt_stdout = external local_unnamed_addr global i8, align 1
@opt_force = external local_unnamed_addr global i8, align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !278
@is_format_xz.magic = internal constant [6 x i8] c"\FD7zXZ\00", align 1, !dbg !283
@__const.is_format_lzma.filter = private unnamed_addr constant %struct.lzma_filter { i64 4611686018427387905, ptr null }, align 8
@out_buf = internal global %union.io_buf zeroinitializer, align 8, !dbg !291

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @coder_set_check(i32 noundef %new_check) local_unnamed_addr #0 !dbg !302 {
entry:
    #dbg_value(i32 %new_check, !306, !DIExpression(), !307)
  store i32 %new_check, ptr @check, align 4, !dbg !308
  store i1 true, ptr @check_default, align 1, !dbg !309
  ret void, !dbg !310
}

; Function Attrs: nounwind uwtable
define dso_local void @coder_set_preset(i32 noundef %new_preset) local_unnamed_addr #1 !dbg !311 {
entry:
    #dbg_value(i32 %new_preset, !315, !DIExpression(), !316)
  %0 = load i32, ptr @preset_number, align 4, !dbg !317
  %and = and i32 %0, -32, !dbg !317
  %or = or i32 %and, %new_preset, !dbg !318
  store i32 %or, ptr @preset_number, align 4, !dbg !318
  %filters_count.promoted.i = load i32, ptr @filters_count, align 4
  %cmp.not5.i = icmp eq i32 %filters_count.promoted.i, 0, !dbg !319
  br i1 %cmp.not5.i, label %forget_filter_chain.exit, label %while.body.preheader.i, !dbg !322

while.body.preheader.i:                           ; preds = %entry
  %1 = zext i32 %filters_count.promoted.i to i64, !dbg !322
  br label %while.body.i, !dbg !322

while.body.i:                                     ; preds = %while.body.i, %while.body.preheader.i
  %indvars.iv.i = phi i64 [ %1, %while.body.preheader.i ], [ %2, %while.body.i ]
  %2 = add nsw i64 %indvars.iv.i, -1, !dbg !323
  %options.i = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %2, i32 1, !dbg !325
  %3 = load ptr, ptr %options.i, align 8, !dbg !325
  tail call void @free(ptr noundef %3) #8, !dbg !326
  store ptr null, ptr %options.i, align 8, !dbg !327
  %cmp.not.wide.i = icmp eq i64 %2, 0, !dbg !319
  br i1 %cmp.not.wide.i, label %while.cond.while.end_crit_edge.i, label %while.body.i, !dbg !322, !llvm.loop !328

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 0, ptr @filters_count, align 4, !dbg !323
  br label %forget_filter_chain.exit, !dbg !322

forget_filter_chain.exit:                         ; preds = %entry, %while.cond.while.end_crit_edge.i
  ret void, !dbg !330
}

; Function Attrs: nounwind uwtable
define dso_local void @coder_set_extreme() local_unnamed_addr #1 !dbg !331 {
entry:
  %0 = load i32, ptr @preset_number, align 4, !dbg !332
  %or = or i32 %0, -2147483648, !dbg !332
  store i32 %or, ptr @preset_number, align 4, !dbg !332
  %filters_count.promoted.i = load i32, ptr @filters_count, align 4
  %cmp.not5.i = icmp eq i32 %filters_count.promoted.i, 0, !dbg !333
  br i1 %cmp.not5.i, label %forget_filter_chain.exit, label %while.body.preheader.i, !dbg !335

while.body.preheader.i:                           ; preds = %entry
  %1 = zext i32 %filters_count.promoted.i to i64, !dbg !335
  br label %while.body.i, !dbg !335

while.body.i:                                     ; preds = %while.body.i, %while.body.preheader.i
  %indvars.iv.i = phi i64 [ %1, %while.body.preheader.i ], [ %2, %while.body.i ]
  %2 = add nsw i64 %indvars.iv.i, -1, !dbg !336
  %options.i = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %2, i32 1, !dbg !337
  %3 = load ptr, ptr %options.i, align 8, !dbg !337
  tail call void @free(ptr noundef %3) #8, !dbg !338
  store ptr null, ptr %options.i, align 8, !dbg !339
  %cmp.not.wide.i = icmp eq i64 %2, 0, !dbg !333
  br i1 %cmp.not.wide.i, label %while.cond.while.end_crit_edge.i, label %while.body.i, !dbg !335, !llvm.loop !340

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 0, ptr @filters_count, align 4, !dbg !336
  br label %forget_filter_chain.exit, !dbg !335

forget_filter_chain.exit:                         ; preds = %entry, %while.cond.while.end_crit_edge.i
  ret void, !dbg !342
}

; Function Attrs: nounwind uwtable
define dso_local void @coder_add_filter(i64 noundef %id, ptr noundef %options) local_unnamed_addr #1 !dbg !343 {
entry:
    #dbg_value(i64 %id, !347, !DIExpression(), !349)
    #dbg_value(ptr %options, !348, !DIExpression(), !349)
  %0 = load i32, ptr @filters_count, align 4, !dbg !350
  %cmp = icmp eq i32 %0, 4, !dbg !352
  br i1 %cmp, label %if.then, label %if.end, !dbg !353

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str) #8, !dbg !354
  %.pre = load i32, ptr @filters_count, align 4, !dbg !355
  br label %if.end, !dbg !354

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ], !dbg !355
  %idxprom = zext i32 %1 to i64, !dbg !356
  %arrayidx = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %idxprom, !dbg !356
  store i64 %id, ptr %arrayidx, align 16, !dbg !357
  %options4 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %idxprom, i32 1, !dbg !358
  store ptr %options, ptr %options4, align 8, !dbg !359
  %inc = add i32 %1, 1, !dbg !360
  store i32 %inc, ptr @filters_count, align 4, !dbg !360
  store i32 6, ptr @preset_number, align 4, !dbg !361
  ret void, !dbg !362
}

declare !dbg !363 void @message_fatal(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @coder_set_compression_settings() local_unnamed_addr #1 !dbg !102 {
entry:
  %0 = load i32, ptr @filters_count, align 4, !dbg !368
  %cmp = icmp eq i32 %0, 0, !dbg !370
  %.pre = load i32, ptr @opt_format, align 4, !dbg !371
  br i1 %cmp, label %if.then, label %if.end6, !dbg !373

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %.pre, 3, !dbg !374
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !377

if.then2:                                         ; preds = %if.then
  tail call void (i32, ptr, ...) @message(i32 noundef 2, ptr noundef nonnull @.str.1) #8, !dbg !378
  tail call void (i32, ptr, ...) @message(i32 noundef 2, ptr noundef nonnull @.str.2) #8, !dbg !380
  br label %if.end, !dbg !381

if.end:                                           ; preds = %if.then2, %if.then
  %1 = load i32, ptr @preset_number, align 4, !dbg !382
  %call = tail call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull @coder_set_compression_settings.opt_lzma, i32 noundef %1) #8, !dbg !384
  %tobool.not = icmp eq i8 %call, 0, !dbg !384
  br i1 %tobool.not, label %if.end4, label %if.then3, !dbg !385

if.then3:                                         ; preds = %if.end
  tail call void @message_bug() #8, !dbg !386
  br label %if.end4, !dbg !386

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = load i32, ptr @opt_format, align 4, !dbg !387
  %cmp5 = icmp eq i32 %2, 2, !dbg !388
  %cond = select i1 %cmp5, i64 4611686018427387905, i64 33, !dbg !387
  store i64 %cond, ptr @filters, align 16, !dbg !389
  store ptr @coder_set_compression_settings.opt_lzma, ptr getelementptr inbounds (i8, ptr @filters, i64 8), align 8, !dbg !390
  store i32 1, ptr @filters_count, align 4, !dbg !391
  br label %if.end6, !dbg !392

if.end6:                                          ; preds = %if.end4, %entry
  %3 = phi i32 [ %2, %if.end4 ], [ %.pre, %entry ], !dbg !371
  %4 = phi i32 [ 1, %if.end4 ], [ %0, %entry ], !dbg !393
  %idxprom = zext i32 %4 to i64, !dbg !394
  %arrayidx = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %idxprom, !dbg !394
  store i64 -1, ptr %arrayidx, align 16, !dbg !395
  %cmp7 = icmp eq i32 %3, 2, !dbg !396
  br i1 %cmp7, label %land.lhs.true, label %if.end11, !dbg !397

land.lhs.true:                                    ; preds = %if.end6
  %cmp8 = icmp ne i32 %4, 1, !dbg !398
  %5 = load i64, ptr @filters, align 16
  %cmp9 = icmp ne i64 %5, 4611686018427387905
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp9, !dbg !399
  br i1 %or.cond, label %if.then10, label %if.end22, !dbg !399

if.then10:                                        ; preds = %land.lhs.true
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.3) #8, !dbg !400
  %.pr.pre = load i32, ptr @opt_format, align 4, !dbg !401
  %.pre137.pre = load i32, ptr @filters_count, align 4
  br label %if.end11, !dbg !400

if.end11:                                         ; preds = %if.then10, %if.end6
  %6 = phi i32 [ %4, %if.end6 ], [ %.pre137.pre, %if.then10 ]
  %7 = phi i32 [ %3, %if.end6 ], [ %.pr.pre, %if.then10 ], !dbg !401
  %cmp12 = icmp eq i32 %7, 1, !dbg !402
    #dbg_value(i64 0, !106, !DIExpression(), !403)
  %cmp14133 = icmp ne i32 %6, 0
  %or.cond135 = select i1 %cmp12, i1 %cmp14133, i1 false, !dbg !404
  br i1 %or.cond135, label %for.body, label %if.end22, !dbg !404

for.body:                                         ; preds = %if.end11, %for.inc
  %8 = phi i32 [ %10, %for.inc ], [ %6, %if.end11 ]
  %i.0134 = phi i64 [ %inc, %for.inc ], [ 0, %if.end11 ]
    #dbg_value(i64 %i.0134, !106, !DIExpression(), !403)
  %arrayidx16 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %i.0134, !dbg !405
  %9 = load i64, ptr %arrayidx16, align 16, !dbg !408
  %cmp18 = icmp eq i64 %9, 4611686018427387905, !dbg !409
  br i1 %cmp18, label %if.then20, label %for.inc, !dbg !410

if.then20:                                        ; preds = %for.body
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.4) #8, !dbg !411
  %.pre138 = load i32, ptr @filters_count, align 4, !dbg !412
  br label %for.inc, !dbg !411

for.inc:                                          ; preds = %for.body, %if.then20
  %10 = phi i32 [ %8, %for.body ], [ %.pre138, %if.then20 ], !dbg !412
  %inc = add nuw nsw i64 %i.0134, 1, !dbg !413
    #dbg_value(i64 %inc, !106, !DIExpression(), !403)
  %conv = zext i32 %10 to i64, !dbg !412
  %cmp14 = icmp ult i64 %inc, %conv, !dbg !414
  br i1 %cmp14, label %for.body, label %if.end22, !dbg !415, !llvm.loop !416

if.end22:                                         ; preds = %for.inc, %land.lhs.true, %if.end11
  tail call void @message_filters_show(i32 noundef 4, ptr noundef nonnull @filters) #8, !dbg !418
  %11 = load i32, ptr @opt_mode, align 4, !dbg !419
  %call23 = tail call i64 @hardware_memlimit_get(i32 noundef %11) #8, !dbg !420
    #dbg_value(i64 %call23, !111, !DIExpression(), !421)
  %12 = load i32, ptr @opt_mode, align 4, !dbg !422
  %cmp24 = icmp eq i32 %12, 0, !dbg !424
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !425

if.then26:                                        ; preds = %if.end22
  %call27 = tail call i64 @lzma_raw_encoder_memusage(ptr noundef nonnull @filters) #8, !dbg !426
    #dbg_value(i64 %call27, !113, !DIExpression(), !421)
  br label %if.end29, !dbg !427

if.else:                                          ; preds = %if.end22
  %call28 = tail call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull @filters) #8, !dbg !428
    #dbg_value(i64 %call28, !113, !DIExpression(), !421)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  %memory_usage.0 = phi i64 [ %call27, %if.then26 ], [ %call28, %if.else ], !dbg !429
    #dbg_value(i64 %memory_usage.0, !113, !DIExpression(), !421)
  %cmp30 = icmp eq i64 %memory_usage.0, -1, !dbg !430
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !432

if.then32:                                        ; preds = %if.end29
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.5) #8, !dbg !433
  br label %if.end33, !dbg !433

if.end33:                                         ; preds = %if.then32, %if.end29
  tail call void @message_mem_needed(i32 noundef 4, i64 noundef %memory_usage.0) #8, !dbg !434
  %13 = load i32, ptr @opt_mode, align 4, !dbg !435
  %cmp34 = icmp eq i32 %13, 0, !dbg !436
  br i1 %cmp34, label %if.then36, label %if.end44, !dbg !437

if.then36:                                        ; preds = %if.end33
  %call37 = tail call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull @filters) #8, !dbg !438
    #dbg_value(i64 %call37, !114, !DIExpression(), !439)
  %cmp38.not = icmp eq i64 %call37, -1, !dbg !440
  br i1 %cmp38.not, label %if.end44, label %if.then40, !dbg !442

if.then40:                                        ; preds = %if.then36
  %call41 = tail call i64 @round_up_to_mib(i64 noundef %call37) #8, !dbg !443
  %call42 = tail call ptr @uint64_to_str(i64 noundef %call41, i32 noundef 0) #8, !dbg !444
  tail call void (i32, ptr, ...) @message(i32 noundef 4, ptr noundef nonnull @.str.6, ptr noundef %call42) #8, !dbg !445
  br label %if.end44, !dbg !445

if.end44:                                         ; preds = %if.then36, %if.then40, %if.end33
  %cmp45 = icmp ugt i64 %memory_usage.0, %call23, !dbg !446
  br i1 %cmp45, label %if.then47, label %if.end102, !dbg !447

if.then47:                                        ; preds = %if.end44
  %14 = load i8, ptr @opt_auto_adjust, align 1, !dbg !448, !range !450, !noundef !451
  %loadedv = trunc nuw i8 %14 to i1, !dbg !448
  %15 = load i32, ptr @opt_format, align 4
  %cmp49 = icmp ne i32 %15, 3
  %or.cond110.not = select i1 %loadedv, i1 %cmp49, i1 false, !dbg !452
  br i1 %or.cond110.not, label %while.cond.preheader, label %if.then51, !dbg !452

if.then51:                                        ; preds = %if.then47
    #dbg_value(i64 %memory_usage.0, !453, !DIExpression(), !458)
  tail call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef nonnull @.str.8) #8, !dbg !460
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %memory_usage.0) #8, !dbg !461
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #8, !dbg !462
  br label %while.cond.preheader, !dbg !463

while.cond.preheader:                             ; preds = %if.then47, %if.then51
  br label %while.cond, !dbg !464

while.cond:                                       ; preds = %while.cond.preheader, %if.end67
  %i53.0 = phi i64 [ %inc68, %if.end67 ], [ 0, %while.cond.preheader ], !dbg !465
    #dbg_value(i64 %i53.0, !117, !DIExpression(), !465)
  %arrayidx54 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %i53.0, !dbg !466
  %16 = load i64, ptr %arrayidx54, align 16, !dbg !467
  switch i64 %16, label %if.end67 [
    i64 33, label %while.end
    i64 4611686018427387905, label %while.end
    i64 -1, label %if.then66
  ], !dbg !468

if.then66:                                        ; preds = %while.cond
    #dbg_value(i64 %memory_usage.0, !453, !DIExpression(), !469)
  tail call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef nonnull @.str.8) #8, !dbg !473
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %memory_usage.0) #8, !dbg !474
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #8, !dbg !475
  br label %if.end67, !dbg !476

if.end67:                                         ; preds = %while.cond, %if.then66
  %inc68 = add i64 %i53.0, 1, !dbg !477
    #dbg_value(i64 %inc68, !117, !DIExpression(), !465)
  br label %while.cond, !dbg !464, !llvm.loop !478

while.end:                                        ; preds = %while.cond, %while.cond
  %options = getelementptr inbounds i8, ptr %arrayidx54, i64 8, !dbg !480
  %17 = load ptr, ptr %options, align 8, !dbg !480
    #dbg_value(ptr %17, !120, !DIExpression(), !465)
  %18 = load i32, ptr %17, align 8, !dbg !481
    #dbg_value(i32 %18, !159, !DIExpression(), !465)
  %and = and i32 %18, -1048576, !dbg !482
  br label %while.cond71, !dbg !483

while.cond71:                                     ; preds = %if.end86, %while.end
  %storemerge = phi i32 [ %and, %while.end ], [ %sub, %if.end86 ], !dbg !465
  %memory_usage.1 = phi i64 [ %memory_usage.0, %while.end ], [ %call78, %if.end86 ], !dbg !421
  store i32 %storemerge, ptr %17, align 8, !dbg !465
    #dbg_value(i64 %memory_usage.1, !113, !DIExpression(), !421)
  %cmp74 = icmp ult i32 %storemerge, 1048576, !dbg !484
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !487

if.then76:                                        ; preds = %while.cond71
    #dbg_value(i64 %memory_usage.1, !453, !DIExpression(), !488)
  tail call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef nonnull @.str.8) #8, !dbg !490
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %memory_usage.1) #8, !dbg !491
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #8, !dbg !492
  br label %if.end77, !dbg !493

if.end77:                                         ; preds = %if.then76, %while.cond71
  %call78 = tail call i64 @lzma_raw_encoder_memusage(ptr noundef nonnull @filters) #8, !dbg !494
    #dbg_value(i64 %call78, !113, !DIExpression(), !421)
  %cmp79 = icmp eq i64 %call78, -1, !dbg !495
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !497

if.then81:                                        ; preds = %if.end77
  tail call void @message_bug() #8, !dbg !498
  br label %if.end82, !dbg !498

if.end82:                                         ; preds = %if.then81, %if.end77
  %cmp83.not = icmp ugt i64 %call78, %call23, !dbg !499
  br i1 %cmp83.not, label %if.end86, label %while.end88, !dbg !501

if.end86:                                         ; preds = %if.end82
  %19 = load i32, ptr %17, align 8, !dbg !502
  %sub = add i32 %19, -1048576, !dbg !502
  br label %while.cond71, !dbg !483, !llvm.loop !503

while.end88:                                      ; preds = %if.end82
  %20 = load i64, ptr %arrayidx54, align 16, !dbg !505
  %cmp91 = icmp eq i64 %20, 33, !dbg !506
  %cond93 = select i1 %cmp91, i32 50, i32 49, !dbg !507
  %shr = lshr i32 %18, 20, !dbg !508
  %conv94 = zext nneg i32 %shr to i64, !dbg !509
  %call95 = tail call ptr @uint64_to_str(i64 noundef %conv94, i32 noundef 0) #8, !dbg !510
  %21 = load i32, ptr %17, align 8, !dbg !511
  %shr97 = lshr i32 %21, 20, !dbg !512
  %conv98 = zext nneg i32 %shr97 to i64, !dbg !513
  %call99 = tail call ptr @uint64_to_str(i64 noundef %conv98, i32 noundef 1) #8, !dbg !514
  %call100 = tail call i64 @round_up_to_mib(i64 noundef %call23) #8, !dbg !515
  %call101 = tail call ptr @uint64_to_str(i64 noundef %call100, i32 noundef 2) #8, !dbg !516
  tail call void (i32, ptr, ...) @message(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %cond93, ptr noundef %call95, ptr noundef %call99, ptr noundef %call101) #8, !dbg !517
  br label %if.end102, !dbg !518

if.end102:                                        ; preds = %while.end88, %if.end44
  %.b = load i1, ptr @check_default, align 1, !dbg !519
  br i1 %.b, label %if.end109, label %if.then104, !dbg !521

if.then104:                                       ; preds = %if.end102
  store i32 4, ptr @check, align 4, !dbg !522
  %call105 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef 4) #8, !dbg !524
  %tobool106.not = icmp eq i8 %call105, 0, !dbg !524
  br i1 %tobool106.not, label %if.then107, label %if.end109, !dbg !526

if.then107:                                       ; preds = %if.then104
  store i32 1, ptr @check, align 4, !dbg !527
  br label %if.end109, !dbg !528

if.end109:                                        ; preds = %if.then104, %if.then107, %if.end102
  ret void, !dbg !529
}

declare !dbg !530 void @message(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !533 zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !537 void @message_bug() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare !dbg !538 void @message_filters_show(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !543 i64 @hardware_memlimit_get(i32 noundef) local_unnamed_addr #2

declare !dbg !547 i64 @lzma_raw_encoder_memusage(ptr noundef) local_unnamed_addr #2

declare !dbg !550 i64 @lzma_raw_decoder_memusage(ptr noundef) local_unnamed_addr #2

declare !dbg !551 void @message_mem_needed(i32 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !554 ptr @uint64_to_str(i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !558 i64 @round_up_to_mib(i64 noundef) local_unnamed_addr #2

declare !dbg !561 zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @coder_run(ptr noundef %filename) local_unnamed_addr #1 !dbg !564 {
entry:
    #dbg_value(ptr %filename, !568, !DIExpression(), !597)
  tail call void @message_filename(ptr noundef %filename) #8, !dbg !598
  %call = tail call ptr @io_open_src(ptr noundef %filename) #8, !dbg !599
    #dbg_value(ptr %call, !569, !DIExpression(), !597)
  %cmp = icmp eq ptr %call, null, !dbg !600
  br i1 %cmp, label %cleanup, label %if.end, !dbg !602

if.end:                                           ; preds = %entry
    #dbg_value(i8 0, !587, !DIExpression(), !597)
  store ptr @in_buf, ptr @strm, align 8, !dbg !603
  %call1 = tail call i64 @io_read(ptr noundef nonnull %call, ptr noundef nonnull @in_buf, i64 noundef 8192) #8, !dbg !604
  store i64 %call1, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8, !dbg !605
  %cmp2.not = icmp eq i64 %call1, -1, !dbg !606
  br i1 %cmp2.not, label %if.end18, label %if.then3, !dbg !607

if.then3:                                         ; preds = %if.end
    #dbg_value(ptr %call, !608, !DIExpression(), !619)
    #dbg_value(i32 11, !613, !DIExpression(), !619)
  %0 = load i32, ptr @opt_mode, align 4, !dbg !621
  %cmp.i = icmp eq i32 %0, 0, !dbg !622
  %1 = load i32, ptr @opt_format, align 4, !dbg !623
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !624

if.then.i:                                        ; preds = %if.then3
  switch i32 %1, label %if.then47.i [
    i32 3, label %sw.bb4.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ], !dbg !625

sw.bb1.i:                                         ; preds = %if.then.i
  %2 = load i32, ptr @check, align 4, !dbg !627
  %call.i = tail call i32 @lzma_stream_encoder(ptr noundef nonnull @strm, ptr noundef nonnull @filters, i32 noundef %2) #8, !dbg !629
    #dbg_value(i32 %call.i, !613, !DIExpression(), !619)
  br label %if.end45.i, !dbg !630

sw.bb2.i:                                         ; preds = %if.then.i
  %3 = load ptr, ptr getelementptr inbounds (i8, ptr @filters, i64 8), align 8, !dbg !631
  %call3.i = tail call i32 @lzma_alone_encoder(ptr noundef nonnull @strm, ptr noundef %3) #8, !dbg !632
    #dbg_value(i32 %call3.i, !613, !DIExpression(), !619)
  br label %if.end45.i, !dbg !633

sw.bb4.i:                                         ; preds = %if.then.i
  %call5.i = tail call i32 @lzma_raw_encoder(ptr noundef nonnull @strm, ptr noundef nonnull @filters) #8, !dbg !634
    #dbg_value(i32 %call5.i, !613, !DIExpression(), !619)
  br label %if.end45.i, !dbg !635

if.else.i:                                        ; preds = %if.then3
    #dbg_value(i32 10, !615, !DIExpression(), !636)
    #dbg_value(i32 0, !618, !DIExpression(), !636)
  switch i32 %1, label %sw.bb23.i [
    i32 0, label %sw.bb6.i
    i32 1, label %sw.bb13.i
    i32 2, label %sw.bb17.i
    i32 3, label %sw.bb35.i
  ], !dbg !637

sw.bb6.i:                                         ; preds = %if.else.i
  %cmp.i.i = icmp ugt i64 %call1, 5, !dbg !638
  br i1 %cmp.i.i, label %is_format_xz.exit.i, label %if.else9.i, !dbg !642

is_format_xz.exit.i:                              ; preds = %sw.bb6.i
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @in_buf, ptr noundef nonnull dereferenceable(6) @is_format_xz.magic, i64 6), !dbg !643
  %cmp1.i.i = icmp eq i32 %bcmp.i.i, 0, !dbg !644
  br i1 %cmp1.i.i, label %sw.bb29.i, label %if.else9.i, !dbg !645

if.else9.i:                                       ; preds = %is_format_xz.exit.i, %sw.bb6.i
  %call10.i = tail call fastcc zeroext i1 @is_format_lzma(), !dbg !646
  br i1 %call10.i, label %sw.bb32.i, label %sw.bb23thread-pre-split.i, !dbg !648

sw.bb13.i:                                        ; preds = %if.else.i
  %cmp.i61.i = icmp ugt i64 %call1, 5, !dbg !649
  br i1 %cmp.i61.i, label %is_format_xz.exit65.i, label %sw.bb23thread-pre-split.i, !dbg !652

is_format_xz.exit65.i:                            ; preds = %sw.bb13.i
  %bcmp.i63.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @in_buf, ptr noundef nonnull dereferenceable(6) @is_format_xz.magic, i64 6), !dbg !653
  %bcmp.i63.fr.i = freeze i32 %bcmp.i63.i, !dbg !654
  %cmp1.i64.i = icmp eq i32 %bcmp.i63.fr.i, 0, !dbg !654
  br i1 %cmp1.i64.i, label %sw.bb29.i, label %sw.bb23thread-pre-split.i, !dbg !655

sw.bb17.i:                                        ; preds = %if.else.i
  %call18.i = tail call fastcc zeroext i1 @is_format_lzma(), !dbg !656
  br i1 %call18.i, label %sw.bb32.i, label %sw.bb23thread-pre-split.i, !dbg !658

sw.bb23thread-pre-split.i:                        ; preds = %sw.bb17.i, %is_format_xz.exit65.i, %sw.bb13.i, %if.else9.i
  %.pr.i = load i32, ptr @opt_mode, align 4, !dbg !659
  br label %sw.bb23.i, !dbg !659

sw.bb23.i:                                        ; preds = %sw.bb23thread-pre-split.i, %if.else.i
  %4 = phi i32 [ %.pr.i, %sw.bb23thread-pre-split.i ], [ %0, %if.else.i ], !dbg !659
    #dbg_value(i32 poison, !618, !DIExpression(), !636)
  %cmp24.i = icmp eq i32 %4, 1, !dbg !662
  br i1 %cmp24.i, label %land.lhs.true.i, label %if.then47.i, !dbg !663

land.lhs.true.i:                                  ; preds = %sw.bb23.i
  %5 = load i8, ptr @opt_stdout, align 1, !dbg !664, !range !450, !noundef !451
  %loadedv.i = trunc nuw i8 %5 to i1, !dbg !664
  br i1 %loadedv.i, label %land.lhs.true25.i, label %if.then47.i, !dbg !665

land.lhs.true25.i:                                ; preds = %land.lhs.true.i
  %6 = load i8, ptr @opt_force, align 1, !dbg !666, !range !450, !noundef !451
  %loadedv26.i = trunc nuw i8 %6 to i1, !dbg !666
  br i1 %loadedv26.i, label %coder_init.exit, label %if.then47.i, !dbg !667

sw.bb29.i:                                        ; preds = %is_format_xz.exit65.i, %is_format_xz.exit.i
    #dbg_value(i32 poison, !618, !DIExpression(), !636)
  %call30.i = tail call i64 @hardware_memlimit_get(i32 noundef 1) #8, !dbg !668
  %call31.i = tail call i32 @lzma_stream_decoder(ptr noundef nonnull @strm, i64 noundef %call30.i, i32 noundef 10) #8, !dbg !669
    #dbg_value(i32 %call31.i, !613, !DIExpression(), !619)
  br label %sw.epilog37.i, !dbg !670

sw.bb32.i:                                        ; preds = %sw.bb17.i, %if.else9.i
    #dbg_value(i32 poison, !618, !DIExpression(), !636)
  %call33.i = tail call i64 @hardware_memlimit_get(i32 noundef 1) #8, !dbg !671
  %call34.i = tail call i32 @lzma_alone_decoder(ptr noundef nonnull @strm, i64 noundef %call33.i) #8, !dbg !672
    #dbg_value(i32 %call34.i, !613, !DIExpression(), !619)
  br label %sw.epilog37.i, !dbg !673

sw.bb35.i:                                        ; preds = %if.else.i
    #dbg_value(i32 3, !618, !DIExpression(), !636)
  %call36.i = tail call i32 @lzma_raw_decoder(ptr noundef nonnull @strm, ptr noundef nonnull @filters) #8, !dbg !674
    #dbg_value(i32 %call36.i, !613, !DIExpression(), !619)
  br label %if.end45.i, !dbg !675

sw.epilog37.i:                                    ; preds = %sw.bb32.i, %sw.bb29.i
  %ret.0.i = phi i32 [ %call34.i, %sw.bb32.i ], [ %call31.i, %sw.bb29.i ], !dbg !619
    #dbg_value(i32 %ret.0.i, !613, !DIExpression(), !619)
  %cmp38.i = icmp eq i32 %ret.0.i, 0, !dbg !676
  br i1 %cmp38.i, label %if.then41.i, label %if.then47.i, !dbg !678

if.then41.i:                                      ; preds = %sw.epilog37.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (i8, ptr @strm, i64 24), i8 0, i64 16, i1 false), !dbg !679
  %call42.i = tail call i32 @lzma_code(ptr noundef nonnull @strm, i32 noundef 0) #8, !dbg !681
    #dbg_value(i32 %call42.i, !613, !DIExpression(), !619)
  br label %if.end45.i, !dbg !682

if.end45.i:                                       ; preds = %if.then41.i, %sw.bb35.i, %sw.bb4.i, %sw.bb2.i, %sw.bb1.i
  %ret.3.i = phi i32 [ %call3.i, %sw.bb2.i ], [ %call.i, %sw.bb1.i ], [ %call5.i, %sw.bb4.i ], [ %call42.i, %if.then41.i ], [ %call36.i, %sw.bb35.i ], !dbg !619
    #dbg_value(i32 %ret.3.i, !613, !DIExpression(), !619)
  %cmp46.not.i = icmp eq i32 %ret.3.i, 0, !dbg !683
  br i1 %cmp46.not.i, label %coder_init.exit, label %if.then47.i, !dbg !685

if.then47.i:                                      ; preds = %if.end45.i, %sw.epilog37.i, %land.lhs.true25.i, %land.lhs.true.i, %sw.bb23.i, %if.then.i
  %ret.390.i = phi i32 [ %ret.3.i, %if.end45.i ], [ 11, %if.then.i ], [ 7, %sw.bb23.i ], [ 7, %land.lhs.true.i ], [ 7, %land.lhs.true25.i ], [ %ret.0.i, %sw.epilog37.i ]
  %7 = load ptr, ptr %call, align 8, !dbg !686
  %call48.i = tail call ptr @message_strm(i32 noundef %ret.390.i) #8, !dbg !688
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.9, ptr noundef %7, ptr noundef %call48.i) #8, !dbg !689
  %cmp49.i = icmp eq i32 %ret.390.i, 6, !dbg !690
  br i1 %cmp49.i, label %if.then50.i, label %if.end18, !dbg !692

if.then50.i:                                      ; preds = %if.then47.i
  %call51.i = tail call i64 @lzma_memusage(ptr noundef nonnull @strm) #8, !dbg !693
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %call51.i) #8, !dbg !694
  br label %if.end18, !dbg !694

coder_init.exit:                                  ; preds = %land.lhs.true25.i, %if.end45.i
  %cmp10 = phi i1 [ true, %if.end45.i ], [ false, %land.lhs.true25.i ]
    #dbg_value(i32 poison, !588, !DIExpression(), !695)
  %8 = load i32, ptr @user_abort, align 4
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then6, label %if.end18, !dbg !696

if.then6:                                         ; preds = %coder_init.exit
  %9 = load i32, ptr @opt_mode, align 4, !dbg !697
  %cmp7 = icmp eq i32 %9, 2, !dbg !698
  br i1 %cmp7, label %if.then9, label %lor.lhs.false, !dbg !699

lor.lhs.false:                                    ; preds = %if.then6
  %call8 = tail call zeroext i1 @io_open_dest(ptr noundef nonnull %call) #8, !dbg !700
  br i1 %call8, label %if.end18, label %if.then9, !dbg !701

if.then9:                                         ; preds = %lor.lhs.false, %if.then6
    #dbg_value(i64 0, !592, !DIExpression(), !702)
  tail call void @message_progress_start(ptr noundef nonnull @strm, i64 noundef 0) #8, !dbg !703
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !704

if.then11:                                        ; preds = %if.then9
    #dbg_value(ptr %call, !705, !DIExpression(), !719)
  %src_eof.i = getelementptr inbounds i8, ptr %call, i64 24, !dbg !722
  %10 = load i8, ptr %src_eof.i, align 8, !dbg !722, !range !450, !noundef !451
    #dbg_value(i32 poison, !710, !DIExpression(), !719)
    #dbg_value(i8 0, !713, !DIExpression(), !719)
  store ptr @out_buf, ptr getelementptr inbounds (i8, ptr @strm, i64 24), align 8, !dbg !723
  store i64 8192, ptr getelementptr inbounds (i8, ptr @strm, i64 32), align 8, !dbg !724
  %11 = load i32, ptr @user_abort, align 4, !dbg !725
  %tobool.not92.i = icmp eq i32 %11, 0, !dbg !726
  br i1 %tobool.not92.i, label %while.body.preheader.i, label %if.end15, !dbg !727

while.body.preheader.i:                           ; preds = %if.then11
  %loadedv.i29 = trunc nuw i8 %10 to i1, !dbg !722
  %cond.i = select i1 %loadedv.i29, i32 3, i32 0, !dbg !728
    #dbg_value(i32 %cond.i, !710, !DIExpression(), !719)
  br label %while.body.i, !dbg !727

while.body.i:                                     ; preds = %if.end61.i, %while.body.preheader.i
  %action.093.i = phi i32 [ %action.1.i, %if.end61.i ], [ %cond.i, %while.body.preheader.i ]
    #dbg_value(i32 %action.093.i, !710, !DIExpression(), !719)
  %12 = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8, !dbg !729
  %cmp.i30 = icmp eq i64 %12, 0, !dbg !731
  br i1 %cmp.i30, label %land.lhs.true.i32, label %if.end9.i, !dbg !732

land.lhs.true.i32:                                ; preds = %while.body.i
  %13 = load i8, ptr %src_eof.i, align 8, !dbg !733, !range !450, !noundef !451
  %loadedv2.i = trunc nuw i8 %13 to i1, !dbg !733
  br i1 %loadedv2.i, label %if.end9.i, label %if.then.i33, !dbg !734

if.then.i33:                                      ; preds = %land.lhs.true.i32
  store ptr @in_buf, ptr @strm, align 8, !dbg !735
  %call.i34 = tail call i64 @io_read(ptr noundef nonnull %call, ptr noundef nonnull @in_buf, i64 noundef 8192) #8, !dbg !737
  store i64 %call.i34, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8, !dbg !738
  %cmp3.i = icmp eq i64 %call.i34, -1, !dbg !739
  br i1 %cmp3.i, label %if.end15, label %if.end.i, !dbg !741

if.end.i:                                         ; preds = %if.then.i33
  %14 = load i8, ptr %src_eof.i, align 8, !dbg !742, !range !450, !noundef !451
  %loadedv6.i = trunc nuw i8 %14 to i1, !dbg !742
  %spec.select.i = select i1 %loadedv6.i, i32 3, i32 %action.093.i, !dbg !744
  br label %if.end9.i, !dbg !744

if.end9.i:                                        ; preds = %if.end.i, %land.lhs.true.i32, %while.body.i
  %action.1.i = phi i32 [ %action.093.i, %land.lhs.true.i32 ], [ %action.093.i, %while.body.i ], [ %spec.select.i, %if.end.i ], !dbg !719
    #dbg_value(i32 %action.1.i, !710, !DIExpression(), !719)
  %call10.i31 = tail call i32 @lzma_code(ptr noundef nonnull @strm, i32 noundef %action.1.i) #8, !dbg !745
    #dbg_value(i32 %call10.i31, !712, !DIExpression(), !719)
  %15 = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 32), align 8, !dbg !746
  %cmp11.i = icmp eq i64 %15, 0, !dbg !748
  br i1 %cmp11.i, label %if.then12.i, label %if.end18.i, !dbg !749

if.then12.i:                                      ; preds = %if.end9.i
  %16 = load i32, ptr @opt_mode, align 4, !dbg !750
  %cmp13.not.i = icmp eq i32 %16, 2, !dbg !753
  br i1 %cmp13.not.i, label %if.end17.i, label %land.lhs.true14.i, !dbg !754

land.lhs.true14.i:                                ; preds = %if.then12.i
  %call15.i = tail call zeroext i1 @io_write(ptr noundef nonnull %call, ptr noundef nonnull @out_buf, i64 noundef 8192) #8, !dbg !755
  br i1 %call15.i, label %if.end15, label %if.end17.i, !dbg !756

if.end17.i:                                       ; preds = %land.lhs.true14.i, %if.then12.i
  store ptr @out_buf, ptr getelementptr inbounds (i8, ptr @strm, i64 24), align 8, !dbg !757
  store i64 8192, ptr getelementptr inbounds (i8, ptr @strm, i64 32), align 8, !dbg !758
  br label %if.end18.i, !dbg !759

if.end18.i:                                       ; preds = %if.end17.i, %if.end9.i
  %17 = phi i64 [ 8192, %if.end17.i ], [ %15, %if.end9.i ]
  %cmp19.not.i = icmp eq i32 %call10.i31, 0, !dbg !760
  br i1 %cmp19.not.i, label %if.end61.i, label %if.then20.i, !dbg !761

if.then20.i:                                      ; preds = %if.end18.i
  %18 = add i32 %call10.i31, -4, !dbg !762
  %19 = icmp ult i32 %18, -2, !dbg !762
    #dbg_value(i1 %19, !714, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !763)
  %20 = load i32, ptr @opt_mode, align 4
  %cmp25.i = icmp ne i32 %20, 2
  %or.cond.i = select i1 %19, i1 %cmp25.i, i1 false, !dbg !764
  br i1 %or.cond.i, label %land.lhs.true26.i, label %if.end31.i, !dbg !764

land.lhs.true26.i:                                ; preds = %if.then20.i
  %sub27.i = sub i64 8192, %17, !dbg !765
  %call28.i = tail call zeroext i1 @io_write(ptr noundef nonnull %call, ptr noundef nonnull @out_buf, i64 noundef %sub27.i) #8, !dbg !769
  br i1 %call28.i, label %if.end15, label %if.end31.i, !dbg !770

if.end31.i:                                       ; preds = %land.lhs.true26.i, %if.then20.i
  %cmp32.i = icmp eq i32 %call10.i31, 1, !dbg !771
  br i1 %cmp32.i, label %if.then33.i, label %if.end47.i, !dbg !773

if.then33.i:                                      ; preds = %if.end31.i
  %21 = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8, !dbg !774
  %cmp34.i = icmp eq i64 %21, 0, !dbg !777
  br i1 %cmp34.i, label %land.lhs.true35.i, label %if.end53.i, !dbg !778

land.lhs.true35.i:                                ; preds = %if.then33.i
  %22 = load i8, ptr %src_eof.i, align 8, !dbg !779, !range !450, !noundef !451
  %loadedv37.i = trunc nuw i8 %22 to i1, !dbg !779
  br i1 %loadedv37.i, label %if.end15, label %if.then38.i, !dbg !780

if.then38.i:                                      ; preds = %land.lhs.true35.i
  %call39.i = tail call i64 @io_read(ptr noundef nonnull %call, ptr noundef nonnull @in_buf, i64 noundef 1) #8, !dbg !781
  store i64 %call39.i, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8, !dbg !783
  switch i64 %call39.i, label %if.end53.i [
    i64 -1, label %if.end15
    i64 0, label %while.end.loopexit100.i
  ], !dbg !784

if.end47.i:                                       ; preds = %if.end31.i
    #dbg_value(i32 %call10.i31, !712, !DIExpression(), !719)
  br i1 %19, label %if.end53.i, label %if.end57.i, !dbg !785

if.end53.i:                                       ; preds = %if.end47.i, %if.then38.i, %if.then33.i
  %ret.087.i = phi i32 [ 9, %if.then33.i ], [ 9, %if.then38.i ], [ %call10.i31, %if.end47.i ]
  %23 = load ptr, ptr %call, align 8, !dbg !786
  %call50.i = tail call ptr @message_strm(i32 noundef %ret.087.i) #8, !dbg !789
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.9, ptr noundef %23, ptr noundef %call50.i) #8, !dbg !790
  %cmp54.i = icmp eq i32 %ret.087.i, 6, !dbg !791
  br i1 %cmp54.i, label %if.then55.i, label %if.end15, !dbg !793

if.then55.i:                                      ; preds = %if.end53.i
  %call56.i = tail call i64 @lzma_memusage(ptr noundef nonnull @strm) #8, !dbg !794
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %call56.i) #8, !dbg !796
  br label %if.end15, !dbg !797

if.end57.i:                                       ; preds = %if.end47.i
  %24 = load ptr, ptr %call, align 8, !dbg !798
  %call52.i = tail call ptr @message_strm(i32 noundef %call10.i31) #8, !dbg !800
  tail call void (ptr, ...) @message_warning(ptr noundef nonnull @.str.9, ptr noundef %24, ptr noundef %call52.i) #8, !dbg !801
  br label %if.end61.i, !dbg !802

if.end61.i:                                       ; preds = %if.end57.i, %if.end18.i
    #dbg_value(i8 0, !713, !DIExpression(), !719)
  tail call void @message_progress_update() #8, !dbg !803
    #dbg_value(i32 %action.1.i, !710, !DIExpression(), !719)
  %25 = load i32, ptr @user_abort, align 4, !dbg !725
  %tobool.not.i = icmp eq i32 %25, 0, !dbg !726
  br i1 %tobool.not.i, label %while.body.i, label %if.end15, !dbg !727, !llvm.loop !804

while.end.loopexit100.i:                          ; preds = %if.then38.i
  br label %if.end15, !dbg !806

if.else:                                          ; preds = %if.then9
    #dbg_value(ptr %call, !807, !DIExpression(), !810)
  %.pre.i = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8, !dbg !812
  br label %while.cond.i, !dbg !813

while.cond.i:                                     ; preds = %if.end2.i, %if.else
  %26 = phi i64 [ %call3.i38, %if.end2.i ], [ %.pre.i, %if.else ], !dbg !812
  %cmp.not.i = icmp eq i64 %26, 0, !dbg !814
  %27 = load i32, ptr @user_abort, align 4
  %tobool.not.i35 = icmp ne i32 %27, 0
  %or.cond.not.i = select i1 %cmp.not.i, i1 true, i1 %tobool.not.i35, !dbg !813
  br i1 %or.cond.not.i, label %if.end15, label %if.end.i36, !dbg !813

if.end.i36:                                       ; preds = %while.cond.i
  %call.i37 = tail call zeroext i1 @io_write(ptr noundef nonnull %call, ptr noundef nonnull @in_buf, i64 noundef %26) #8, !dbg !815
  br i1 %call.i37, label %if.end15, label %if.end2.i, !dbg !818

if.end2.i:                                        ; preds = %if.end.i36
  %28 = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8, !dbg !819
  %29 = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 16), align 8, !dbg !820
  %add.i = add i64 %29, %28, !dbg !820
  store i64 %add.i, ptr getelementptr inbounds (i8, ptr @strm, i64 16), align 8, !dbg !820
  store i64 %add.i, ptr getelementptr inbounds (i8, ptr @strm, i64 40), align 8, !dbg !821
  tail call void @message_progress_update() #8, !dbg !822
  %call3.i38 = tail call i64 @io_read(ptr noundef nonnull %call, ptr noundef nonnull @in_buf, i64 noundef 8192) #8, !dbg !823
  store i64 %call3.i38, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8, !dbg !824
  %cmp4.i = icmp eq i64 %call3.i38, -1, !dbg !825
  br i1 %cmp4.i, label %if.end15, label %while.cond.i, !dbg !827, !llvm.loop !828

if.end15:                                         ; preds = %if.end2.i, %if.end.i36, %while.cond.i, %if.end61.i, %land.lhs.true26.i, %land.lhs.true14.i, %if.then.i33, %while.end.loopexit100.i, %if.then55.i, %if.end53.i, %if.then38.i, %land.lhs.true35.i, %if.then11
  %success.0.in = phi i1 [ false, %if.then11 ], [ false, %if.then38.i ], [ true, %land.lhs.true35.i ], [ true, %while.end.loopexit100.i ], [ false, %if.then55.i ], [ false, %if.end53.i ], [ false, %if.then.i33 ], [ false, %land.lhs.true14.i ], [ false, %land.lhs.true26.i ], [ false, %if.end61.i ], [ false, %if.end.i36 ], [ false, %if.end2.i ], [ %cmp.not.i, %while.cond.i ]
    #dbg_value(i1 %success.0.in, !587, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !597)
  tail call void @message_progress_end(i1 noundef zeroext %success.0.in) #8, !dbg !830
  br label %if.end18, !dbg !831

if.end18:                                         ; preds = %if.then47.i, %if.then50.i, %coder_init.exit, %if.end15, %lor.lhs.false, %if.end
  %success.2 = phi i1 [ false, %if.end ], [ false, %coder_init.exit ], [ %success.0.in, %if.end15 ], [ false, %lor.lhs.false ], [ false, %if.then50.i ], [ false, %if.then47.i ], !dbg !832
    #dbg_value(i8 poison, !587, !DIExpression(), !597)
  tail call void @io_close(ptr noundef nonnull %call, i1 noundef zeroext %success.2) #8, !dbg !833
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end18
  ret void, !dbg !834
}

declare !dbg !835 void @message_filename(ptr noundef) local_unnamed_addr #2

declare !dbg !836 ptr @io_open_src(ptr noundef) local_unnamed_addr #2

declare !dbg !839 i64 @io_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !843 zeroext i1 @io_open_dest(ptr noundef) local_unnamed_addr #2

declare !dbg !844 void @message_progress_start(ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !848 void @message_progress_end(i1 noundef zeroext) local_unnamed_addr #2

declare !dbg !851 void @io_close(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !854 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

declare !dbg !858 void @tuklib_exit(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !862 i32 @lzma_stream_encoder(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !866 i32 @lzma_alone_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !871 i32 @lzma_raw_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @is_format_lzma() unnamed_addr #1 !dbg !874 {
entry:
  %filter = alloca %struct.lzma_filter, align 8, !DIAssignID !885
    #dbg_assign(i1 undef, !876, !DIExpression(), !885, ptr %filter, !DIExpression(), !886)
  %0 = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8, !dbg !887
  %cmp = icmp ult i64 %0, 13, !dbg !889
  br i1 %cmp, label %return, label %if.end, !dbg !890

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %filter) #8, !dbg !891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %filter, ptr noundef nonnull align 8 dereferenceable(16) @__const.is_format_lzma.filter, i64 16, i1 false), !dbg !892, !DIAssignID !893
    #dbg_assign(i1 undef, !876, !DIExpression(), !893, ptr %filter, !DIExpression(), !886)
  %call = call i32 @lzma_properties_decode(ptr noundef nonnull %filter, ptr noundef null, ptr noundef nonnull @in_buf, i64 noundef 5) #8, !dbg !894
  %cmp1.not = icmp eq i32 %call, 0, !dbg !896
  br i1 %cmp1.not, label %if.end3, label %cleanup33, !dbg !897

if.end3:                                          ; preds = %if.end
  %options = getelementptr inbounds i8, ptr %filter, i64 8, !dbg !898
  %1 = load ptr, ptr %options, align 8, !dbg !898
    #dbg_value(ptr %1, !877, !DIExpression(), !886)
  %2 = load i32, ptr %1, align 8, !dbg !899
    #dbg_value(i32 %2, !878, !DIExpression(), !886)
  call void @free(ptr noundef %1) #8, !dbg !900
  %cmp5.not = icmp eq i32 %2, -1, !dbg !901
  br i1 %cmp5.not, label %if.end19, label %if.then6, !dbg !902

if.then6:                                         ; preds = %if.end3
  %sub = add i32 %2, -1, !dbg !903
    #dbg_value(i32 %sub, !879, !DIExpression(), !904)
  %shr = lshr i32 %sub, 2, !dbg !905
  %or = or i32 %shr, %sub, !dbg !906
    #dbg_value(i32 %or, !879, !DIExpression(), !904)
  %shr7 = lshr i32 %or, 3, !dbg !907
  %or8 = or i32 %shr7, %or, !dbg !908
    #dbg_value(i32 %or8, !879, !DIExpression(), !904)
  %shr9 = lshr i32 %or8, 4, !dbg !909
  %or10 = or i32 %shr9, %or8, !dbg !910
    #dbg_value(i32 %or10, !879, !DIExpression(), !904)
  %shr11 = lshr i32 %or10, 8, !dbg !911
  %or12 = or i32 %shr11, %or10, !dbg !912
    #dbg_value(i32 %or12, !879, !DIExpression(), !904)
  %shr13 = lshr i32 %or12, 16, !dbg !913
  %or14 = or i32 %shr13, %or12, !dbg !914
    #dbg_value(i32 %or14, !879, !DIExpression(), !904)
  %inc = add i32 %or14, 1, !dbg !915
    #dbg_value(i32 %inc, !879, !DIExpression(), !904)
  %cmp15 = icmp eq i32 %inc, %2, !dbg !916
  %cmp16 = icmp ne i32 %2, 0
  %or.cond.not = and i1 %cmp16, %cmp15, !dbg !918
  br i1 %or.cond.not, label %if.end19, label %cleanup33

if.end19:                                         ; preds = %if.then6, %if.end3
    #dbg_value(i64 0, !882, !DIExpression(), !886)
    #dbg_value(i64 0, !883, !DIExpression(), !919)
    #dbg_value(i64 0, !883, !DIExpression(), !919)
    #dbg_value(i64 0, !882, !DIExpression(), !886)
  %3 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 5), align 1, !dbg !920
  %conv = zext i8 %3 to i64, !dbg !922
    #dbg_value(i64 %conv, !882, !DIExpression(), !886)
    #dbg_value(i64 1, !883, !DIExpression(), !919)
  %4 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 6), align 2, !dbg !920
  %conv.1 = zext i8 %4 to i64, !dbg !922
  %shl.1 = shl nuw nsw i64 %conv.1, 8, !dbg !923
  %or21.1 = or disjoint i64 %shl.1, %conv, !dbg !924
    #dbg_value(i64 %or21.1, !882, !DIExpression(), !886)
    #dbg_value(i64 2, !883, !DIExpression(), !919)
  %5 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 7), align 1, !dbg !920
  %conv.2 = zext i8 %5 to i64, !dbg !922
  %shl.2 = shl nuw nsw i64 %conv.2, 16, !dbg !923
  %or21.2 = or disjoint i64 %shl.2, %or21.1, !dbg !924
    #dbg_value(i64 %or21.2, !882, !DIExpression(), !886)
    #dbg_value(i64 3, !883, !DIExpression(), !919)
  %6 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 8), align 8, !dbg !920
  %conv.3 = zext i8 %6 to i64, !dbg !922
  %shl.3 = shl nuw nsw i64 %conv.3, 24, !dbg !923
  %or21.3 = or disjoint i64 %shl.3, %or21.2, !dbg !924
    #dbg_value(i64 %or21.3, !882, !DIExpression(), !886)
    #dbg_value(i64 4, !883, !DIExpression(), !919)
  %7 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 9), align 1, !dbg !920
  %conv.4 = zext i8 %7 to i64, !dbg !922
  %shl.4 = shl nuw nsw i64 %conv.4, 32, !dbg !923
  %or21.4 = or disjoint i64 %shl.4, %or21.3, !dbg !924
    #dbg_value(i64 %or21.4, !882, !DIExpression(), !886)
    #dbg_value(i64 5, !883, !DIExpression(), !919)
  %8 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 10), align 2, !dbg !920
  %conv.5 = zext i8 %8 to i64, !dbg !922
  %shl.5 = shl nuw nsw i64 %conv.5, 40, !dbg !923
  %or21.5 = or i64 %shl.5, %or21.4, !dbg !924
    #dbg_value(i64 %or21.5, !882, !DIExpression(), !886)
    #dbg_value(i64 6, !883, !DIExpression(), !919)
  %9 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 11), align 1, !dbg !920
  %conv.6 = zext i8 %9 to i64, !dbg !922
  %shl.6 = shl nuw nsw i64 %conv.6, 48, !dbg !923
  %or21.6 = or i64 %shl.6, %or21.5, !dbg !924
    #dbg_value(i64 %or21.6, !882, !DIExpression(), !886)
    #dbg_value(i64 7, !883, !DIExpression(), !919)
  %10 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 12), align 4, !dbg !920
  %conv.7 = zext i8 %10 to i64, !dbg !922
  %shl.7 = shl nuw i64 %conv.7, 56, !dbg !923
  %or21.7 = or i64 %shl.7, %or21.6, !dbg !924
    #dbg_value(i64 %or21.7, !882, !DIExpression(), !886)
    #dbg_value(i64 8, !883, !DIExpression(), !919)
  %11 = add i64 %or21.7, 1, !dbg !925
  %or.cond34 = icmp ult i64 %11, 274877906946, !dbg !925
  br label %cleanup33

cleanup33:                                        ; preds = %if.end19, %if.then6, %if.end
  %retval.3 = phi i1 [ false, %if.end ], [ %or.cond34, %if.end19 ], [ false, %if.then6 ], !dbg !886
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %filter) #8, !dbg !927
  br label %return

return:                                           ; preds = %entry, %cleanup33
  %retval.4 = phi i1 [ %retval.3, %cleanup33 ], [ false, %entry ], !dbg !886
  ret i1 %retval.4, !dbg !927
}

declare !dbg !928 i32 @lzma_stream_decoder(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !931 i32 @lzma_alone_decoder(ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !934 i32 @lzma_raw_decoder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !935 i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !938 void @message_error(ptr noundef, ...) local_unnamed_addr #2

declare !dbg !939 ptr @message_strm(i32 noundef) local_unnamed_addr #2

declare !dbg !942 i64 @lzma_memusage(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !947 i32 @lzma_properties_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !951 zeroext i1 @io_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !956 void @message_warning(ptr noundef, ...) local_unnamed_addr #2

declare !dbg !957 void @message_progress_update() local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!294, !295, !296, !297, !298, !299, !300}
!llvm.ident = !{!301}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "opt_mode", scope: !2, file: !3, line: 24, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !81, globals: !88, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "xz/coder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "77d55822ff15f27cb84d555ab0336be9")
!4 = !{!5, !13, !19, !26, !31, !38, !42, !50, !55, !61, !75}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "operation_mode", file: !6, line: 13, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "xz/coder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "17fcfb290997745d98f9605d60a11c50")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODE_COMPRESS", value: 0)
!10 = !DIEnumerator(name: "MODE_DECOMPRESS", value: 1)
!11 = !DIEnumerator(name: "MODE_TEST", value: 2)
!12 = !DIEnumerator(name: "MODE_LIST", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "format_type", file: !6, line: 22, baseType: !7, size: 32, elements: !14)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "FORMAT_AUTO", value: 0)
!16 = !DIEnumerator(name: "FORMAT_XZ", value: 1)
!17 = !DIEnumerator(name: "FORMAT_LZMA", value: 2)
!18 = !DIEnumerator(name: "FORMAT_RAW", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 27, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!23 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!24 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!25 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 138, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "liblzma/api/lzma/lzma.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!30 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 58, baseType: !7, size: 32, elements: !32)
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!34 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!35 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!36 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!37 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 44, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!40 = !{!41}
!41 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "message_verbosity", file: !43, line: 14, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "xz/message.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "46ce4fae4ea23be71658f9b2e1a5aef3")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "V_SILENT", value: 0)
!46 = !DIEnumerator(name: "V_ERROR", value: 1)
!47 = !DIEnumerator(name: "V_WARNING", value: 2)
!48 = !DIEnumerator(name: "V_VERBOSE", value: 3)
!49 = !DIEnumerator(name: "V_DEBUG", value: 4)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "coder_init_ret", file: !3, line: 17, baseType: !7, size: 32, elements: !51)
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "CODER_INIT_NORMAL", value: 0)
!53 = !DIEnumerator(name: "CODER_INIT_PASSTHRU", value: 1)
!54 = !DIEnumerator(name: "CODER_INIT_ERROR", value: 2)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "exit_status_type", file: !56, line: 14, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "xz/main.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "f54f82fff34a105635379e91892f4bd0")
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "E_SUCCESS", value: 0)
!59 = !DIEnumerator(name: "E_ERROR", value: 1)
!60 = !DIEnumerator(name: "E_WARNING", value: 2)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 57, baseType: !7, size: 32, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!63 = !DIEnumerator(name: "LZMA_OK", value: 0)
!64 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!65 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!66 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!67 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!68 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!69 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!70 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!71 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!72 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!73 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!74 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 250, baseType: !7, size: 32, elements: !76)
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!78 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!79 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!80 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !84, line: 27, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !86, line: 45, baseType: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!87 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!88 = !{!0, !89, !91, !94, !100, !161, !166, !171, !176, !181, !183, !188, !193, !206, !224, !227, !229, !231, !233, !238, !278, !283, !291}
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "opt_format", scope: !2, file: !3, line: 25, type: !13, isLocal: false, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "opt_auto_adjust", scope: !2, file: !3, line: 26, type: !93, isLocal: false, isDefinition: true)
!93 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 272, elements: !98)
!97 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!98 = !{!99}
!99 = !DISubrange(count: 34)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "opt_lzma", scope: !102, file: !3, line: 129, type: !122, isLocal: true, isDefinition: true)
!102 = distinct !DISubprogram(name: "coder_set_compression_settings", scope: !3, file: !3, line: 126, type: !103, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !105)
!103 = !DISubroutineType(types: !104)
!104 = !{null}
!105 = !{!106, !111, !113, !114, !117, !120, !159}
!106 = !DILocalVariable(name: "i", scope: !107, file: !3, line: 170, type: !109)
!107 = distinct !DILexicalBlock(scope: !108, file: !3, line: 170, column: 3)
!108 = distinct !DILexicalBlock(scope: !102, file: !3, line: 169, column: 6)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 18, baseType: !87)
!110 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!111 = !DILocalVariable(name: "memory_limit", scope: !102, file: !3, line: 181, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!113 = !DILocalVariable(name: "memory_usage", scope: !102, file: !3, line: 182, type: !83)
!114 = !DILocalVariable(name: "decmem", scope: !115, file: !3, line: 195, type: !112)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 194, column: 33)
!116 = distinct !DILexicalBlock(scope: !102, file: !3, line: 194, column: 6)
!117 = !DILocalVariable(name: "i", scope: !118, file: !3, line: 214, type: !109)
!118 = distinct !DILexicalBlock(scope: !119, file: !3, line: 202, column: 35)
!119 = distinct !DILexicalBlock(scope: !102, file: !3, line: 202, column: 6)
!120 = !DILocalVariable(name: "opt", scope: !118, file: !3, line: 225, type: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !27, line: 399, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 185, size: 896, elements: !124)
!124 = !{!125, !128, !134, !135, !136, !137, !138, !140, !141, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !154, !155, !156, !157, !158}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !123, file: !27, line: 217, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !84, line: 26, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !86, line: 42, baseType: !7)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !123, file: !27, line: 240, baseType: !129, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !84, line: 24, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !86, line: 38, baseType: !133)
!133 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !123, file: !27, line: 254, baseType: !126, size: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !123, file: !27, line: 281, baseType: !126, size: 32, offset: 160)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !123, file: !27, line: 293, baseType: !126, size: 32, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !123, file: !27, line: 316, baseType: !126, size: 32, offset: 224)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !123, file: !27, line: 322, baseType: !139, size: 32, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !27, line: 155, baseType: !26)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !123, file: !27, line: 342, baseType: !126, size: 32, offset: 288)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !123, file: !27, line: 345, baseType: !142, size: 32, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !27, line: 111, baseType: !31)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !123, file: !27, line: 375, baseType: !126, size: 32, offset: 352)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !123, file: !27, line: 384, baseType: !126, size: 32, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !123, file: !27, line: 385, baseType: !126, size: 32, offset: 416)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !123, file: !27, line: 386, baseType: !126, size: 32, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !123, file: !27, line: 387, baseType: !126, size: 32, offset: 480)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !123, file: !27, line: 388, baseType: !126, size: 32, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !123, file: !27, line: 389, baseType: !126, size: 32, offset: 544)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !123, file: !27, line: 390, baseType: !126, size: 32, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !123, file: !27, line: 391, baseType: !126, size: 32, offset: 608)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !123, file: !27, line: 392, baseType: !153, size: 32, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !39, line: 46, baseType: !38)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !123, file: !27, line: 393, baseType: !153, size: 32, offset: 672)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !123, file: !27, line: 394, baseType: !153, size: 32, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !123, file: !27, line: 395, baseType: !153, size: 32, offset: 736)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !123, file: !27, line: 396, baseType: !82, size: 64, offset: 768)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !123, file: !27, line: 397, baseType: !82, size: 64, offset: 832)
!159 = !DILocalVariable(name: "orig_dict_size", scope: !118, file: !3, line: 226, type: !160)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 139, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 344, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 43)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !3, line: 141, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 552, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 69)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 384, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 48)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 328, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 41)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !163, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 336, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 42)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 254, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 808, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 101)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "filters", scope: !2, file: !3, line: 33, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 640, elements: !204)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !197, line: 65, baseType: !198)
!197 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !197, line: 43, size: 128, elements: !199)
!199 = !{!200, !203}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !198, file: !197, line: 54, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !202, line: 63, baseType: !83)
!202 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!203 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !198, file: !197, line: 63, baseType: !82, size: 64, offset: 64)
!204 = !{!205}
!205 = !DISubrange(count: 5)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "in_buf", scope: !2, file: !3, line: 36, type: !208, isLocal: true, isDefinition: true)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_buf", file: !209, line: 28, baseType: !210)
!209 = !DIFile(filename: "xz/file_io.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "4b45406630bbddcbf05b6d0a795f1a7c")
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !209, line: 24, size: 65536, elements: !211)
!211 = !{!212, !216, !220}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !210, file: !209, line: 25, baseType: !213, size: 65536)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 65536, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 8192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !210, file: !209, line: 26, baseType: !217, size: 65536)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 65536, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 2048)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !210, file: !209, line: 27, baseType: !221, size: 65536)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 65536, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 1024)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "check", scope: !2, file: !3, line: 46, type: !226, isLocal: true, isDefinition: true)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "check_default", scope: !2, file: !3, line: 49, type: !93, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "preset_number", scope: !2, file: !3, line: 43, type: !126, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "filters_count", scope: !2, file: !3, line: 40, type: !126, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 464, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 58)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "strm", scope: !2, file: !3, line: 30, type: !240, isLocal: true, isDefinition: true)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !39, line: 490, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 453, size: 1088, elements: !242)
!242 = !{!243, !244, !245, !246, !248, !249, !250, !264, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !241, file: !39, line: 454, baseType: !129, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !241, file: !39, line: 455, baseType: !109, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !241, file: !39, line: 456, baseType: !83, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !241, file: !39, line: 458, baseType: !247, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !241, file: !39, line: 459, baseType: !109, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !241, file: !39, line: 460, baseType: !83, size: 64, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !241, file: !39, line: 468, baseType: !251, size: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !39, line: 403, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 341, size: 192, elements: !254)
!254 = !{!255, !259, !263}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !253, file: !39, line: 376, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!82, !82, !109, !109}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !253, file: !39, line: 390, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !82, !82}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !253, file: !39, line: 401, baseType: !82, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !241, file: !39, line: 471, baseType: !265, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !39, line: 411, baseType: !267)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !39, line: 411, flags: DIFlagFwdDecl)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !241, file: !39, line: 479, baseType: !82, size: 64, offset: 512)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !241, file: !39, line: 480, baseType: !82, size: 64, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !241, file: !39, line: 481, baseType: !82, size: 64, offset: 640)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !241, file: !39, line: 482, baseType: !82, size: 64, offset: 704)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !241, file: !39, line: 483, baseType: !83, size: 64, offset: 768)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !241, file: !39, line: 484, baseType: !83, size: 64, offset: 832)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !241, file: !39, line: 485, baseType: !109, size: 64, offset: 896)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !241, file: !39, line: 486, baseType: !109, size: 64, offset: 960)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !241, file: !39, line: 487, baseType: !153, size: 32, offset: 1024)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !241, file: !39, line: 488, baseType: !153, size: 32, offset: 1056)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 56, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 7)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "magic", scope: !285, file: !3, line: 295, type: !288, isLocal: true, isDefinition: true)
!285 = distinct !DISubprogram(name: "is_format_xz", scope: !3, file: !3, line: 292, type: !286, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!286 = !DISubroutineType(types: !287)
!287 = !{!93}
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 48, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 6)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "out_buf", scope: !2, file: !3, line: 37, type: !208, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!294 = !{i32 7, !"Dwarf Version", i32 5}
!295 = !{i32 2, !"Debug Info Version", i32 3}
!296 = !{i32 1, !"wchar_size", i32 4}
!297 = !{i32 8, !"PIC Level", i32 2}
!298 = !{i32 7, !"PIE Level", i32 2}
!299 = !{i32 7, !"uwtable", i32 2}
!300 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!301 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!302 = distinct !DISubprogram(name: "coder_set_check", scope: !3, file: !3, line: 53, type: !303, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !305)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !226}
!305 = !{!306}
!306 = !DILocalVariable(name: "new_check", arg: 1, scope: !302, file: !3, line: 53, type: !226)
!307 = !DILocation(line: 0, scope: !302)
!308 = !DILocation(line: 55, column: 8, scope: !302)
!309 = !DILocation(line: 56, column: 16, scope: !302)
!310 = !DILocation(line: 57, column: 2, scope: !302)
!311 = distinct !DISubprogram(name: "coder_set_preset", scope: !3, file: !3, line: 77, type: !312, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !126}
!314 = !{!315}
!315 = !DILocalVariable(name: "new_preset", arg: 1, scope: !311, file: !3, line: 77, type: !126)
!316 = !DILocation(line: 0, scope: !311)
!317 = !DILocation(line: 79, column: 16, scope: !311)
!318 = !DILocation(line: 80, column: 16, scope: !311)
!319 = !DILocation(line: 66, column: 23, scope: !320, inlinedAt: !321)
!320 = distinct !DISubprogram(name: "forget_filter_chain", scope: !3, file: !3, line: 62, type: !103, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!321 = distinct !DILocation(line: 81, column: 2, scope: !311)
!322 = !DILocation(line: 66, column: 2, scope: !320, inlinedAt: !321)
!323 = !DILocation(line: 67, column: 3, scope: !324, inlinedAt: !321)
!324 = distinct !DILexicalBlock(scope: !320, file: !3, line: 66, column: 28)
!325 = !DILocation(line: 68, column: 31, scope: !324, inlinedAt: !321)
!326 = !DILocation(line: 68, column: 3, scope: !324, inlinedAt: !321)
!327 = !DILocation(line: 69, column: 34, scope: !324, inlinedAt: !321)
!328 = distinct !{!328, !322, !329}
!329 = !DILocation(line: 70, column: 2, scope: !320, inlinedAt: !321)
!330 = !DILocation(line: 82, column: 2, scope: !311)
!331 = distinct !DISubprogram(name: "coder_set_extreme", scope: !3, file: !3, line: 87, type: !103, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!332 = !DILocation(line: 89, column: 16, scope: !331)
!333 = !DILocation(line: 66, column: 23, scope: !320, inlinedAt: !334)
!334 = distinct !DILocation(line: 90, column: 2, scope: !331)
!335 = !DILocation(line: 66, column: 2, scope: !320, inlinedAt: !334)
!336 = !DILocation(line: 67, column: 3, scope: !324, inlinedAt: !334)
!337 = !DILocation(line: 68, column: 31, scope: !324, inlinedAt: !334)
!338 = !DILocation(line: 68, column: 3, scope: !324, inlinedAt: !334)
!339 = !DILocation(line: 69, column: 34, scope: !324, inlinedAt: !334)
!340 = distinct !{!340, !335, !341}
!341 = !DILocation(line: 70, column: 2, scope: !320, inlinedAt: !334)
!342 = !DILocation(line: 91, column: 2, scope: !331)
!343 = distinct !DISubprogram(name: "coder_add_filter", scope: !3, file: !3, line: 96, type: !344, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !346)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !201, !82}
!346 = !{!347, !348}
!347 = !DILocalVariable(name: "id", arg: 1, scope: !343, file: !3, line: 96, type: !201)
!348 = !DILocalVariable(name: "options", arg: 2, scope: !343, file: !3, line: 96, type: !82)
!349 = !DILocation(line: 0, scope: !343)
!350 = !DILocation(line: 98, column: 6, scope: !351)
!351 = distinct !DILexicalBlock(scope: !343, file: !3, line: 98, column: 6)
!352 = !DILocation(line: 98, column: 20, scope: !351)
!353 = !DILocation(line: 98, column: 6, scope: !343)
!354 = !DILocation(line: 99, column: 3, scope: !351)
!355 = !DILocation(line: 101, column: 10, scope: !343)
!356 = !DILocation(line: 101, column: 2, scope: !343)
!357 = !DILocation(line: 101, column: 28, scope: !343)
!358 = !DILocation(line: 102, column: 25, scope: !343)
!359 = !DILocation(line: 102, column: 33, scope: !343)
!360 = !DILocation(line: 103, column: 2, scope: !343)
!361 = !DILocation(line: 109, column: 16, scope: !343)
!362 = !DILocation(line: 111, column: 2, scope: !343)
!363 = !DISubprogram(name: "message_fatal", scope: !43, file: !43, line: 70, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !366, null}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!368 = !DILocation(line: 131, column: 6, scope: !369)
!369 = distinct !DILexicalBlock(scope: !102, file: !3, line: 131, column: 6)
!370 = !DILocation(line: 131, column: 20, scope: !369)
!371 = !DILocation(line: 162, column: 6, scope: !372)
!372 = distinct !DILexicalBlock(scope: !102, file: !3, line: 162, column: 6)
!373 = !DILocation(line: 131, column: 6, scope: !102)
!374 = !DILocation(line: 136, column: 18, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 136, column: 7)
!376 = distinct !DILexicalBlock(scope: !369, file: !3, line: 131, column: 26)
!377 = !DILocation(line: 136, column: 7, scope: !376)
!378 = !DILocation(line: 139, column: 4, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !3, line: 136, column: 33)
!380 = !DILocation(line: 141, column: 4, scope: !379)
!381 = !DILocation(line: 144, column: 3, scope: !379)
!382 = !DILocation(line: 147, column: 35, scope: !383)
!383 = distinct !DILexicalBlock(scope: !376, file: !3, line: 147, column: 7)
!384 = !DILocation(line: 147, column: 7, scope: !383)
!385 = !DILocation(line: 147, column: 7, scope: !376)
!386 = !DILocation(line: 148, column: 4, scope: !383)
!387 = !DILocation(line: 151, column: 19, scope: !376)
!388 = !DILocation(line: 151, column: 30, scope: !376)
!389 = !DILocation(line: 151, column: 17, scope: !376)
!390 = !DILocation(line: 153, column: 22, scope: !376)
!391 = !DILocation(line: 154, column: 17, scope: !376)
!392 = !DILocation(line: 155, column: 2, scope: !376)
!393 = !DILocation(line: 158, column: 10, scope: !102)
!394 = !DILocation(line: 158, column: 2, scope: !102)
!395 = !DILocation(line: 158, column: 28, scope: !102)
!396 = !DILocation(line: 162, column: 17, scope: !372)
!397 = !DILocation(line: 162, column: 32, scope: !372)
!398 = !DILocation(line: 162, column: 50, scope: !372)
!399 = !DILocation(line: 163, column: 4, scope: !372)
!400 = !DILocation(line: 164, column: 3, scope: !372)
!401 = !DILocation(line: 169, column: 6, scope: !108)
!402 = !DILocation(line: 169, column: 17, scope: !108)
!403 = !DILocation(line: 0, scope: !107)
!404 = !DILocation(line: 169, column: 6, scope: !102)
!405 = !DILocation(line: 171, column: 8, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !3, line: 171, column: 8)
!407 = distinct !DILexicalBlock(scope: !107, file: !3, line: 170, column: 3)
!408 = !DILocation(line: 171, column: 19, scope: !406)
!409 = !DILocation(line: 171, column: 22, scope: !406)
!410 = !DILocation(line: 171, column: 8, scope: !407)
!411 = !DILocation(line: 172, column: 5, scope: !406)
!412 = !DILocation(line: 170, column: 26, scope: !407)
!413 = !DILocation(line: 170, column: 41, scope: !407)
!414 = !DILocation(line: 170, column: 24, scope: !407)
!415 = !DILocation(line: 170, column: 3, scope: !107)
!416 = distinct !{!416, !415, !417}
!417 = !DILocation(line: 173, column: 29, scope: !107)
!418 = !DILocation(line: 176, column: 2, scope: !102)
!419 = !DILocation(line: 181, column: 54, scope: !102)
!420 = !DILocation(line: 181, column: 32, scope: !102)
!421 = !DILocation(line: 0, scope: !102)
!422 = !DILocation(line: 183, column: 6, scope: !423)
!423 = distinct !DILexicalBlock(scope: !102, file: !3, line: 183, column: 6)
!424 = !DILocation(line: 183, column: 15, scope: !423)
!425 = !DILocation(line: 183, column: 6, scope: !102)
!426 = !DILocation(line: 184, column: 18, scope: !423)
!427 = !DILocation(line: 184, column: 3, scope: !423)
!428 = !DILocation(line: 186, column: 18, scope: !423)
!429 = !DILocation(line: 0, scope: !423)
!430 = !DILocation(line: 188, column: 19, scope: !431)
!431 = distinct !DILexicalBlock(scope: !102, file: !3, line: 188, column: 6)
!432 = !DILocation(line: 188, column: 6, scope: !102)
!433 = !DILocation(line: 189, column: 3, scope: !431)
!434 = !DILocation(line: 193, column: 2, scope: !102)
!435 = !DILocation(line: 194, column: 6, scope: !116)
!436 = !DILocation(line: 194, column: 15, scope: !116)
!437 = !DILocation(line: 194, column: 6, scope: !102)
!438 = !DILocation(line: 195, column: 27, scope: !115)
!439 = !DILocation(line: 0, scope: !115)
!440 = !DILocation(line: 196, column: 14, scope: !441)
!441 = distinct !DILexicalBlock(scope: !115, file: !3, line: 196, column: 7)
!442 = !DILocation(line: 196, column: 7, scope: !115)
!443 = !DILocation(line: 199, column: 7, scope: !441)
!444 = !DILocation(line: 198, column: 28, scope: !441)
!445 = !DILocation(line: 197, column: 4, scope: !441)
!446 = !DILocation(line: 202, column: 19, scope: !119)
!447 = !DILocation(line: 202, column: 6, scope: !102)
!448 = !DILocation(line: 206, column: 8, scope: !449)
!449 = distinct !DILexicalBlock(scope: !118, file: !3, line: 206, column: 7)
!450 = !{i8 0, i8 2}
!451 = !{}
!452 = !DILocation(line: 206, column: 24, scope: !449)
!453 = !DILocalVariable(name: "memory_usage", arg: 1, scope: !454, file: !3, line: 116, type: !83)
!454 = distinct !DISubprogram(name: "memlimit_too_small", scope: !3, file: !3, line: 116, type: !455, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !83}
!457 = !{!453}
!458 = !DILocation(line: 0, scope: !454, inlinedAt: !459)
!459 = distinct !DILocation(line: 207, column: 4, scope: !449)
!460 = !DILocation(line: 118, column: 2, scope: !454, inlinedAt: !459)
!461 = !DILocation(line: 120, column: 2, scope: !454, inlinedAt: !459)
!462 = !DILocation(line: 121, column: 2, scope: !454, inlinedAt: !459)
!463 = !DILocation(line: 207, column: 4, scope: !449)
!464 = !DILocation(line: 215, column: 3, scope: !118)
!465 = !DILocation(line: 0, scope: !118)
!466 = !DILocation(line: 215, column: 10, scope: !118)
!467 = !DILocation(line: 215, column: 21, scope: !118)
!468 = !DILocation(line: 216, column: 5, scope: !118)
!469 = !DILocation(line: 0, scope: !454, inlinedAt: !470)
!470 = distinct !DILocation(line: 218, column: 5, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 217, column: 8)
!472 = distinct !DILexicalBlock(scope: !118, file: !3, line: 216, column: 44)
!473 = !DILocation(line: 118, column: 2, scope: !454, inlinedAt: !470)
!474 = !DILocation(line: 120, column: 2, scope: !454, inlinedAt: !470)
!475 = !DILocation(line: 121, column: 2, scope: !454, inlinedAt: !470)
!476 = !DILocation(line: 218, column: 5, scope: !471)
!477 = !DILocation(line: 220, column: 4, scope: !472)
!478 = distinct !{!478, !464, !479}
!479 = !DILocation(line: 221, column: 3, scope: !118)
!480 = !DILocation(line: 225, column: 39, scope: !118)
!481 = !DILocation(line: 226, column: 40, scope: !118)
!482 = !DILocation(line: 227, column: 18, scope: !118)
!483 = !DILocation(line: 228, column: 3, scope: !118)
!484 = !DILocation(line: 236, column: 23, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 236, column: 8)
!486 = distinct !DILexicalBlock(scope: !118, file: !3, line: 228, column: 16)
!487 = !DILocation(line: 236, column: 8, scope: !486)
!488 = !DILocation(line: 0, scope: !454, inlinedAt: !489)
!489 = distinct !DILocation(line: 237, column: 5, scope: !485)
!490 = !DILocation(line: 118, column: 2, scope: !454, inlinedAt: !489)
!491 = !DILocation(line: 120, column: 2, scope: !454, inlinedAt: !489)
!492 = !DILocation(line: 121, column: 2, scope: !454, inlinedAt: !489)
!493 = !DILocation(line: 237, column: 5, scope: !485)
!494 = !DILocation(line: 239, column: 19, scope: !486)
!495 = !DILocation(line: 240, column: 21, scope: !496)
!496 = distinct !DILexicalBlock(scope: !486, file: !3, line: 240, column: 8)
!497 = !DILocation(line: 240, column: 8, scope: !486)
!498 = !DILocation(line: 241, column: 5, scope: !496)
!499 = !DILocation(line: 244, column: 21, scope: !500)
!500 = distinct !DILexicalBlock(scope: !486, file: !3, line: 244, column: 8)
!501 = !DILocation(line: 244, column: 8, scope: !486)
!502 = !DILocation(line: 250, column: 19, scope: !486)
!503 = distinct !{!503, !483, !504}
!504 = !DILocation(line: 251, column: 3, scope: !118)
!505 = !DILocation(line: 257, column: 16, scope: !118)
!506 = !DILocation(line: 257, column: 19, scope: !118)
!507 = !DILocation(line: 257, column: 5, scope: !118)
!508 = !DILocation(line: 259, column: 34, scope: !118)
!509 = !DILocation(line: 259, column: 19, scope: !118)
!510 = !DILocation(line: 259, column: 5, scope: !118)
!511 = !DILocation(line: 260, column: 24, scope: !118)
!512 = !DILocation(line: 260, column: 34, scope: !118)
!513 = !DILocation(line: 260, column: 19, scope: !118)
!514 = !DILocation(line: 260, column: 5, scope: !118)
!515 = !DILocation(line: 261, column: 19, scope: !118)
!516 = !DILocation(line: 261, column: 5, scope: !118)
!517 = !DILocation(line: 254, column: 3, scope: !118)
!518 = !DILocation(line: 263, column: 2, scope: !118)
!519 = !DILocation(line: 277, column: 6, scope: !520)
!520 = distinct !DILexicalBlock(scope: !102, file: !3, line: 277, column: 6)
!521 = !DILocation(line: 277, column: 6, scope: !102)
!522 = !DILocation(line: 281, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !3, line: 277, column: 21)
!524 = !DILocation(line: 282, column: 8, scope: !525)
!525 = distinct !DILexicalBlock(scope: !523, file: !3, line: 282, column: 7)
!526 = !DILocation(line: 282, column: 7, scope: !523)
!527 = !DILocation(line: 283, column: 10, scope: !525)
!528 = !DILocation(line: 283, column: 4, scope: !525)
!529 = !DILocation(line: 287, column: 1, scope: !102)
!530 = !DISubprogram(name: "message", scope: !43, file: !43, line: 47, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !42, !366, null}
!533 = !DISubprogram(name: "lzma_lzma_preset", scope: !27, file: !27, line: 419, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !121, !126}
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !39, line: 29, baseType: !133)
!537 = !DISubprogram(name: "message_bug", scope: !43, file: !43, line: 77, type: !103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DISubprogram(name: "message_filters_show", scope: !43, file: !43, line: 110, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !42, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!543 = !DISubprogram(name: "hardware_memlimit_get", scope: !544, file: !544, line: 35, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!544 = !DIFile(filename: "xz/hardware.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "7ed07700a75387ea633d6b4d26a671b7")
!545 = !DISubroutineType(types: !546)
!546 = !{!83, !5}
!547 = !DISubprogram(name: "lzma_raw_encoder_memusage", scope: !197, file: !197, line: 138, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!548 = !DISubroutineType(types: !549)
!549 = !{!83, !541}
!550 = !DISubprogram(name: "lzma_raw_decoder_memusage", scope: !197, file: !197, line: 157, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!551 = !DISubprogram(name: "message_mem_needed", scope: !43, file: !43, line: 90, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !42, !83}
!554 = !DISubprogram(name: "uint64_to_str", scope: !555, file: !555, line: 61, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!555 = !DIFile(filename: "xz/util.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "36136e1fc433f9fd7b2b728f8484a043")
!556 = !DISubroutineType(types: !557)
!557 = !{!366, !83, !126}
!558 = !DISubprogram(name: "round_up_to_mib", scope: !555, file: !555, line: 48, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!559 = !DISubroutineType(types: !560)
!560 = !{!83, !83}
!561 = !DISubprogram(name: "lzma_check_is_supported", scope: !20, file: !20, line: 81, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DISubroutineType(types: !563)
!563 = !{!536, !226}
!564 = distinct !DISubprogram(name: "coder_run", scope: !3, file: !3, line: 620, type: !565, scopeLine: 621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !366}
!567 = !{!568, !569, !587, !588, !592}
!568 = !DILocalVariable(name: "filename", arg: 1, scope: !564, file: !3, line: 620, type: !366)
!569 = !DILocalVariable(name: "pair", scope: !564, file: !3, line: 626, type: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "file_pair", file: !209, line: 66, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !209, line: 31, size: 320, elements: !573)
!573 = !{!574, !575, !577, !579, !580, !581, !582}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "src_name", scope: !572, file: !209, line: 34, baseType: !366, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "dest_name", scope: !572, file: !209, line: 38, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "src_fd", scope: !572, file: !209, line: 41, baseType: !578, size: 32, offset: 128)
!578 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dest_fd", scope: !572, file: !209, line: 44, baseType: !578, size: 32, offset: 160)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "src_eof", scope: !572, file: !209, line: 47, baseType: !93, size: 8, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dest_try_sparse", scope: !572, file: !209, line: 51, baseType: !93, size: 8, offset: 200)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dest_pending_sparse", scope: !572, file: !209, line: 56, baseType: !583, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !584, line: 56, baseType: !585)
!584 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !86, line: 152, baseType: !586)
!586 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!587 = !DILocalVariable(name: "success", scope: !564, file: !3, line: 631, type: !93)
!588 = !DILocalVariable(name: "init_ret", scope: !589, file: !3, line: 645, type: !591)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 638, column: 33)
!590 = distinct !DILexicalBlock(scope: !564, file: !3, line: 638, column: 6)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!592 = !DILocalVariable(name: "in_size", scope: !593, file: !3, line: 652, type: !112)
!593 = distinct !DILexicalBlock(scope: !594, file: !3, line: 650, column: 54)
!594 = distinct !DILexicalBlock(scope: !595, file: !3, line: 650, column: 8)
!595 = distinct !DILexicalBlock(scope: !596, file: !3, line: 647, column: 52)
!596 = distinct !DILexicalBlock(scope: !589, file: !3, line: 647, column: 7)
!597 = !DILocation(line: 0, scope: !564)
!598 = !DILocation(line: 623, column: 2, scope: !564)
!599 = !DILocation(line: 626, column: 20, scope: !564)
!600 = !DILocation(line: 627, column: 11, scope: !601)
!601 = distinct !DILexicalBlock(scope: !564, file: !3, line: 627, column: 6)
!602 = !DILocation(line: 627, column: 6, scope: !564)
!603 = !DILocation(line: 635, column: 15, scope: !564)
!604 = !DILocation(line: 636, column: 18, scope: !564)
!605 = !DILocation(line: 636, column: 16, scope: !564)
!606 = !DILocation(line: 638, column: 20, scope: !590)
!607 = !DILocation(line: 638, column: 6, scope: !564)
!608 = !DILocalVariable(name: "pair", arg: 1, scope: !609, file: !3, line: 355, type: !570)
!609 = distinct !DISubprogram(name: "coder_init", scope: !3, file: !3, line: 355, type: !610, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!50, !570}
!612 = !{!608, !613, !615, !618}
!613 = !DILocalVariable(name: "ret", scope: !609, file: !3, line: 357, type: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !39, line: 237, baseType: !61)
!615 = !DILocalVariable(name: "flags", scope: !616, file: !3, line: 379, type: !160)
!616 = distinct !DILexicalBlock(scope: !617, file: !3, line: 378, column: 9)
!617 = distinct !DILexicalBlock(scope: !609, file: !3, line: 359, column: 6)
!618 = !DILocalVariable(name: "init_format", scope: !616, file: !3, line: 384, type: !13)
!619 = !DILocation(line: 0, scope: !609, inlinedAt: !620)
!620 = distinct !DILocation(line: 645, column: 40, scope: !589)
!621 = !DILocation(line: 359, column: 6, scope: !617, inlinedAt: !620)
!622 = !DILocation(line: 359, column: 15, scope: !617, inlinedAt: !620)
!623 = !DILocation(line: 0, scope: !617, inlinedAt: !620)
!624 = !DILocation(line: 359, column: 6, scope: !609, inlinedAt: !620)
!625 = !DILocation(line: 360, column: 3, scope: !626, inlinedAt: !620)
!626 = distinct !DILexicalBlock(scope: !617, file: !3, line: 359, column: 33)
!627 = !DILocation(line: 367, column: 46, scope: !628, inlinedAt: !620)
!628 = distinct !DILexicalBlock(scope: !626, file: !3, line: 360, column: 23)
!629 = !DILocation(line: 367, column: 10, scope: !628, inlinedAt: !620)
!630 = !DILocation(line: 368, column: 4, scope: !628, inlinedAt: !620)
!631 = !DILocation(line: 371, column: 47, scope: !628, inlinedAt: !620)
!632 = !DILocation(line: 371, column: 10, scope: !628, inlinedAt: !620)
!633 = !DILocation(line: 372, column: 4, scope: !628, inlinedAt: !620)
!634 = !DILocation(line: 375, column: 10, scope: !628, inlinedAt: !620)
!635 = !DILocation(line: 376, column: 4, scope: !628, inlinedAt: !620)
!636 = !DILocation(line: 0, scope: !616, inlinedAt: !620)
!637 = !DILocation(line: 386, column: 3, scope: !616, inlinedAt: !620)
!638 = !DILocation(line: 296, column: 23, scope: !285, inlinedAt: !639)
!639 = distinct !DILocation(line: 388, column: 8, scope: !640, inlinedAt: !620)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 388, column: 8)
!641 = distinct !DILexicalBlock(scope: !616, file: !3, line: 386, column: 23)
!642 = !DILocation(line: 297, column: 4, scope: !285, inlinedAt: !639)
!643 = !DILocation(line: 297, column: 7, scope: !285, inlinedAt: !639)
!644 = !DILocation(line: 297, column: 47, scope: !285, inlinedAt: !639)
!645 = !DILocation(line: 388, column: 8, scope: !641, inlinedAt: !620)
!646 = !DILocation(line: 390, column: 13, scope: !647, inlinedAt: !620)
!647 = distinct !DILexicalBlock(scope: !640, file: !3, line: 390, column: 13)
!648 = !DILocation(line: 390, column: 13, scope: !640, inlinedAt: !620)
!649 = !DILocation(line: 296, column: 23, scope: !285, inlinedAt: !650)
!650 = distinct !DILocation(line: 395, column: 8, scope: !651, inlinedAt: !620)
!651 = distinct !DILexicalBlock(scope: !641, file: !3, line: 395, column: 8)
!652 = !DILocation(line: 297, column: 4, scope: !285, inlinedAt: !650)
!653 = !DILocation(line: 297, column: 7, scope: !285, inlinedAt: !650)
!654 = !DILocation(line: 297, column: 47, scope: !285, inlinedAt: !650)
!655 = !DILocation(line: 395, column: 8, scope: !641, inlinedAt: !620)
!656 = !DILocation(line: 400, column: 8, scope: !657, inlinedAt: !620)
!657 = distinct !DILexicalBlock(scope: !641, file: !3, line: 400, column: 8)
!658 = !DILocation(line: 400, column: 8, scope: !641, inlinedAt: !620)
!659 = !DILocation(line: 416, column: 8, scope: !660, inlinedAt: !620)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 416, column: 8)
!661 = distinct !DILexicalBlock(scope: !616, file: !3, line: 409, column: 24)
!662 = !DILocation(line: 416, column: 17, scope: !660, inlinedAt: !620)
!663 = !DILocation(line: 417, column: 6, scope: !660, inlinedAt: !620)
!664 = !DILocation(line: 417, column: 9, scope: !660, inlinedAt: !620)
!665 = !DILocation(line: 417, column: 20, scope: !660, inlinedAt: !620)
!666 = !DILocation(line: 417, column: 23, scope: !660, inlinedAt: !620)
!667 = !DILocation(line: 416, column: 8, scope: !661, inlinedAt: !620)
!668 = !DILocation(line: 425, column: 6, scope: !661, inlinedAt: !620)
!669 = !DILocation(line: 424, column: 10, scope: !661, inlinedAt: !620)
!670 = !DILocation(line: 427, column: 4, scope: !661, inlinedAt: !620)
!671 = !DILocation(line: 431, column: 6, scope: !661, inlinedAt: !620)
!672 = !DILocation(line: 430, column: 10, scope: !661, inlinedAt: !620)
!673 = !DILocation(line: 433, column: 4, scope: !661, inlinedAt: !620)
!674 = !DILocation(line: 438, column: 10, scope: !661, inlinedAt: !620)
!675 = !DILocation(line: 439, column: 4, scope: !661, inlinedAt: !620)
!676 = !DILocation(line: 446, column: 11, scope: !677, inlinedAt: !620)
!677 = distinct !DILexicalBlock(scope: !616, file: !3, line: 446, column: 7)
!678 = !DILocation(line: 446, column: 22, scope: !677, inlinedAt: !620)
!679 = !DILocation(line: 448, column: 19, scope: !680, inlinedAt: !620)
!680 = distinct !DILexicalBlock(scope: !677, file: !3, line: 446, column: 52)
!681 = !DILocation(line: 449, column: 10, scope: !680, inlinedAt: !620)
!682 = !DILocation(line: 450, column: 3, scope: !680, inlinedAt: !620)
!683 = !DILocation(line: 453, column: 10, scope: !684, inlinedAt: !620)
!684 = distinct !DILexicalBlock(scope: !609, file: !3, line: 453, column: 6)
!685 = !DILocation(line: 453, column: 6, scope: !609, inlinedAt: !620)
!686 = !DILocation(line: 454, column: 33, scope: !687, inlinedAt: !620)
!687 = distinct !DILexicalBlock(scope: !684, file: !3, line: 453, column: 22)
!688 = !DILocation(line: 454, column: 43, scope: !687, inlinedAt: !620)
!689 = !DILocation(line: 454, column: 3, scope: !687, inlinedAt: !620)
!690 = !DILocation(line: 455, column: 11, scope: !691, inlinedAt: !620)
!691 = distinct !DILexicalBlock(scope: !687, file: !3, line: 455, column: 7)
!692 = !DILocation(line: 455, column: 7, scope: !687, inlinedAt: !620)
!693 = !DILocation(line: 456, column: 32, scope: !691, inlinedAt: !620)
!694 = !DILocation(line: 456, column: 4, scope: !691, inlinedAt: !620)
!695 = !DILocation(line: 0, scope: !589)
!696 = !DILocation(line: 647, column: 36, scope: !596)
!697 = !DILocation(line: 650, column: 8, scope: !594)
!698 = !DILocation(line: 650, column: 17, scope: !594)
!699 = !DILocation(line: 650, column: 30, scope: !594)
!700 = !DILocation(line: 650, column: 34, scope: !594)
!701 = !DILocation(line: 650, column: 8, scope: !595)
!702 = !DILocation(line: 0, scope: !593)
!703 = !DILocation(line: 659, column: 5, scope: !593)
!704 = !DILocation(line: 662, column: 9, scope: !593)
!705 = !DILocalVariable(name: "pair", arg: 1, scope: !706, file: !3, line: 467, type: !570)
!706 = distinct !DISubprogram(name: "coder_normal", scope: !3, file: !3, line: 467, type: !707, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !709)
!707 = !DISubroutineType(types: !708)
!708 = !{!93, !570}
!709 = !{!705, !710, !712, !713, !714}
!710 = !DILocalVariable(name: "action", scope: !706, file: !3, line: 474, type: !711)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !39, line: 322, baseType: !75)
!712 = !DILocalVariable(name: "ret", scope: !706, file: !3, line: 476, type: !614)
!713 = !DILocalVariable(name: "success", scope: !706, file: !3, line: 479, type: !93)
!714 = !DILocalVariable(name: "stop", scope: !715, file: !3, line: 515, type: !718)
!715 = distinct !DILexicalBlock(scope: !716, file: !3, line: 512, column: 23)
!716 = distinct !DILexicalBlock(scope: !717, file: !3, line: 512, column: 7)
!717 = distinct !DILexicalBlock(scope: !706, file: !3, line: 484, column: 22)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!719 = !DILocation(line: 0, scope: !706, inlinedAt: !720)
!720 = distinct !DILocation(line: 663, column: 16, scope: !721)
!721 = distinct !DILexicalBlock(scope: !593, file: !3, line: 662, column: 9)
!722 = !DILocation(line: 474, column: 29, scope: !706, inlinedAt: !720)
!723 = !DILocation(line: 481, column: 16, scope: !706, inlinedAt: !720)
!724 = !DILocation(line: 482, column: 17, scope: !706, inlinedAt: !720)
!725 = !DILocation(line: 484, column: 10, scope: !706, inlinedAt: !720)
!726 = !DILocation(line: 484, column: 9, scope: !706, inlinedAt: !720)
!727 = !DILocation(line: 484, column: 2, scope: !706, inlinedAt: !720)
!728 = !DILocation(line: 474, column: 23, scope: !706, inlinedAt: !720)
!729 = !DILocation(line: 487, column: 12, scope: !730, inlinedAt: !720)
!730 = distinct !DILexicalBlock(scope: !717, file: !3, line: 487, column: 7)
!731 = !DILocation(line: 487, column: 21, scope: !730, inlinedAt: !720)
!732 = !DILocation(line: 487, column: 26, scope: !730, inlinedAt: !720)
!733 = !DILocation(line: 487, column: 36, scope: !730, inlinedAt: !720)
!734 = !DILocation(line: 487, column: 7, scope: !717, inlinedAt: !720)
!735 = !DILocation(line: 488, column: 17, scope: !736, inlinedAt: !720)
!736 = distinct !DILexicalBlock(scope: !730, file: !3, line: 487, column: 45)
!737 = !DILocation(line: 489, column: 20, scope: !736, inlinedAt: !720)
!738 = !DILocation(line: 489, column: 18, scope: !736, inlinedAt: !720)
!739 = !DILocation(line: 492, column: 22, scope: !740, inlinedAt: !720)
!740 = distinct !DILexicalBlock(scope: !736, file: !3, line: 492, column: 8)
!741 = !DILocation(line: 492, column: 8, scope: !736, inlinedAt: !720)
!742 = !DILocation(line: 495, column: 14, scope: !743, inlinedAt: !720)
!743 = distinct !DILexicalBlock(scope: !736, file: !3, line: 495, column: 8)
!744 = !DILocation(line: 495, column: 8, scope: !736, inlinedAt: !720)
!745 = !DILocation(line: 500, column: 9, scope: !717, inlinedAt: !720)
!746 = !DILocation(line: 503, column: 12, scope: !747, inlinedAt: !720)
!747 = distinct !DILexicalBlock(scope: !717, file: !3, line: 503, column: 7)
!748 = !DILocation(line: 503, column: 22, scope: !747, inlinedAt: !720)
!749 = !DILocation(line: 503, column: 7, scope: !717, inlinedAt: !720)
!750 = !DILocation(line: 504, column: 8, scope: !751, inlinedAt: !720)
!751 = distinct !DILexicalBlock(scope: !752, file: !3, line: 504, column: 8)
!752 = distinct !DILexicalBlock(scope: !747, file: !3, line: 503, column: 28)
!753 = !DILocation(line: 504, column: 17, scope: !751, inlinedAt: !720)
!754 = !DILocation(line: 504, column: 30, scope: !751, inlinedAt: !720)
!755 = !DILocation(line: 504, column: 33, scope: !751, inlinedAt: !720)
!756 = !DILocation(line: 504, column: 8, scope: !752, inlinedAt: !720)
!757 = !DILocation(line: 508, column: 18, scope: !752, inlinedAt: !720)
!758 = !DILocation(line: 509, column: 19, scope: !752, inlinedAt: !720)
!759 = !DILocation(line: 510, column: 3, scope: !752, inlinedAt: !720)
!760 = !DILocation(line: 512, column: 11, scope: !716, inlinedAt: !720)
!761 = !DILocation(line: 512, column: 7, scope: !717, inlinedAt: !720)
!762 = !DILocation(line: 516, column: 6, scope: !715, inlinedAt: !720)
!763 = !DILocation(line: 0, scope: !715, inlinedAt: !720)
!764 = !DILocation(line: 518, column: 8, scope: !715, inlinedAt: !720)
!765 = !DILocation(line: 526, column: 8, scope: !766, inlinedAt: !720)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 524, column: 9)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 518, column: 14)
!768 = distinct !DILexicalBlock(scope: !715, file: !3, line: 518, column: 8)
!769 = !DILocation(line: 524, column: 34, scope: !766, inlinedAt: !720)
!770 = !DILocation(line: 524, column: 9, scope: !767, inlinedAt: !720)
!771 = !DILocation(line: 530, column: 12, scope: !772, inlinedAt: !720)
!772 = distinct !DILexicalBlock(scope: !715, file: !3, line: 530, column: 8)
!773 = !DILocation(line: 530, column: 8, scope: !715, inlinedAt: !720)
!774 = !DILocation(line: 534, column: 14, scope: !775, inlinedAt: !720)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 534, column: 9)
!776 = distinct !DILexicalBlock(scope: !772, file: !3, line: 530, column: 32)
!777 = !DILocation(line: 534, column: 23, scope: !775, inlinedAt: !720)
!778 = !DILocation(line: 534, column: 28, scope: !775, inlinedAt: !720)
!779 = !DILocation(line: 534, column: 38, scope: !775, inlinedAt: !720)
!780 = !DILocation(line: 534, column: 9, scope: !776, inlinedAt: !720)
!781 = !DILocation(line: 539, column: 22, scope: !782, inlinedAt: !720)
!782 = distinct !DILexicalBlock(scope: !775, file: !3, line: 534, column: 47)
!783 = !DILocation(line: 539, column: 20, scope: !782, inlinedAt: !720)
!784 = !DILocation(line: 541, column: 10, scope: !782, inlinedAt: !720)
!785 = !DILocation(line: 562, column: 8, scope: !715, inlinedAt: !720)
!786 = !DILocation(line: 563, column: 35, scope: !787, inlinedAt: !720)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 562, column: 14)
!788 = distinct !DILexicalBlock(scope: !715, file: !3, line: 562, column: 8)
!789 = !DILocation(line: 564, column: 7, scope: !787, inlinedAt: !720)
!790 = !DILocation(line: 563, column: 5, scope: !787, inlinedAt: !720)
!791 = !DILocation(line: 574, column: 12, scope: !792, inlinedAt: !720)
!792 = distinct !DILexicalBlock(scope: !715, file: !3, line: 574, column: 8)
!793 = !DILocation(line: 574, column: 8, scope: !715, inlinedAt: !720)
!794 = !DILocation(line: 578, column: 7, scope: !795, inlinedAt: !720)
!795 = distinct !DILexicalBlock(scope: !792, file: !3, line: 574, column: 36)
!796 = !DILocation(line: 577, column: 5, scope: !795, inlinedAt: !720)
!797 = !DILocation(line: 579, column: 4, scope: !795, inlinedAt: !720)
!798 = !DILocation(line: 566, column: 37, scope: !799, inlinedAt: !720)
!799 = distinct !DILexicalBlock(scope: !788, file: !3, line: 565, column: 11)
!800 = !DILocation(line: 567, column: 7, scope: !799, inlinedAt: !720)
!801 = !DILocation(line: 566, column: 5, scope: !799, inlinedAt: !720)
!802 = !DILocation(line: 0, scope: !716, inlinedAt: !720)
!803 = !DILocation(line: 586, column: 3, scope: !717, inlinedAt: !720)
!804 = distinct !{!804, !727, !805}
!805 = !DILocation(line: 587, column: 2, scope: !706, inlinedAt: !720)
!806 = !DILocation(line: 589, column: 2, scope: !706, inlinedAt: !720)
!807 = !DILocalVariable(name: "pair", arg: 1, scope: !808, file: !3, line: 597, type: !570)
!808 = distinct !DISubprogram(name: "coder_passthru", scope: !3, file: !3, line: 597, type: !707, scopeLine: 598, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !809)
!809 = !{!807}
!810 = !DILocation(line: 0, scope: !808, inlinedAt: !811)
!811 = distinct !DILocation(line: 665, column: 16, scope: !721)
!812 = !DILocation(line: 599, column: 14, scope: !808, inlinedAt: !811)
!813 = !DILocation(line: 599, column: 2, scope: !808, inlinedAt: !811)
!814 = !DILocation(line: 599, column: 23, scope: !808, inlinedAt: !811)
!815 = !DILocation(line: 603, column: 7, scope: !816, inlinedAt: !811)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 603, column: 7)
!817 = distinct !DILexicalBlock(scope: !808, file: !3, line: 599, column: 29)
!818 = !DILocation(line: 603, column: 7, scope: !817, inlinedAt: !811)
!819 = !DILocation(line: 606, column: 25, scope: !817, inlinedAt: !811)
!820 = !DILocation(line: 606, column: 17, scope: !817, inlinedAt: !811)
!821 = !DILocation(line: 607, column: 18, scope: !817, inlinedAt: !811)
!822 = !DILocation(line: 608, column: 3, scope: !817, inlinedAt: !811)
!823 = !DILocation(line: 610, column: 19, scope: !817, inlinedAt: !811)
!824 = !DILocation(line: 610, column: 17, scope: !817, inlinedAt: !811)
!825 = !DILocation(line: 611, column: 21, scope: !826, inlinedAt: !811)
!826 = distinct !DILexicalBlock(scope: !817, file: !3, line: 611, column: 7)
!827 = !DILocation(line: 611, column: 7, scope: !817, inlinedAt: !811)
!828 = distinct !{!828, !813, !829}
!829 = !DILocation(line: 613, column: 2, scope: !808, inlinedAt: !811)
!830 = !DILocation(line: 667, column: 5, scope: !593)
!831 = !DILocation(line: 668, column: 4, scope: !593)
!832 = !DILocation(line: 631, column: 7, scope: !564)
!833 = !DILocation(line: 674, column: 2, scope: !564)
!834 = !DILocation(line: 677, column: 1, scope: !564)
!835 = !DISubprogram(name: "message_filename", scope: !43, file: !43, line: 139, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!836 = !DISubprogram(name: "io_open_src", scope: !209, file: !209, line: 78, type: !837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!837 = !DISubroutineType(types: !838)
!838 = !{!570, !366}
!839 = !DISubprogram(name: "io_read", scope: !209, file: !209, line: 104, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!840 = !DISubroutineType(types: !841)
!841 = !{!109, !570, !842, !109}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!843 = !DISubprogram(name: "io_open_dest", scope: !209, file: !209, line: 82, type: !707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!844 = !DISubprogram(name: "message_progress_start", scope: !43, file: !43, line: 153, type: !845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !847, !83}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!848 = !DISubprogram(name: "message_progress_end", scope: !43, file: !43, line: 167, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !93}
!851 = !DISubprogram(name: "io_close", scope: !209, file: !209, line: 92, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !570, !93}
!854 = !DISubprogram(name: "free", scope: !855, file: !855, line: 555, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!855 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!856 = !DISubroutineType(types: !857)
!857 = !{null, !82}
!858 = !DISubprogram(name: "tuklib_exit", scope: !859, file: !859, line: 21, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!859 = !DIFile(filename: "common/tuklib_exit.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "09538a5ffe493e3e268cd00199828e96")
!860 = !DISubroutineType(types: !861)
!861 = !{null, !578, !578, !578}
!862 = !DISubprogram(name: "lzma_stream_encoder", scope: !863, file: !863, line: 188, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!863 = !DIFile(filename: "liblzma/api/lzma/container.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "7f878de3abe07c50108c7f7da139bedb")
!864 = !DISubroutineType(types: !865)
!865 = !{!614, !847, !541, !226}
!866 = !DISubprogram(name: "lzma_alone_encoder", scope: !863, file: !863, line: 213, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!867 = !DISubroutineType(types: !868)
!868 = !{!614, !847, !869}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!871 = !DISubprogram(name: "lzma_raw_encoder", scope: !197, file: !197, line: 178, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DISubroutineType(types: !873)
!873 = !{!614, !847, !541}
!874 = distinct !DISubprogram(name: "is_format_lzma", scope: !3, file: !3, line: 303, type: !286, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !875)
!875 = !{!876, !877, !878, !879, !882, !883}
!876 = !DILocalVariable(name: "filter", scope: !874, file: !3, line: 310, type: !196)
!877 = !DILocalVariable(name: "opt", scope: !874, file: !3, line: 318, type: !121)
!878 = !DILocalVariable(name: "dict_size", scope: !874, file: !3, line: 319, type: !160)
!879 = !DILocalVariable(name: "d", scope: !880, file: !3, line: 323, type: !126)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 322, column: 31)
!881 = distinct !DILexicalBlock(scope: !874, file: !3, line: 322, column: 6)
!882 = !DILocalVariable(name: "uncompressed_size", scope: !874, file: !3, line: 337, type: !83)
!883 = !DILocalVariable(name: "i", scope: !884, file: !3, line: 338, type: !109)
!884 = distinct !DILexicalBlock(scope: !874, file: !3, line: 338, column: 2)
!885 = distinct !DIAssignID()
!886 = !DILocation(line: 0, scope: !874)
!887 = !DILocation(line: 306, column: 11, scope: !888)
!888 = distinct !DILexicalBlock(scope: !874, file: !3, line: 306, column: 6)
!889 = !DILocation(line: 306, column: 20, scope: !888)
!890 = !DILocation(line: 306, column: 6, scope: !874)
!891 = !DILocation(line: 310, column: 2, scope: !874)
!892 = !DILocation(line: 310, column: 14, scope: !874)
!893 = distinct !DIAssignID()
!894 = !DILocation(line: 311, column: 6, scope: !895)
!895 = distinct !DILexicalBlock(scope: !874, file: !3, line: 311, column: 6)
!896 = !DILocation(line: 311, column: 58, scope: !895)
!897 = !DILocation(line: 311, column: 6, scope: !874)
!898 = !DILocation(line: 318, column: 34, scope: !874)
!899 = !DILocation(line: 319, column: 34, scope: !874)
!900 = !DILocation(line: 320, column: 2, scope: !874)
!901 = !DILocation(line: 322, column: 16, scope: !881)
!902 = !DILocation(line: 322, column: 6, scope: !874)
!903 = !DILocation(line: 323, column: 26, scope: !880)
!904 = !DILocation(line: 0, scope: !880)
!905 = !DILocation(line: 324, column: 10, scope: !880)
!906 = !DILocation(line: 324, column: 5, scope: !880)
!907 = !DILocation(line: 325, column: 10, scope: !880)
!908 = !DILocation(line: 325, column: 5, scope: !880)
!909 = !DILocation(line: 326, column: 10, scope: !880)
!910 = !DILocation(line: 326, column: 5, scope: !880)
!911 = !DILocation(line: 327, column: 10, scope: !880)
!912 = !DILocation(line: 327, column: 5, scope: !880)
!913 = !DILocation(line: 328, column: 10, scope: !880)
!914 = !DILocation(line: 328, column: 5, scope: !880)
!915 = !DILocation(line: 329, column: 3, scope: !880)
!916 = !DILocation(line: 330, column: 9, scope: !917)
!917 = distinct !DILexicalBlock(scope: !880, file: !3, line: 330, column: 7)
!918 = !DILocation(line: 330, column: 22, scope: !917)
!919 = !DILocation(line: 0, scope: !884)
!920 = !DILocation(line: 339, column: 35, scope: !921)
!921 = distinct !DILexicalBlock(scope: !884, file: !3, line: 338, column: 2)
!922 = !DILocation(line: 339, column: 24, scope: !921)
!923 = !DILocation(line: 339, column: 53, scope: !921)
!924 = !DILocation(line: 339, column: 21, scope: !921)
!925 = !DILocation(line: 342, column: 4, scope: !926)
!926 = distinct !DILexicalBlock(scope: !874, file: !3, line: 341, column: 6)
!927 = !DILocation(line: 346, column: 1, scope: !874)
!928 = !DISubprogram(name: "lzma_stream_decoder", scope: !863, file: !863, line: 339, type: !929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!929 = !DISubroutineType(types: !930)
!930 = !{!614, !847, !83, !126}
!931 = !DISubprogram(name: "lzma_alone_decoder", scope: !863, file: !863, line: 377, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!932 = !DISubroutineType(types: !933)
!933 = !{!614, !847, !83}
!934 = !DISubprogram(name: "lzma_raw_decoder", scope: !197, file: !197, line: 196, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!935 = !DISubprogram(name: "lzma_code", scope: !39, file: !39, line: 529, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!936 = !DISubroutineType(types: !937)
!937 = !{!614, !847, !711}
!938 = !DISubprogram(name: "message_error", scope: !43, file: !43, line: 63, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DISubprogram(name: "message_strm", scope: !43, file: !43, line: 86, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!940 = !DISubroutineType(types: !941)
!941 = !{!366, !614}
!942 = !DISubprogram(name: "lzma_memusage", scope: !39, file: !39, line: 571, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!943 = !DISubroutineType(types: !944)
!944 = !{!83, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!947 = !DISubprogram(name: "lzma_properties_decode", scope: !197, file: !197, line: 358, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!948 = !DISubroutineType(types: !949)
!949 = !{!614, !950, !251, !129, !109}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!951 = !DISubprogram(name: "io_write", scope: !209, file: !209, line: 131, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!952 = !DISubroutineType(types: !953)
!953 = !{!93, !570, !954, !109}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!956 = !DISubprogram(name: "message_warning", scope: !43, file: !43, line: 55, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DISubprogram(name: "message_progress_update", scope: !43, file: !43, line: 159, type: !103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
