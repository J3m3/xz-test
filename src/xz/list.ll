; ModuleID = 'xz/list.c'
source_filename = "xz/list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_file_info = type { ptr, i64, i64, i8 }
%struct.lzma_index_iter = type { %struct.anon.0, %struct.anon.1, [6 x %union.anon] }
%struct.anon.0 = type { ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.1 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.block_header_info = type { i32, [3 x i8], i64, i64, [512 x i8] }
%union.io_buf = type { [1024 x i64] }
%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

@opt_robot = external local_unnamed_addr global i8, align 1
@totals.0 = internal unnamed_addr global i64 0, align 8, !dbg !0
@totals.1 = internal unnamed_addr global i64 0, align 8, !dbg !338
@totals.2 = internal unnamed_addr global i64 0, align 8, !dbg !339
@totals.3 = internal unnamed_addr global i64 0, align 8, !dbg !340
@totals.4 = internal unnamed_addr global i64 0, align 8, !dbg !341
@totals.5 = internal unnamed_addr global i64 0, align 8, !dbg !342
@totals.6 = internal unnamed_addr global i64 0, align 8, !dbg !343
@totals.7 = internal unnamed_addr global i32 0, align 8, !dbg !344
@totals.8 = internal unnamed_addr global i8 1, align 4, !dbg !345
@opt_format = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [62 x i8] c"--list works only on .xz files (--format=xz or --format=auto)\00", align 1, !dbg !86
@stdin_filename = external constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"--list does not support reading from standard input\00", align 1, !dbg !92
@opt_stdout = external local_unnamed_addr global i8, align 1
@opt_force = external local_unnamed_addr global i8, align 1
@__const.list_file.xfi = private unnamed_addr constant %struct.xz_file_info { ptr null, i64 0, i64 0, i8 1 }, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"totals\09%lu\09%lu\09%lu\09%lu\09%s\09%s\09%lu\09%lu\00", align 1, !dbg !97
@.str.3 = private unnamed_addr constant [8 x i8] c"\09%lu\09%s\00", align 1, !dbg !102
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1, !dbg !107
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1, !dbg !112
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1, !dbg !117
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !119
@.str.8 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1, !dbg !124
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !129
@check_names = internal constant [16 x [12 x i8]] [[12 x i8] c"None\00\00\00\00\00\00\00\00", [12 x i8] c"CRC32\00\00\00\00\00\00\00", [12 x i8] c"Unknown-2\00\00\00", [12 x i8] c"Unknown-3\00\00\00", [12 x i8] c"CRC64\00\00\00\00\00\00\00", [12 x i8] c"Unknown-5\00\00\00", [12 x i8] c"Unknown-6\00\00\00", [12 x i8] c"Unknown-7\00\00\00", [12 x i8] c"Unknown-8\00\00\00", [12 x i8] c"Unknown-9\00\00\00", [12 x i8] c"SHA-256\00\00\00\00\00", [12 x i8] c"Unknown-11\00\00", [12 x i8] c"Unknown-12\00\00", [12 x i8] c"Unknown-13\00\00", [12 x i8] c"Unknown-14\00\00", [12 x i8] c"Unknown-15\00\00"], align 16, !dbg !134
@.str.10 = private unnamed_addr constant [4 x i8] c"---\00", align 1, !dbg !141
@get_ratio.buf = internal global [16 x i8] zeroinitializer, align 16, !dbg !143
@.str.11 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1, !dbg !156
@stdout = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"%5s %7s  %11s  %11s  %5s  %-7s \00", align 1, !dbg !159
@.str.13 = private unnamed_addr constant [9 x i8] c"%s file\0A\00", align 1, !dbg !164
@.str.14 = private unnamed_addr constant [10 x i8] c"%s files\0A\00", align 1, !dbg !169
@.str.15 = private unnamed_addr constant [8 x i8] c"Totals:\00", align 1, !dbg !174
@.str.16 = private unnamed_addr constant [26 x i8] c"  Number of files:    %s\0A\00", align 1, !dbg !176
@.str.17 = private unnamed_addr constant [30 x i8] c"  Memory needed:      %s MiB\0A\00", align 1, !dbg !181
@.str.18 = private unnamed_addr constant [26 x i8] c"  Sizes in headers:   %s\0A\00", align 1, !dbg !186
@.str.19 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1, !dbg !188
@.str.20 = private unnamed_addr constant [3 x i8] c"No\00", align 1, !dbg !190
@.str.21 = private unnamed_addr constant [26 x i8] c"  Streams:            %s\0A\00", align 1, !dbg !192
@.str.22 = private unnamed_addr constant [26 x i8] c"  Blocks:             %s\0A\00", align 1, !dbg !194
@.str.23 = private unnamed_addr constant [26 x i8] c"  Compressed size:    %s\0A\00", align 1, !dbg !196
@.str.24 = private unnamed_addr constant [26 x i8] c"  Uncompressed size:  %s\0A\00", align 1, !dbg !198
@.str.25 = private unnamed_addr constant [26 x i8] c"  Ratio:              %s\0A\00", align 1, !dbg !200
@.str.26 = private unnamed_addr constant [26 x i8] c"  Check:              %s\0A\00", align 1, !dbg !202
@.str.27 = private unnamed_addr constant [26 x i8] c"  Stream padding:     %s\0A\00", align 1, !dbg !204
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !206
@.str.29 = private unnamed_addr constant [9 x i8] c"name\09%s\0A\00", align 1, !dbg !211
@.str.30 = private unnamed_addr constant [32 x i8] c"file\09%lu\09%lu\09%lu\09%lu\09%s\09%s\09%lu\0A\00", align 1, !dbg !213
@.str.31 = private unnamed_addr constant [42 x i8] c"stream\09%lu\09%lu\09%lu\09%lu\09%lu\09%lu\09%s\09%s\09%lu\0A\00", align 1, !dbg !215
@.str.32 = private unnamed_addr constant [40 x i8] c"block\09%lu\09%lu\09%lu\09%lu\09%lu\09%lu\09%lu\09%s\09%s\00", align 1, !dbg !220
@.str.33 = private unnamed_addr constant [21 x i8] c"\09%s\09%u\09%s\09%lu\09%lu\09%s\00", align 1, !dbg !225
@check_value = internal global [129 x i8] zeroinitializer, align 16, !dbg !238
@.str.34 = private unnamed_addr constant [16 x i8] c"summary\09%lu\09%s\0A\00", align 1, !dbg !230
@.str.35 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1, !dbg !232
@.str.36 = private unnamed_addr constant [7 x i8] c"%016lx\00", align 1, !dbg !234
@.str.37 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1, !dbg !236
@print_info_basic.headings_displayed = internal unnamed_addr global i1 false, align 1, !dbg !346
@.str.38 = private unnamed_addr constant [65 x i8] c"Strms  Blocks   Compressed Uncompressed  Ratio  Check   Filename\00", align 1, !dbg !288
@.str.39 = private unnamed_addr constant [33 x i8] c"%*s %*s  %*s  %*s  %*s  %-*s %s\0A\00", align 1, !dbg !293
@.str.40 = private unnamed_addr constant [123 x i8] c"  Streams:\0A    Stream    Blocks      CompOffset    UncompOffset        CompSize      UncompSize  Ratio  Check      Padding\00", align 1, !dbg !298
@.str.41 = private unnamed_addr constant [21 x i8] c"    %*s %*s %*s %*s \00", align 1, !dbg !303
@.str.42 = private unnamed_addr constant [24 x i8] c"%*s %*s  %*s  %-*s %*s\0A\00", align 1, !dbg !305
@.str.43 = private unnamed_addr constant [109 x i8] c"  Blocks:\0A    Stream     Block      CompOffset    UncompOffset       TotalSize      UncompSize  Ratio  Check\00", align 1, !dbg !310
@.str.44 = private unnamed_addr constant [70 x i8] c"      CheckVal %*s Header  Flags        CompSize    MemUsage  Filters\00", align 1, !dbg !315
@.str.45 = private unnamed_addr constant [19 x i8] c"%*s %*s  %*s  %-*s\00", align 1, !dbg !320
@.str.46 = private unnamed_addr constant [32 x i8] c"%-*s  %*s  %-5s %*s %*s MiB  %s\00", align 1, !dbg !325

; Function Attrs: nounwind uwtable
define dso_local void @list_totals() local_unnamed_addr #0 !dbg !355 {
entry:
  %line.i = alloca [80 x i8], align 16, !DIAssignID !358
    #dbg_assign(i1 undef, !359, !DIExpression(), !358, ptr %line.i, !DIExpression(), !366)
  %checks.i7 = alloca [1024 x i8], align 16, !DIAssignID !372
  %checks.i = alloca [1024 x i8], align 16, !DIAssignID !373
  %0 = load i8, ptr @opt_robot, align 1, !dbg !374, !range !375, !noundef !376
  %loadedv = trunc nuw i8 %0 to i1, !dbg !374
  br i1 %loadedv, label %if.then, label %if.else, !dbg !377

if.then:                                          ; preds = %entry
    #dbg_assign(i1 undef, !378, !DIExpression(), !373, ptr %checks.i, !DIExpression(), !381)
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %checks.i) #8, !dbg !384
  %1 = load i32, ptr @totals.7, align 8, !dbg !385
  call fastcc void @get_check_names(ptr noundef nonnull %checks.i, i32 noundef %1, i1 noundef zeroext false), !dbg !386
  %2 = load i64, ptr @totals.1, align 8, !dbg !387
  %3 = load i64, ptr @totals.2, align 8, !dbg !388
  %4 = load i64, ptr @totals.3, align 8, !dbg !389
  %5 = load i64, ptr @totals.4, align 8, !dbg !390
    #dbg_value(i64 %4, !150, !DIExpression(), !391)
    #dbg_value(i64 %5, !151, !DIExpression(), !391)
  %cmp.i.i = icmp eq i64 %5, 0, !dbg !393
  br i1 %cmp.i.i, label %get_ratio.exit.i, label %if.end.i.i, !dbg !395

if.end.i.i:                                       ; preds = %if.then
  %conv.i.i = uitofp i64 %4 to double, !dbg !396
  %conv1.i.i = uitofp i64 %5 to double, !dbg !397
  %div.i.i = fdiv double %conv.i.i, %conv1.i.i, !dbg !398
    #dbg_value(double %div.i.i, !152, !DIExpression(), !391)
  %cmp2.i.i = fcmp ogt double %div.i.i, 9.999000e+00, !dbg !399
  br i1 %cmp2.i.i, label %get_ratio.exit.i, label %if.end5.i.i, !dbg !401

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call.i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i.i) #8, !dbg !402
  br label %get_ratio.exit.i, !dbg !403

get_ratio.exit.i:                                 ; preds = %if.end5.i.i, %if.end.i.i, %if.then
  %retval.1.i.i = phi ptr [ @.str.10, %if.then ], [ @get_ratio.buf, %if.end5.i.i ], [ @.str.10, %if.end.i.i ], !dbg !391
  %6 = load i64, ptr @totals.5, align 8, !dbg !404
  %7 = load i64, ptr @totals.0, align 8, !dbg !405
  %call2.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull %retval.1.i.i, ptr noundef nonnull %checks.i, i64 noundef %6, i64 noundef %7), !dbg !406
  %call3.i = call i32 @message_verbosity_get() #8, !dbg !407
  %cmp.i = icmp ugt i32 %call3.i, 3, !dbg !409
  br i1 %cmp.i, label %if.then.i, label %print_totals_robot.exit, !dbg !410

if.then.i:                                        ; preds = %get_ratio.exit.i
  %8 = load i64, ptr @totals.6, align 8, !dbg !411
  %9 = load i8, ptr @totals.8, align 4, !dbg !412, !range !375, !noundef !376
  %loadedv.i = trunc nuw i8 %9 to i1, !dbg !412
  %cond.i = select i1 %loadedv.i, ptr @.str.4, ptr @.str.5, !dbg !413
  %call4.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %8, ptr noundef nonnull %cond.i), !dbg !414
  br label %print_totals_robot.exit, !dbg !414

print_totals_robot.exit:                          ; preds = %get_ratio.exit.i, %if.then.i
    #dbg_value(i32 10, !415, !DIExpression(), !421)
  %10 = load ptr, ptr @stdout, align 8, !dbg !423
  %call.i6.i = call i32 @putc(i32 noundef 10, ptr noundef %10), !dbg !424
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %checks.i) #8, !dbg !425
  br label %if.end6, !dbg !426

if.else:                                          ; preds = %entry
  %11 = load i64, ptr @totals.0, align 8, !dbg !427
  %cmp = icmp ugt i64 %11, 1, !dbg !428
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !429

if.then1:                                         ; preds = %if.else
  %call = tail call i32 @message_verbosity_get() #8, !dbg !430
  %cmp2 = icmp ult i32 %call, 3, !dbg !431
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !432

if.then3:                                         ; preds = %if.then1
    #dbg_assign(i1 undef, !362, !DIExpression(), !372, ptr %checks.i7, !DIExpression(), !366)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %line.i) #8, !dbg !433
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %line.i, i8 45, i64 80, i1 false), !dbg !434, !DIAssignID !435
    #dbg_assign(i1 undef, !359, !DIExpression(), !435, ptr %line.i, !DIExpression(), !366)
  %arrayidx.i = getelementptr inbounds i8, ptr %line.i, i64 79, !dbg !436
  store i8 0, ptr %arrayidx.i, align 1, !dbg !437, !DIAssignID !438
    #dbg_assign(i8 0, !359, !DIExpression(DW_OP_LLVM_fragment, 632, 8), !438, ptr %arrayidx.i, !DIExpression(), !366)
  %call.i = call i32 @puts(ptr noundef nonnull dereferenceable(1) %line.i), !dbg !439
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %checks.i7) #8, !dbg !440
  %12 = load i32, ptr @totals.7, align 8, !dbg !441
  call fastcc void @get_check_names(ptr noundef nonnull %checks.i7, i32 noundef %12, i1 noundef zeroext false), !dbg !442
  %13 = load i64, ptr @totals.1, align 8, !dbg !443
  %call3.i8 = call ptr @uint64_to_str(i64 noundef %13, i32 noundef 0) #8, !dbg !444
  %14 = load i64, ptr @totals.2, align 8, !dbg !445
  %call4.i9 = call ptr @uint64_to_str(i64 noundef %14, i32 noundef 1) #8, !dbg !446
  %15 = load i64, ptr @totals.3, align 8, !dbg !447
  %call5.i = call ptr @uint64_to_nicestr(i64 noundef %15, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 2) #8, !dbg !448
  %16 = load i64, ptr @totals.4, align 8, !dbg !449
  %call6.i = call ptr @uint64_to_nicestr(i64 noundef %16, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 3) #8, !dbg !450
  %17 = load i64, ptr @totals.4, align 8, !dbg !451
    #dbg_value(i64 poison, !150, !DIExpression(), !452)
    #dbg_value(i64 %17, !151, !DIExpression(), !452)
  %cmp.i.i10 = icmp eq i64 %17, 0, !dbg !454
  br i1 %cmp.i.i10, label %print_totals_basic.exit, label %if.end.i.i11, !dbg !455

if.end.i.i11:                                     ; preds = %if.then3
  %18 = load i64, ptr @totals.3, align 8, !dbg !456
    #dbg_value(i64 %18, !150, !DIExpression(), !452)
  %conv.i.i12 = uitofp i64 %18 to double, !dbg !457
  %conv1.i.i13 = uitofp i64 %17 to double, !dbg !458
  %div.i.i14 = fdiv double %conv.i.i12, %conv1.i.i13, !dbg !459
    #dbg_value(double %div.i.i14, !152, !DIExpression(), !452)
  %cmp2.i.i15 = fcmp ogt double %div.i.i14, 9.999000e+00, !dbg !460
  br i1 %cmp2.i.i15, label %print_totals_basic.exit, label %if.end5.i.i16, !dbg !461

if.end5.i.i16:                                    ; preds = %if.end.i.i11
  %call.i.i17 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i.i14) #8, !dbg !462
  br label %print_totals_basic.exit, !dbg !463

print_totals_basic.exit:                          ; preds = %if.then3, %if.end.i.i11, %if.end5.i.i16
  %retval.1.i.i19 = phi ptr [ @.str.10, %if.then3 ], [ @get_ratio.buf, %if.end5.i.i16 ], [ @.str.10, %if.end.i.i11 ], !dbg !452
  %call9.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %call3.i8, ptr noundef %call4.i9, ptr noundef %call5.i, ptr noundef %call6.i, ptr noundef nonnull %retval.1.i.i19, ptr noundef nonnull %checks.i7), !dbg !464
  %19 = load i64, ptr @totals.0, align 8, !dbg !465
  %cmp10.i = icmp eq i64 %19, 1, !dbg !465
  %cond11.i = select i1 %cmp10.i, ptr @.str.13, ptr @.str.14, !dbg !465
  %call12.i = call ptr @uint64_to_str(i64 noundef %19, i32 noundef 0) #8, !dbg !466
  %call13.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %cond11.i, ptr noundef %call12.i), !dbg !467
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %checks.i7) #8, !dbg !468
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %line.i) #8, !dbg !468
  br label %if.end6, !dbg !469

if.else4:                                         ; preds = %if.then1
    #dbg_value(i32 10, !415, !DIExpression(), !470)
  %20 = load ptr, ptr @stdout, align 8, !dbg !474
  %call.i.i20 = tail call i32 @putc(i32 noundef 10, ptr noundef %20), !dbg !475
  %call1.i = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.15), !dbg !476
  %21 = load i64, ptr @totals.0, align 8, !dbg !477
  %call2.i21 = tail call ptr @uint64_to_str(i64 noundef %21, i32 noundef 0) #8, !dbg !478
  %call3.i22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %call2.i21), !dbg !479
  %22 = load i64, ptr @totals.1, align 8, !dbg !480
  %23 = load i64, ptr @totals.2, align 8, !dbg !481
  %24 = load i64, ptr @totals.3, align 8, !dbg !482
  %25 = load i64, ptr @totals.4, align 8, !dbg !483
  %26 = load i32, ptr @totals.7, align 8, !dbg !484
  %27 = load i64, ptr @totals.5, align 8, !dbg !485
  tail call fastcc void @print_adv_helper(i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i32 noundef %26, i64 noundef %27), !dbg !486
  %call4.i23 = tail call i32 @message_verbosity_get() #8, !dbg !487
  %cmp.i24 = icmp ugt i32 %call4.i23, 3, !dbg !489
  br i1 %cmp.i24, label %if.then.i25, label %if.end6, !dbg !490

if.then.i25:                                      ; preds = %if.else4
  %28 = load i64, ptr @totals.6, align 8, !dbg !491
  %call5.i26 = tail call i64 @round_up_to_mib(i64 noundef %28) #8, !dbg !493
  %call6.i27 = tail call ptr @uint64_to_str(i64 noundef %call5.i26, i32 noundef 0) #8, !dbg !494
  %call7.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %call6.i27), !dbg !495
  %29 = load i8, ptr @totals.8, align 4, !dbg !496, !range !375, !noundef !376
  %loadedv.i28 = trunc nuw i8 %29 to i1, !dbg !496
  %cond.i29 = select i1 %loadedv.i28, ptr @.str.19, ptr @.str.20, !dbg !497
  %call8.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %cond.i29), !dbg !498
  br label %if.end6, !dbg !499

if.end6:                                          ; preds = %if.then.i25, %if.else4, %if.else, %print_totals_basic.exit, %print_totals_robot.exit
  ret void, !dbg !500
}

declare !dbg !501 i32 @message_verbosity_get() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @list_file(ptr noundef %filename) local_unnamed_addr #0 !dbg !504 {
entry:
  %iter.i67 = alloca %struct.lzma_index_iter, align 8, !DIAssignID !514
    #dbg_assign(i1 undef, !515, !DIExpression(), !514, ptr %iter.i67, !DIExpression(), !637)
  %bhi.i68 = alloca %struct.block_header_info, align 8, !DIAssignID !641
  %checks.i45 = alloca [1024 x i8], align 16, !DIAssignID !642
  %checks.i = alloca [1024 x i8], align 16, !DIAssignID !643
    #dbg_assign(i1 undef, !644, !DIExpression(), !643, ptr %checks.i, !DIExpression(), !653)
  %iter.i = alloca %struct.lzma_index_iter, align 8, !DIAssignID !655
    #dbg_assign(i1 undef, !649, !DIExpression(), !655, ptr %iter.i, !DIExpression(), !656)
  %bhi.i = alloca %struct.block_header_info, align 8, !DIAssignID !657
  %buf.i = alloca %union.io_buf, align 8, !DIAssignID !658
    #dbg_assign(i1 undef, !659, !DIExpression(), !658, ptr %buf.i, !DIExpression(), !740)
  %header_flags.i = alloca %struct.lzma_stream_flags, align 8, !DIAssignID !742
    #dbg_assign(i1 undef, !664, !DIExpression(), !742, ptr %header_flags.i, !DIExpression(), !740)
  %footer_flags.i = alloca %struct.lzma_stream_flags, align 8, !DIAssignID !743
    #dbg_assign(i1 undef, !665, !DIExpression(), !743, ptr %footer_flags.i, !DIExpression(), !740)
  %strm.i = alloca %struct.lzma_stream, align 8, !DIAssignID !744
    #dbg_assign(i1 undef, !668, !DIExpression(), !744, ptr %strm.i, !DIExpression(), !740)
  %this_index.i = alloca ptr, align 8, !DIAssignID !745
  %xfi = alloca %struct.xz_file_info, align 8, !DIAssignID !746
    #dbg_assign(i1 undef, !510, !DIExpression(), !746, ptr %xfi, !DIExpression(), !747)
    #dbg_value(ptr %filename, !508, !DIExpression(), !747)
  %0 = load i32, ptr @opt_format, align 4, !dbg !748
  %or.cond = icmp ugt i32 %0, 1, !dbg !750
  br i1 %or.cond, label %if.then, label %if.end, !dbg !750

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str) #8, !dbg !751
  br label %if.end, !dbg !751

if.end:                                           ; preds = %if.then, %entry
  tail call void @message_filename(ptr noundef %filename) #8, !dbg !752
  %cmp2 = icmp eq ptr %filename, @stdin_filename, !dbg !753
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !755

if.then3:                                         ; preds = %if.end
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.1) #8, !dbg !756
  br label %return, !dbg !758

if.end4:                                          ; preds = %if.end
  store i8 0, ptr @opt_stdout, align 1, !dbg !759
  store i8 1, ptr @opt_force, align 1, !dbg !760
  %call = tail call ptr @io_open_src(ptr noundef %filename) #8, !dbg !761
    #dbg_value(ptr %call, !509, !DIExpression(), !747)
  %cmp5 = icmp eq ptr %call, null, !dbg !762
  br i1 %cmp5, label %return, label %if.end7, !dbg !764

if.end7:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %xfi) #8, !dbg !765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %xfi, ptr noundef nonnull align 8 dereferenceable(32) @__const.list_file.xfi, i64 32, i1 false), !dbg !766, !DIAssignID !767
    #dbg_assign(i1 undef, !510, !DIExpression(), !767, ptr %xfi, !DIExpression(), !747)
    #dbg_assign(i1 undef, !712, !DIExpression(), !745, ptr %this_index.i, !DIExpression(), !740)
    #dbg_value(ptr %xfi, !662, !DIExpression(), !740)
    #dbg_value(ptr %call, !663, !DIExpression(), !740)
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %buf.i) #8, !dbg !768
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %header_flags.i) #8, !dbg !769
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %footer_flags.i) #8, !dbg !770
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %strm.i) #8, !dbg !771
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %strm.i, i8 0, i64 136, i1 false), !dbg !772, !DIAssignID !773
    #dbg_assign(i8 0, !668, !DIExpression(), !773, ptr %strm.i, !DIExpression(), !740)
    #dbg_value(ptr null, !711, !DIExpression(), !740)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %this_index.i) #8, !dbg !774
  store ptr null, ptr %this_index.i, align 8, !dbg !775, !DIAssignID !776
    #dbg_assign(ptr null, !712, !DIExpression(), !776, ptr %this_index.i, !DIExpression(), !740)
  %1 = load ptr, ptr @spec_fd, align 8, !dbg !777
  %src_fd.i = getelementptr inbounds i8, ptr %call, i64 16, !dbg !777
  %2 = load i32, ptr %src_fd.i, align 8, !dbg !777
  %call.i = tail call i64 @spec_mem_get_length(ptr noundef %1, i32 noundef 3, i32 noundef %2) #8, !dbg !777
    #dbg_value(i64 %call.i, !713, !DIExpression(), !740)
  %arrayidx.i = getelementptr inbounds i8, ptr %buf.i, i64 8
  %backward_size.i = getelementptr inbounds i8, ptr %footer_flags.i, i64 8
  %avail_in.i = getelementptr inbounds i8, ptr %strm.i, i64 8
  %stream_padding136.i = getelementptr inbounds i8, ptr %xfi, i64 8
  %arrayidx17.i = getelementptr inbounds i8, ptr %buf.i, i64 4
  br label %do.body.i, !dbg !778

do.body.i:                                        ; preds = %do.cond144.i, %if.end7
  %add137.i209 = phi i64 [ 0, %if.end7 ], [ %add137.i, %do.cond144.i ]
  %combined_index.0.i = phi ptr [ null, %if.end7 ], [ %31, %do.cond144.i ], !dbg !779
  %pos.0.i = phi i64 [ %call.i, %if.end7 ], [ %sub102.i, %do.cond144.i ], !dbg !740
    #dbg_value(i64 %pos.0.i, !713, !DIExpression(), !740)
    #dbg_value(ptr %combined_index.0.i, !711, !DIExpression(), !740)
  %cmp.i = icmp slt i64 %pos.0.i, 24, !dbg !780
  br i1 %cmp.i, label %if.then.i, label %if.end6.preheader.i, !dbg !782

if.then.i:                                        ; preds = %do.body.i
  %3 = load ptr, ptr %call, align 8, !dbg !783
  %call1.i = call ptr @message_strm(i32 noundef 9) #8, !dbg !785
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %3, ptr noundef %call1.i) #8, !dbg !786
  br label %parse_indexes.exit.thread, !dbg !787

if.end6.preheader.i:                              ; preds = %do.body.i
    #dbg_value(i64 %pos.0.i, !713, !DIExpression(DW_OP_constu, 12, DW_OP_minus, DW_OP_stack_value), !740)
    #dbg_value(i64 0, !714, !DIExpression(), !788)
  %sub.i = add nsw i64 %pos.0.i, -12, !dbg !789
    #dbg_value(i64 %sub.i, !713, !DIExpression(), !740)
  br label %if.end6.i, !dbg !790

if.then3.i:                                       ; preds = %cleanup.i
  %4 = load ptr, ptr %call, align 8, !dbg !791
  %call5.i = call ptr @message_strm(i32 noundef 9) #8, !dbg !794
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %4, ptr noundef %call5.i) #8, !dbg !795
  br label %parse_indexes.exit.thread, !dbg !796

if.end6.i:                                        ; preds = %cleanup.i, %if.end6.preheader.i
  %stream_padding.0315.i = phi i64 [ %add.lcssa.i, %cleanup.i ], [ 0, %if.end6.preheader.i ]
  %pos.1314.i = phi i64 [ %sub14.lcssa.i, %cleanup.i ], [ %sub.i, %if.end6.preheader.i ]
    #dbg_value(i64 %stream_padding.0315.i, !714, !DIExpression(), !788)
    #dbg_value(i64 %pos.1314.i, !713, !DIExpression(), !740)
  %call7.i = call zeroext i1 @io_pread(ptr noundef %call, ptr noundef nonnull %buf.i, i64 noundef 12, i64 noundef %pos.1314.i) #8, !dbg !797
  br i1 %call7.i, label %parse_indexes.exit.thread, label %if.end9.i, !dbg !790

if.end9.i:                                        ; preds = %if.end6.i
    #dbg_value(i32 2, !716, !DIExpression(), !799)
  %5 = load i32, ptr %arrayidx.i, align 8, !dbg !800
  %cmp10.not.i = icmp eq i32 %5, 0, !dbg !802
  br i1 %cmp10.not.i, label %do.body13.preheader.i, label %while.end.i, !dbg !803

do.body13.preheader.i:                            ; preds = %if.end9.i
  %6 = add i64 %pos.1314.i, -8, !dbg !804
  %7 = add i64 %stream_padding.0315.i, 12, !dbg !804
  %8 = add i64 %pos.1314.i, -12, !dbg !804
    #dbg_value(i64 2, !716, !DIExpression(), !799)
    #dbg_value(i64 %stream_padding.0315.i, !714, !DIExpression(), !788)
    #dbg_value(i64 %pos.1314.i, !713, !DIExpression(), !740)
  %add.i = add i64 %stream_padding.0315.i, 4, !dbg !805
    #dbg_value(i64 %add.i, !714, !DIExpression(), !788)
  %sub14.i = add nsw i64 %pos.1314.i, -4, !dbg !807
    #dbg_value(i64 %sub14.i, !713, !DIExpression(), !740)
    #dbg_value(i64 1, !716, !DIExpression(), !799)
  %9 = load i32, ptr %arrayidx17.i, align 4, !dbg !808
  %cmp18.i = icmp eq i32 %9, 0, !dbg !809
  br i1 %cmp18.i, label %do.body13.1.i, label %cleanup.i, !dbg !810, !llvm.loop !811

do.body13.1.i:                                    ; preds = %do.body13.preheader.i
    #dbg_value(i64 1, !716, !DIExpression(), !799)
    #dbg_value(i64 %add.i, !714, !DIExpression(), !788)
    #dbg_value(i64 %sub14.i, !713, !DIExpression(), !740)
  %add.1.i = add i64 %stream_padding.0315.i, 8, !dbg !805
    #dbg_value(i64 %add.1.i, !714, !DIExpression(), !788)
    #dbg_value(i64 %6, !713, !DIExpression(), !740)
    #dbg_value(i64 0, !716, !DIExpression(), !799)
  %10 = load i32, ptr %buf.i, align 8, !dbg !808
  %cmp18.1.i = icmp eq i32 %10, 0, !dbg !809
  br i1 %cmp18.1.i, label %do.body13.2.i, label %cleanup.i, !dbg !810, !llvm.loop !813

do.body13.2.i:                                    ; preds = %do.body13.1.i
    #dbg_value(i64 %7, !714, !DIExpression(), !788)
    #dbg_value(i64 %8, !713, !DIExpression(), !740)
    #dbg_value(i64 0, !716, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !799)
  br label %cleanup.i, !dbg !814

cleanup.i:                                        ; preds = %do.body13.2.i, %do.body13.1.i, %do.body13.preheader.i
  %pos.2.lcssa.i = phi i64 [ %pos.1314.i, %do.body13.preheader.i ], [ %sub14.i, %do.body13.1.i ], [ %6, %do.body13.2.i ], !dbg !788
  %add.lcssa.i = phi i64 [ %add.i, %do.body13.preheader.i ], [ %add.1.i, %do.body13.1.i ], [ %7, %do.body13.2.i ], !dbg !805
  %sub14.lcssa.i = phi i64 [ %sub14.i, %do.body13.preheader.i ], [ %6, %do.body13.1.i ], [ %8, %do.body13.2.i ], !dbg !807
    #dbg_value(i64 %add.lcssa.i, !714, !DIExpression(), !788)
    #dbg_value(i64 %sub14.lcssa.i, !713, !DIExpression(), !740)
  %cmp2.i = icmp slt i64 %pos.2.lcssa.i, 16, !dbg !815
  br i1 %cmp2.i, label %if.then3.i, label %if.end6.i, !dbg !816

while.end.i:                                      ; preds = %if.end9.i
    #dbg_value(i64 %stream_padding.0315.i, !714, !DIExpression(), !788)
    #dbg_value(i64 %pos.1314.i, !713, !DIExpression(), !740)
  %call19.i = call i32 @lzma_stream_footer_decode(ptr noundef nonnull %footer_flags.i, ptr noundef nonnull %buf.i) #8, !dbg !817
    #dbg_value(i32 %call19.i, !666, !DIExpression(), !740)
  %cmp20.not.i = icmp eq i32 %call19.i, 0, !dbg !818
  br i1 %cmp20.not.i, label %if.end24.i, label %if.then21.i, !dbg !820

if.then21.i:                                      ; preds = %while.end.i
  %11 = load ptr, ptr %call, align 8, !dbg !821
  %call23.i = call ptr @message_strm(i32 noundef %call19.i) #8, !dbg !823
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %11, ptr noundef %call23.i) #8, !dbg !824
  br label %parse_indexes.exit.thread, !dbg !825

if.end24.i:                                       ; preds = %while.end.i
  %12 = load i32, ptr %footer_flags.i, align 8, !dbg !826
  %cmp25.not.i = icmp eq i32 %12, 0, !dbg !828
  br i1 %cmp25.not.i, label %if.end29.i, label %if.then26.i, !dbg !829

if.then26.i:                                      ; preds = %if.end24.i
  %13 = load ptr, ptr %call, align 8, !dbg !830
  %call28.i = call ptr @message_strm(i32 noundef 8) #8, !dbg !832
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %13, ptr noundef %call28.i) #8, !dbg !833
  br label %parse_indexes.exit.thread, !dbg !834

if.end29.i:                                       ; preds = %if.end24.i
  %14 = load i64, ptr %backward_size.i, align 8, !dbg !835
    #dbg_value(i64 %14, !718, !DIExpression(), !788)
  %add30.i = add i64 %14, 12, !dbg !836
  %cmp31.i = icmp ult i64 %pos.1314.i, %add30.i, !dbg !838
  br i1 %cmp31.i, label %if.then32.i, label %if.end35.i, !dbg !839

if.then32.i:                                      ; preds = %if.end29.i
  %15 = load ptr, ptr %call, align 8, !dbg !840
  %call34.i = call ptr @message_strm(i32 noundef 9) #8, !dbg !842
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %15, ptr noundef %call34.i) #8, !dbg !843
  br label %parse_indexes.exit.thread, !dbg !844

if.end35.i:                                       ; preds = %if.end29.i
  %sub36.i = sub i64 %pos.1314.i, %14, !dbg !845
    #dbg_value(i64 %sub36.i, !713, !DIExpression(), !740)
  %call37.i = call i64 @hardware_memlimit_get(i32 noundef 3) #8, !dbg !846
    #dbg_value(i64 %call37.i, !719, !DIExpression(), !788)
    #dbg_value(i64 0, !720, !DIExpression(), !788)
  %cmp38.not.i = icmp eq ptr %combined_index.0.i, null, !dbg !847
  br i1 %cmp38.not.i, label %if.end45.i, label %if.then39.i, !dbg !849

if.then39.i:                                      ; preds = %if.end35.i
  %call40.i = call i64 @lzma_index_memused(ptr noundef nonnull %combined_index.0.i) #8, !dbg !850
    #dbg_value(i64 %call40.i, !720, !DIExpression(), !788)
  %cmp41.i = icmp ugt i64 %call40.i, %call37.i, !dbg !852
  br i1 %cmp41.i, label %if.then42.i, label %if.end43.i, !dbg !854

if.then42.i:                                      ; preds = %if.then39.i
  call void @message_bug() #8, !dbg !855
  br label %if.end43.i, !dbg !855

if.end43.i:                                       ; preds = %if.then42.i, %if.then39.i
  %sub44.i = sub i64 %call37.i, %call40.i, !dbg !856
    #dbg_value(i64 %sub44.i, !719, !DIExpression(), !788)
  br label %if.end45.i, !dbg !857

if.end45.i:                                       ; preds = %if.end43.i, %if.end35.i
  %memlimit.0.i = phi i64 [ %sub44.i, %if.end43.i ], [ %call37.i, %if.end35.i ], !dbg !788
  %memused.0.i = phi i64 [ %call40.i, %if.end43.i ], [ 0, %if.end35.i ], !dbg !788
    #dbg_value(i64 %memused.0.i, !720, !DIExpression(), !788)
    #dbg_value(i64 %memlimit.0.i, !719, !DIExpression(), !788)
  %call46.i = call i32 @lzma_index_decoder(ptr noundef nonnull %strm.i, ptr noundef nonnull %this_index.i, i64 noundef %memlimit.0.i) #8, !dbg !858
    #dbg_value(i32 %call46.i, !666, !DIExpression(), !740)
  %cmp47.not.i = icmp eq i32 %call46.i, 0, !dbg !859
  br i1 %cmp47.not.i, label %do.body52.i, label %if.then48.i, !dbg !861

if.then48.i:                                      ; preds = %if.end45.i
  %16 = load ptr, ptr %call, align 8, !dbg !862
  %call50.i = call ptr @message_strm(i32 noundef %call46.i) #8, !dbg !864
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %16, ptr noundef %call50.i) #8, !dbg !865
  br label %parse_indexes.exit.thread, !dbg !866

do.body52.i:                                      ; preds = %if.end45.i, %if.end57.i
  %pos.4.i = phi i64 [ %add59.i, %if.end57.i ], [ %sub36.i, %if.end45.i ], !dbg !788
  %index_size.0.i = phi i64 [ %sub61.i, %if.end57.i ], [ %14, %if.end45.i ], !dbg !788
    #dbg_value(i64 %index_size.0.i, !718, !DIExpression(), !788)
    #dbg_value(i64 %pos.4.i, !713, !DIExpression(), !740)
  %cond.i = call i64 @llvm.umin.i64(i64 %index_size.0.i, i64 8192), !dbg !867
  store i64 %cond.i, ptr %avail_in.i, align 8, !dbg !869, !DIAssignID !870
    #dbg_assign(i64 %cond.i, !668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !870, ptr %avail_in.i, !DIExpression(), !740)
  %call55.i = call zeroext i1 @io_pread(ptr noundef %call, ptr noundef nonnull %buf.i, i64 noundef %cond.i, i64 noundef %pos.4.i) #8, !dbg !871
  br i1 %call55.i, label %parse_indexes.exit.thread, label %if.end57.i, !dbg !873

if.end57.i:                                       ; preds = %do.body52.i
  %17 = load i64, ptr %avail_in.i, align 8, !dbg !874
  %add59.i = add i64 %17, %pos.4.i, !dbg !875
    #dbg_value(i64 %add59.i, !713, !DIExpression(), !740)
  %sub61.i = sub i64 %index_size.0.i, %17, !dbg !876
    #dbg_value(i64 %sub61.i, !718, !DIExpression(), !788)
  store ptr %buf.i, ptr %strm.i, align 8, !dbg !877, !DIAssignID !878
    #dbg_assign(ptr %buf.i, !668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !878, ptr %strm.i, !DIExpression(), !740)
  %call63.i = call i32 @lzma_code(ptr noundef nonnull %strm.i, i32 noundef 0) #8, !dbg !879
    #dbg_value(i32 %call63.i, !666, !DIExpression(), !740)
  switch i32 %call63.i, label %if.then76.thread.i [
    i32 0, label %do.body52.i
    i32 1, label %if.then68.i
    i32 10, label %if.then76.thread.i.loopexit
  ], !dbg !880

if.then68.i:                                      ; preds = %if.end57.i
  %cmp69.i = icmp ne i64 %sub61.i, 0, !dbg !881
  %18 = load i64, ptr %avail_in.i, align 8
  %cmp71.i = icmp ne i64 %18, 0
  %or.cond.i = select i1 %cmp69.i, i1 true, i1 %cmp71.i, !dbg !884
  br i1 %or.cond.i, label %if.then76.thread.i, label %if.end91.i, !dbg !884

if.then76.thread.i.loopexit:                      ; preds = %if.end57.i
  br label %if.then76.thread.i, !dbg !885

if.then76.thread.i:                               ; preds = %if.then68.i, %if.end57.i, %if.then76.thread.i.loopexit
  %19 = phi i32 [ 9, %if.then76.thread.i.loopexit ], [ %call63.i, %if.end57.i ], [ 9, %if.then68.i ], !dbg !886
    #dbg_value(i32 %19, !666, !DIExpression(), !740)
  %20 = load ptr, ptr %call, align 8, !dbg !885
  %call81.i = call ptr @message_strm(i32 noundef %19) #8, !dbg !887
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %20, ptr noundef %call81.i) #8, !dbg !888
  %cmp82.i = icmp eq i32 %19, 6, !dbg !889
  br i1 %cmp82.i, label %if.then83.i, label %parse_indexes.exit.thread, !dbg !890

if.then83.i:                                      ; preds = %if.then76.thread.i
  %call84.i = call i64 @lzma_memusage(ptr noundef nonnull %strm.i) #8, !dbg !891
    #dbg_value(i64 %call84.i, !721, !DIExpression(), !892)
  %needed.0.i = call i64 @llvm.uadd.sat.i64(i64 %call84.i, i64 %memused.0.i), !dbg !893
    #dbg_value(i64 %needed.0.i, !721, !DIExpression(), !892)
  call void @message_mem_needed(i32 noundef 1, i64 noundef %needed.0.i) #8, !dbg !894
  br label %parse_indexes.exit.thread, !dbg !895

if.end91.i:                                       ; preds = %if.then68.i
    #dbg_value(i32 1, !666, !DIExpression(), !740)
  %21 = load i64, ptr %backward_size.i, align 8, !dbg !896
  %add93.neg.i = add i64 %add59.i, -12, !dbg !897
  %sub94.i = sub i64 %add93.neg.i, %21, !dbg !898
    #dbg_value(i64 %sub94.i, !713, !DIExpression(), !740)
  %22 = load ptr, ptr %this_index.i, align 8, !dbg !899
  %call95.i = call i64 @lzma_index_total_size(ptr noundef %22) #8, !dbg !901
  %cmp96.i = icmp ult i64 %sub94.i, %call95.i, !dbg !902
  br i1 %cmp96.i, label %if.then97.i, label %if.end100.i, !dbg !903

if.then97.i:                                      ; preds = %if.end91.i
  %23 = load ptr, ptr %call, align 8, !dbg !904
  %call99.i = call ptr @message_strm(i32 noundef 9) #8, !dbg !906
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %23, ptr noundef %call99.i) #8, !dbg !907
  br label %parse_indexes.exit.thread, !dbg !908

if.end100.i:                                      ; preds = %if.end91.i
  %24 = load ptr, ptr %this_index.i, align 8, !dbg !909
  %call101.i = call i64 @lzma_index_total_size(ptr noundef %24) #8, !dbg !910
  %sub102.i = sub i64 %sub94.i, %call101.i, !dbg !911
    #dbg_value(i64 %sub102.i, !713, !DIExpression(), !740)
  %call103.i = call zeroext i1 @io_pread(ptr noundef %call, ptr noundef nonnull %buf.i, i64 noundef 12, i64 noundef %sub102.i) #8, !dbg !912
  br i1 %call103.i, label %parse_indexes.exit.thread, label %if.end105.i, !dbg !914

if.end105.i:                                      ; preds = %if.end100.i
  %call107.i = call i32 @lzma_stream_header_decode(ptr noundef nonnull %header_flags.i, ptr noundef nonnull %buf.i) #8, !dbg !915
    #dbg_value(i32 %call107.i, !666, !DIExpression(), !740)
  %cmp108.not.i = icmp eq i32 %call107.i, 0, !dbg !916
  br i1 %cmp108.not.i, label %if.end112.i, label %if.then109.i, !dbg !918

if.then109.i:                                     ; preds = %if.end105.i
  %25 = load ptr, ptr %call, align 8, !dbg !919
  %call111.i = call ptr @message_strm(i32 noundef %call107.i) #8, !dbg !921
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %25, ptr noundef %call111.i) #8, !dbg !922
  br label %parse_indexes.exit.thread, !dbg !923

if.end112.i:                                      ; preds = %if.end105.i
  %call113.i = call i32 @lzma_stream_flags_compare(ptr noundef nonnull %header_flags.i, ptr noundef nonnull %footer_flags.i) #8, !dbg !924
    #dbg_value(i32 %call113.i, !666, !DIExpression(), !740)
  %cmp114.not.i = icmp eq i32 %call113.i, 0, !dbg !925
  br i1 %cmp114.not.i, label %if.end118.i, label %if.then115.i, !dbg !927

if.then115.i:                                     ; preds = %if.end112.i
  %26 = load ptr, ptr %call, align 8, !dbg !928
  %call117.i = call ptr @message_strm(i32 noundef %call113.i) #8, !dbg !930
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %26, ptr noundef %call117.i) #8, !dbg !931
  br label %parse_indexes.exit.thread, !dbg !932

if.end118.i:                                      ; preds = %if.end112.i
  %27 = load ptr, ptr %this_index.i, align 8, !dbg !933
  %call119.i = call i32 @lzma_index_stream_flags(ptr noundef %27, ptr noundef nonnull %footer_flags.i) #8, !dbg !934
    #dbg_value(i32 %call119.i, !666, !DIExpression(), !740)
  %cmp120.not.i = icmp eq i32 %call119.i, 0, !dbg !935
  br i1 %cmp120.not.i, label %if.end122.i, label %if.then121.i, !dbg !937

if.then121.i:                                     ; preds = %if.end118.i
  call void @message_bug() #8, !dbg !938
  br label %if.end122.i, !dbg !938

if.end122.i:                                      ; preds = %if.then121.i, %if.end118.i
  %28 = load ptr, ptr %this_index.i, align 8, !dbg !939
  %call123.i = call i32 @lzma_index_stream_padding(ptr noundef %28, i64 noundef %stream_padding.0315.i) #8, !dbg !940
    #dbg_value(i32 %call123.i, !666, !DIExpression(), !740)
  %cmp124.not.i = icmp eq i32 %call123.i, 0, !dbg !941
  br i1 %cmp124.not.i, label %if.end126.i, label %if.then125.i, !dbg !943

if.then125.i:                                     ; preds = %if.end122.i
  call void @message_bug() #8, !dbg !944
  br label %if.end126.i, !dbg !944

if.end126.i:                                      ; preds = %if.then125.i, %if.end122.i
  br i1 %cmp38.not.i, label %do.cond144.i, label %if.then128.i, !dbg !945

if.then128.i:                                     ; preds = %if.end126.i
  %29 = load ptr, ptr %this_index.i, align 8, !dbg !946
  %call129.i = call i32 @lzma_index_cat(ptr noundef %29, ptr noundef nonnull %combined_index.0.i, ptr noundef null) #8, !dbg !949
    #dbg_value(i32 %call129.i, !666, !DIExpression(), !740)
  %cmp130.not.i = icmp eq i32 %call129.i, 0, !dbg !950
  br i1 %cmp130.not.i, label %do.cond144.i, label %if.then131.i, !dbg !952

if.then131.i:                                     ; preds = %if.then128.i
  %30 = load ptr, ptr %call, align 8, !dbg !953
  %call133.i = call ptr @message_strm(i32 noundef %call129.i) #8, !dbg !955
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %30, ptr noundef %call133.i) #8, !dbg !956
  br label %parse_indexes.exit.thread, !dbg !957

do.cond144.i:                                     ; preds = %if.then128.i, %if.end126.i
  %31 = load ptr, ptr %this_index.i, align 8, !dbg !958
    #dbg_value(ptr %31, !711, !DIExpression(), !740)
  store ptr null, ptr %this_index.i, align 8, !dbg !959, !DIAssignID !960
    #dbg_assign(ptr null, !712, !DIExpression(), !960, ptr %this_index.i, !DIExpression(), !740)
  %add137.i = add i64 %add137.i209, %stream_padding.0315.i, !dbg !961
    #dbg_assign(i64 %add137.i, !510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !962, ptr %stream_padding136.i, !DIExpression(), !747)
    #dbg_value(i64 %sub102.i, !713, !DIExpression(), !740)
  %cmp145.i = icmp sgt i64 %sub102.i, 0, !dbg !963
  br i1 %cmp145.i, label %do.body.i, label %if.then9, !dbg !964, !llvm.loop !965

parse_indexes.exit.thread:                        ; preds = %if.end100.i, %if.end6.i, %do.body52.i, %if.then.i, %if.then3.i, %if.then21.i, %if.then26.i, %if.then32.i, %if.then48.i, %if.then76.thread.i, %if.then83.i, %if.then97.i, %if.then109.i, %if.then115.i, %if.then131.i
    #dbg_value(ptr %combined_index.0.i, !711, !DIExpression(), !740)
    #dbg_label(!726, !967)
  call void @lzma_end(ptr noundef nonnull %strm.i) #8, !dbg !968
  call void @lzma_index_end(ptr noundef %combined_index.0.i, ptr noundef null) #8, !dbg !969
  %32 = load ptr, ptr %this_index.i, align 8, !dbg !970
  call void @lzma_index_end(ptr noundef %32, ptr noundef null) #8, !dbg !971
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %this_index.i) #8, !dbg !972
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %strm.i) #8, !dbg !972
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %footer_flags.i) #8, !dbg !972
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %header_flags.i) #8, !dbg !972
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %buf.i) #8, !dbg !972
  br label %if.end25, !dbg !973

if.then9:                                         ; preds = %do.cond144.i
  store i64 %add137.i, ptr %stream_padding136.i, align 8, !dbg !961, !DIAssignID !962
  call void @lzma_end(ptr noundef nonnull %strm.i) #8, !dbg !974
  store ptr %31, ptr %xfi, align 8, !dbg !975, !DIAssignID !976
    #dbg_assign(ptr %31, !510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !976, ptr %xfi, !DIExpression(), !747)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %this_index.i) #8, !dbg !972
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %strm.i) #8, !dbg !972
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %footer_flags.i) #8, !dbg !972
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %header_flags.i) #8, !dbg !972
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %buf.i) #8, !dbg !972
  %33 = load i8, ptr @opt_robot, align 1, !dbg !977, !range !375, !noundef !376
  %loadedv = trunc nuw i8 %33 to i1, !dbg !977
  br i1 %loadedv, label %if.then10, label %if.else, !dbg !978

if.then10:                                        ; preds = %if.then9
    #dbg_assign(i1 undef, !652, !DIExpression(), !657, ptr %bhi.i, !DIExpression(), !656)
    #dbg_value(ptr %xfi, !647, !DIExpression(), !653)
    #dbg_value(ptr %call, !648, !DIExpression(), !653)
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %checks.i) #8, !dbg !979
  %call.i33 = call i32 @lzma_index_checks(ptr noundef %31) #8, !dbg !980
  call fastcc void @get_check_names(ptr noundef nonnull %checks.i, i32 noundef %call.i33, i1 noundef zeroext false), !dbg !981
  %34 = load ptr, ptr %call, align 8, !dbg !982
  %call1.i34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef %34), !dbg !983
  %call3.i = call i64 @lzma_index_stream_count(ptr noundef %31) #8, !dbg !984
  %call5.i35 = call i64 @lzma_index_block_count(ptr noundef %31) #8, !dbg !985
  %call7.i36 = call i64 @lzma_index_file_size(ptr noundef %31) #8, !dbg !986
  %call9.i = call i64 @lzma_index_uncompressed_size(ptr noundef %31) #8, !dbg !987
  %call11.i = call i64 @lzma_index_file_size(ptr noundef %31) #8, !dbg !988
  %call13.i = call i64 @lzma_index_uncompressed_size(ptr noundef %31) #8, !dbg !989
    #dbg_value(i64 %call11.i, !150, !DIExpression(), !990)
    #dbg_value(i64 %call13.i, !151, !DIExpression(), !990)
  %cmp.i.i = icmp eq i64 %call13.i, 0, !dbg !992
  br i1 %cmp.i.i, label %get_ratio.exit.i, label %if.end.i.i, !dbg !993

if.end.i.i:                                       ; preds = %if.then10
  %conv.i.i = uitofp i64 %call11.i to double, !dbg !994
  %conv1.i.i = uitofp i64 %call13.i to double, !dbg !995
  %div.i.i = fdiv double %conv.i.i, %conv1.i.i, !dbg !996
    #dbg_value(double %div.i.i, !152, !DIExpression(), !990)
  %cmp2.i.i = fcmp ogt double %div.i.i, 9.999000e+00, !dbg !997
  br i1 %cmp2.i.i, label %get_ratio.exit.i, label %if.end5.i.i, !dbg !998

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call.i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i.i) #8, !dbg !999
  br label %get_ratio.exit.i, !dbg !1000

get_ratio.exit.i:                                 ; preds = %if.end5.i.i, %if.end.i.i, %if.then10
  %retval.1.i.i = phi ptr [ @.str.10, %if.then10 ], [ @get_ratio.buf, %if.end5.i.i ], [ @.str.10, %if.end.i.i ], !dbg !990
  %call16.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %call3.i, i64 noundef %call5.i35, i64 noundef %call7.i36, i64 noundef %call9.i, ptr noundef nonnull %retval.1.i.i, ptr noundef nonnull %checks.i, i64 noundef %add137.i), !dbg !1001
  %call17.i = call i32 @message_verbosity_get() #8, !dbg !1002
  %cmp.i37 = icmp ugt i32 %call17.i, 2, !dbg !1003
  br i1 %cmp.i37, label %if.then.i39, label %if.end75.i, !dbg !1004

if.then.i39:                                      ; preds = %get_ratio.exit.i
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %iter.i) #8, !dbg !1005
  call void @lzma_index_iter_init(ptr noundef nonnull %iter.i, ptr noundef %31) #8, !dbg !1006
  %call19116.i = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i, i32 noundef 1) #8, !dbg !1007
  %tobool.not117.i = icmp eq i8 %call19116.i, 0, !dbg !1008
  br i1 %tobool.not117.i, label %while.body.lr.ph.i, label %while.end.i40, !dbg !1009

while.body.lr.ph.i:                               ; preds = %if.then.i39
  %number.i = getelementptr inbounds i8, ptr %iter.i, i64 32
  %block_count.i = getelementptr inbounds i8, ptr %iter.i, i64 40
  %compressed_offset.i = getelementptr inbounds i8, ptr %iter.i, i64 48
  %uncompressed_offset.i = getelementptr inbounds i8, ptr %iter.i, i64 56
  %compressed_size.i = getelementptr inbounds i8, ptr %iter.i, i64 64
  %uncompressed_size.i = getelementptr inbounds i8, ptr %iter.i, i64 72
  %padding.i = getelementptr inbounds i8, ptr %iter.i, i64 80
  br label %while.body.i, !dbg !1009

while.body.i:                                     ; preds = %get_ratio.exit104.i, %while.body.lr.ph.i
  %35 = load i64, ptr %number.i, align 8, !dbg !1010
  %36 = load i64, ptr %block_count.i, align 8, !dbg !1011
  %37 = load i64, ptr %compressed_offset.i, align 8, !dbg !1012
  %38 = load i64, ptr %uncompressed_offset.i, align 8, !dbg !1013
  %39 = load i64, ptr %compressed_size.i, align 8, !dbg !1014
  %40 = load i64, ptr %uncompressed_size.i, align 8, !dbg !1015
    #dbg_value(i64 %39, !150, !DIExpression(), !1016)
    #dbg_value(i64 %40, !151, !DIExpression(), !1016)
  %cmp.i95.i = icmp eq i64 %40, 0, !dbg !1018
  br i1 %cmp.i95.i, label %get_ratio.exit104.i, label %if.end.i96.i, !dbg !1019

if.end.i96.i:                                     ; preds = %while.body.i
  %conv.i97.i = uitofp i64 %39 to double, !dbg !1020
  %conv1.i98.i = uitofp i64 %40 to double, !dbg !1021
  %div.i99.i = fdiv double %conv.i97.i, %conv1.i98.i, !dbg !1022
    #dbg_value(double %div.i99.i, !152, !DIExpression(), !1016)
  %cmp2.i100.i = fcmp ogt double %div.i99.i, 9.999000e+00, !dbg !1023
  br i1 %cmp2.i100.i, label %get_ratio.exit104.i, label %if.end5.i101.i, !dbg !1024

if.end5.i101.i:                                   ; preds = %if.end.i96.i
  %call.i102.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i99.i) #8, !dbg !1025
  br label %get_ratio.exit104.i, !dbg !1026

get_ratio.exit104.i:                              ; preds = %if.end5.i101.i, %if.end.i96.i, %while.body.i
  %retval.1.i103.i = phi ptr [ @.str.10, %while.body.i ], [ @get_ratio.buf, %if.end5.i101.i ], [ @.str.10, %if.end.i96.i ], !dbg !1016
  %41 = load ptr, ptr %iter.i, align 8, !dbg !1027
  %check.i = getelementptr inbounds i8, ptr %41, i64 16, !dbg !1028
  %42 = load i32, ptr %check.i, align 8, !dbg !1028
  %idxprom.i = zext i32 %42 to i64, !dbg !1029
  %arrayidx.i43 = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %idxprom.i, !dbg !1029
  %43 = load i64, ptr %padding.i, align 8, !dbg !1030
  %call33.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i64 noundef %35, i64 noundef %36, i64 noundef %37, i64 noundef %38, i64 noundef %39, i64 noundef %40, ptr noundef nonnull %retval.1.i103.i, ptr noundef nonnull %arrayidx.i43, i64 noundef %43), !dbg !1031
  %call19.i44 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i, i32 noundef 1) #8, !dbg !1007
  %tobool.not.i = icmp eq i8 %call19.i44, 0, !dbg !1008
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i40, !dbg !1009, !llvm.loop !1032

while.end.i40:                                    ; preds = %get_ratio.exit104.i, %if.then.i39
  call void @lzma_index_iter_rewind(ptr noundef nonnull %iter.i) #8, !dbg !1034
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %bhi.i) #8, !dbg !1035
  %call35118.i = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i, i32 noundef 2) #8, !dbg !1036
  %tobool36.not.not119.i = icmp eq i8 %call35118.i, 0, !dbg !1037
  br i1 %tobool36.not.not119.i, label %while.body38.lr.ph.i, label %if.end75.critedge.i, !dbg !1038

while.body38.lr.ph.i:                             ; preds = %while.end.i40
  %number44.i = getelementptr inbounds i8, ptr %iter.i, i64 32
  %block.i = getelementptr inbounds i8, ptr %iter.i, i64 120
  %number_in_stream.i = getelementptr inbounds i8, ptr %iter.i, i64 144
  %compressed_file_offset.i = getelementptr inbounds i8, ptr %iter.i, i64 128
  %uncompressed_file_offset.i = getelementptr inbounds i8, ptr %iter.i, i64 136
  %total_size.i = getelementptr inbounds i8, ptr %iter.i, i64 184
  %uncompressed_size50.i = getelementptr inbounds i8, ptr %iter.i, i64 168
  %flags66.i = getelementptr inbounds i8, ptr %bhi.i, i64 4
  %compressed_size68.i = getelementptr inbounds i8, ptr %bhi.i, i64 8
  %memusage.i = getelementptr inbounds i8, ptr %bhi.i, i64 16
  %filter_chain.i = getelementptr inbounds i8, ptr %bhi.i, i64 24
  br label %while.body38.i, !dbg !1038

while.body38.i:                                   ; preds = %if.end71.i, %while.body38.lr.ph.i
  %call39.i = call i32 @message_verbosity_get() #8, !dbg !1039
  %cmp40.i = icmp ugt i32 %call39.i, 3, !dbg !1042
  br i1 %cmp40.i, label %land.lhs.true.i, label %if.end.i, !dbg !1043

land.lhs.true.i:                                  ; preds = %while.body38.i
  %call41.i = call fastcc zeroext i1 @parse_details(ptr noundef nonnull %call, ptr noundef nonnull %iter.i, ptr noundef nonnull %bhi.i, ptr noundef nonnull %xfi), !dbg !1044
  br i1 %call41.i, label %print_info_robot.exit, label %if.end.i, !dbg !1045

if.end.i:                                         ; preds = %land.lhs.true.i, %while.body38.i
  %44 = load i64, ptr %number44.i, align 8, !dbg !1046
  %45 = load i64, ptr %number_in_stream.i, align 8, !dbg !1047
  %46 = load i64, ptr %block.i, align 8, !dbg !1048
  %47 = load i64, ptr %compressed_file_offset.i, align 8, !dbg !1049
  %48 = load i64, ptr %uncompressed_file_offset.i, align 8, !dbg !1050
  %49 = load i64, ptr %total_size.i, align 8, !dbg !1051
  %50 = load i64, ptr %uncompressed_size50.i, align 8, !dbg !1052
    #dbg_value(i64 %49, !150, !DIExpression(), !1053)
    #dbg_value(i64 %50, !151, !DIExpression(), !1053)
  %cmp.i105.i = icmp eq i64 %50, 0, !dbg !1055
  br i1 %cmp.i105.i, label %get_ratio.exit114.i, label %if.end.i106.i, !dbg !1056

if.end.i106.i:                                    ; preds = %if.end.i
  %conv.i107.i = uitofp i64 %49 to double, !dbg !1057
  %conv1.i108.i = uitofp i64 %50 to double, !dbg !1058
  %div.i109.i = fdiv double %conv.i107.i, %conv1.i108.i, !dbg !1059
    #dbg_value(double %div.i109.i, !152, !DIExpression(), !1053)
  %cmp2.i110.i = fcmp ogt double %div.i109.i, 9.999000e+00, !dbg !1060
  br i1 %cmp2.i110.i, label %get_ratio.exit114.i, label %if.end5.i111.i, !dbg !1061

if.end5.i111.i:                                   ; preds = %if.end.i106.i
  %call.i112.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i109.i) #8, !dbg !1062
  br label %get_ratio.exit114.i, !dbg !1063

get_ratio.exit114.i:                              ; preds = %if.end5.i111.i, %if.end.i106.i, %if.end.i
  %retval.1.i113.i = phi ptr [ @.str.10, %if.end.i ], [ @get_ratio.buf, %if.end5.i111.i ], [ @.str.10, %if.end.i106.i ], !dbg !1053
  %51 = load ptr, ptr %iter.i, align 8, !dbg !1064
  %check58.i = getelementptr inbounds i8, ptr %51, i64 16, !dbg !1065
  %52 = load i32, ptr %check58.i, align 8, !dbg !1065
  %idxprom59.i = zext i32 %52 to i64, !dbg !1066
  %arrayidx60.i = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %idxprom59.i, !dbg !1066
  %call62.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i64 noundef %44, i64 noundef %45, i64 noundef %46, i64 noundef %47, i64 noundef %48, i64 noundef %49, i64 noundef %50, ptr noundef nonnull %retval.1.i113.i, ptr noundef nonnull %arrayidx60.i), !dbg !1067
  %call63.i41 = call i32 @message_verbosity_get() #8, !dbg !1068
  %cmp64.i = icmp ugt i32 %call63.i41, 3, !dbg !1070
  br i1 %cmp64.i, label %if.then65.i, label %if.end71.i, !dbg !1071

if.then65.i:                                      ; preds = %get_ratio.exit114.i
  %53 = load i32, ptr %bhi.i, align 8, !dbg !1072
  %54 = load i64, ptr %compressed_size68.i, align 8, !dbg !1073
  %55 = load i64, ptr %memusage.i, align 8, !dbg !1074
  %call70.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull @check_value, i32 noundef %53, ptr noundef nonnull %flags66.i, i64 noundef %54, i64 noundef %55, ptr noundef nonnull %filter_chain.i), !dbg !1075
  br label %if.end71.i, !dbg !1075

if.end71.i:                                       ; preds = %if.then65.i, %get_ratio.exit114.i
    #dbg_value(i32 10, !415, !DIExpression(), !1076)
  %56 = load ptr, ptr @stdout, align 8, !dbg !1078
  %call.i115.i = call i32 @putc(i32 noundef 10, ptr noundef %56), !dbg !1079
  %call35.i = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i, i32 noundef 2) #8, !dbg !1036
  %tobool36.not.not.i = icmp eq i8 %call35.i, 0, !dbg !1037
  br i1 %tobool36.not.not.i, label %while.body38.i, label %if.end75.critedge.i, !dbg !1038, !llvm.loop !1080

if.end75.critedge.i:                              ; preds = %if.end71.i, %while.end.i40
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %bhi.i) #8, !dbg !1082
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %iter.i) #8, !dbg !1082
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.end75.critedge.i, %get_ratio.exit.i
  %call76.i = call i32 @message_verbosity_get() #8, !dbg !1083
  %cmp77.i = icmp ugt i32 %call76.i, 3, !dbg !1085
  br i1 %cmp77.i, label %if.then78.i, label %print_info_robot.exit.thread, !dbg !1086

if.then78.i:                                      ; preds = %if.end75.i
  %memusage_max.i = getelementptr inbounds i8, ptr %xfi, i64 16, !dbg !1087
  %57 = load i64, ptr %memusage_max.i, align 8, !dbg !1087
  %all_have_sizes.i = getelementptr inbounds i8, ptr %xfi, i64 24, !dbg !1088
  %58 = load i8, ptr %all_have_sizes.i, align 8, !dbg !1088, !range !375, !noundef !376
  %loadedv.i = trunc nuw i8 %58 to i1, !dbg !1088
  %cond.i38 = select i1 %loadedv.i, ptr @.str.4, ptr @.str.5, !dbg !1089
  %call79.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i64 noundef %57, ptr noundef nonnull %cond.i38), !dbg !1090
  br label %print_info_robot.exit.thread, !dbg !1090

print_info_robot.exit.thread:                     ; preds = %if.then78.i, %if.end75.i
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %checks.i) #8, !dbg !1091
    #dbg_value(i1 poison, !511, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1092)
  br label %if.then23, !dbg !1093

print_info_robot.exit:                            ; preds = %land.lhs.true.i
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %bhi.i) #8, !dbg !1082
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %iter.i) #8, !dbg !1082
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %checks.i) #8, !dbg !1091
    #dbg_value(i1 true, !511, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1092)
  br label %if.end24, !dbg !1093

if.else:                                          ; preds = %if.then9
  %call12 = call i32 @message_verbosity_get() #8, !dbg !1094
  %cmp13 = icmp ult i32 %call12, 3, !dbg !1095
  br i1 %cmp13, label %if.then14, label %if.else17, !dbg !1096

if.then14:                                        ; preds = %if.else
    #dbg_assign(i1 undef, !282, !DIExpression(), !642, ptr %checks.i45, !DIExpression(), !1097)
    #dbg_value(ptr %xfi, !280, !DIExpression(), !1097)
    #dbg_value(ptr %call, !281, !DIExpression(), !1097)
  %.b56.i = load i1, ptr @print_info_basic.headings_displayed, align 1, !dbg !1099
  br i1 %.b56.i, label %if.end.i48, label %if.then.i46, !dbg !1101

if.then.i46:                                      ; preds = %if.then14
  store i1 true, ptr @print_info_basic.headings_displayed, align 1, !dbg !1102
  %call.i47 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.38), !dbg !1104
  br label %if.end.i48, !dbg !1105

if.end.i48:                                       ; preds = %if.then.i46, %if.then14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %checks.i45) #8, !dbg !1106
  %call1.i49 = call i32 @lzma_index_checks(ptr noundef %31) #8, !dbg !1107
  call fastcc void @get_check_names(ptr noundef nonnull %checks.i45, i32 noundef %call1.i49, i1 noundef zeroext false), !dbg !1108
  %call3.i50 = call i64 @lzma_index_stream_count(ptr noundef %31) #8, !dbg !1109
  %call4.i = call ptr @uint64_to_str(i64 noundef %call3.i50, i32 noundef 0) #8, !dbg !1110
    #dbg_value(ptr %call4.i, !286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1097)
  %call6.i = call i64 @lzma_index_block_count(ptr noundef %31) #8, !dbg !1111
  %call7.i51 = call ptr @uint64_to_str(i64 noundef %call6.i, i32 noundef 1) #8, !dbg !1112
    #dbg_value(ptr %call7.i51, !286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1097)
  %call10.i = call i64 @lzma_index_file_size(ptr noundef %31) #8, !dbg !1113
  %call11.i52 = call ptr @uint64_to_nicestr(i64 noundef %call10.i, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 2) #8, !dbg !1114
    #dbg_value(ptr %call11.i52, !286, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1097)
  %call14.i = call i64 @lzma_index_uncompressed_size(ptr noundef %31) #8, !dbg !1115
  %call15.i = call ptr @uint64_to_nicestr(i64 noundef %call14.i, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 3) #8, !dbg !1116
    #dbg_value(ptr %call15.i, !286, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1097)
  %call18.i = call i64 @lzma_index_file_size(ptr noundef %31) #8, !dbg !1117
  %call20.i = call i64 @lzma_index_uncompressed_size(ptr noundef %31) #8, !dbg !1118
    #dbg_value(i64 %call18.i, !150, !DIExpression(), !1119)
    #dbg_value(i64 %call20.i, !151, !DIExpression(), !1119)
  %cmp.i.i53 = icmp eq i64 %call20.i, 0, !dbg !1121
  br i1 %cmp.i.i53, label %print_info_basic.exit, label %if.end.i.i54, !dbg !1122

if.end.i.i54:                                     ; preds = %if.end.i48
  %conv.i.i55 = uitofp i64 %call18.i to double, !dbg !1123
  %conv1.i.i56 = uitofp i64 %call20.i to double, !dbg !1124
  %div.i.i57 = fdiv double %conv.i.i55, %conv1.i.i56, !dbg !1125
    #dbg_value(double %div.i.i57, !152, !DIExpression(), !1119)
  %cmp2.i.i58 = fcmp ogt double %div.i.i57, 9.999000e+00, !dbg !1126
  br i1 %cmp2.i.i58, label %print_info_basic.exit, label %if.end5.i.i59, !dbg !1127

if.end5.i.i59:                                    ; preds = %if.end.i.i54
  %call.i.i60 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i.i57) #8, !dbg !1128
  br label %print_info_basic.exit, !dbg !1129

print_info_basic.exit:                            ; preds = %if.end.i48, %if.end.i.i54, %if.end5.i.i59
  %retval.1.i.i62 = phi ptr [ @.str.10, %if.end.i48 ], [ @get_ratio.buf, %if.end5.i.i59 ], [ @.str.10, %if.end.i.i54 ], !dbg !1119
    #dbg_value(ptr %retval.1.i.i62, !286, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1097)
    #dbg_value(ptr %checks.i45, !286, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !1097)
  %59 = load ptr, ptr %call, align 8, !dbg !1130
    #dbg_value(ptr %59, !286, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !1097)
  %call25.i = call i32 @tuklib_mbstr_fw(ptr noundef %call4.i, i32 noundef 5) #8, !dbg !1131
  %call28.i63 = call i32 @tuklib_mbstr_fw(ptr noundef %call7.i51, i32 noundef 7) #8, !dbg !1132
  %call31.i = call i32 @tuklib_mbstr_fw(ptr noundef %call11.i52, i32 noundef 11) #8, !dbg !1133
  %call34.i64 = call i32 @tuklib_mbstr_fw(ptr noundef %call15.i, i32 noundef 11) #8, !dbg !1134
  %call37.i65 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %retval.1.i.i62, i32 noundef 5) #8, !dbg !1135
  %call40.i66 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %checks.i45, i32 noundef 7) #8, !dbg !1136
  %call43.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %call25.i, ptr noundef %call4.i, i32 noundef %call28.i63, ptr noundef %call7.i51, i32 noundef %call31.i, ptr noundef %call11.i52, i32 noundef %call34.i64, ptr noundef %call15.i, i32 noundef %call37.i65, ptr noundef nonnull %retval.1.i.i62, i32 noundef %call40.i66, ptr noundef nonnull %checks.i45, ptr noundef %59), !dbg !1137
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %checks.i45) #8, !dbg !1138
    #dbg_value(i1 poison, !511, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1092)
  br label %if.then23, !dbg !1093

if.else17:                                        ; preds = %if.else
    #dbg_assign(i1 undef, !531, !DIExpression(), !641, ptr %bhi.i68, !DIExpression(), !637)
    #dbg_value(ptr %xfi, !521, !DIExpression(), !637)
    #dbg_value(ptr %call, !522, !DIExpression(), !637)
  %call.i69 = call i64 @lzma_index_stream_count(ptr noundef %31) #8, !dbg !1139
  %call2.i = call i64 @lzma_index_block_count(ptr noundef %31) #8, !dbg !1140
  %call4.i70 = call i64 @lzma_index_file_size(ptr noundef %31) #8, !dbg !1141
  %call6.i71 = call i64 @lzma_index_uncompressed_size(ptr noundef %31) #8, !dbg !1142
  %call8.i = call i32 @lzma_index_checks(ptr noundef %31) #8, !dbg !1143
  call fastcc void @print_adv_helper(i64 noundef %call.i69, i64 noundef %call2.i, i64 noundef %call4.i70, i64 noundef %call6.i71, i32 noundef %call8.i, i64 noundef %add137.i), !dbg !1144
    #dbg_value(i32 0, !523, !DIExpression(), !637)
  %call9.i73 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.40), !dbg !1145
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %iter.i67) #8, !dbg !1146
  call void @lzma_index_iter_init(ptr noundef nonnull %iter.i67, ptr noundef %31) #8, !dbg !1147
  %call11264.i = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i67, i32 noundef 1) #8, !dbg !1148
  %tobool.not265.i = icmp eq i8 %call11264.i, 0, !dbg !1149
  br i1 %tobool.not265.i, label %while.body.lr.ph.i91, label %while.end.i74, !dbg !1150

while.body.lr.ph.i91:                             ; preds = %if.else17
  %number.i92 = getelementptr inbounds i8, ptr %iter.i67, i64 32
  %block_count.i93 = getelementptr inbounds i8, ptr %iter.i67, i64 40
  %compressed_offset.i94 = getelementptr inbounds i8, ptr %iter.i67, i64 48
  %uncompressed_offset.i95 = getelementptr inbounds i8, ptr %iter.i67, i64 56
  %compressed_size.i96 = getelementptr inbounds i8, ptr %iter.i67, i64 64
  %uncompressed_size.i97 = getelementptr inbounds i8, ptr %iter.i67, i64 72
  %padding.i98 = getelementptr inbounds i8, ptr %iter.i67, i64 80
  br label %while.body.i99, !dbg !1150

while.body.i99:                                   ; preds = %if.end.i119, %while.body.lr.ph.i91
  %check_max.0266.i = phi i32 [ 0, %while.body.lr.ph.i91 ], [ %check_max.1.i, %if.end.i119 ]
    #dbg_value(i32 %check_max.0266.i, !523, !DIExpression(), !637)
  %60 = load i64, ptr %number.i92, align 8, !dbg !1151
  %call12.i = call ptr @uint64_to_str(i64 noundef %60, i32 noundef 0) #8, !dbg !1152
    #dbg_value(ptr %call12.i, !524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1153)
  %61 = load i64, ptr %block_count.i93, align 8, !dbg !1154
  %call14.i100 = call ptr @uint64_to_str(i64 noundef %61, i32 noundef 1) #8, !dbg !1155
    #dbg_value(ptr %call14.i100, !524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1153)
  %62 = load i64, ptr %compressed_offset.i94, align 8, !dbg !1156
  %call17.i101 = call ptr @uint64_to_str(i64 noundef %62, i32 noundef 2) #8, !dbg !1157
    #dbg_value(ptr %call17.i101, !524, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1153)
  %63 = load i64, ptr %uncompressed_offset.i95, align 8, !dbg !1158
  %call20.i102 = call ptr @uint64_to_str(i64 noundef %63, i32 noundef 3) #8, !dbg !1159
    #dbg_value(ptr %call20.i102, !524, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1153)
  %call21.i = call i32 @tuklib_mbstr_fw(ptr noundef %call12.i, i32 noundef 6) #8, !dbg !1160
  %call24.i = call i32 @tuklib_mbstr_fw(ptr noundef %call14.i100, i32 noundef 9) #8, !dbg !1161
  %call27.i = call i32 @tuklib_mbstr_fw(ptr noundef %call17.i101, i32 noundef 15) #8, !dbg !1162
  %call30.i = call i32 @tuklib_mbstr_fw(ptr noundef %call20.i102, i32 noundef 15) #8, !dbg !1163
  %call32.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %call21.i, ptr noundef %call12.i, i32 noundef %call24.i, ptr noundef %call14.i100, i32 noundef %call27.i, ptr noundef %call17.i101, i32 noundef %call30.i, ptr noundef %call20.i102), !dbg !1164
  %64 = load i64, ptr %compressed_size.i96, align 8, !dbg !1165
  %call34.i103 = call ptr @uint64_to_str(i64 noundef %64, i32 noundef 0) #8, !dbg !1166
    #dbg_value(ptr %call34.i103, !527, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1153)
  %65 = load i64, ptr %uncompressed_size.i97, align 8, !dbg !1167
  %call37.i104 = call ptr @uint64_to_str(i64 noundef %65, i32 noundef 1) #8, !dbg !1168
    #dbg_value(ptr %call37.i104, !527, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1153)
  %66 = load i64, ptr %uncompressed_size.i97, align 8, !dbg !1169
    #dbg_value(i64 poison, !150, !DIExpression(), !1170)
    #dbg_value(i64 %66, !151, !DIExpression(), !1170)
  %cmp.i.i105 = icmp eq i64 %66, 0, !dbg !1172
  br i1 %cmp.i.i105, label %get_ratio.exit.i113, label %if.end.i.i106, !dbg !1173

if.end.i.i106:                                    ; preds = %while.body.i99
  %67 = load i64, ptr %compressed_size.i96, align 8, !dbg !1174
    #dbg_value(i64 %67, !150, !DIExpression(), !1170)
  %conv.i.i107 = uitofp i64 %67 to double, !dbg !1175
  %conv1.i.i108 = uitofp i64 %66 to double, !dbg !1176
  %div.i.i109 = fdiv double %conv.i.i107, %conv1.i.i108, !dbg !1177
    #dbg_value(double %div.i.i109, !152, !DIExpression(), !1170)
  %cmp2.i.i110 = fcmp ogt double %div.i.i109, 9.999000e+00, !dbg !1178
  br i1 %cmp2.i.i110, label %get_ratio.exit.i113, label %if.end5.i.i111, !dbg !1179

if.end5.i.i111:                                   ; preds = %if.end.i.i106
  %call.i.i112 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i.i109) #8, !dbg !1180
  br label %get_ratio.exit.i113, !dbg !1181

get_ratio.exit.i113:                              ; preds = %if.end5.i.i111, %if.end.i.i106, %while.body.i99
  %retval.1.i.i114 = phi ptr [ @.str.10, %while.body.i99 ], [ @get_ratio.buf, %if.end5.i.i111 ], [ @.str.10, %if.end.i.i106 ], !dbg !1170
    #dbg_value(ptr %retval.1.i.i114, !527, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1153)
  %68 = load ptr, ptr %iter.i67, align 8, !dbg !1182
  %check.i115 = getelementptr inbounds i8, ptr %68, i64 16, !dbg !1182
  %69 = load i32, ptr %check.i115, align 8, !dbg !1182
  %idxprom.i116 = zext i32 %69 to i64, !dbg !1182
  %arrayidx46.i = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %idxprom.i116, !dbg !1182
    #dbg_value(ptr %arrayidx46.i, !527, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1153)
  %70 = load i64, ptr %padding.i98, align 8, !dbg !1183
  %call49.i = call ptr @uint64_to_str(i64 noundef %70, i32 noundef 2) #8, !dbg !1184
    #dbg_value(ptr %call49.i, !527, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1153)
  %call51.i = call i32 @tuklib_mbstr_fw(ptr noundef %call34.i103, i32 noundef 15) #8, !dbg !1185
  %call54.i = call i32 @tuklib_mbstr_fw(ptr noundef %call37.i104, i32 noundef 15) #8, !dbg !1186
  %call57.i = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %retval.1.i.i114, i32 noundef 5) #8, !dbg !1187
  %call60.i = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %arrayidx46.i, i32 noundef 10) #8, !dbg !1188
  %call63.i117 = call i32 @tuklib_mbstr_fw(ptr noundef %call49.i, i32 noundef 7) #8, !dbg !1189
  %call65.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %call51.i, ptr noundef %call34.i103, i32 noundef %call54.i, ptr noundef %call37.i104, i32 noundef %call57.i, ptr noundef nonnull %retval.1.i.i114, i32 noundef %call60.i, ptr noundef nonnull %arrayidx46.i, i32 noundef %call63.i117, ptr noundef %call49.i), !dbg !1190
  %71 = load ptr, ptr %iter.i67, align 8, !dbg !1191
  %check68.i = getelementptr inbounds i8, ptr %71, i64 16, !dbg !1193
  %72 = load i32, ptr %check68.i, align 8, !dbg !1193
  %call69.i = call i32 @lzma_check_size(i32 noundef %72) #8, !dbg !1194
  %cmp.i118 = icmp ugt i32 %call69.i, %check_max.0266.i, !dbg !1195
  br i1 %cmp.i118, label %if.then.i122, label %if.end.i119, !dbg !1196

if.then.i122:                                     ; preds = %get_ratio.exit.i113
  %73 = load ptr, ptr %iter.i67, align 8, !dbg !1197
  %check72.i = getelementptr inbounds i8, ptr %73, i64 16, !dbg !1198
  %74 = load i32, ptr %check72.i, align 8, !dbg !1198
  %call73.i = call i32 @lzma_check_size(i32 noundef %74) #8, !dbg !1199
    #dbg_value(i32 %call73.i, !523, !DIExpression(), !637)
  br label %if.end.i119, !dbg !1200

if.end.i119:                                      ; preds = %if.then.i122, %get_ratio.exit.i113
  %check_max.1.i = phi i32 [ %call73.i, %if.then.i122 ], [ %check_max.0266.i, %get_ratio.exit.i113 ], !dbg !637
    #dbg_value(i32 %check_max.1.i, !523, !DIExpression(), !637)
  %call11.i120 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i67, i32 noundef 1) #8, !dbg !1148
  %tobool.not.i121 = icmp eq i8 %call11.i120, 0, !dbg !1149
  br i1 %tobool.not.i121, label %while.body.i99, label %while.end.loopexit.i, !dbg !1150, !llvm.loop !1201

while.end.loopexit.i:                             ; preds = %if.end.i119
  %75 = shl i32 %check_max.1.i, 1, !dbg !1203
  br label %while.end.i74, !dbg !1204

while.end.i74:                                    ; preds = %while.end.loopexit.i, %if.else17
  %check_max.0.lcssa.i = phi i32 [ 0, %if.else17 ], [ %75, %while.end.loopexit.i ], !dbg !637
  %call74.i = call i32 @message_verbosity_get() #8, !dbg !1204
  %cmp75.i = icmp ugt i32 %call74.i, 3, !dbg !1205
    #dbg_value(i1 %cmp75.i, !529, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !637)
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %bhi.i68) #8, !dbg !1206
  %call77.i = call i64 @lzma_index_block_count(ptr noundef %31) #8, !dbg !1207
  %cmp78.not.i = icmp eq i64 %call77.i, 0, !dbg !1208
  br i1 %cmp78.not.i, label %if.end198.i, label %if.then79.i, !dbg !1209

if.then79.i:                                      ; preds = %while.end.i74
  %cond.i75 = call i32 @llvm.umax.i32(i32 %check_max.0.lcssa.i, i32 8), !dbg !1203
    #dbg_value(i32 %cond.i75, !543, !DIExpression(), !1210)
  %call82.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43), !dbg !1211
  br i1 %cmp75.i, label %if.then83.i88, label %if.end85.i, !dbg !1212

if.then83.i88:                                    ; preds = %if.then79.i
  %sub.i89 = add nsw i32 %cond.i75, -8, !dbg !1213
  %call84.i90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %sub.i89, ptr noundef nonnull @.str.9), !dbg !1216
  br label %if.end85.i, !dbg !1217

if.end85.i:                                       ; preds = %if.then83.i88, %if.then79.i
    #dbg_value(i32 10, !415, !DIExpression(), !1218)
  %76 = load ptr, ptr @stdout, align 8, !dbg !1220
  %call.i252.i = call i32 @putc(i32 noundef 10, ptr noundef %76), !dbg !1221
  call void @lzma_index_iter_init(ptr noundef nonnull %iter.i67, ptr noundef %31) #8, !dbg !1222
  %call89267.i = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i67, i32 noundef 2) #8, !dbg !1223
  %tobool90.not.not268.i = icmp eq i8 %call89267.i, 0, !dbg !1224
  br i1 %tobool90.not.not268.i, label %while.body92.lr.ph.i, label %if.end198.i, !dbg !1225

while.body92.lr.ph.i:                             ; preds = %if.end85.i
  %number99.i = getelementptr inbounds i8, ptr %iter.i67, i64 32
  %number_in_stream.i79 = getelementptr inbounds i8, ptr %iter.i67, i64 144
  %compressed_file_offset.i80 = getelementptr inbounds i8, ptr %iter.i67, i64 128
  %uncompressed_file_offset.i81 = getelementptr inbounds i8, ptr %iter.i67, i64 136
  %total_size.i82 = getelementptr inbounds i8, ptr %iter.i67, i64 184
  %uncompressed_size127.i = getelementptr inbounds i8, ptr %iter.i67, i64 168
  %unpadded_size.i = getelementptr inbounds i8, ptr %iter.i67, i64 176
  %flags173.i = getelementptr inbounds i8, ptr %bhi.i68, i64 4
  %memusage.i83 = getelementptr inbounds i8, ptr %bhi.i68, i64 16
  %filter_chain.i84 = getelementptr inbounds i8, ptr %bhi.i68, i64 24
  br label %while.body92.i, !dbg !1225

while.body92.i:                                   ; preds = %if.end195.i, %while.body92.lr.ph.i
  br i1 %cmp75.i, label %land.lhs.true.i87, label %if.end96.i, !dbg !1226

land.lhs.true.i87:                                ; preds = %while.body92.i
  %call94.i = call fastcc zeroext i1 @parse_details(ptr noundef %call, ptr noundef nonnull %iter.i67, ptr noundef nonnull %bhi.i68, ptr noundef nonnull %xfi), !dbg !1228
  br i1 %call94.i, label %if.end21, label %if.end96.i, !dbg !1229

if.end96.i:                                       ; preds = %land.lhs.true.i87, %while.body92.i
  %cond153.i = phi i32 [ 11, %land.lhs.true.i87 ], [ 1, %while.body92.i ], !dbg !1230
  %77 = load i64, ptr %number99.i, align 8, !dbg !1230
  %call100.i = call ptr @uint64_to_str(i64 noundef %77, i32 noundef 0) #8, !dbg !1231
    #dbg_value(ptr %call100.i, !547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1232)
  %78 = load i64, ptr %number_in_stream.i79, align 8, !dbg !1233
  %call102.i = call ptr @uint64_to_str(i64 noundef %78, i32 noundef 1) #8, !dbg !1234
    #dbg_value(ptr %call102.i, !547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1232)
  %79 = load i64, ptr %compressed_file_offset.i80, align 8, !dbg !1235
  %call105.i = call ptr @uint64_to_str(i64 noundef %79, i32 noundef 2) #8, !dbg !1236
    #dbg_value(ptr %call105.i, !547, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1232)
  %80 = load i64, ptr %uncompressed_file_offset.i81, align 8, !dbg !1237
  %call108.i = call ptr @uint64_to_str(i64 noundef %80, i32 noundef 3) #8, !dbg !1238
    #dbg_value(ptr %call108.i, !547, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1232)
  %call110.i = call i32 @tuklib_mbstr_fw(ptr noundef %call100.i, i32 noundef 6) #8, !dbg !1239
  %call113.i85 = call i32 @tuklib_mbstr_fw(ptr noundef %call102.i, i32 noundef 9) #8, !dbg !1240
  %call116.i = call i32 @tuklib_mbstr_fw(ptr noundef %call105.i, i32 noundef 15) #8, !dbg !1241
  %call119.i86 = call i32 @tuklib_mbstr_fw(ptr noundef %call108.i, i32 noundef 15) #8, !dbg !1242
  %call121.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %call110.i, ptr noundef %call100.i, i32 noundef %call113.i85, ptr noundef %call102.i, i32 noundef %call116.i, ptr noundef %call105.i, i32 noundef %call119.i86, ptr noundef %call108.i), !dbg !1243
  %81 = load i64, ptr %total_size.i82, align 8, !dbg !1244
  %call124.i = call ptr @uint64_to_str(i64 noundef %81, i32 noundef 0) #8, !dbg !1245
    #dbg_value(ptr %call124.i, !549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1232)
  %82 = load i64, ptr %uncompressed_size127.i, align 8, !dbg !1246
  %call128.i = call ptr @uint64_to_str(i64 noundef %82, i32 noundef 1) #8, !dbg !1247
    #dbg_value(ptr %call128.i, !549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1232)
  %83 = load i64, ptr %uncompressed_size127.i, align 8, !dbg !1248
    #dbg_value(i64 poison, !150, !DIExpression(), !1249)
    #dbg_value(i64 %83, !151, !DIExpression(), !1249)
  %cmp.i253.i = icmp eq i64 %83, 0, !dbg !1251
  br i1 %cmp.i253.i, label %get_ratio.exit262.i, label %if.end.i254.i, !dbg !1252

if.end.i254.i:                                    ; preds = %if.end96.i
  %84 = load i64, ptr %total_size.i82, align 8, !dbg !1253
    #dbg_value(i64 %84, !150, !DIExpression(), !1249)
  %conv.i255.i = uitofp i64 %84 to double, !dbg !1254
  %conv1.i256.i = uitofp i64 %83 to double, !dbg !1255
  %div.i257.i = fdiv double %conv.i255.i, %conv1.i256.i, !dbg !1256
    #dbg_value(double %div.i257.i, !152, !DIExpression(), !1249)
  %cmp2.i258.i = fcmp ogt double %div.i257.i, 9.999000e+00, !dbg !1257
  br i1 %cmp2.i258.i, label %get_ratio.exit262.i, label %if.end5.i259.i, !dbg !1258

if.end5.i259.i:                                   ; preds = %if.end.i254.i
  %call.i260.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i257.i) #8, !dbg !1259
  br label %get_ratio.exit262.i, !dbg !1260

get_ratio.exit262.i:                              ; preds = %if.end5.i259.i, %if.end.i254.i, %if.end96.i
  %retval.1.i261.i = phi ptr [ @.str.10, %if.end96.i ], [ @get_ratio.buf, %if.end5.i259.i ], [ @.str.10, %if.end.i254.i ], !dbg !1249
    #dbg_value(ptr %retval.1.i261.i, !549, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1232)
  %85 = load ptr, ptr %iter.i67, align 8, !dbg !1261
  %check138.i = getelementptr inbounds i8, ptr %85, i64 16, !dbg !1261
  %86 = load i32, ptr %check138.i, align 8, !dbg !1261
  %idxprom139.i = zext i32 %86 to i64, !dbg !1261
  %arrayidx140.i = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %idxprom139.i, !dbg !1261
    #dbg_value(ptr %arrayidx140.i, !549, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1232)
  %call143.i = call i32 @tuklib_mbstr_fw(ptr noundef %call124.i, i32 noundef 15) #8, !dbg !1262
  %call146.i = call i32 @tuklib_mbstr_fw(ptr noundef %call128.i, i32 noundef 15) #8, !dbg !1263
  %call149.i = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %retval.1.i261.i, i32 noundef 5) #8, !dbg !1264
  %call154.i = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %arrayidx140.i, i32 noundef %cond153.i) #8, !dbg !1265
  %call156.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %call143.i, ptr noundef %call124.i, i32 noundef %call146.i, ptr noundef %call128.i, i32 noundef %call149.i, ptr noundef nonnull %retval.1.i261.i, i32 noundef %call154.i, ptr noundef nonnull %arrayidx140.i), !dbg !1266
  br i1 %cmp75.i, label %if.then158.i, label %if.end195.i, !dbg !1267

if.then158.i:                                     ; preds = %get_ratio.exit262.i
  %87 = load i64, ptr %unpadded_size.i, align 8, !dbg !1268
  %88 = load i32, ptr %bhi.i68, align 8, !dbg !1269
  %conv.i = zext i32 %88 to i64, !dbg !1270
  %89 = load ptr, ptr %iter.i67, align 8, !dbg !1271
  %check164.i = getelementptr inbounds i8, ptr %89, i64 16, !dbg !1272
  %90 = load i32, ptr %check164.i, align 8, !dbg !1272
  %call165.i = call i32 @lzma_check_size(i32 noundef %90) #8, !dbg !1273
  %conv166.i = zext i32 %call165.i to i64, !dbg !1273
  %91 = add nuw nsw i64 %conv.i, %conv166.i, !dbg !1274
  %sub167.i = sub i64 %87, %91, !dbg !1274
    #dbg_value(i64 %sub167.i, !550, !DIExpression(), !1275)
    #dbg_value(ptr @check_value, !554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1275)
  %92 = load i32, ptr %bhi.i68, align 8, !dbg !1276
  %conv170.i = zext i32 %92 to i64, !dbg !1277
  %call171.i = call ptr @uint64_to_str(i64 noundef %conv170.i, i32 noundef 0) #8, !dbg !1278
    #dbg_value(ptr %call171.i, !554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1275)
    #dbg_value(ptr %flags173.i, !554, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1275)
  %call176.i = call ptr @uint64_to_str(i64 noundef %sub167.i, i32 noundef 1) #8, !dbg !1279
    #dbg_value(ptr %call176.i, !554, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1275)
  %93 = load i64, ptr %memusage.i83, align 8, !dbg !1280
  %call178.i = call i64 @round_up_to_mib(i64 noundef %93) #8, !dbg !1281
  %call179.i = call ptr @uint64_to_str(i64 noundef %call178.i, i32 noundef 2) #8, !dbg !1282
    #dbg_value(ptr %call179.i, !554, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1275)
    #dbg_value(ptr %filter_chain.i84, !554, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !1275)
  %call184.i = call i32 @tuklib_mbstr_fw(ptr noundef %call171.i, i32 noundef 6) #8, !dbg !1283
  %call188.i = call i32 @tuklib_mbstr_fw(ptr noundef %call176.i, i32 noundef 15) #8, !dbg !1284
  %call191.i = call i32 @tuklib_mbstr_fw(ptr noundef %call179.i, i32 noundef 7) #8, !dbg !1285
  %call194.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %cond.i75, ptr noundef nonnull @check_value, i32 noundef %call184.i, ptr noundef %call171.i, ptr noundef nonnull %flags173.i, i32 noundef %call188.i, ptr noundef %call176.i, i32 noundef %call191.i, ptr noundef %call179.i, ptr noundef nonnull %filter_chain.i84), !dbg !1286
  br label %if.end195.i, !dbg !1287

if.end195.i:                                      ; preds = %if.then158.i, %get_ratio.exit262.i
    #dbg_value(i32 10, !415, !DIExpression(), !1288)
  %94 = load ptr, ptr @stdout, align 8, !dbg !1290
  %call.i263.i = call i32 @putc(i32 noundef 10, ptr noundef %94), !dbg !1291
  %call89.i = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i67, i32 noundef 2) #8, !dbg !1223
  %tobool90.not.not.i = icmp eq i8 %call89.i, 0, !dbg !1224
  br i1 %tobool90.not.not.i, label %while.body92.i, label %if.end198.i, !dbg !1225, !llvm.loop !1292

if.end198.i:                                      ; preds = %if.end195.i, %if.end85.i, %while.end.i74
  br i1 %cmp75.i, label %if.then200.i, label %if.end21.thread, !dbg !1294

if.then200.i:                                     ; preds = %if.end198.i
  %memusage_max.i77 = getelementptr inbounds i8, ptr %xfi, i64 16, !dbg !1295
  %95 = load i64, ptr %memusage_max.i77, align 8, !dbg !1295
  %call201.i = call i64 @round_up_to_mib(i64 noundef %95) #8, !dbg !1298
  %call202.i = call ptr @uint64_to_str(i64 noundef %call201.i, i32 noundef 0) #8, !dbg !1299
  %call203.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %call202.i), !dbg !1300
  %all_have_sizes.i78 = getelementptr inbounds i8, ptr %xfi, i64 24, !dbg !1301
  %96 = load i8, ptr %all_have_sizes.i78, align 8, !dbg !1301, !range !375, !noundef !376
  %loadedv204.i = trunc nuw i8 %96 to i1, !dbg !1301
  %cond206.i = select i1 %loadedv204.i, ptr @.str.19, ptr @.str.20, !dbg !1302
  %call207.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %cond206.i), !dbg !1303
  br label %if.end21.thread, !dbg !1304

if.end21.thread:                                  ; preds = %if.then200.i, %if.end198.i
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %bhi.i68) #8, !dbg !1305
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %iter.i67) #8, !dbg !1305
    #dbg_value(i1 poison, !511, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1092)
  br label %if.then23, !dbg !1093

if.end21:                                         ; preds = %land.lhs.true.i87
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %bhi.i68) #8, !dbg !1305
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %iter.i67) #8, !dbg !1305
    #dbg_value(i1 true, !511, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1092)
  br label %if.end24, !dbg !1093

if.then23:                                        ; preds = %print_info_robot.exit.thread, %if.end21.thread, %print_info_basic.exit
    #dbg_value(ptr %xfi, !1306, !DIExpression(), !1311)
  %97 = load i64, ptr @totals.0, align 8, !dbg !1314
  %inc.i = add i64 %97, 1, !dbg !1314
  store i64 %inc.i, ptr @totals.0, align 8, !dbg !1314
  %98 = load ptr, ptr %xfi, align 8, !dbg !1315
  %call.i123 = call i64 @lzma_index_stream_count(ptr noundef %98) #8, !dbg !1316
  %99 = load i64, ptr @totals.1, align 8, !dbg !1317
  %add.i124 = add i64 %99, %call.i123, !dbg !1317
  store i64 %add.i124, ptr @totals.1, align 8, !dbg !1317
  %call2.i125 = call i64 @lzma_index_block_count(ptr noundef %98) #8, !dbg !1318
  %100 = load i64, ptr @totals.2, align 8, !dbg !1319
  %add3.i = add i64 %100, %call2.i125, !dbg !1319
  store i64 %add3.i, ptr @totals.2, align 8, !dbg !1319
  %call5.i126 = call i64 @lzma_index_file_size(ptr noundef %98) #8, !dbg !1320
  %101 = load i64, ptr @totals.3, align 8, !dbg !1321
  %add6.i = add i64 %101, %call5.i126, !dbg !1321
  store i64 %add6.i, ptr @totals.3, align 8, !dbg !1321
  %call8.i127 = call i64 @lzma_index_uncompressed_size(ptr noundef %98) #8, !dbg !1322
  %102 = load i64, ptr @totals.4, align 8, !dbg !1323
  %add9.i = add i64 %102, %call8.i127, !dbg !1323
  store i64 %add9.i, ptr @totals.4, align 8, !dbg !1323
  %103 = load i64, ptr %stream_padding136.i, align 8, !dbg !1324
  %104 = load i64, ptr @totals.5, align 8, !dbg !1325
  %add10.i = add i64 %104, %103, !dbg !1325
  store i64 %add10.i, ptr @totals.5, align 8, !dbg !1325
  %call12.i129 = call i32 @lzma_index_checks(ptr noundef %98) #8, !dbg !1326
  %105 = load i32, ptr @totals.7, align 8, !dbg !1327
  %or.i = or i32 %105, %call12.i129, !dbg !1327
  store i32 %or.i, ptr @totals.7, align 8, !dbg !1327
  %106 = load i64, ptr @totals.6, align 8, !dbg !1328
  %memusage_max.i130 = getelementptr inbounds i8, ptr %xfi, i64 16, !dbg !1330
  %107 = load i64, ptr %memusage_max.i130, align 8, !dbg !1330
  %cmp.i131 = icmp ult i64 %106, %107, !dbg !1331
  br i1 %cmp.i131, label %if.then.i134, label %update_totals.exit, !dbg !1332

if.then.i134:                                     ; preds = %if.then23
  store i64 %107, ptr @totals.6, align 8, !dbg !1333
  br label %update_totals.exit, !dbg !1334

update_totals.exit:                               ; preds = %if.then23, %if.then.i134
  %all_have_sizes.i133 = getelementptr inbounds i8, ptr %xfi, i64 24, !dbg !1335
  %108 = load i8, ptr %all_have_sizes.i133, align 8, !dbg !1335, !range !375, !noundef !376
  %109 = load i8, ptr @totals.8, align 4, !dbg !1336, !range !375, !noundef !376
  %and24.i = and i8 %109, %108, !dbg !1336
  store i8 %and24.i, ptr @totals.8, align 4, !dbg !1336
  br label %if.end24, !dbg !1337

if.end24:                                         ; preds = %print_info_robot.exit, %if.end21, %update_totals.exit
  %110 = load ptr, ptr %xfi, align 8, !dbg !1338
  call void @lzma_index_end(ptr noundef %110, ptr noundef null) #8, !dbg !1339
  br label %if.end25, !dbg !1340

if.end25:                                         ; preds = %parse_indexes.exit.thread, %if.end24
  call void @io_close(ptr noundef nonnull %call, i1 noundef zeroext false) #8, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %xfi) #8, !dbg !1342
  br label %return

return:                                           ; preds = %if.end25, %if.end4, %if.then3
  ret void, !dbg !1342
}

declare !dbg !1343 void @message_fatal(ptr noundef, ...) local_unnamed_addr #1

declare !dbg !1346 void @message_filename(ptr noundef) local_unnamed_addr #1

declare !dbg !1347 void @message_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1348 ptr @io_open_src(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !1351 void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1354 void @io_close(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @get_check_names(ptr noundef %buf, i32 noundef %checks, i1 noundef zeroext %space_after_comma) unnamed_addr #0 !dbg !1357 {
entry:
  %pos = alloca ptr, align 8, !DIAssignID !1370
    #dbg_assign(i1 undef, !1364, !DIExpression(), !1370, ptr %pos, !DIExpression(), !1371)
  %left = alloca i64, align 8, !DIAssignID !1372
    #dbg_assign(i1 undef, !1365, !DIExpression(), !1372, ptr %left, !DIExpression(), !1371)
    #dbg_value(ptr %buf, !1361, !DIExpression(), !1371)
    #dbg_value(i32 %checks, !1362, !DIExpression(), !1371)
    #dbg_value(i1 %space_after_comma, !1363, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1371)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #8, !dbg !1373
  store ptr %buf, ptr %pos, align 8, !dbg !1374, !DIAssignID !1375
    #dbg_assign(ptr %buf, !1364, !DIExpression(), !1375, ptr %pos, !DIExpression(), !1371)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %left) #8, !dbg !1376
  store i64 1024, ptr %left, align 8, !dbg !1377, !DIAssignID !1378
    #dbg_assign(i64 1024, !1365, !DIExpression(), !1378, ptr %left, !DIExpression(), !1371)
  %cond = select i1 %space_after_comma, ptr @.str.6, ptr @.str.7, !dbg !1379
    #dbg_value(ptr %cond, !1366, !DIExpression(), !1371)
    #dbg_value(i8 0, !1367, !DIExpression(), !1371)
    #dbg_value(i64 0, !1368, !DIExpression(), !1380)
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 0, !1368, !DIExpression(), !1380)
  %and = and i32 %checks, 1, !dbg !1381
  %tobool.not = icmp ne i32 %and, 0, !dbg !1381
  br i1 %tobool.not, label %if.then, label %for.inc, !dbg !1385

if.then:                                          ; preds = %entry
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @check_names) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc, !dbg !1388

for.inc:                                          ; preds = %entry, %if.then
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 1, !1368, !DIExpression(), !1380)
  %and.1 = and i32 %checks, 2, !dbg !1381
  %tobool.not.1 = icmp eq i32 %and.1, 0, !dbg !1381
  br i1 %tobool.not.1, label %for.inc.1, label %if.then.1, !dbg !1385

if.then.1:                                        ; preds = %for.inc
  %cond2.1 = select i1 %tobool.not, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 12)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.1, !dbg !1388

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %comma.1.1 = phi i1 [ true, %if.then.1 ], [ %tobool.not, %for.inc ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 2, !1368, !DIExpression(), !1380)
  %and.2 = and i32 %checks, 4, !dbg !1381
  %tobool.not.2 = icmp eq i32 %and.2, 0, !dbg !1381
  br i1 %tobool.not.2, label %for.inc.2, label %if.then.2, !dbg !1385

if.then.2:                                        ; preds = %for.inc.1
  %cond2.2 = select i1 %comma.1.1, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 24)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.2, !dbg !1388

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %comma.1.2 = phi i1 [ true, %if.then.2 ], [ %comma.1.1, %for.inc.1 ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 3, !1368, !DIExpression(), !1380)
  %and.3 = and i32 %checks, 8, !dbg !1381
  %tobool.not.3 = icmp eq i32 %and.3, 0, !dbg !1381
  br i1 %tobool.not.3, label %for.inc.3, label %if.then.3, !dbg !1385

if.then.3:                                        ; preds = %for.inc.2
  %cond2.3 = select i1 %comma.1.2, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 36)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.3, !dbg !1388

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %comma.1.3 = phi i1 [ true, %if.then.3 ], [ %comma.1.2, %for.inc.2 ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 4, !1368, !DIExpression(), !1380)
  %and.4 = and i32 %checks, 16, !dbg !1381
  %tobool.not.4 = icmp eq i32 %and.4, 0, !dbg !1381
  br i1 %tobool.not.4, label %for.inc.4, label %if.then.4, !dbg !1385

if.then.4:                                        ; preds = %for.inc.3
  %cond2.4 = select i1 %comma.1.3, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 48)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.4, !dbg !1388

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3
  %comma.1.4 = phi i1 [ true, %if.then.4 ], [ %comma.1.3, %for.inc.3 ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 5, !1368, !DIExpression(), !1380)
  %and.5 = and i32 %checks, 32, !dbg !1381
  %tobool.not.5 = icmp eq i32 %and.5, 0, !dbg !1381
  br i1 %tobool.not.5, label %for.inc.5, label %if.then.5, !dbg !1385

if.then.5:                                        ; preds = %for.inc.4
  %cond2.5 = select i1 %comma.1.4, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.5, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 60)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.5, !dbg !1388

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4
  %comma.1.5 = phi i1 [ true, %if.then.5 ], [ %comma.1.4, %for.inc.4 ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 6, !1368, !DIExpression(), !1380)
  %and.6 = and i32 %checks, 64, !dbg !1381
  %tobool.not.6 = icmp eq i32 %and.6, 0, !dbg !1381
  br i1 %tobool.not.6, label %for.inc.6, label %if.then.6, !dbg !1385

if.then.6:                                        ; preds = %for.inc.5
  %cond2.6 = select i1 %comma.1.5, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.6, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 72)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.6, !dbg !1388

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5
  %comma.1.6 = phi i1 [ true, %if.then.6 ], [ %comma.1.5, %for.inc.5 ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 7, !1368, !DIExpression(), !1380)
  %and.7 = and i32 %checks, 128, !dbg !1381
  %tobool.not.7 = icmp eq i32 %and.7, 0, !dbg !1381
  br i1 %tobool.not.7, label %for.inc.7, label %if.then.7, !dbg !1385

if.then.7:                                        ; preds = %for.inc.6
  %cond2.7 = select i1 %comma.1.6, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.7, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 84)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.7, !dbg !1388

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6
  %comma.1.7 = phi i1 [ true, %if.then.7 ], [ %comma.1.6, %for.inc.6 ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 8, !1368, !DIExpression(), !1380)
  %and.8 = and i32 %checks, 256, !dbg !1381
  %tobool.not.8 = icmp eq i32 %and.8, 0, !dbg !1381
  br i1 %tobool.not.8, label %for.inc.8, label %if.then.8, !dbg !1385

if.then.8:                                        ; preds = %for.inc.7
  %cond2.8 = select i1 %comma.1.7, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.8, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 96)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.8, !dbg !1388

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7
  %comma.1.8 = phi i1 [ true, %if.then.8 ], [ %comma.1.7, %for.inc.7 ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 9, !1368, !DIExpression(), !1380)
  %and.9 = and i32 %checks, 512, !dbg !1381
  %tobool.not.9 = icmp eq i32 %and.9, 0, !dbg !1381
  br i1 %tobool.not.9, label %for.inc.9, label %if.then.9, !dbg !1385

if.then.9:                                        ; preds = %for.inc.8
  %cond2.9 = select i1 %comma.1.8, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.9, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 108)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.9, !dbg !1388

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8
  %comma.1.9 = phi i1 [ true, %if.then.9 ], [ %comma.1.8, %for.inc.8 ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 10, !1368, !DIExpression(), !1380)
  %and.10 = and i32 %checks, 1024, !dbg !1381
  %tobool.not.10 = icmp eq i32 %and.10, 0, !dbg !1381
  br i1 %tobool.not.10, label %for.inc.10, label %if.then.10, !dbg !1385

if.then.10:                                       ; preds = %for.inc.9
  %cond2.10 = select i1 %comma.1.9, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.10, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 120)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.10, !dbg !1388

for.inc.10:                                       ; preds = %if.then.10, %for.inc.9
  %comma.1.10 = phi i1 [ true, %if.then.10 ], [ %comma.1.9, %for.inc.9 ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 11, !1368, !DIExpression(), !1380)
  %and.11 = and i32 %checks, 2048, !dbg !1381
  %tobool.not.11 = icmp eq i32 %and.11, 0, !dbg !1381
  br i1 %tobool.not.11, label %for.inc.11, label %if.then.11, !dbg !1385

if.then.11:                                       ; preds = %for.inc.10
  %cond2.11 = select i1 %comma.1.10, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.11, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 132)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.11, !dbg !1388

for.inc.11:                                       ; preds = %if.then.11, %for.inc.10
  %comma.1.11 = phi i1 [ true, %if.then.11 ], [ %comma.1.10, %for.inc.10 ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 12, !1368, !DIExpression(), !1380)
  %and.12 = and i32 %checks, 4096, !dbg !1381
  %tobool.not.12 = icmp eq i32 %and.12, 0, !dbg !1381
  br i1 %tobool.not.12, label %for.inc.12, label %if.then.12, !dbg !1385

if.then.12:                                       ; preds = %for.inc.11
  %cond2.12 = select i1 %comma.1.11, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.12, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 144)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.12, !dbg !1388

for.inc.12:                                       ; preds = %if.then.12, %for.inc.11
  %comma.1.12 = phi i1 [ true, %if.then.12 ], [ %comma.1.11, %for.inc.11 ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 13, !1368, !DIExpression(), !1380)
  %and.13 = and i32 %checks, 8192, !dbg !1381
  %tobool.not.13 = icmp eq i32 %and.13, 0, !dbg !1381
  br i1 %tobool.not.13, label %for.inc.13, label %if.then.13, !dbg !1385

if.then.13:                                       ; preds = %for.inc.12
  %cond2.13 = select i1 %comma.1.12, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.13, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 156)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.13, !dbg !1388

for.inc.13:                                       ; preds = %if.then.13, %for.inc.12
  %comma.1.13 = phi i1 [ true, %if.then.13 ], [ %comma.1.12, %for.inc.12 ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 14, !1368, !DIExpression(), !1380)
  %and.14 = and i32 %checks, 16384, !dbg !1381
  %tobool.not.14 = icmp eq i32 %and.14, 0, !dbg !1381
  br i1 %tobool.not.14, label %for.inc.14, label %if.then.14, !dbg !1385

if.then.14:                                       ; preds = %for.inc.13
  %cond2.14 = select i1 %comma.1.13, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.14, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 168)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.14, !dbg !1388

for.inc.14:                                       ; preds = %if.then.14, %for.inc.13
  %comma.1.14 = phi i1 [ true, %if.then.14 ], [ %comma.1.13, %for.inc.13 ], !dbg !1371
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 15, !1368, !DIExpression(), !1380)
  %and.15 = and i32 %checks, 32768, !dbg !1381
  %tobool.not.15 = icmp eq i32 %and.15, 0, !dbg !1381
  br i1 %tobool.not.15, label %for.inc.15, label %if.then.15, !dbg !1385

if.then.15:                                       ; preds = %for.inc.14
  %cond2.15 = select i1 %comma.1.14, ptr %cond, ptr @.str.9, !dbg !1389
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.15, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 180)) #8, !dbg !1386
    #dbg_value(i8 1, !1367, !DIExpression(), !1371)
  br label %for.inc.15, !dbg !1388

for.inc.15:                                       ; preds = %if.then.15, %for.inc.14
    #dbg_value(i8 poison, !1367, !DIExpression(), !1371)
    #dbg_value(i64 16, !1368, !DIExpression(), !1380)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %left) #8, !dbg !1390
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #8, !dbg !1390
  ret void, !dbg !1390
}

; Function Attrs: nofree nounwind
declare !dbg !1391 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare !dbg !1396 void @my_snprintf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !1401 noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1405 noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare !dbg !1458 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1461 ptr @uint64_to_str(i64 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1464 ptr @uint64_to_nicestr(i64 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @print_adv_helper(i64 noundef %stream_count, i64 noundef %block_count, i64 noundef %compressed_size, i64 noundef %uncompressed_size, i32 noundef %checks, i64 noundef %stream_padding) unnamed_addr #0 !dbg !1467 {
entry:
  %checks_str = alloca [1024 x i8], align 16, !DIAssignID !1478
    #dbg_assign(i1 undef, !1477, !DIExpression(), !1478, ptr %checks_str, !DIExpression(), !1479)
    #dbg_value(i64 %stream_count, !1471, !DIExpression(), !1479)
    #dbg_value(i64 %block_count, !1472, !DIExpression(), !1479)
    #dbg_value(i64 %compressed_size, !1473, !DIExpression(), !1479)
    #dbg_value(i64 %uncompressed_size, !1474, !DIExpression(), !1479)
    #dbg_value(i32 %checks, !1475, !DIExpression(), !1479)
    #dbg_value(i64 %stream_padding, !1476, !DIExpression(), !1479)
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %checks_str) #8, !dbg !1480
  call fastcc void @get_check_names(ptr noundef nonnull %checks_str, i32 noundef %checks, i1 noundef zeroext true), !dbg !1481
  %call = call ptr @uint64_to_str(i64 noundef %stream_count, i32 noundef 0) #8, !dbg !1482
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef %call), !dbg !1483
  %call2 = call ptr @uint64_to_str(i64 noundef %block_count, i32 noundef 0) #8, !dbg !1484
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %call2), !dbg !1485
  %call4 = call ptr @uint64_to_nicestr(i64 noundef %compressed_size, i32 noundef 0, i32 noundef 4, i1 noundef zeroext true, i32 noundef 0) #8, !dbg !1486
  %call5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %call4), !dbg !1487
  %call6 = call ptr @uint64_to_nicestr(i64 noundef %uncompressed_size, i32 noundef 0, i32 noundef 4, i1 noundef zeroext true, i32 noundef 0) #8, !dbg !1488
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %call6), !dbg !1489
    #dbg_value(i64 %compressed_size, !150, !DIExpression(), !1490)
    #dbg_value(i64 %uncompressed_size, !151, !DIExpression(), !1490)
  %cmp.i = icmp eq i64 %uncompressed_size, 0, !dbg !1492
  br i1 %cmp.i, label %get_ratio.exit, label %if.end.i, !dbg !1493

if.end.i:                                         ; preds = %entry
  %conv.i = uitofp i64 %compressed_size to double, !dbg !1494
  %conv1.i = uitofp i64 %uncompressed_size to double, !dbg !1495
  %div.i = fdiv double %conv.i, %conv1.i, !dbg !1496
    #dbg_value(double %div.i, !152, !DIExpression(), !1490)
  %cmp2.i = fcmp ogt double %div.i, 9.999000e+00, !dbg !1497
  br i1 %cmp2.i, label %get_ratio.exit, label %if.end5.i, !dbg !1498

if.end5.i:                                        ; preds = %if.end.i
  %call.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i) #8, !dbg !1499
  br label %get_ratio.exit, !dbg !1500

get_ratio.exit:                                   ; preds = %entry, %if.end.i, %if.end5.i
  %retval.1.i = phi ptr [ @.str.10, %entry ], [ @get_ratio.buf, %if.end5.i ], [ @.str.10, %if.end.i ], !dbg !1490
  %call9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull %retval.1.i), !dbg !1501
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %checks_str), !dbg !1502
  %call12 = call ptr @uint64_to_nicestr(i64 noundef %stream_padding, i32 noundef 0, i32 noundef 4, i1 noundef zeroext true, i32 noundef 0) #8, !dbg !1503
  %call13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %call12), !dbg !1504
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %checks_str) #8, !dbg !1505
  ret void, !dbg !1505
}

declare !dbg !1506 i64 @round_up_to_mib(i64 noundef) local_unnamed_addr #1

declare !dbg !1509 i64 @spec_mem_get_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1526 ptr @message_strm(i32 noundef) local_unnamed_addr #1

declare !dbg !1529 zeroext i1 @io_pread(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1533 i32 @lzma_stream_footer_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1537 i64 @hardware_memlimit_get(i32 noundef) local_unnamed_addr #1

declare !dbg !1541 i64 @lzma_index_memused(ptr noundef) local_unnamed_addr #1

declare !dbg !1546 void @message_bug() local_unnamed_addr #1

declare !dbg !1547 i32 @lzma_index_decoder(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1552 i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1556 i64 @lzma_memusage(ptr noundef) local_unnamed_addr #1

declare !dbg !1561 void @message_mem_needed(i32 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1564 i64 @lzma_index_total_size(ptr noundef) local_unnamed_addr #1

declare !dbg !1567 i32 @lzma_stream_header_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1568 i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1571 i32 @lzma_index_stream_flags(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1574 i32 @lzma_index_stream_padding(ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1577 i32 @lzma_index_cat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1580 void @lzma_end(ptr noundef) local_unnamed_addr #1

declare !dbg !1583 i32 @lzma_index_checks(ptr noundef) local_unnamed_addr #1

declare !dbg !1586 i64 @lzma_index_stream_count(ptr noundef) local_unnamed_addr #1

declare !dbg !1587 i64 @lzma_index_block_count(ptr noundef) local_unnamed_addr #1

declare !dbg !1588 i64 @lzma_index_file_size(ptr noundef) local_unnamed_addr #1

declare !dbg !1589 i64 @lzma_index_uncompressed_size(ptr noundef) local_unnamed_addr #1

declare !dbg !1590 void @lzma_index_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1594 zeroext i8 @lzma_index_iter_next(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1598 void @lzma_index_iter_rewind(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @parse_details(ptr noundef %pair, ptr nocapture noundef readonly %iter, ptr noundef %bhi, ptr nocapture noundef %xfi) unnamed_addr #0 !dbg !1601 {
entry:
  %buf.i6 = alloca %union.io_buf, align 8, !DIAssignID !1612
  %buf.i = alloca %union.io_buf, align 8, !DIAssignID !1613
    #dbg_assign(i1 undef, !1614, !DIExpression(), !1613, ptr %buf.i, !DIExpression(), !1676)
  %filters.i = alloca [5 x %struct.lzma_filter], align 16, !DIAssignID !1679
    #dbg_assign(i1 undef, !1623, !DIExpression(), !1679, ptr %filters.i, !DIExpression(), !1676)
  %block19.i = alloca %struct.lzma_block, align 8, !DIAssignID !1680
    #dbg_value(ptr %pair, !1608, !DIExpression(), !1681)
    #dbg_value(ptr %iter, !1609, !DIExpression(), !1681)
    #dbg_value(ptr %bhi, !1610, !DIExpression(), !1681)
    #dbg_value(ptr %xfi, !1611, !DIExpression(), !1681)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %filters.i), !dbg !1682
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %block19.i), !dbg !1682
    #dbg_assign(i1 undef, !1631, !DIExpression(), !1680, ptr %block19.i, !DIExpression(), !1676)
    #dbg_value(ptr %pair, !1617, !DIExpression(), !1676)
    #dbg_value(ptr %iter, !1618, !DIExpression(), !1676)
    #dbg_value(ptr %bhi, !1619, !DIExpression(), !1676)
    #dbg_value(ptr %xfi, !1620, !DIExpression(), !1676)
  %total_size.i = getelementptr inbounds i8, ptr %iter, i64 184, !dbg !1682
  %0 = load i64, ptr %total_size.i, align 8, !dbg !1682
  %1 = load ptr, ptr %iter, align 8, !dbg !1682
  %check.i = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1682
  %2 = load i32, ptr %check.i, align 8, !dbg !1682
  %call.i = tail call i32 @lzma_check_size(i32 noundef %2) #8, !dbg !1682
  %conv.i = zext i32 %call.i to i64, !dbg !1682
  %sub.i = sub i64 %0, %conv.i, !dbg !1682
  %cmp.i = icmp ult i64 %sub.i, 1024, !dbg !1682
  br i1 %cmp.i, label %cond.true.i, label %cond.end.i, !dbg !1682

cond.true.i:                                      ; preds = %entry
  %3 = load i64, ptr %total_size.i, align 8, !dbg !1682
  %4 = load ptr, ptr %iter, align 8, !dbg !1682
  %check6.i = getelementptr inbounds i8, ptr %4, i64 16, !dbg !1682
  %5 = load i32, ptr %check6.i, align 8, !dbg !1682
  %call7.i = tail call i32 @lzma_check_size(i32 noundef %5) #8, !dbg !1682
  %6 = trunc i64 %3 to i32, !dbg !1682
  %7 = sub i32 %6, %call7.i, !dbg !1682
  br label %cond.end.i, !dbg !1682

cond.end.i:                                       ; preds = %cond.true.i, %entry
  %cond.i = phi i32 [ %7, %cond.true.i ], [ 1024, %entry ], !dbg !1682
    #dbg_value(i32 %cond.i, !1621, !DIExpression(), !1676)
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %buf.i) #8, !dbg !1683
  %conv11.i = zext i32 %cond.i to i64, !dbg !1684
  %compressed_file_offset.i = getelementptr inbounds i8, ptr %iter, i64 128, !dbg !1686
  %8 = load i64, ptr %compressed_file_offset.i, align 8, !dbg !1686
  %call13.i = call zeroext i1 @io_pread(ptr noundef %pair, ptr noundef nonnull %buf.i, i64 noundef %conv11.i, i64 noundef %8) #8, !dbg !1687
  br i1 %call13.i, label %parse_block_header.exit.thread, label %if.end.i, !dbg !1688

if.end.i:                                         ; preds = %cond.end.i
  %9 = load i8, ptr %buf.i, align 8, !dbg !1689
  %cmp15.i = icmp eq i8 %9, 0, !dbg !1691
  br i1 %cmp15.i, label %data_error.i, label %if.end18.i, !dbg !1692

if.end18.i:                                       ; preds = %if.end.i
  store i32 0, ptr %block19.i, align 8, !dbg !1693, !DIAssignID !1694
    #dbg_assign(i32 0, !1631, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1694, ptr %block19.i, !DIExpression(), !1676)
  %10 = load ptr, ptr %iter, align 8, !dbg !1695
  %check22.i = getelementptr inbounds i8, ptr %10, i64 16, !dbg !1696
  %11 = load i32, ptr %check22.i, align 8, !dbg !1696
  %check23.i = getelementptr inbounds i8, ptr %block19.i, i64 8, !dbg !1697
  store i32 %11, ptr %check23.i, align 8, !dbg !1698, !DIAssignID !1699
    #dbg_assign(i32 %11, !1631, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !1699, ptr %check23.i, !DIExpression(), !1676)
  %filters24.i = getelementptr inbounds i8, ptr %block19.i, i64 32, !dbg !1700
  store ptr %filters.i, ptr %filters24.i, align 8, !dbg !1701, !DIAssignID !1702
    #dbg_assign(ptr %filters.i, !1631, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1702, ptr %filters24.i, !DIExpression(), !1676)
  %conv26.i = zext i8 %9 to i32, !dbg !1703
  %add.i = shl nuw nsw i32 %conv26.i, 2, !dbg !1703
  %mul.i = add nuw nsw i32 %add.i, 4, !dbg !1703
  %header_size.i = getelementptr inbounds i8, ptr %block19.i, i64 4, !dbg !1704
  store i32 %mul.i, ptr %header_size.i, align 4, !dbg !1705, !DIAssignID !1706
    #dbg_assign(i32 %mul.i, !1631, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !1706, ptr %header_size.i, !DIExpression(), !1676)
  %cmp28.i = icmp ugt i32 %mul.i, %cond.i, !dbg !1707
  br i1 %cmp28.i, label %data_error.i, label %if.end31.i, !dbg !1709

if.end31.i:                                       ; preds = %if.end18.i
  %call33.i = call i32 @lzma_block_header_decode(ptr noundef nonnull %block19.i, ptr noundef null, ptr noundef nonnull %buf.i) #8, !dbg !1710
  switch i32 %call33.i, label %sw.default.i [
    i32 0, label %sw.epilog.i
    i32 8, label %cleanup.sink.split.i
    i32 9, label %data_error.i
  ], !dbg !1711

sw.default.i:                                     ; preds = %if.end31.i
  call void @message_bug() #8, !dbg !1712
  br label %sw.epilog.i, !dbg !1714

sw.epilog.i:                                      ; preds = %sw.default.i, %if.end31.i
  %compressed_size.i = getelementptr inbounds i8, ptr %block19.i, i64 16, !dbg !1715
  %12 = load i64, ptr %compressed_size.i, align 8, !dbg !1715
  %cmp36.not.i = icmp eq i64 %12, -1, !dbg !1716
  %conv39.i = select i1 %cmp36.not.i, i8 45, i8 99, !dbg !1717
  %flags40.i = getelementptr inbounds i8, ptr %bhi, i64 4, !dbg !1718
  store i8 %conv39.i, ptr %flags40.i, align 4, !dbg !1719
  %uncompressed_size.i = getelementptr inbounds i8, ptr %block19.i, i64 24, !dbg !1720
  %13 = load i64, ptr %uncompressed_size.i, align 8, !dbg !1720
  %cmp42.not.i = icmp eq i64 %13, -1, !dbg !1721
  %conv45.i = select i1 %cmp42.not.i, i8 45, i8 117, !dbg !1722
  %arrayidx47.i = getelementptr inbounds i8, ptr %bhi, i64 5, !dbg !1723
  store i8 %conv45.i, ptr %arrayidx47.i, align 1, !dbg !1724
  %arrayidx49.i = getelementptr inbounds i8, ptr %bhi, i64 6, !dbg !1725
  store i8 0, ptr %arrayidx49.i, align 2, !dbg !1726
  %cmp51.i = icmp ne i64 %12, -1, !dbg !1727
  %cmp54.i = icmp ne i64 %13, -1, !dbg !1728
  %14 = select i1 %cmp51.i, i1 %cmp54.i, i1 false, !dbg !1728
  %all_have_sizes.i = getelementptr inbounds i8, ptr %xfi, i64 24, !dbg !1729
  %15 = load i8, ptr %all_have_sizes.i, align 8, !dbg !1730, !range !375, !noundef !376
  %tobool132.i = icmp ne i8 %15, 0, !dbg !1730
  %tobool.i = and i1 %14, %tobool132.i, !dbg !1730
  %storedv.i = zext i1 %tobool.i to i8, !dbg !1730
  store i8 %storedv.i, ptr %all_have_sizes.i, align 8, !dbg !1730
  %unpadded_size.i = getelementptr inbounds i8, ptr %iter, i64 176, !dbg !1731
  %16 = load i64, ptr %unpadded_size.i, align 8, !dbg !1731
  %call58.i = call i32 @lzma_block_compressed_size(ptr noundef nonnull %block19.i, i64 noundef %16) #8, !dbg !1732
  switch i32 %call58.i, label %sw.default75.i [
    i32 0, label %sw.bb59.i
    i32 9, label %sw.bb70.i
  ], !dbg !1733

sw.bb59.i:                                        ; preds = %sw.epilog.i
  %17 = load i64, ptr %uncompressed_size.i, align 8, !dbg !1734
  %cmp61.i = icmp eq i64 %17, -1, !dbg !1736
  br i1 %cmp61.i, label %sw.epilog76.i, label %lor.lhs.false.i, !dbg !1737

lor.lhs.false.i:                                  ; preds = %sw.bb59.i
  %uncompressed_size65.i = getelementptr inbounds i8, ptr %iter, i64 168, !dbg !1738
  %18 = load i64, ptr %uncompressed_size65.i, align 8, !dbg !1738
  %cmp66.i = icmp eq i64 %17, %18, !dbg !1739
  br i1 %cmp66.i, label %sw.epilog76.i, label %sw.bb70.i, !dbg !1740

sw.bb70.i:                                        ; preds = %lor.lhs.false.i, %sw.epilog.i
    #dbg_value(i64 0, !1670, !DIExpression(), !1741)
  %19 = load i64, ptr %filters.i, align 16, !dbg !1742
  %cmp72.not133.i = icmp eq i64 %19, -1, !dbg !1744
  br i1 %cmp72.not133.i, label %data_error.i, label %for.body.i, !dbg !1745

for.body.i:                                       ; preds = %sw.bb70.i, %for.body.i
  %arrayidx71135.i = phi ptr [ %arrayidx71.i, %for.body.i ], [ %filters.i, %sw.bb70.i ]
  %i.0134.i = phi i64 [ %inc.i, %for.body.i ], [ 0, %sw.bb70.i ]
    #dbg_value(i64 %i.0134.i, !1670, !DIExpression(), !1741)
  %options.i = getelementptr inbounds i8, ptr %arrayidx71135.i, i64 8, !dbg !1746
  %20 = load ptr, ptr %options.i, align 8, !dbg !1746
  call void @free(ptr noundef %20) #8, !dbg !1747
  %inc.i = add i64 %i.0134.i, 1, !dbg !1748
    #dbg_value(i64 %inc.i, !1670, !DIExpression(), !1741)
  %arrayidx71.i = getelementptr inbounds [5 x %struct.lzma_filter], ptr %filters.i, i64 0, i64 %inc.i, !dbg !1749
  %21 = load i64, ptr %arrayidx71.i, align 16, !dbg !1742
  %cmp72.not.i = icmp eq i64 %21, -1, !dbg !1744
  br i1 %cmp72.not.i, label %data_error.i, label %for.body.i, !dbg !1745, !llvm.loop !1750

sw.default75.i:                                   ; preds = %sw.epilog.i
  call void @message_bug() #8, !dbg !1752
  br label %sw.epilog76.i, !dbg !1753

sw.epilog76.i:                                    ; preds = %sw.default75.i, %lor.lhs.false.i, %sw.bb59.i
  %22 = load i32, ptr %header_size.i, align 4, !dbg !1754
  store i32 %22, ptr %bhi, align 8, !dbg !1755
  %23 = load i64, ptr %compressed_size.i, align 8, !dbg !1756
  %compressed_size80.i = getelementptr inbounds i8, ptr %bhi, i64 8, !dbg !1757
  store i64 %23, ptr %compressed_size80.i, align 8, !dbg !1758
  %call82.i = call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull %filters.i) #8, !dbg !1759
  %memusage.i = getelementptr inbounds i8, ptr %bhi, i64 16, !dbg !1760
  store i64 %call82.i, ptr %memusage.i, align 8, !dbg !1761
  %memusage_max.i = getelementptr inbounds i8, ptr %xfi, i64 16, !dbg !1762
  %24 = load i64, ptr %memusage_max.i, align 8, !dbg !1762
  %cmp84.i = icmp ult i64 %24, %call82.i, !dbg !1764
  br i1 %cmp84.i, label %if.then86.i, label %if.end89.i, !dbg !1765

if.then86.i:                                      ; preds = %sw.epilog76.i
  store i64 %call82.i, ptr %memusage_max.i, align 8, !dbg !1766
  br label %if.end89.i, !dbg !1767

if.end89.i:                                       ; preds = %if.then86.i, %sw.epilog76.i
  %filter_chain.i = getelementptr inbounds i8, ptr %bhi, i64 24, !dbg !1768
  call void @message_filters_to_str(ptr noundef nonnull %filter_chain.i, ptr noundef nonnull %filters.i, i1 noundef zeroext false) #8, !dbg !1769
    #dbg_value(i64 0, !1673, !DIExpression(), !1770)
  %25 = load i64, ptr %filters.i, align 16, !dbg !1771
  %cmp96.not136.i = icmp eq i64 %25, -1, !dbg !1773
  br i1 %cmp96.not136.i, label %if.end, label %for.body99.i, !dbg !1774

for.body99.i:                                     ; preds = %if.end89.i, %for.body99.i
  %arrayidx94138.i = phi ptr [ %arrayidx94.i, %for.body99.i ], [ %filters.i, %if.end89.i ]
  %i92.0137.i = phi i64 [ %inc103.i, %for.body99.i ], [ 0, %if.end89.i ]
    #dbg_value(i64 %i92.0137.i, !1673, !DIExpression(), !1770)
  %options101.i = getelementptr inbounds i8, ptr %arrayidx94138.i, i64 8, !dbg !1775
  %26 = load ptr, ptr %options101.i, align 8, !dbg !1775
  call void @free(ptr noundef %26) #8, !dbg !1776
  %inc103.i = add i64 %i92.0137.i, 1, !dbg !1777
    #dbg_value(i64 %inc103.i, !1673, !DIExpression(), !1770)
  %arrayidx94.i = getelementptr inbounds [5 x %struct.lzma_filter], ptr %filters.i, i64 0, i64 %inc103.i, !dbg !1778
  %27 = load i64, ptr %arrayidx94.i, align 16, !dbg !1771
  %cmp96.not.i = icmp eq i64 %27, -1, !dbg !1773
  br i1 %cmp96.not.i, label %if.end, label %for.body99.i, !dbg !1774, !llvm.loop !1779

data_error.i:                                     ; preds = %for.body.i, %sw.bb70.i, %if.end31.i, %if.end18.i, %if.end.i
    #dbg_label(!1675, !1781)
  br label %cleanup.sink.split.i, !dbg !1782

cleanup.sink.split.i:                             ; preds = %data_error.i, %if.end31.i
  %.sink139.i = phi i32 [ 9, %data_error.i ], [ %call33.i, %if.end31.i ]
  %28 = load ptr, ptr %pair, align 8, !dbg !1676
  %call106.i = call ptr @message_strm(i32 noundef %.sink139.i) #8, !dbg !1676
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %28, ptr noundef %call106.i) #8, !dbg !1676
  br label %parse_block_header.exit.thread, !dbg !1783

parse_block_header.exit.thread:                   ; preds = %cond.end.i, %cleanup.sink.split.i
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %buf.i) #8, !dbg !1783
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters.i), !dbg !1783
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %block19.i), !dbg !1783
  br label %return, !dbg !1784

if.end:                                           ; preds = %for.body99.i, %if.end89.i
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %buf.i) #8, !dbg !1783
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters.i), !dbg !1783
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %block19.i), !dbg !1783
    #dbg_assign(i1 undef, !1785, !DIExpression(), !1612, ptr %buf.i6, !DIExpression(), !1799)
    #dbg_value(ptr %pair, !1790, !DIExpression(), !1799)
    #dbg_value(ptr %iter, !1791, !DIExpression(), !1799)
  %29 = load ptr, ptr %iter, align 8, !dbg !1802
  %check.i7 = getelementptr inbounds i8, ptr %29, i64 16, !dbg !1804
  %30 = load i32, ptr %check.i7, align 8, !dbg !1804
  %cmp.i8 = icmp eq i32 %30, 0, !dbg !1805
  br i1 %cmp.i8, label %if.then.i, label %if.end.i9, !dbg !1806

if.then.i:                                        ; preds = %if.end
  store i32 2960685, ptr @check_value, align 16, !dbg !1807
  br label %return, !dbg !1809

if.end.i9:                                        ; preds = %if.end
  %call4.i = call i32 @lzma_check_size(i32 noundef %30) #8, !dbg !1810
    #dbg_value(i32 %call4.i, !1792, !DIExpression(), !1799)
  %31 = load i64, ptr %compressed_file_offset.i, align 8, !dbg !1811
  %32 = load i64, ptr %total_size.i, align 8, !dbg !1812
  %conv.i12 = zext i32 %call4.i to i64, !dbg !1813
  %add.i13 = sub i64 %31, %conv.i12, !dbg !1814
  %sub.i14 = add i64 %add.i13, %32, !dbg !1815
    #dbg_value(i64 %sub.i14, !1793, !DIExpression(), !1799)
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %buf.i6) #8, !dbg !1816
  %call7.i15 = call zeroext i1 @io_pread(ptr noundef %pair, ptr noundef nonnull %buf.i6, i64 noundef %conv.i12, i64 noundef %sub.i14) #8, !dbg !1817
  br i1 %call7.i15, label %cleanup.i, label %if.end9.i, !dbg !1819

if.end9.i:                                        ; preds = %if.end.i9
  switch i32 %call4.i, label %for.body.i17 [
    i32 4, label %if.then12.i
    i32 8, label %if.then16.i
    i32 0, label %cleanup.i
  ], !dbg !1820

if.then12.i:                                      ; preds = %if.end9.i
  %33 = load i32, ptr %buf.i6, align 8, !dbg !1821
  %call13.i16 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @check_value, i64 noundef 129, ptr noundef nonnull @.str.35, i32 noundef %33) #8, !dbg !1822
  br label %cleanup.i, !dbg !1822

if.then16.i:                                      ; preds = %if.end9.i
  %34 = load i64, ptr %buf.i6, align 8, !dbg !1823
  %call18.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @check_value, i64 noundef 129, ptr noundef nonnull @.str.36, i64 noundef %34) #8, !dbg !1824
  br label %cleanup.i, !dbg !1824

for.body.i17:                                     ; preds = %if.end9.i, %for.body.i17
  %i.041.i = phi i64 [ %inc.i19, %for.body.i17 ], [ 0, %if.end9.i ]
    #dbg_value(i64 %i.041.i, !1795, !DIExpression(), !1825)
  %mul.i18 = shl nuw nsw i64 %i.041.i, 1, !dbg !1826
  %add.ptr.i = getelementptr inbounds i8, ptr @check_value, i64 %mul.i18, !dbg !1828
  %arrayidx23.i = getelementptr inbounds [8192 x i8], ptr %buf.i6, i64 0, i64 %i.041.i, !dbg !1829
  %35 = load i8, ptr %arrayidx23.i, align 1, !dbg !1829
  %conv24.i = zext i8 %35 to i32, !dbg !1829
  %call25.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i, i64 noundef 3, ptr noundef nonnull @.str.37, i32 noundef %conv24.i) #8, !dbg !1830
  %inc.i19 = add nuw nsw i64 %i.041.i, 1, !dbg !1831
    #dbg_value(i64 %inc.i19, !1795, !DIExpression(), !1825)
  %exitcond.not.i = icmp eq i64 %inc.i19, %conv.i12, !dbg !1832
  br i1 %exitcond.not.i, label %cleanup.i, label %for.body.i17, !dbg !1833, !llvm.loop !1834

cleanup.i:                                        ; preds = %for.body.i17, %if.then16.i, %if.then12.i, %if.end9.i, %if.end.i9
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %buf.i6) #8, !dbg !1836
  br label %return

return:                                           ; preds = %cleanup.i, %if.then.i, %parse_block_header.exit.thread
  %retval.0 = phi i1 [ true, %parse_block_header.exit.thread ], [ false, %if.then.i ], [ %call7.i15, %cleanup.i ], !dbg !1681
  ret i1 %retval.0, !dbg !1837
}

declare !dbg !1838 i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare !dbg !1841 i32 @lzma_block_header_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1845 i32 @lzma_block_compressed_size(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1848 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

declare !dbg !1852 i64 @lzma_raw_decoder_memusage(ptr noundef) local_unnamed_addr #1

declare !dbg !1857 void @message_filters_to_str(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare !dbg !1860 i32 @tuklib_mbstr_fw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!347, !348, !349, !350, !351, !352, !353}
!llvm.ident = !{!354}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 64))
!1 = distinct !DIGlobalVariable(name: "totals", scope: !2, file: !3, line: 111, type: !327, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !73, globals: !85, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "xz/list.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "060253cfeea83924aef4c9817a5595f0")
!4 = !{!5, !14, !21, !29, !36, !40, !54, !60, !66}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "message_verbosity", file: !6, line: 14, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "xz/message.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "46ce4fae4ea23be71658f9b2e1a5aef3")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "V_SILENT", value: 0)
!10 = !DIEnumerator(name: "V_ERROR", value: 1)
!11 = !DIEnumerator(name: "V_WARNING", value: 2)
!12 = !DIEnumerator(name: "V_VERBOSE", value: 3)
!13 = !DIEnumerator(name: "V_DEBUG", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "format_type", file: !15, line: 22, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "xz/coder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "17fcfb290997745d98f9605d60a11c50")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "FORMAT_AUTO", value: 0)
!18 = !DIEnumerator(name: "FORMAT_XZ", value: 1)
!19 = !DIEnumerator(name: "FORMAT_LZMA", value: 2)
!20 = !DIEnumerator(name: "FORMAT_RAW", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nicestr_unit", file: !22, line: 64, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "xz/util.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "36136e1fc433f9fd7b2b728f8484a043")
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "NICESTR_B", value: 0)
!25 = !DIEnumerator(name: "NICESTR_KIB", value: 1)
!26 = !DIEnumerator(name: "NICESTR_MIB", value: 2)
!27 = !DIEnumerator(name: "NICESTR_GIB", value: 3)
!28 = !DIEnumerator(name: "NICESTR_TIB", value: 4)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 27, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!31 = !{!32, !33, !34, !35}
!32 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!33 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!34 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!35 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 44, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!38 = !{!39}
!39 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 57, baseType: !7, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!42 = !DIEnumerator(name: "LZMA_OK", value: 0)
!43 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!44 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!45 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!46 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!47 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!48 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!49 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!50 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!51 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!52 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!53 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "operation_mode", file: !15, line: 13, baseType: !7, size: 32, elements: !55)
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "MODE_COMPRESS", value: 0)
!57 = !DIEnumerator(name: "MODE_DECOMPRESS", value: 1)
!58 = !DIEnumerator(name: "MODE_TEST", value: 2)
!59 = !DIEnumerator(name: "MODE_LIST", value: 3)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 250, baseType: !7, size: 32, elements: !61)
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!63 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!64 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!65 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 226, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "liblzma/api/lzma/index.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "923fbd07d3b348bf7a676d089b5c066f")
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "LZMA_INDEX_ITER_ANY", value: 0)
!70 = !DIEnumerator(name: "LZMA_INDEX_ITER_STREAM", value: 1)
!71 = !DIEnumerator(name: "LZMA_INDEX_ITER_BLOCK", value: 2)
!72 = !DIEnumerator(name: "LZMA_INDEX_ITER_NONEMPTY_BLOCK", value: 3)
!73 = !{!74, !75, !76, !83, !78}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !77, line: 63, baseType: !78)
!77 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !79, line: 27, baseType: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !81, line: 45, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!82 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !79, line: 26, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !81, line: 42, baseType: !7)
!85 = !{!86, !92, !97, !102, !107, !112, !117, !119, !124, !129, !134, !141, !143, !156, !158, !159, !164, !169, !174, !176, !181, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !211, !213, !215, !220, !225, !230, !232, !234, !236, !238, !243, !288, !293, !298, !303, !305, !310, !315, !320, !325}
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1098, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 496, elements: !90)
!89 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!90 = !{!91}
!91 = !DISubrange(count: 62)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1104, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 416, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 52)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1049, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 296, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 37)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1062, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 8)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1064, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 32, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 4)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1064, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 24, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 3)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 611, type: !114, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !3, line: 611, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 16, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 2)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !3, line: 616, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 40, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 5)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !3, line: 617, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 8, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 1)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "check_names", scope: !2, file: !3, line: 61, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 1536, elements: !138)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!138 = !{!139, !140}
!139 = !DISubrange(count: 16)
!140 = !DISubrange(count: 12)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !3, line: 579, type: !109, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "buf", scope: !145, file: !3, line: 586, type: !154, isLocal: true, isDefinition: true)
!145 = distinct !DISubprogram(name: "get_ratio", scope: !3, file: !3, line: 576, type: !146, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !149)
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !78, !78}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!149 = !{!150, !151, !152}
!150 = !DILocalVariable(name: "compressed_size", arg: 1, scope: !145, file: !3, line: 576, type: !78)
!151 = !DILocalVariable(name: "uncompressed_size", arg: 2, scope: !145, file: !3, line: 576, type: !78)
!152 = !DILocalVariable(name: "ratio", scope: !145, file: !3, line: 581, type: !153)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, elements: !155)
!155 = !{!139}
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !3, line: 587, type: !126, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 994, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 256, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 32)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1012, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 72, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 9)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1012, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 80, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 10)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1025, type: !104, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1026, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 208, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 26)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1033, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 240, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 30)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1035, type: !178, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1036, type: !109, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1036, type: !114, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !3, line: 678, type: !178, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !3, line: 680, type: !178, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !3, line: 682, type: !178, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 685, type: !178, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 688, type: !178, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 690, type: !178, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !3, line: 691, type: !178, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 56, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 7)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 880, type: !166, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 882, type: !161, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !3, line: 898, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 336, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 42)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 921, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 320, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 40)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !3, line: 936, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 168, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 21)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !3, line: 950, type: !154, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !3, line: 532, type: !126, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !3, line: 535, type: !208, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 538, type: !126, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "check_value", scope: !2, file: !3, line: 95, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 1032, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 129)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "headings_displayed", scope: !245, file: !3, line: 631, type: !248, isLocal: true, isDefinition: true)
!245 = distinct !DISubprogram(name: "print_info_basic", scope: !3, file: !3, line: 629, type: !246, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !249, !261}
!248 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "xz_file_info", file: !3, line: 35, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 21, size: 256, elements: !253)
!253 = !{!254, !258, !259, !260}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !252, file: !3, line: 23, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index", file: !67, line: 37, baseType: !257)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_index_s", file: !67, line: 37, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "stream_padding", scope: !252, file: !3, line: 26, baseType: !78, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "memusage_max", scope: !252, file: !3, line: 29, baseType: !78, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "all_have_sizes", scope: !252, file: !3, line: 33, baseType: !248, size: 8, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "file_pair", file: !263, line: 66, baseType: !264)
!263 = !DIFile(filename: "xz/file_io.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "4b45406630bbddcbf05b6d0a795f1a7c")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 31, size: 320, elements: !265)
!265 = !{!266, !267, !269, !271, !272, !273, !274}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "src_name", scope: !264, file: !263, line: 34, baseType: !148, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "dest_name", scope: !264, file: !263, line: 38, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "src_fd", scope: !264, file: !263, line: 41, baseType: !270, size: 32, offset: 128)
!270 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dest_fd", scope: !264, file: !263, line: 44, baseType: !270, size: 32, offset: 160)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "src_eof", scope: !264, file: !263, line: 47, baseType: !248, size: 8, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "dest_try_sparse", scope: !264, file: !263, line: 51, baseType: !248, size: 8, offset: 200)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "dest_pending_sparse", scope: !264, file: !263, line: 56, baseType: !275, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !276, line: 56, baseType: !277)
!276 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !81, line: 152, baseType: !278)
!278 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!279 = !{!280, !281, !282, !286}
!280 = !DILocalVariable(name: "xfi", arg: 1, scope: !245, file: !3, line: 629, type: !249)
!281 = !DILocalVariable(name: "pair", arg: 2, scope: !245, file: !3, line: 629, type: !261)
!282 = !DILocalVariable(name: "checks", scope: !245, file: !3, line: 642, type: !283)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 8192, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 1024)
!286 = !DILocalVariable(name: "cols", scope: !245, file: !3, line: 645, type: !287)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 448, elements: !209)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 638, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 520, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 65)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !3, line: 657, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 264, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 33)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !3, line: 719, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 984, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 123)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 734, type: !227, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !3, line: 748, type: !307, isLocal: true, isDefinition: true)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 192, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 24)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !3, line: 774, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 872, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 109)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !3, line: 786, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 560, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 70)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !3, line: 823, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 152, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 19)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !3, line: 849, type: !161, isLocal: true, isDefinition: true)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 101, size: 512, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !327, file: !3, line: 102, baseType: !78, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !327, file: !3, line: 103, baseType: !78, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !327, file: !3, line: 104, baseType: !78, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !327, file: !3, line: 105, baseType: !78, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !327, file: !3, line: 106, baseType: !78, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "stream_padding", scope: !327, file: !3, line: 107, baseType: !78, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "memusage_max", scope: !327, file: !3, line: 108, baseType: !78, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "checks", scope: !327, file: !3, line: 109, baseType: !83, size: 32, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "all_have_sizes", scope: !327, file: !3, line: 110, baseType: !248, size: 8, offset: 480)
!338 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 64, 64))
!339 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 128, 64))
!340 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 192, 64))
!341 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 256, 64))
!342 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 320, 64))
!343 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 384, 64))
!344 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 448, 32))
!345 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 480, 8))
!346 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!347 = !{i32 7, !"Dwarf Version", i32 5}
!348 = !{i32 2, !"Debug Info Version", i32 3}
!349 = !{i32 1, !"wchar_size", i32 4}
!350 = !{i32 8, !"PIC Level", i32 2}
!351 = !{i32 7, !"PIE Level", i32 2}
!352 = !{i32 7, !"uwtable", i32 2}
!353 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!354 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!355 = distinct !DISubprogram(name: "list_totals", scope: !3, file: !3, line: 1073, type: !356, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!356 = !DISubroutineType(types: !357)
!357 = !{null}
!358 = distinct !DIAssignID()
!359 = !DILocalVariable(name: "line", scope: !360, file: !3, line: 983, type: !363)
!360 = distinct !DISubprogram(name: "print_totals_basic", scope: !3, file: !3, line: 980, type: !356, scopeLine: 981, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!361 = !{!359, !362}
!362 = !DILocalVariable(name: "checks", scope: !360, file: !3, line: 989, type: !283)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 640, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 80)
!366 = !DILocation(line: 0, scope: !360, inlinedAt: !367)
!367 = distinct !DILocation(line: 1085, column: 4, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !3, line: 1084, column: 7)
!369 = distinct !DILexicalBlock(scope: !370, file: !3, line: 1081, column: 31)
!370 = distinct !DILexicalBlock(scope: !371, file: !3, line: 1081, column: 13)
!371 = distinct !DILexicalBlock(scope: !355, file: !3, line: 1075, column: 6)
!372 = distinct !DIAssignID()
!373 = distinct !DIAssignID()
!374 = !DILocation(line: 1075, column: 6, scope: !371)
!375 = !{i8 0, i8 2}
!376 = !{}
!377 = !DILocation(line: 1075, column: 6, scope: !355)
!378 = !DILocalVariable(name: "checks", scope: !379, file: !3, line: 1046, type: !283)
!379 = distinct !DISubprogram(name: "print_totals_robot", scope: !3, file: !3, line: 1044, type: !356, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !380)
!380 = !{!378}
!381 = !DILocation(line: 0, scope: !379, inlinedAt: !382)
!382 = distinct !DILocation(line: 1079, column: 3, scope: !383)
!383 = distinct !DILexicalBlock(scope: !371, file: !3, line: 1075, column: 17)
!384 = !DILocation(line: 1046, column: 2, scope: !379, inlinedAt: !382)
!385 = !DILocation(line: 1047, column: 33, scope: !379, inlinedAt: !382)
!386 = !DILocation(line: 1047, column: 2, scope: !379, inlinedAt: !382)
!387 = !DILocation(line: 1051, column: 11, scope: !379, inlinedAt: !382)
!388 = !DILocation(line: 1052, column: 11, scope: !379, inlinedAt: !382)
!389 = !DILocation(line: 1053, column: 11, scope: !379, inlinedAt: !382)
!390 = !DILocation(line: 1054, column: 11, scope: !379, inlinedAt: !382)
!391 = !DILocation(line: 0, scope: !145, inlinedAt: !392)
!392 = distinct !DILocation(line: 1055, column: 4, scope: !379, inlinedAt: !382)
!393 = !DILocation(line: 578, column: 24, scope: !394, inlinedAt: !392)
!394 = distinct !DILexicalBlock(scope: !145, file: !3, line: 578, column: 6)
!395 = !DILocation(line: 578, column: 6, scope: !145, inlinedAt: !392)
!396 = !DILocation(line: 581, column: 23, scope: !145, inlinedAt: !392)
!397 = !DILocation(line: 582, column: 6, scope: !145, inlinedAt: !392)
!398 = !DILocation(line: 582, column: 4, scope: !145, inlinedAt: !392)
!399 = !DILocation(line: 583, column: 12, scope: !400, inlinedAt: !392)
!400 = distinct !DILexicalBlock(scope: !145, file: !3, line: 583, column: 6)
!401 = !DILocation(line: 583, column: 6, scope: !145, inlinedAt: !392)
!402 = !DILocation(line: 587, column: 2, scope: !145, inlinedAt: !392)
!403 = !DILocation(line: 588, column: 2, scope: !145, inlinedAt: !392)
!404 = !DILocation(line: 1058, column: 11, scope: !379, inlinedAt: !382)
!405 = !DILocation(line: 1059, column: 11, scope: !379, inlinedAt: !382)
!406 = !DILocation(line: 1049, column: 2, scope: !379, inlinedAt: !382)
!407 = !DILocation(line: 1061, column: 6, scope: !408, inlinedAt: !382)
!408 = distinct !DILexicalBlock(scope: !379, file: !3, line: 1061, column: 6)
!409 = !DILocation(line: 1061, column: 30, scope: !408, inlinedAt: !382)
!410 = !DILocation(line: 1061, column: 6, scope: !379, inlinedAt: !382)
!411 = !DILocation(line: 1063, column: 12, scope: !408, inlinedAt: !382)
!412 = !DILocation(line: 1064, column: 12, scope: !408, inlinedAt: !382)
!413 = !DILocation(line: 1064, column: 5, scope: !408, inlinedAt: !382)
!414 = !DILocation(line: 1062, column: 3, scope: !408, inlinedAt: !382)
!415 = !DILocalVariable(name: "__c", arg: 1, scope: !416, file: !417, line: 82, type: !270)
!416 = distinct !DISubprogram(name: "putchar", scope: !417, file: !417, line: 82, type: !418, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !420)
!417 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!418 = !DISubroutineType(types: !419)
!419 = !{!270, !270}
!420 = !{!415}
!421 = !DILocation(line: 0, scope: !416, inlinedAt: !422)
!422 = distinct !DILocation(line: 1066, column: 2, scope: !379, inlinedAt: !382)
!423 = !DILocation(line: 84, column: 21, scope: !416, inlinedAt: !422)
!424 = !DILocation(line: 84, column: 10, scope: !416, inlinedAt: !422)
!425 = !DILocation(line: 1069, column: 1, scope: !379, inlinedAt: !382)
!426 = !DILocation(line: 1081, column: 2, scope: !383)
!427 = !DILocation(line: 1081, column: 20, scope: !370)
!428 = !DILocation(line: 1081, column: 26, scope: !370)
!429 = !DILocation(line: 1081, column: 13, scope: !371)
!430 = !DILocation(line: 1084, column: 7, scope: !368)
!431 = !DILocation(line: 1084, column: 31, scope: !368)
!432 = !DILocation(line: 1084, column: 7, scope: !369)
!433 = !DILocation(line: 983, column: 2, scope: !360, inlinedAt: !367)
!434 = !DILocation(line: 984, column: 2, scope: !360, inlinedAt: !367)
!435 = distinct !DIAssignID()
!436 = !DILocation(line: 985, column: 2, scope: !360, inlinedAt: !367)
!437 = !DILocation(line: 985, column: 25, scope: !360, inlinedAt: !367)
!438 = distinct !DIAssignID()
!439 = !DILocation(line: 986, column: 2, scope: !360, inlinedAt: !367)
!440 = !DILocation(line: 989, column: 2, scope: !360, inlinedAt: !367)
!441 = !DILocation(line: 990, column: 33, scope: !360, inlinedAt: !367)
!442 = !DILocation(line: 990, column: 2, scope: !360, inlinedAt: !367)
!443 = !DILocation(line: 995, column: 25, scope: !360, inlinedAt: !367)
!444 = !DILocation(line: 995, column: 4, scope: !360, inlinedAt: !367)
!445 = !DILocation(line: 996, column: 25, scope: !360, inlinedAt: !367)
!446 = !DILocation(line: 996, column: 4, scope: !360, inlinedAt: !367)
!447 = !DILocation(line: 997, column: 29, scope: !360, inlinedAt: !367)
!448 = !DILocation(line: 997, column: 4, scope: !360, inlinedAt: !367)
!449 = !DILocation(line: 999, column: 29, scope: !360, inlinedAt: !367)
!450 = !DILocation(line: 999, column: 4, scope: !360, inlinedAt: !367)
!451 = !DILocation(line: 1002, column: 12, scope: !360, inlinedAt: !367)
!452 = !DILocation(line: 0, scope: !145, inlinedAt: !453)
!453 = distinct !DILocation(line: 1001, column: 4, scope: !360, inlinedAt: !367)
!454 = !DILocation(line: 578, column: 24, scope: !394, inlinedAt: !453)
!455 = !DILocation(line: 578, column: 6, scope: !145, inlinedAt: !453)
!456 = !DILocation(line: 1001, column: 21, scope: !360, inlinedAt: !367)
!457 = !DILocation(line: 581, column: 23, scope: !145, inlinedAt: !453)
!458 = !DILocation(line: 582, column: 6, scope: !145, inlinedAt: !453)
!459 = !DILocation(line: 582, column: 4, scope: !145, inlinedAt: !453)
!460 = !DILocation(line: 583, column: 12, scope: !400, inlinedAt: !453)
!461 = !DILocation(line: 583, column: 6, scope: !145, inlinedAt: !453)
!462 = !DILocation(line: 587, column: 2, scope: !145, inlinedAt: !453)
!463 = !DILocation(line: 588, column: 2, scope: !145, inlinedAt: !453)
!464 = !DILocation(line: 994, column: 2, scope: !360, inlinedAt: !367)
!465 = !DILocation(line: 1012, column: 9, scope: !360, inlinedAt: !367)
!466 = !DILocation(line: 1015, column: 4, scope: !360, inlinedAt: !367)
!467 = !DILocation(line: 1012, column: 2, scope: !360, inlinedAt: !367)
!468 = !DILocation(line: 1018, column: 1, scope: !360, inlinedAt: !367)
!469 = !DILocation(line: 1085, column: 4, scope: !368)
!470 = !DILocation(line: 0, scope: !416, inlinedAt: !471)
!471 = distinct !DILocation(line: 1024, column: 2, scope: !472, inlinedAt: !473)
!472 = distinct !DISubprogram(name: "print_totals_adv", scope: !3, file: !3, line: 1022, type: !356, scopeLine: 1023, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!473 = distinct !DILocation(line: 1087, column: 4, scope: !368)
!474 = !DILocation(line: 84, column: 21, scope: !416, inlinedAt: !471)
!475 = !DILocation(line: 84, column: 10, scope: !416, inlinedAt: !471)
!476 = !DILocation(line: 1025, column: 2, scope: !472, inlinedAt: !473)
!477 = !DILocation(line: 1027, column: 25, scope: !472, inlinedAt: !473)
!478 = !DILocation(line: 1027, column: 4, scope: !472, inlinedAt: !473)
!479 = !DILocation(line: 1026, column: 2, scope: !472, inlinedAt: !473)
!480 = !DILocation(line: 1028, column: 26, scope: !472, inlinedAt: !473)
!481 = !DILocation(line: 1028, column: 42, scope: !472, inlinedAt: !473)
!482 = !DILocation(line: 1029, column: 11, scope: !472, inlinedAt: !473)
!483 = !DILocation(line: 1029, column: 35, scope: !472, inlinedAt: !473)
!484 = !DILocation(line: 1030, column: 11, scope: !472, inlinedAt: !473)
!485 = !DILocation(line: 1030, column: 26, scope: !472, inlinedAt: !473)
!486 = !DILocation(line: 1028, column: 2, scope: !472, inlinedAt: !473)
!487 = !DILocation(line: 1032, column: 6, scope: !488, inlinedAt: !473)
!488 = distinct !DILexicalBlock(scope: !472, file: !3, line: 1032, column: 6)
!489 = !DILocation(line: 1032, column: 30, scope: !488, inlinedAt: !473)
!490 = !DILocation(line: 1032, column: 6, scope: !472, inlinedAt: !473)
!491 = !DILocation(line: 1034, column: 28, scope: !492, inlinedAt: !473)
!492 = distinct !DILexicalBlock(scope: !488, file: !3, line: 1032, column: 42)
!493 = !DILocation(line: 1034, column: 5, scope: !492, inlinedAt: !473)
!494 = !DILocation(line: 1033, column: 47, scope: !492, inlinedAt: !473)
!495 = !DILocation(line: 1033, column: 3, scope: !492, inlinedAt: !473)
!496 = !DILocation(line: 1036, column: 12, scope: !492, inlinedAt: !473)
!497 = !DILocation(line: 1036, column: 5, scope: !492, inlinedAt: !473)
!498 = !DILocation(line: 1035, column: 3, scope: !492, inlinedAt: !473)
!499 = !DILocation(line: 1037, column: 2, scope: !492, inlinedAt: !473)
!500 = !DILocation(line: 1090, column: 2, scope: !355)
!501 = !DISubprogram(name: "message_verbosity_get", scope: !6, file: !6, line: 41, type: !502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!502 = !DISubroutineType(types: !503)
!503 = !{!5}
!504 = distinct !DISubprogram(name: "list_file", scope: !3, file: !3, line: 1095, type: !505, scopeLine: 1096, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !148}
!507 = !{!508, !509, !510, !511}
!508 = !DILocalVariable(name: "filename", arg: 1, scope: !504, file: !3, line: 1095, type: !148)
!509 = !DILocalVariable(name: "pair", scope: !504, file: !3, line: 1113, type: !261)
!510 = !DILocalVariable(name: "xfi", scope: !504, file: !3, line: 1117, type: !251)
!511 = !DILocalVariable(name: "fail", scope: !512, file: !3, line: 1119, type: !248)
!512 = distinct !DILexicalBlock(scope: !513, file: !3, line: 1118, column: 34)
!513 = distinct !DILexicalBlock(scope: !504, file: !3, line: 1118, column: 6)
!514 = distinct !DIAssignID()
!515 = !DILocalVariable(name: "iter", scope: !516, file: !3, line: 724, type: !558)
!516 = distinct !DISubprogram(name: "print_info_adv", scope: !3, file: !3, line: 699, type: !517, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !520)
!517 = !DISubroutineType(types: !518)
!518 = !{!248, !519, !261}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!520 = !{!521, !522, !523, !515, !524, !527, !529, !531, !543, !547, !549, !550, !554}
!521 = !DILocalVariable(name: "xfi", arg: 1, scope: !516, file: !3, line: 699, type: !519)
!522 = !DILocalVariable(name: "pair", arg: 2, scope: !516, file: !3, line: 699, type: !261)
!523 = !DILocalVariable(name: "check_max", scope: !516, file: !3, line: 712, type: !83)
!524 = !DILocalVariable(name: "cols1", scope: !525, file: !3, line: 728, type: !526)
!525 = distinct !DILexicalBlock(scope: !516, file: !3, line: 727, column: 63)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 256, elements: !110)
!527 = !DILocalVariable(name: "cols2", scope: !525, file: !3, line: 740, type: !528)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 320, elements: !127)
!529 = !DILocalVariable(name: "detailed", scope: !516, file: !3, line: 761, type: !530)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!531 = !DILocalVariable(name: "bhi", scope: !516, file: !3, line: 764, type: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "block_header_info", file: !3, line: 57, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 41, size: 4288, elements: !534)
!534 = !{!535, !536, !537, !538, !539}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !533, file: !3, line: 43, baseType: !83, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !533, file: !3, line: 46, baseType: !114, size: 24, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !533, file: !3, line: 49, baseType: !76, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !533, file: !3, line: 52, baseType: !78, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "filter_chain", scope: !533, file: !3, line: 55, baseType: !540, size: 4096, offset: 192)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 4096, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 512)
!543 = !DILocalVariable(name: "checkval_width", scope: !544, file: !3, line: 770, type: !546)
!544 = distinct !DILexicalBlock(scope: !545, file: !3, line: 768, column: 44)
!545 = distinct !DILexicalBlock(scope: !516, file: !3, line: 768, column: 6)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!547 = !DILocalVariable(name: "cols1", scope: !548, file: !3, line: 800, type: !526)
!548 = distinct !DILexicalBlock(scope: !544, file: !3, line: 796, column: 63)
!549 = !DILocalVariable(name: "cols2", scope: !548, file: !3, line: 815, type: !526)
!550 = !DILocalVariable(name: "compressed_size", scope: !551, file: !3, line: 831, type: !553)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 830, column: 18)
!552 = distinct !DILexicalBlock(scope: !548, file: !3, line: 830, column: 8)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!554 = !DILocalVariable(name: "cols3", scope: !551, file: !3, line: 837, type: !555)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 384, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 6)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_iter", file: !67, line: 220, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 43, size: 2432, elements: !560)
!560 = !{!561, !608, !628}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !559, file: !67, line: 114, baseType: !562, size: 960)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !559, file: !67, line: 44, size: 960, elements: !563)
!563 = !{!564, !592, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !562, file: !67, line: 51, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !568, line: 105, baseType: !569)
!568 = !DIFile(filename: "liblzma/api/lzma/stream_flags.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 33, size: 448, elements: !570)
!570 = !{!571, !572, !573, !575, !577, !578, !579, !580, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !569, file: !568, line: 51, baseType: !83, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !569, file: !568, line: 69, baseType: !76, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !569, file: !568, line: 79, baseType: !574, size: 32, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !30, line: 55, baseType: !29)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !569, file: !568, line: 90, baseType: !576, size: 32, offset: 160)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !37, line: 46, baseType: !36)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !569, file: !568, line: 91, baseType: !576, size: 32, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !569, file: !568, line: 92, baseType: !576, size: 32, offset: 224)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !569, file: !568, line: 93, baseType: !576, size: 32, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !569, file: !568, line: 94, baseType: !581, size: 8, offset: 288)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !37, line: 29, baseType: !582)
!582 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !569, file: !568, line: 95, baseType: !581, size: 8, offset: 296)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !569, file: !568, line: 96, baseType: !581, size: 8, offset: 304)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !569, file: !568, line: 97, baseType: !581, size: 8, offset: 312)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !569, file: !568, line: 98, baseType: !581, size: 8, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !569, file: !568, line: 99, baseType: !581, size: 8, offset: 328)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !569, file: !568, line: 100, baseType: !581, size: 8, offset: 336)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !569, file: !568, line: 101, baseType: !581, size: 8, offset: 344)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !569, file: !568, line: 102, baseType: !83, size: 32, offset: 352)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !569, file: !568, line: 103, baseType: !83, size: 32, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !562, file: !67, line: 53, baseType: !593, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !562, file: !67, line: 54, baseType: !593, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !562, file: !67, line: 55, baseType: !593, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !562, file: !67, line: 62, baseType: !76, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !562, file: !67, line: 70, baseType: !76, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_offset", scope: !562, file: !67, line: 78, baseType: !76, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_offset", scope: !562, file: !67, line: 86, baseType: !76, size: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !562, file: !67, line: 94, baseType: !76, size: 64, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !562, file: !67, line: 99, baseType: !76, size: 64, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !562, file: !67, line: 108, baseType: !76, size: 64, offset: 640)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli1", scope: !562, file: !67, line: 110, baseType: !76, size: 64, offset: 704)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli2", scope: !562, file: !67, line: 111, baseType: !76, size: 64, offset: 768)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli3", scope: !562, file: !67, line: 112, baseType: !76, size: 64, offset: 832)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli4", scope: !562, file: !67, line: 113, baseType: !76, size: 64, offset: 896)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !559, file: !67, line: 208, baseType: !609, size: 1088, offset: 960)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !559, file: !67, line: 116, size: 1088, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "number_in_file", scope: !609, file: !67, line: 122, baseType: !76, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_file_offset", scope: !609, file: !67, line: 132, baseType: !76, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_file_offset", scope: !609, file: !67, line: 147, baseType: !76, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "number_in_stream", scope: !609, file: !67, line: 154, baseType: !76, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_stream_offset", scope: !609, file: !67, line: 162, baseType: !76, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_stream_offset", scope: !609, file: !67, line: 170, baseType: !76, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !609, file: !67, line: 179, baseType: !76, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "unpadded_size", scope: !609, file: !67, line: 188, baseType: !76, size: 64, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !609, file: !67, line: 197, baseType: !76, size: 64, offset: 512)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli1", scope: !609, file: !67, line: 199, baseType: !76, size: 64, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli2", scope: !609, file: !67, line: 200, baseType: !76, size: 64, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli3", scope: !609, file: !67, line: 201, baseType: !76, size: 64, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_vli4", scope: !609, file: !67, line: 202, baseType: !76, size: 64, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !609, file: !67, line: 204, baseType: !593, size: 64, offset: 832)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !609, file: !67, line: 205, baseType: !593, size: 64, offset: 896)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !609, file: !67, line: 206, baseType: !593, size: 64, offset: 960)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !609, file: !67, line: 207, baseType: !593, size: 64, offset: 1024)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !559, file: !67, line: 219, baseType: !629, size: 384, offset: 2048)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 384, elements: !556)
!630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !67, line: 215, size: 64, elements: !631)
!631 = !{!632, !633, !636}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !630, file: !67, line: 216, baseType: !593, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !630, file: !67, line: 217, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !635, line: 18, baseType: !82)
!635 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!636 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !630, file: !67, line: 218, baseType: !76, size: 64)
!637 = !DILocation(line: 0, scope: !516, inlinedAt: !638)
!638 = distinct !DILocation(line: 1131, column: 11, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 1128, column: 12)
!640 = distinct !DILexicalBlock(scope: !512, file: !3, line: 1126, column: 7)
!641 = distinct !DIAssignID()
!642 = distinct !DIAssignID()
!643 = distinct !DIAssignID()
!644 = !DILocalVariable(name: "checks", scope: !645, file: !3, line: 877, type: !283)
!645 = distinct !DISubprogram(name: "print_info_robot", scope: !3, file: !3, line: 875, type: !517, scopeLine: 876, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!646 = !{!647, !648, !644, !649, !652}
!647 = !DILocalVariable(name: "xfi", arg: 1, scope: !645, file: !3, line: 875, type: !519)
!648 = !DILocalVariable(name: "pair", arg: 2, scope: !645, file: !3, line: 875, type: !261)
!649 = !DILocalVariable(name: "iter", scope: !650, file: !3, line: 894, type: !558)
!650 = distinct !DILexicalBlock(scope: !651, file: !3, line: 893, column: 44)
!651 = distinct !DILexicalBlock(scope: !645, file: !3, line: 893, column: 6)
!652 = !DILocalVariable(name: "bhi", scope: !650, file: !3, line: 913, type: !532)
!653 = !DILocation(line: 0, scope: !645, inlinedAt: !654)
!654 = distinct !DILocation(line: 1127, column: 11, scope: !640)
!655 = distinct !DIAssignID()
!656 = !DILocation(line: 0, scope: !650, inlinedAt: !654)
!657 = distinct !DIAssignID()
!658 = distinct !DIAssignID()
!659 = !DILocalVariable(name: "buf", scope: !660, file: !3, line: 141, type: !727)
!660 = distinct !DISubprogram(name: "parse_indexes", scope: !3, file: !3, line: 126, type: !517, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !661)
!661 = !{!662, !663, !659, !664, !665, !666, !668, !711, !712, !713, !714, !716, !718, !719, !720, !721, !726}
!662 = !DILocalVariable(name: "xfi", arg: 1, scope: !660, file: !3, line: 126, type: !519)
!663 = !DILocalVariable(name: "pair", arg: 2, scope: !660, file: !3, line: 126, type: !261)
!664 = !DILocalVariable(name: "header_flags", scope: !660, file: !3, line: 142, type: !567)
!665 = !DILocalVariable(name: "footer_flags", scope: !660, file: !3, line: 143, type: !567)
!666 = !DILocalVariable(name: "ret", scope: !660, file: !3, line: 144, type: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !37, line: 237, baseType: !40)
!668 = !DILocalVariable(name: "strm", scope: !660, file: !3, line: 147, type: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !37, line: 490, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 453, size: 1088, elements: !671)
!671 = !{!672, !677, !678, !679, !681, !682, !683, !697, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !670, file: !37, line: 454, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !79, line: 24, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !81, line: 38, baseType: !582)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !670, file: !37, line: 455, baseType: !634, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !670, file: !37, line: 456, baseType: !78, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !670, file: !37, line: 458, baseType: !680, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !670, file: !37, line: 459, baseType: !634, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !670, file: !37, line: 460, baseType: !78, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !670, file: !37, line: 468, baseType: !684, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !37, line: 403, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 341, size: 192, elements: !687)
!687 = !{!688, !692, !696}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !686, file: !37, line: 376, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!74, !74, !634, !634}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !686, file: !37, line: 390, baseType: !693, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !74, !74}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !686, file: !37, line: 401, baseType: !74, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !670, file: !37, line: 471, baseType: !698, size: 64, offset: 448)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !37, line: 411, baseType: !700)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !37, line: 411, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !670, file: !37, line: 479, baseType: !74, size: 64, offset: 512)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !670, file: !37, line: 480, baseType: !74, size: 64, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !670, file: !37, line: 481, baseType: !74, size: 64, offset: 640)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !670, file: !37, line: 482, baseType: !74, size: 64, offset: 704)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !670, file: !37, line: 483, baseType: !78, size: 64, offset: 768)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !670, file: !37, line: 484, baseType: !78, size: 64, offset: 832)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !670, file: !37, line: 485, baseType: !634, size: 64, offset: 896)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !670, file: !37, line: 486, baseType: !634, size: 64, offset: 960)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !670, file: !37, line: 487, baseType: !576, size: 32, offset: 1024)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !670, file: !37, line: 488, baseType: !576, size: 32, offset: 1056)
!711 = !DILocalVariable(name: "combined_index", scope: !660, file: !3, line: 150, type: !255)
!712 = !DILocalVariable(name: "this_index", scope: !660, file: !3, line: 153, type: !255)
!713 = !DILocalVariable(name: "pos", scope: !660, file: !3, line: 158, type: !275)
!714 = !DILocalVariable(name: "stream_padding", scope: !715, file: !3, line: 175, type: !76)
!715 = distinct !DILexicalBlock(scope: !660, file: !3, line: 164, column: 5)
!716 = !DILocalVariable(name: "i", scope: !717, file: !3, line: 192, type: !270)
!717 = distinct !DILexicalBlock(scope: !715, file: !3, line: 179, column: 16)
!718 = !DILocalVariable(name: "index_size", scope: !715, file: !3, line: 230, type: !76)
!719 = !DILocalVariable(name: "memlimit", scope: !715, file: !3, line: 241, type: !78)
!720 = !DILocalVariable(name: "memused", scope: !715, file: !3, line: 242, type: !78)
!721 = !DILocalVariable(name: "needed", scope: !722, file: !3, line: 296, type: !78)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 295, column: 36)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 295, column: 8)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 281, column: 31)
!725 = distinct !DILexicalBlock(scope: !715, file: !3, line: 281, column: 7)
!726 = !DILabel(scope: !660, name: "error", file: !3, line: 373)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_buf", file: !263, line: 28, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !263, line: 24, size: 65536, elements: !729)
!729 = !{!730, !734, !738}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !728, file: !263, line: 25, baseType: !731, size: 65536)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 65536, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 8192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !728, file: !263, line: 26, baseType: !735, size: 65536)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 65536, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 2048)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !728, file: !263, line: 27, baseType: !739, size: 65536)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 65536, elements: !284)
!740 = !DILocation(line: 0, scope: !660, inlinedAt: !741)
!741 = distinct !DILocation(line: 1118, column: 7, scope: !513)
!742 = distinct !DIAssignID()
!743 = distinct !DIAssignID()
!744 = distinct !DIAssignID()
!745 = distinct !DIAssignID()
!746 = distinct !DIAssignID()
!747 = !DILocation(line: 0, scope: !504)
!748 = !DILocation(line: 1097, column: 6, scope: !749)
!749 = distinct !DILexicalBlock(scope: !504, file: !3, line: 1097, column: 6)
!750 = !DILocation(line: 1097, column: 30, scope: !749)
!751 = !DILocation(line: 1098, column: 3, scope: !749)
!752 = !DILocation(line: 1101, column: 2, scope: !504)
!753 = !DILocation(line: 1103, column: 15, scope: !754)
!754 = distinct !DILexicalBlock(scope: !504, file: !3, line: 1103, column: 6)
!755 = !DILocation(line: 1103, column: 6, scope: !504)
!756 = !DILocation(line: 1104, column: 3, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !3, line: 1103, column: 34)
!758 = !DILocation(line: 1106, column: 3, scope: !757)
!759 = !DILocation(line: 1111, column: 13, scope: !504)
!760 = !DILocation(line: 1112, column: 12, scope: !504)
!761 = !DILocation(line: 1113, column: 20, scope: !504)
!762 = !DILocation(line: 1114, column: 11, scope: !763)
!763 = distinct !DILexicalBlock(scope: !504, file: !3, line: 1114, column: 6)
!764 = !DILocation(line: 1114, column: 6, scope: !504)
!765 = !DILocation(line: 1117, column: 2, scope: !504)
!766 = !DILocation(line: 1117, column: 15, scope: !504)
!767 = distinct !DIAssignID()
!768 = !DILocation(line: 141, column: 2, scope: !660, inlinedAt: !741)
!769 = !DILocation(line: 142, column: 2, scope: !660, inlinedAt: !741)
!770 = !DILocation(line: 143, column: 2, scope: !660, inlinedAt: !741)
!771 = !DILocation(line: 147, column: 2, scope: !660, inlinedAt: !741)
!772 = !DILocation(line: 147, column: 14, scope: !660, inlinedAt: !741)
!773 = distinct !DIAssignID()
!774 = !DILocation(line: 153, column: 2, scope: !660, inlinedAt: !741)
!775 = !DILocation(line: 153, column: 14, scope: !660, inlinedAt: !741)
!776 = distinct !DIAssignID()
!777 = !DILocation(line: 158, column: 14, scope: !660, inlinedAt: !741)
!778 = !DILocation(line: 164, column: 2, scope: !660, inlinedAt: !741)
!779 = !DILocation(line: 150, column: 14, scope: !660, inlinedAt: !741)
!780 = !DILocation(line: 168, column: 11, scope: !781, inlinedAt: !741)
!781 = distinct !DILexicalBlock(scope: !715, file: !3, line: 168, column: 7)
!782 = !DILocation(line: 168, column: 7, scope: !715, inlinedAt: !741)
!783 = !DILocation(line: 169, column: 34, scope: !784, inlinedAt: !741)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 168, column: 42)
!785 = !DILocation(line: 170, column: 6, scope: !784, inlinedAt: !741)
!786 = !DILocation(line: 169, column: 4, scope: !784, inlinedAt: !741)
!787 = !DILocation(line: 171, column: 4, scope: !784, inlinedAt: !741)
!788 = !DILocation(line: 0, scope: !715, inlinedAt: !741)
!789 = !DILocation(line: 174, column: 7, scope: !715, inlinedAt: !741)
!790 = !DILocation(line: 187, column: 8, scope: !717, inlinedAt: !741)
!791 = !DILocation(line: 181, column: 35, scope: !792, inlinedAt: !741)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 180, column: 39)
!793 = distinct !DILexicalBlock(scope: !717, file: !3, line: 180, column: 8)
!794 = !DILocation(line: 182, column: 7, scope: !792, inlinedAt: !741)
!795 = !DILocation(line: 181, column: 5, scope: !792, inlinedAt: !741)
!796 = !DILocation(line: 184, column: 5, scope: !792, inlinedAt: !741)
!797 = !DILocation(line: 187, column: 8, scope: !798, inlinedAt: !741)
!798 = distinct !DILexicalBlock(scope: !717, file: !3, line: 187, column: 8)
!799 = !DILocation(line: 0, scope: !717, inlinedAt: !741)
!800 = !DILocation(line: 193, column: 8, scope: !801, inlinedAt: !741)
!801 = distinct !DILexicalBlock(scope: !717, file: !3, line: 193, column: 8)
!802 = !DILocation(line: 193, column: 19, scope: !801, inlinedAt: !741)
!803 = !DILocation(line: 193, column: 8, scope: !717, inlinedAt: !741)
!804 = !DILocation(line: 200, column: 4, scope: !717, inlinedAt: !741)
!805 = !DILocation(line: 201, column: 20, scope: !806, inlinedAt: !741)
!806 = distinct !DILexicalBlock(scope: !717, file: !3, line: 200, column: 7)
!807 = !DILocation(line: 202, column: 9, scope: !806, inlinedAt: !741)
!808 = !DILocation(line: 204, column: 23, scope: !717, inlinedAt: !741)
!809 = !DILocation(line: 204, column: 34, scope: !717, inlinedAt: !741)
!810 = !DILocation(line: 204, column: 4, scope: !806, inlinedAt: !741)
!811 = distinct !{!811, !804, !812}
!812 = !DILocation(line: 204, column: 38, scope: !717, inlinedAt: !741)
!813 = distinct !{!813, !804, !812}
!814 = !DILocation(line: 204, column: 20, scope: !717, inlinedAt: !741)
!815 = !DILocation(line: 180, column: 12, scope: !793, inlinedAt: !741)
!816 = !DILocation(line: 180, column: 8, scope: !717, inlinedAt: !741)
!817 = !DILocation(line: 208, column: 9, scope: !715, inlinedAt: !741)
!818 = !DILocation(line: 209, column: 11, scope: !819, inlinedAt: !741)
!819 = distinct !DILexicalBlock(scope: !715, file: !3, line: 209, column: 7)
!820 = !DILocation(line: 209, column: 7, scope: !715, inlinedAt: !741)
!821 = !DILocation(line: 210, column: 34, scope: !822, inlinedAt: !741)
!822 = distinct !DILexicalBlock(scope: !819, file: !3, line: 209, column: 23)
!823 = !DILocation(line: 211, column: 6, scope: !822, inlinedAt: !741)
!824 = !DILocation(line: 210, column: 4, scope: !822, inlinedAt: !741)
!825 = !DILocation(line: 212, column: 4, scope: !822, inlinedAt: !741)
!826 = !DILocation(line: 223, column: 20, scope: !827, inlinedAt: !741)
!827 = distinct !DILexicalBlock(scope: !715, file: !3, line: 223, column: 7)
!828 = !DILocation(line: 223, column: 28, scope: !827, inlinedAt: !741)
!829 = !DILocation(line: 223, column: 7, scope: !715, inlinedAt: !741)
!830 = !DILocation(line: 224, column: 34, scope: !831, inlinedAt: !741)
!831 = distinct !DILexicalBlock(scope: !827, file: !3, line: 223, column: 34)
!832 = !DILocation(line: 225, column: 6, scope: !831, inlinedAt: !741)
!833 = !DILocation(line: 224, column: 4, scope: !831, inlinedAt: !741)
!834 = !DILocation(line: 226, column: 4, scope: !831, inlinedAt: !741)
!835 = !DILocation(line: 230, column: 38, scope: !715, inlinedAt: !741)
!836 = !DILocation(line: 231, column: 36, scope: !837, inlinedAt: !741)
!837 = distinct !DILexicalBlock(scope: !715, file: !3, line: 231, column: 7)
!838 = !DILocation(line: 231, column: 23, scope: !837, inlinedAt: !741)
!839 = !DILocation(line: 231, column: 7, scope: !715, inlinedAt: !741)
!840 = !DILocation(line: 232, column: 34, scope: !841, inlinedAt: !741)
!841 = distinct !DILexicalBlock(scope: !837, file: !3, line: 231, column: 63)
!842 = !DILocation(line: 233, column: 6, scope: !841, inlinedAt: !741)
!843 = !DILocation(line: 232, column: 4, scope: !841, inlinedAt: !741)
!844 = !DILocation(line: 234, column: 4, scope: !841, inlinedAt: !741)
!845 = !DILocation(line: 238, column: 7, scope: !715, inlinedAt: !741)
!846 = !DILocation(line: 241, column: 23, scope: !715, inlinedAt: !741)
!847 = !DILocation(line: 243, column: 22, scope: !848, inlinedAt: !741)
!848 = distinct !DILexicalBlock(scope: !715, file: !3, line: 243, column: 7)
!849 = !DILocation(line: 243, column: 7, scope: !715, inlinedAt: !741)
!850 = !DILocation(line: 244, column: 14, scope: !851, inlinedAt: !741)
!851 = distinct !DILexicalBlock(scope: !848, file: !3, line: 243, column: 31)
!852 = !DILocation(line: 245, column: 16, scope: !853, inlinedAt: !741)
!853 = distinct !DILexicalBlock(scope: !851, file: !3, line: 245, column: 8)
!854 = !DILocation(line: 245, column: 8, scope: !851, inlinedAt: !741)
!855 = !DILocation(line: 246, column: 5, scope: !853, inlinedAt: !741)
!856 = !DILocation(line: 248, column: 13, scope: !851, inlinedAt: !741)
!857 = !DILocation(line: 249, column: 3, scope: !851, inlinedAt: !741)
!858 = !DILocation(line: 252, column: 9, scope: !715, inlinedAt: !741)
!859 = !DILocation(line: 253, column: 11, scope: !860, inlinedAt: !741)
!860 = distinct !DILexicalBlock(scope: !715, file: !3, line: 253, column: 7)
!861 = !DILocation(line: 253, column: 7, scope: !715, inlinedAt: !741)
!862 = !DILocation(line: 254, column: 34, scope: !863, inlinedAt: !741)
!863 = distinct !DILexicalBlock(scope: !860, file: !3, line: 253, column: 23)
!864 = !DILocation(line: 255, column: 6, scope: !863, inlinedAt: !741)
!865 = !DILocation(line: 254, column: 4, scope: !863, inlinedAt: !741)
!866 = !DILocation(line: 256, column: 4, scope: !863, inlinedAt: !741)
!867 = !DILocation(line: 262, column: 20, scope: !868, inlinedAt: !741)
!868 = distinct !DILexicalBlock(scope: !715, file: !3, line: 259, column: 6)
!869 = !DILocation(line: 262, column: 18, scope: !868, inlinedAt: !741)
!870 = distinct !DIAssignID()
!871 = !DILocation(line: 263, column: 8, scope: !872, inlinedAt: !741)
!872 = distinct !DILexicalBlock(scope: !868, file: !3, line: 263, column: 8)
!873 = !DILocation(line: 263, column: 8, scope: !868, inlinedAt: !741)
!874 = !DILocation(line: 266, column: 16, scope: !868, inlinedAt: !741)
!875 = !DILocation(line: 266, column: 8, scope: !868, inlinedAt: !741)
!876 = !DILocation(line: 267, column: 15, scope: !868, inlinedAt: !741)
!877 = !DILocation(line: 269, column: 17, scope: !868, inlinedAt: !741)
!878 = distinct !DIAssignID()
!879 = !DILocation(line: 270, column: 10, scope: !868, inlinedAt: !741)
!880 = !DILocation(line: 272, column: 3, scope: !868, inlinedAt: !741)
!881 = !DILocation(line: 278, column: 19, scope: !882, inlinedAt: !741)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 278, column: 8)
!883 = distinct !DILexicalBlock(scope: !715, file: !3, line: 277, column: 7)
!884 = !DILocation(line: 278, column: 24, scope: !882, inlinedAt: !741)
!885 = !DILocation(line: 290, column: 34, scope: !724, inlinedAt: !741)
!886 = !DILocation(line: 287, column: 8, scope: !724, inlinedAt: !741)
!887 = !DILocation(line: 291, column: 6, scope: !724, inlinedAt: !741)
!888 = !DILocation(line: 290, column: 4, scope: !724, inlinedAt: !741)
!889 = !DILocation(line: 295, column: 12, scope: !723, inlinedAt: !741)
!890 = !DILocation(line: 295, column: 8, scope: !724, inlinedAt: !741)
!891 = !DILocation(line: 296, column: 23, scope: !722, inlinedAt: !741)
!892 = !DILocation(line: 0, scope: !722, inlinedAt: !741)
!893 = !DILocation(line: 297, column: 9, scope: !722, inlinedAt: !741)
!894 = !DILocation(line: 302, column: 5, scope: !722, inlinedAt: !741)
!895 = !DILocation(line: 303, column: 4, scope: !722, inlinedAt: !741)
!896 = !DILocation(line: 310, column: 23, scope: !715, inlinedAt: !741)
!897 = !DILocation(line: 310, column: 37, scope: !715, inlinedAt: !741)
!898 = !DILocation(line: 310, column: 7, scope: !715, inlinedAt: !741)
!899 = !DILocation(line: 311, column: 47, scope: !900, inlinedAt: !741)
!900 = distinct !DILexicalBlock(scope: !715, file: !3, line: 311, column: 7)
!901 = !DILocation(line: 311, column: 25, scope: !900, inlinedAt: !741)
!902 = !DILocation(line: 311, column: 23, scope: !900, inlinedAt: !741)
!903 = !DILocation(line: 311, column: 7, scope: !715, inlinedAt: !741)
!904 = !DILocation(line: 312, column: 34, scope: !905, inlinedAt: !741)
!905 = distinct !DILexicalBlock(scope: !900, file: !3, line: 311, column: 60)
!906 = !DILocation(line: 313, column: 6, scope: !905, inlinedAt: !741)
!907 = !DILocation(line: 312, column: 4, scope: !905, inlinedAt: !741)
!908 = !DILocation(line: 314, column: 4, scope: !905, inlinedAt: !741)
!909 = !DILocation(line: 317, column: 32, scope: !715, inlinedAt: !741)
!910 = !DILocation(line: 317, column: 10, scope: !715, inlinedAt: !741)
!911 = !DILocation(line: 317, column: 7, scope: !715, inlinedAt: !741)
!912 = !DILocation(line: 318, column: 7, scope: !913, inlinedAt: !741)
!913 = distinct !DILexicalBlock(scope: !715, file: !3, line: 318, column: 7)
!914 = !DILocation(line: 318, column: 7, scope: !715, inlinedAt: !741)
!915 = !DILocation(line: 321, column: 9, scope: !715, inlinedAt: !741)
!916 = !DILocation(line: 322, column: 11, scope: !917, inlinedAt: !741)
!917 = distinct !DILexicalBlock(scope: !715, file: !3, line: 322, column: 7)
!918 = !DILocation(line: 322, column: 7, scope: !715, inlinedAt: !741)
!919 = !DILocation(line: 323, column: 34, scope: !920, inlinedAt: !741)
!920 = distinct !DILexicalBlock(scope: !917, file: !3, line: 322, column: 23)
!921 = !DILocation(line: 324, column: 6, scope: !920, inlinedAt: !741)
!922 = !DILocation(line: 323, column: 4, scope: !920, inlinedAt: !741)
!923 = !DILocation(line: 325, column: 4, scope: !920, inlinedAt: !741)
!924 = !DILocation(line: 328, column: 9, scope: !715, inlinedAt: !741)
!925 = !DILocation(line: 329, column: 11, scope: !926, inlinedAt: !741)
!926 = distinct !DILexicalBlock(scope: !715, file: !3, line: 329, column: 7)
!927 = !DILocation(line: 329, column: 7, scope: !715, inlinedAt: !741)
!928 = !DILocation(line: 330, column: 34, scope: !929, inlinedAt: !741)
!929 = distinct !DILexicalBlock(scope: !926, file: !3, line: 329, column: 23)
!930 = !DILocation(line: 331, column: 6, scope: !929, inlinedAt: !741)
!931 = !DILocation(line: 330, column: 4, scope: !929, inlinedAt: !741)
!932 = !DILocation(line: 332, column: 4, scope: !929, inlinedAt: !741)
!933 = !DILocation(line: 338, column: 33, scope: !715, inlinedAt: !741)
!934 = !DILocation(line: 338, column: 9, scope: !715, inlinedAt: !741)
!935 = !DILocation(line: 339, column: 11, scope: !936, inlinedAt: !741)
!936 = distinct !DILexicalBlock(scope: !715, file: !3, line: 339, column: 7)
!937 = !DILocation(line: 339, column: 7, scope: !715, inlinedAt: !741)
!938 = !DILocation(line: 340, column: 4, scope: !936, inlinedAt: !741)
!939 = !DILocation(line: 344, column: 35, scope: !715, inlinedAt: !741)
!940 = !DILocation(line: 344, column: 9, scope: !715, inlinedAt: !741)
!941 = !DILocation(line: 345, column: 11, scope: !942, inlinedAt: !741)
!942 = distinct !DILexicalBlock(scope: !715, file: !3, line: 345, column: 7)
!943 = !DILocation(line: 345, column: 7, scope: !715, inlinedAt: !741)
!944 = !DILocation(line: 346, column: 4, scope: !942, inlinedAt: !741)
!945 = !DILocation(line: 348, column: 7, scope: !715, inlinedAt: !741)
!946 = !DILocation(line: 352, column: 6, scope: !947, inlinedAt: !741)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 348, column: 31)
!948 = distinct !DILexicalBlock(scope: !715, file: !3, line: 348, column: 7)
!949 = !DILocation(line: 351, column: 10, scope: !947, inlinedAt: !741)
!950 = !DILocation(line: 353, column: 12, scope: !951, inlinedAt: !741)
!951 = distinct !DILexicalBlock(scope: !947, file: !3, line: 353, column: 8)
!952 = !DILocation(line: 353, column: 8, scope: !947, inlinedAt: !741)
!953 = !DILocation(line: 354, column: 35, scope: !954, inlinedAt: !741)
!954 = distinct !DILexicalBlock(scope: !951, file: !3, line: 353, column: 24)
!955 = !DILocation(line: 355, column: 7, scope: !954, inlinedAt: !741)
!956 = !DILocation(line: 354, column: 5, scope: !954, inlinedAt: !741)
!957 = !DILocation(line: 356, column: 5, scope: !954, inlinedAt: !741)
!958 = !DILocation(line: 360, column: 20, scope: !715, inlinedAt: !741)
!959 = !DILocation(line: 361, column: 14, scope: !715, inlinedAt: !741)
!960 = distinct !DIAssignID()
!961 = !DILocation(line: 363, column: 23, scope: !715, inlinedAt: !741)
!962 = distinct !DIAssignID()
!963 = !DILocation(line: 365, column: 15, scope: !660, inlinedAt: !741)
!964 = !DILocation(line: 365, column: 2, scope: !715, inlinedAt: !741)
!965 = distinct !{!965, !778, !966}
!966 = !DILocation(line: 365, column: 18, scope: !660, inlinedAt: !741)
!967 = !DILocation(line: 373, column: 1, scope: !660, inlinedAt: !741)
!968 = !DILocation(line: 375, column: 2, scope: !660, inlinedAt: !741)
!969 = !DILocation(line: 376, column: 2, scope: !660, inlinedAt: !741)
!970 = !DILocation(line: 377, column: 17, scope: !660, inlinedAt: !741)
!971 = !DILocation(line: 377, column: 2, scope: !660, inlinedAt: !741)
!972 = !DILocation(line: 379, column: 1, scope: !660, inlinedAt: !741)
!973 = !DILocation(line: 1118, column: 6, scope: !504)
!974 = !DILocation(line: 367, column: 2, scope: !660, inlinedAt: !741)
!975 = !DILocation(line: 370, column: 11, scope: !660, inlinedAt: !741)
!976 = distinct !DIAssignID()
!977 = !DILocation(line: 1126, column: 7, scope: !640)
!978 = !DILocation(line: 1126, column: 7, scope: !512)
!979 = !DILocation(line: 877, column: 2, scope: !645, inlinedAt: !654)
!980 = !DILocation(line: 878, column: 26, scope: !645, inlinedAt: !654)
!981 = !DILocation(line: 878, column: 2, scope: !645, inlinedAt: !654)
!982 = !DILocation(line: 880, column: 29, scope: !645, inlinedAt: !654)
!983 = !DILocation(line: 880, column: 2, scope: !645, inlinedAt: !654)
!984 = !DILocation(line: 884, column: 4, scope: !645, inlinedAt: !654)
!985 = !DILocation(line: 885, column: 4, scope: !645, inlinedAt: !654)
!986 = !DILocation(line: 886, column: 4, scope: !645, inlinedAt: !654)
!987 = !DILocation(line: 887, column: 4, scope: !645, inlinedAt: !654)
!988 = !DILocation(line: 888, column: 14, scope: !645, inlinedAt: !654)
!989 = !DILocation(line: 889, column: 5, scope: !645, inlinedAt: !654)
!990 = !DILocation(line: 0, scope: !145, inlinedAt: !991)
!991 = distinct !DILocation(line: 888, column: 4, scope: !645, inlinedAt: !654)
!992 = !DILocation(line: 578, column: 24, scope: !394, inlinedAt: !991)
!993 = !DILocation(line: 578, column: 6, scope: !145, inlinedAt: !991)
!994 = !DILocation(line: 581, column: 23, scope: !145, inlinedAt: !991)
!995 = !DILocation(line: 582, column: 6, scope: !145, inlinedAt: !991)
!996 = !DILocation(line: 582, column: 4, scope: !145, inlinedAt: !991)
!997 = !DILocation(line: 583, column: 12, scope: !400, inlinedAt: !991)
!998 = !DILocation(line: 583, column: 6, scope: !145, inlinedAt: !991)
!999 = !DILocation(line: 587, column: 2, scope: !145, inlinedAt: !991)
!1000 = !DILocation(line: 588, column: 2, scope: !145, inlinedAt: !991)
!1001 = !DILocation(line: 882, column: 2, scope: !645, inlinedAt: !654)
!1002 = !DILocation(line: 893, column: 6, scope: !651, inlinedAt: !654)
!1003 = !DILocation(line: 893, column: 30, scope: !651, inlinedAt: !654)
!1004 = !DILocation(line: 893, column: 6, scope: !645, inlinedAt: !654)
!1005 = !DILocation(line: 894, column: 3, scope: !650, inlinedAt: !654)
!1006 = !DILocation(line: 895, column: 3, scope: !650, inlinedAt: !654)
!1007 = !DILocation(line: 897, column: 11, scope: !650, inlinedAt: !654)
!1008 = !DILocation(line: 897, column: 10, scope: !650, inlinedAt: !654)
!1009 = !DILocation(line: 897, column: 3, scope: !650, inlinedAt: !654)
!1010 = !DILocation(line: 901, column: 17, scope: !650, inlinedAt: !654)
!1011 = !DILocation(line: 902, column: 17, scope: !650, inlinedAt: !654)
!1012 = !DILocation(line: 903, column: 17, scope: !650, inlinedAt: !654)
!1013 = !DILocation(line: 904, column: 17, scope: !650, inlinedAt: !654)
!1014 = !DILocation(line: 905, column: 17, scope: !650, inlinedAt: !654)
!1015 = !DILocation(line: 906, column: 17, scope: !650, inlinedAt: !654)
!1016 = !DILocation(line: 0, scope: !145, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 907, column: 5, scope: !650, inlinedAt: !654)
!1018 = !DILocation(line: 578, column: 24, scope: !394, inlinedAt: !1017)
!1019 = !DILocation(line: 578, column: 6, scope: !145, inlinedAt: !1017)
!1020 = !DILocation(line: 581, column: 23, scope: !145, inlinedAt: !1017)
!1021 = !DILocation(line: 582, column: 6, scope: !145, inlinedAt: !1017)
!1022 = !DILocation(line: 582, column: 4, scope: !145, inlinedAt: !1017)
!1023 = !DILocation(line: 583, column: 12, scope: !400, inlinedAt: !1017)
!1024 = !DILocation(line: 583, column: 6, scope: !145, inlinedAt: !1017)
!1025 = !DILocation(line: 587, column: 2, scope: !145, inlinedAt: !1017)
!1026 = !DILocation(line: 588, column: 2, scope: !145, inlinedAt: !1017)
!1027 = !DILocation(line: 909, column: 29, scope: !650, inlinedAt: !654)
!1028 = !DILocation(line: 909, column: 36, scope: !650, inlinedAt: !654)
!1029 = !DILocation(line: 909, column: 5, scope: !650, inlinedAt: !654)
!1030 = !DILocation(line: 910, column: 17, scope: !650, inlinedAt: !654)
!1031 = !DILocation(line: 898, column: 4, scope: !650, inlinedAt: !654)
!1032 = distinct !{!1032, !1009, !1033}
!1033 = !DILocation(line: 910, column: 24, scope: !650, inlinedAt: !654)
!1034 = !DILocation(line: 912, column: 3, scope: !650, inlinedAt: !654)
!1035 = !DILocation(line: 913, column: 3, scope: !650, inlinedAt: !654)
!1036 = !DILocation(line: 915, column: 11, scope: !650, inlinedAt: !654)
!1037 = !DILocation(line: 915, column: 10, scope: !650, inlinedAt: !654)
!1038 = !DILocation(line: 915, column: 3, scope: !650, inlinedAt: !654)
!1039 = !DILocation(line: 916, column: 8, scope: !1040, inlinedAt: !654)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 916, column: 8)
!1041 = distinct !DILexicalBlock(scope: !650, file: !3, line: 915, column: 63)
!1042 = !DILocation(line: 916, column: 32, scope: !1040, inlinedAt: !654)
!1043 = !DILocation(line: 917, column: 6, scope: !1040, inlinedAt: !654)
!1044 = !DILocation(line: 917, column: 9, scope: !1040, inlinedAt: !654)
!1045 = !DILocation(line: 916, column: 8, scope: !1041, inlinedAt: !654)
!1046 = !DILocation(line: 924, column: 18, scope: !1041, inlinedAt: !654)
!1047 = !DILocation(line: 925, column: 17, scope: !1041, inlinedAt: !654)
!1048 = !DILocation(line: 926, column: 17, scope: !1041, inlinedAt: !654)
!1049 = !DILocation(line: 927, column: 17, scope: !1041, inlinedAt: !654)
!1050 = !DILocation(line: 928, column: 17, scope: !1041, inlinedAt: !654)
!1051 = !DILocation(line: 929, column: 17, scope: !1041, inlinedAt: !654)
!1052 = !DILocation(line: 930, column: 17, scope: !1041, inlinedAt: !654)
!1053 = !DILocation(line: 0, scope: !145, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 931, column: 6, scope: !1041, inlinedAt: !654)
!1055 = !DILocation(line: 578, column: 24, scope: !394, inlinedAt: !1054)
!1056 = !DILocation(line: 578, column: 6, scope: !145, inlinedAt: !1054)
!1057 = !DILocation(line: 581, column: 23, scope: !145, inlinedAt: !1054)
!1058 = !DILocation(line: 582, column: 6, scope: !145, inlinedAt: !1054)
!1059 = !DILocation(line: 582, column: 4, scope: !145, inlinedAt: !1054)
!1060 = !DILocation(line: 583, column: 12, scope: !400, inlinedAt: !1054)
!1061 = !DILocation(line: 583, column: 6, scope: !145, inlinedAt: !1054)
!1062 = !DILocation(line: 587, column: 2, scope: !145, inlinedAt: !1054)
!1063 = !DILocation(line: 588, column: 2, scope: !145, inlinedAt: !1054)
!1064 = !DILocation(line: 933, column: 30, scope: !1041, inlinedAt: !654)
!1065 = !DILocation(line: 933, column: 37, scope: !1041, inlinedAt: !654)
!1066 = !DILocation(line: 933, column: 6, scope: !1041, inlinedAt: !654)
!1067 = !DILocation(line: 921, column: 4, scope: !1041, inlinedAt: !654)
!1068 = !DILocation(line: 935, column: 8, scope: !1069, inlinedAt: !654)
!1069 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 935, column: 8)
!1070 = !DILocation(line: 935, column: 32, scope: !1069, inlinedAt: !654)
!1071 = !DILocation(line: 935, column: 8, scope: !1041, inlinedAt: !654)
!1072 = !DILocation(line: 939, column: 11, scope: !1069, inlinedAt: !654)
!1073 = !DILocation(line: 941, column: 11, scope: !1069, inlinedAt: !654)
!1074 = !DILocation(line: 942, column: 11, scope: !1069, inlinedAt: !654)
!1075 = !DILocation(line: 936, column: 5, scope: !1069, inlinedAt: !654)
!1076 = !DILocation(line: 0, scope: !416, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 945, column: 4, scope: !1041, inlinedAt: !654)
!1078 = !DILocation(line: 84, column: 21, scope: !416, inlinedAt: !1077)
!1079 = !DILocation(line: 84, column: 10, scope: !416, inlinedAt: !1077)
!1080 = distinct !{!1080, !1038, !1081}
!1081 = !DILocation(line: 946, column: 3, scope: !650, inlinedAt: !654)
!1082 = !DILocation(line: 947, column: 2, scope: !651, inlinedAt: !654)
!1083 = !DILocation(line: 949, column: 6, scope: !1084, inlinedAt: !654)
!1084 = distinct !DILexicalBlock(scope: !645, file: !3, line: 949, column: 6)
!1085 = !DILocation(line: 949, column: 30, scope: !1084, inlinedAt: !654)
!1086 = !DILocation(line: 949, column: 6, scope: !645, inlinedAt: !654)
!1087 = !DILocation(line: 951, column: 10, scope: !1084, inlinedAt: !654)
!1088 = !DILocation(line: 952, column: 10, scope: !1084, inlinedAt: !654)
!1089 = !DILocation(line: 952, column: 5, scope: !1084, inlinedAt: !654)
!1090 = !DILocation(line: 950, column: 3, scope: !1084, inlinedAt: !654)
!1091 = !DILocation(line: 955, column: 1, scope: !645, inlinedAt: !654)
!1092 = !DILocation(line: 0, scope: !512)
!1093 = !DILocation(line: 1136, column: 7, scope: !512)
!1094 = !DILocation(line: 1128, column: 12, scope: !639)
!1095 = !DILocation(line: 1128, column: 36, scope: !639)
!1096 = !DILocation(line: 1128, column: 12, scope: !640)
!1097 = !DILocation(line: 0, scope: !245, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 1129, column: 11, scope: !639)
!1099 = !DILocation(line: 632, column: 7, scope: !1100, inlinedAt: !1098)
!1100 = distinct !DILexicalBlock(scope: !245, file: !3, line: 632, column: 6)
!1101 = !DILocation(line: 632, column: 6, scope: !245, inlinedAt: !1098)
!1102 = !DILocation(line: 633, column: 22, scope: !1103, inlinedAt: !1098)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 632, column: 27)
!1104 = !DILocation(line: 638, column: 3, scope: !1103, inlinedAt: !1098)
!1105 = !DILocation(line: 640, column: 2, scope: !1103, inlinedAt: !1098)
!1106 = !DILocation(line: 642, column: 2, scope: !245, inlinedAt: !1098)
!1107 = !DILocation(line: 643, column: 26, scope: !245, inlinedAt: !1098)
!1108 = !DILocation(line: 643, column: 2, scope: !245, inlinedAt: !1098)
!1109 = !DILocation(line: 646, column: 17, scope: !245, inlinedAt: !1098)
!1110 = !DILocation(line: 646, column: 3, scope: !245, inlinedAt: !1098)
!1111 = !DILocation(line: 647, column: 17, scope: !245, inlinedAt: !1098)
!1112 = !DILocation(line: 647, column: 3, scope: !245, inlinedAt: !1098)
!1113 = !DILocation(line: 648, column: 21, scope: !245, inlinedAt: !1098)
!1114 = !DILocation(line: 648, column: 3, scope: !245, inlinedAt: !1098)
!1115 = !DILocation(line: 650, column: 21, scope: !245, inlinedAt: !1098)
!1116 = !DILocation(line: 650, column: 3, scope: !245, inlinedAt: !1098)
!1117 = !DILocation(line: 652, column: 13, scope: !245, inlinedAt: !1098)
!1118 = !DILocation(line: 653, column: 4, scope: !245, inlinedAt: !1098)
!1119 = !DILocation(line: 0, scope: !145, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 652, column: 3, scope: !245, inlinedAt: !1098)
!1121 = !DILocation(line: 578, column: 24, scope: !394, inlinedAt: !1120)
!1122 = !DILocation(line: 578, column: 6, scope: !145, inlinedAt: !1120)
!1123 = !DILocation(line: 581, column: 23, scope: !145, inlinedAt: !1120)
!1124 = !DILocation(line: 582, column: 6, scope: !145, inlinedAt: !1120)
!1125 = !DILocation(line: 582, column: 4, scope: !145, inlinedAt: !1120)
!1126 = !DILocation(line: 583, column: 12, scope: !400, inlinedAt: !1120)
!1127 = !DILocation(line: 583, column: 6, scope: !145, inlinedAt: !1120)
!1128 = !DILocation(line: 587, column: 2, scope: !145, inlinedAt: !1120)
!1129 = !DILocation(line: 588, column: 2, scope: !145, inlinedAt: !1120)
!1130 = !DILocation(line: 655, column: 9, scope: !245, inlinedAt: !1098)
!1131 = !DILocation(line: 658, column: 4, scope: !245, inlinedAt: !1098)
!1132 = !DILocation(line: 659, column: 4, scope: !245, inlinedAt: !1098)
!1133 = !DILocation(line: 660, column: 4, scope: !245, inlinedAt: !1098)
!1134 = !DILocation(line: 661, column: 4, scope: !245, inlinedAt: !1098)
!1135 = !DILocation(line: 662, column: 4, scope: !245, inlinedAt: !1098)
!1136 = !DILocation(line: 663, column: 4, scope: !245, inlinedAt: !1098)
!1137 = !DILocation(line: 657, column: 2, scope: !245, inlinedAt: !1098)
!1138 = !DILocation(line: 667, column: 1, scope: !245, inlinedAt: !1098)
!1139 = !DILocation(line: 702, column: 19, scope: !516, inlinedAt: !638)
!1140 = !DILocation(line: 703, column: 4, scope: !516, inlinedAt: !638)
!1141 = !DILocation(line: 704, column: 4, scope: !516, inlinedAt: !638)
!1142 = !DILocation(line: 705, column: 4, scope: !516, inlinedAt: !638)
!1143 = !DILocation(line: 706, column: 4, scope: !516, inlinedAt: !638)
!1144 = !DILocation(line: 702, column: 2, scope: !516, inlinedAt: !638)
!1145 = !DILocation(line: 719, column: 2, scope: !516, inlinedAt: !638)
!1146 = !DILocation(line: 724, column: 2, scope: !516, inlinedAt: !638)
!1147 = !DILocation(line: 725, column: 2, scope: !516, inlinedAt: !638)
!1148 = !DILocation(line: 727, column: 10, scope: !516, inlinedAt: !638)
!1149 = !DILocation(line: 727, column: 9, scope: !516, inlinedAt: !638)
!1150 = !DILocation(line: 727, column: 2, scope: !516, inlinedAt: !638)
!1151 = !DILocation(line: 729, column: 30, scope: !525, inlinedAt: !638)
!1152 = !DILocation(line: 729, column: 4, scope: !525, inlinedAt: !638)
!1153 = !DILocation(line: 0, scope: !525, inlinedAt: !638)
!1154 = !DILocation(line: 730, column: 30, scope: !525, inlinedAt: !638)
!1155 = !DILocation(line: 730, column: 4, scope: !525, inlinedAt: !638)
!1156 = !DILocation(line: 731, column: 30, scope: !525, inlinedAt: !638)
!1157 = !DILocation(line: 731, column: 4, scope: !525, inlinedAt: !638)
!1158 = !DILocation(line: 732, column: 30, scope: !525, inlinedAt: !638)
!1159 = !DILocation(line: 732, column: 4, scope: !525, inlinedAt: !638)
!1160 = !DILocation(line: 735, column: 5, scope: !525, inlinedAt: !638)
!1161 = !DILocation(line: 736, column: 5, scope: !525, inlinedAt: !638)
!1162 = !DILocation(line: 737, column: 5, scope: !525, inlinedAt: !638)
!1163 = !DILocation(line: 738, column: 5, scope: !525, inlinedAt: !638)
!1164 = !DILocation(line: 734, column: 3, scope: !525, inlinedAt: !638)
!1165 = !DILocation(line: 741, column: 30, scope: !525, inlinedAt: !638)
!1166 = !DILocation(line: 741, column: 4, scope: !525, inlinedAt: !638)
!1167 = !DILocation(line: 742, column: 30, scope: !525, inlinedAt: !638)
!1168 = !DILocation(line: 742, column: 4, scope: !525, inlinedAt: !638)
!1169 = !DILocation(line: 744, column: 17, scope: !525, inlinedAt: !638)
!1170 = !DILocation(line: 0, scope: !145, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 743, column: 4, scope: !525, inlinedAt: !638)
!1172 = !DILocation(line: 578, column: 24, scope: !394, inlinedAt: !1171)
!1173 = !DILocation(line: 578, column: 6, scope: !145, inlinedAt: !1171)
!1174 = !DILocation(line: 743, column: 26, scope: !525, inlinedAt: !638)
!1175 = !DILocation(line: 581, column: 23, scope: !145, inlinedAt: !1171)
!1176 = !DILocation(line: 582, column: 6, scope: !145, inlinedAt: !1171)
!1177 = !DILocation(line: 582, column: 4, scope: !145, inlinedAt: !1171)
!1178 = !DILocation(line: 583, column: 12, scope: !400, inlinedAt: !1171)
!1179 = !DILocation(line: 583, column: 6, scope: !145, inlinedAt: !1171)
!1180 = !DILocation(line: 587, column: 2, scope: !145, inlinedAt: !1171)
!1181 = !DILocation(line: 588, column: 2, scope: !145, inlinedAt: !1171)
!1182 = !DILocation(line: 745, column: 4, scope: !525, inlinedAt: !638)
!1183 = !DILocation(line: 746, column: 30, scope: !525, inlinedAt: !638)
!1184 = !DILocation(line: 746, column: 4, scope: !525, inlinedAt: !638)
!1185 = !DILocation(line: 749, column: 5, scope: !525, inlinedAt: !638)
!1186 = !DILocation(line: 750, column: 5, scope: !525, inlinedAt: !638)
!1187 = !DILocation(line: 751, column: 5, scope: !525, inlinedAt: !638)
!1188 = !DILocation(line: 752, column: 5, scope: !525, inlinedAt: !638)
!1189 = !DILocation(line: 753, column: 5, scope: !525, inlinedAt: !638)
!1190 = !DILocation(line: 748, column: 3, scope: !525, inlinedAt: !638)
!1191 = !DILocation(line: 756, column: 35, scope: !1192, inlinedAt: !638)
!1192 = distinct !DILexicalBlock(scope: !525, file: !3, line: 756, column: 7)
!1193 = !DILocation(line: 756, column: 42, scope: !1192, inlinedAt: !638)
!1194 = !DILocation(line: 756, column: 7, scope: !1192, inlinedAt: !638)
!1195 = !DILocation(line: 756, column: 49, scope: !1192, inlinedAt: !638)
!1196 = !DILocation(line: 756, column: 7, scope: !525, inlinedAt: !638)
!1197 = !DILocation(line: 757, column: 44, scope: !1192, inlinedAt: !638)
!1198 = !DILocation(line: 757, column: 51, scope: !1192, inlinedAt: !638)
!1199 = !DILocation(line: 757, column: 16, scope: !1192, inlinedAt: !638)
!1200 = !DILocation(line: 757, column: 4, scope: !1192, inlinedAt: !638)
!1201 = distinct !{!1201, !1150, !1202}
!1202 = !DILocation(line: 758, column: 2, scope: !516, inlinedAt: !638)
!1203 = !DILocation(line: 770, column: 30, scope: !544, inlinedAt: !638)
!1204 = !DILocation(line: 761, column: 24, scope: !516, inlinedAt: !638)
!1205 = !DILocation(line: 761, column: 48, scope: !516, inlinedAt: !638)
!1206 = !DILocation(line: 764, column: 2, scope: !516, inlinedAt: !638)
!1207 = !DILocation(line: 768, column: 6, scope: !545, inlinedAt: !638)
!1208 = !DILocation(line: 768, column: 39, scope: !545, inlinedAt: !638)
!1209 = !DILocation(line: 768, column: 6, scope: !516, inlinedAt: !638)
!1210 = !DILocation(line: 0, scope: !544, inlinedAt: !638)
!1211 = !DILocation(line: 774, column: 3, scope: !544, inlinedAt: !638)
!1212 = !DILocation(line: 778, column: 7, scope: !544, inlinedAt: !638)
!1213 = !DILocation(line: 788, column: 21, scope: !1214, inlinedAt: !638)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 778, column: 17)
!1215 = distinct !DILexicalBlock(scope: !544, file: !3, line: 778, column: 7)
!1216 = !DILocation(line: 786, column: 4, scope: !1214, inlinedAt: !638)
!1217 = !DILocation(line: 789, column: 3, scope: !1214, inlinedAt: !638)
!1218 = !DILocation(line: 0, scope: !416, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 791, column: 3, scope: !544, inlinedAt: !638)
!1220 = !DILocation(line: 84, column: 21, scope: !416, inlinedAt: !1219)
!1221 = !DILocation(line: 84, column: 10, scope: !416, inlinedAt: !1219)
!1222 = !DILocation(line: 793, column: 3, scope: !544, inlinedAt: !638)
!1223 = !DILocation(line: 796, column: 11, scope: !544, inlinedAt: !638)
!1224 = !DILocation(line: 796, column: 10, scope: !544, inlinedAt: !638)
!1225 = !DILocation(line: 796, column: 3, scope: !544, inlinedAt: !638)
!1226 = !DILocation(line: 797, column: 17, scope: !1227, inlinedAt: !638)
!1227 = distinct !DILexicalBlock(scope: !548, file: !3, line: 797, column: 8)
!1228 = !DILocation(line: 797, column: 20, scope: !1227, inlinedAt: !638)
!1229 = !DILocation(line: 797, column: 8, scope: !548, inlinedAt: !638)
!1230 = !DILocation(line: 801, column: 31, scope: !548, inlinedAt: !638)
!1231 = !DILocation(line: 801, column: 5, scope: !548, inlinedAt: !638)
!1232 = !DILocation(line: 0, scope: !548, inlinedAt: !638)
!1233 = !DILocation(line: 803, column: 17, scope: !548, inlinedAt: !638)
!1234 = !DILocation(line: 802, column: 5, scope: !548, inlinedAt: !638)
!1235 = !DILocation(line: 805, column: 17, scope: !548, inlinedAt: !638)
!1236 = !DILocation(line: 804, column: 5, scope: !548, inlinedAt: !638)
!1237 = !DILocation(line: 807, column: 17, scope: !548, inlinedAt: !638)
!1238 = !DILocation(line: 806, column: 5, scope: !548, inlinedAt: !638)
!1239 = !DILocation(line: 810, column: 5, scope: !548, inlinedAt: !638)
!1240 = !DILocation(line: 811, column: 5, scope: !548, inlinedAt: !638)
!1241 = !DILocation(line: 812, column: 5, scope: !548, inlinedAt: !638)
!1242 = !DILocation(line: 813, column: 5, scope: !548, inlinedAt: !638)
!1243 = !DILocation(line: 809, column: 4, scope: !548, inlinedAt: !638)
!1244 = !DILocation(line: 816, column: 30, scope: !548, inlinedAt: !638)
!1245 = !DILocation(line: 816, column: 5, scope: !548, inlinedAt: !638)
!1246 = !DILocation(line: 817, column: 30, scope: !548, inlinedAt: !638)
!1247 = !DILocation(line: 817, column: 5, scope: !548, inlinedAt: !638)
!1248 = !DILocation(line: 820, column: 17, scope: !548, inlinedAt: !638)
!1249 = !DILocation(line: 0, scope: !145, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 819, column: 5, scope: !548, inlinedAt: !638)
!1251 = !DILocation(line: 578, column: 24, scope: !394, inlinedAt: !1250)
!1252 = !DILocation(line: 578, column: 6, scope: !145, inlinedAt: !1250)
!1253 = !DILocation(line: 819, column: 26, scope: !548, inlinedAt: !638)
!1254 = !DILocation(line: 581, column: 23, scope: !145, inlinedAt: !1250)
!1255 = !DILocation(line: 582, column: 6, scope: !145, inlinedAt: !1250)
!1256 = !DILocation(line: 582, column: 4, scope: !145, inlinedAt: !1250)
!1257 = !DILocation(line: 583, column: 12, scope: !400, inlinedAt: !1250)
!1258 = !DILocation(line: 583, column: 6, scope: !145, inlinedAt: !1250)
!1259 = !DILocation(line: 587, column: 2, scope: !145, inlinedAt: !1250)
!1260 = !DILocation(line: 588, column: 2, scope: !145, inlinedAt: !1250)
!1261 = !DILocation(line: 821, column: 5, scope: !548, inlinedAt: !638)
!1262 = !DILocation(line: 824, column: 5, scope: !548, inlinedAt: !638)
!1263 = !DILocation(line: 825, column: 5, scope: !548, inlinedAt: !638)
!1264 = !DILocation(line: 826, column: 5, scope: !548, inlinedAt: !638)
!1265 = !DILocation(line: 827, column: 5, scope: !548, inlinedAt: !638)
!1266 = !DILocation(line: 823, column: 4, scope: !548, inlinedAt: !638)
!1267 = !DILocation(line: 830, column: 8, scope: !548, inlinedAt: !638)
!1268 = !DILocation(line: 832, column: 20, scope: !551, inlinedAt: !638)
!1269 = !DILocation(line: 833, column: 13, scope: !551, inlinedAt: !638)
!1270 = !DILocation(line: 833, column: 9, scope: !551, inlinedAt: !638)
!1271 = !DILocation(line: 835, column: 19, scope: !551, inlinedAt: !638)
!1272 = !DILocation(line: 835, column: 26, scope: !551, inlinedAt: !638)
!1273 = !DILocation(line: 834, column: 9, scope: !551, inlinedAt: !638)
!1274 = !DILocation(line: 834, column: 7, scope: !551, inlinedAt: !638)
!1275 = !DILocation(line: 0, scope: !551, inlinedAt: !638)
!1276 = !DILocation(line: 839, column: 24, scope: !551, inlinedAt: !638)
!1277 = !DILocation(line: 839, column: 20, scope: !551, inlinedAt: !638)
!1278 = !DILocation(line: 839, column: 6, scope: !551, inlinedAt: !638)
!1279 = !DILocation(line: 841, column: 6, scope: !551, inlinedAt: !638)
!1280 = !DILocation(line: 843, column: 27, scope: !551, inlinedAt: !638)
!1281 = !DILocation(line: 843, column: 7, scope: !551, inlinedAt: !638)
!1282 = !DILocation(line: 842, column: 6, scope: !551, inlinedAt: !638)
!1283 = !DILocation(line: 851, column: 6, scope: !551, inlinedAt: !638)
!1284 = !DILocation(line: 853, column: 6, scope: !551, inlinedAt: !638)
!1285 = !DILocation(line: 855, column: 6, scope: !551, inlinedAt: !638)
!1286 = !DILocation(line: 849, column: 5, scope: !551, inlinedAt: !638)
!1287 = !DILocation(line: 857, column: 4, scope: !551, inlinedAt: !638)
!1288 = !DILocation(line: 0, scope: !416, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 859, column: 4, scope: !548, inlinedAt: !638)
!1290 = !DILocation(line: 84, column: 21, scope: !416, inlinedAt: !1289)
!1291 = !DILocation(line: 84, column: 10, scope: !416, inlinedAt: !1289)
!1292 = distinct !{!1292, !1225, !1293}
!1293 = !DILocation(line: 860, column: 3, scope: !544, inlinedAt: !638)
!1294 = !DILocation(line: 863, column: 6, scope: !516, inlinedAt: !638)
!1295 = !DILocation(line: 865, column: 26, scope: !1296, inlinedAt: !638)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 863, column: 16)
!1297 = distinct !DILexicalBlock(scope: !516, file: !3, line: 863, column: 6)
!1298 = !DILocation(line: 865, column: 5, scope: !1296, inlinedAt: !638)
!1299 = !DILocation(line: 864, column: 47, scope: !1296, inlinedAt: !638)
!1300 = !DILocation(line: 864, column: 3, scope: !1296, inlinedAt: !638)
!1301 = !DILocation(line: 867, column: 10, scope: !1296, inlinedAt: !638)
!1302 = !DILocation(line: 867, column: 5, scope: !1296, inlinedAt: !638)
!1303 = !DILocation(line: 866, column: 3, scope: !1296, inlinedAt: !638)
!1304 = !DILocation(line: 868, column: 2, scope: !1296, inlinedAt: !638)
!1305 = !DILocation(line: 871, column: 1, scope: !516, inlinedAt: !638)
!1306 = !DILocalVariable(name: "xfi", arg: 1, scope: !1307, file: !3, line: 959, type: !249)
!1307 = distinct !DISubprogram(name: "update_totals", scope: !3, file: !3, line: 959, type: !1308, scopeLine: 960, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1310)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{null, !249}
!1310 = !{!1306}
!1311 = !DILocation(line: 0, scope: !1307, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 1137, column: 4, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !512, file: !3, line: 1136, column: 7)
!1314 = !DILocation(line: 962, column: 2, scope: !1307, inlinedAt: !1312)
!1315 = !DILocation(line: 963, column: 49, scope: !1307, inlinedAt: !1312)
!1316 = !DILocation(line: 963, column: 20, scope: !1307, inlinedAt: !1312)
!1317 = !DILocation(line: 963, column: 17, scope: !1307, inlinedAt: !1312)
!1318 = !DILocation(line: 964, column: 19, scope: !1307, inlinedAt: !1312)
!1319 = !DILocation(line: 964, column: 16, scope: !1307, inlinedAt: !1312)
!1320 = !DILocation(line: 965, column: 28, scope: !1307, inlinedAt: !1312)
!1321 = !DILocation(line: 965, column: 25, scope: !1307, inlinedAt: !1312)
!1322 = !DILocation(line: 966, column: 30, scope: !1307, inlinedAt: !1312)
!1323 = !DILocation(line: 966, column: 27, scope: !1307, inlinedAt: !1312)
!1324 = !DILocation(line: 967, column: 32, scope: !1307, inlinedAt: !1312)
!1325 = !DILocation(line: 967, column: 24, scope: !1307, inlinedAt: !1312)
!1326 = !DILocation(line: 968, column: 19, scope: !1307, inlinedAt: !1312)
!1327 = !DILocation(line: 968, column: 16, scope: !1307, inlinedAt: !1312)
!1328 = !DILocation(line: 970, column: 13, scope: !1329, inlinedAt: !1312)
!1329 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 970, column: 6)
!1330 = !DILocation(line: 970, column: 33, scope: !1329, inlinedAt: !1312)
!1331 = !DILocation(line: 970, column: 26, scope: !1329, inlinedAt: !1312)
!1332 = !DILocation(line: 970, column: 6, scope: !1307, inlinedAt: !1312)
!1333 = !DILocation(line: 971, column: 23, scope: !1329, inlinedAt: !1312)
!1334 = !DILocation(line: 971, column: 3, scope: !1329, inlinedAt: !1312)
!1335 = !DILocation(line: 973, column: 32, scope: !1307, inlinedAt: !1312)
!1336 = !DILocation(line: 973, column: 24, scope: !1307, inlinedAt: !1312)
!1337 = !DILocation(line: 1137, column: 4, scope: !1313)
!1338 = !DILocation(line: 1139, column: 22, scope: !512)
!1339 = !DILocation(line: 1139, column: 3, scope: !512)
!1340 = !DILocation(line: 1140, column: 2, scope: !512)
!1341 = !DILocation(line: 1142, column: 2, scope: !504)
!1342 = !DILocation(line: 1144, column: 1, scope: !504)
!1343 = !DISubprogram(name: "message_fatal", scope: !6, file: !6, line: 70, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !148, null}
!1346 = !DISubprogram(name: "message_filename", scope: !6, file: !6, line: 139, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1347 = !DISubprogram(name: "message_error", scope: !6, file: !6, line: 63, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1348 = !DISubprogram(name: "io_open_src", scope: !263, file: !263, line: 78, type: !1349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!261, !148}
!1351 = !DISubprogram(name: "lzma_index_end", scope: !67, file: !67, line: 315, type: !1352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !255, !684}
!1354 = !DISubprogram(name: "io_close", scope: !263, file: !263, line: 92, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !261, !248}
!1357 = distinct !DISubprogram(name: "get_check_names", scope: !3, file: !3, line: 603, type: !1358, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1360)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{null, !268, !83, !248}
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1361 = !DILocalVariable(name: "buf", arg: 1, scope: !1357, file: !3, line: 603, type: !268)
!1362 = !DILocalVariable(name: "checks", arg: 2, scope: !1357, file: !3, line: 604, type: !83)
!1363 = !DILocalVariable(name: "space_after_comma", arg: 3, scope: !1357, file: !3, line: 604, type: !248)
!1364 = !DILocalVariable(name: "pos", scope: !1357, file: !3, line: 608, type: !268)
!1365 = !DILocalVariable(name: "left", scope: !1357, file: !3, line: 609, type: !634)
!1366 = !DILocalVariable(name: "sep", scope: !1357, file: !3, line: 611, type: !148)
!1367 = !DILocalVariable(name: "comma", scope: !1357, file: !3, line: 612, type: !248)
!1368 = !DILocalVariable(name: "i", scope: !1369, file: !3, line: 614, type: !634)
!1369 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 614, column: 2)
!1370 = distinct !DIAssignID()
!1371 = !DILocation(line: 0, scope: !1357)
!1372 = distinct !DIAssignID()
!1373 = !DILocation(line: 608, column: 2, scope: !1357)
!1374 = !DILocation(line: 608, column: 8, scope: !1357)
!1375 = distinct !DIAssignID()
!1376 = !DILocation(line: 609, column: 2, scope: !1357)
!1377 = !DILocation(line: 609, column: 9, scope: !1357)
!1378 = distinct !DIAssignID()
!1379 = !DILocation(line: 611, column: 20, scope: !1357)
!1380 = !DILocation(line: 0, scope: !1369)
!1381 = !DILocation(line: 615, column: 14, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 615, column: 7)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 614, column: 50)
!1384 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 614, column: 2)
!1385 = !DILocation(line: 615, column: 7, scope: !1383)
!1386 = !DILocation(line: 616, column: 4, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 615, column: 36)
!1388 = !DILocation(line: 621, column: 3, scope: !1387)
!1389 = !DILocation(line: 617, column: 6, scope: !1387)
!1390 = !DILocation(line: 625, column: 1, scope: !1357)
!1391 = !DISubprogram(name: "printf", scope: !1392, file: !1392, line: 356, type: !1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1392 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!270, !1395, null}
!1395 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !148)
!1396 = !DISubprogram(name: "my_snprintf", scope: !22, file: !22, line: 104, type: !1397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !1399, !1400, !148, null}
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!1401 = !DISubprogram(name: "snprintf", scope: !1392, file: !1392, line: 378, type: !1402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!270, !1404, !634, !1395, null}
!1404 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !268)
!1405 = !DISubprogram(name: "putc", scope: !1392, file: !1392, line: 550, type: !1406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!270, !270, !1408}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1410, line: 7, baseType: !1411)
!1410 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1412, line: 49, size: 1728, elements: !1413)
!1412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1429, !1431, !1432, !1433, !1434, !1436, !1438, !1439, !1442, !1444, !1447, !1450, !1451, !1452, !1453, !1454}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1411, file: !1412, line: 51, baseType: !270, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1411, file: !1412, line: 54, baseType: !268, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1411, file: !1412, line: 55, baseType: !268, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1411, file: !1412, line: 56, baseType: !268, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1411, file: !1412, line: 57, baseType: !268, size: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1411, file: !1412, line: 58, baseType: !268, size: 64, offset: 320)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1411, file: !1412, line: 59, baseType: !268, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1411, file: !1412, line: 60, baseType: !268, size: 64, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1411, file: !1412, line: 61, baseType: !268, size: 64, offset: 512)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1411, file: !1412, line: 64, baseType: !268, size: 64, offset: 576)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1411, file: !1412, line: 65, baseType: !268, size: 64, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1411, file: !1412, line: 66, baseType: !268, size: 64, offset: 704)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1411, file: !1412, line: 68, baseType: !1427, size: 64, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1412, line: 36, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1411, file: !1412, line: 70, baseType: !1430, size: 64, offset: 832)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1411, file: !1412, line: 72, baseType: !270, size: 32, offset: 896)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1411, file: !1412, line: 73, baseType: !270, size: 32, offset: 928)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1411, file: !1412, line: 74, baseType: !277, size: 64, offset: 960)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1411, file: !1412, line: 77, baseType: !1435, size: 16, offset: 1024)
!1435 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1411, file: !1412, line: 78, baseType: !1437, size: 8, offset: 1040)
!1437 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1411, file: !1412, line: 79, baseType: !131, size: 8, offset: 1048)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1411, file: !1412, line: 81, baseType: !1440, size: 64, offset: 1088)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1412, line: 43, baseType: null)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1411, file: !1412, line: 89, baseType: !1443, size: 64, offset: 1152)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !81, line: 153, baseType: !278)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1411, file: !1412, line: 91, baseType: !1445, size: 64, offset: 1216)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1412, line: 37, flags: DIFlagFwdDecl)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1411, file: !1412, line: 92, baseType: !1448, size: 64, offset: 1280)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1412, line: 38, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1411, file: !1412, line: 93, baseType: !1430, size: 64, offset: 1344)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1411, file: !1412, line: 94, baseType: !74, size: 64, offset: 1408)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1411, file: !1412, line: 95, baseType: !634, size: 64, offset: 1472)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1411, file: !1412, line: 96, baseType: !270, size: 32, offset: 1536)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1411, file: !1412, line: 98, baseType: !1455, size: 160, offset: 1568)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 160, elements: !1456)
!1456 = !{!1457}
!1457 = !DISubrange(count: 20)
!1458 = !DISubprogram(name: "puts", scope: !1392, file: !1392, line: 661, type: !1459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!270, !148}
!1461 = !DISubprogram(name: "uint64_to_str", scope: !22, file: !22, line: 61, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!148, !78, !83}
!1464 = !DISubprogram(name: "uint64_to_nicestr", scope: !22, file: !22, line: 95, type: !1465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!148, !78, !21, !21, !248, !83}
!1467 = distinct !DISubprogram(name: "print_adv_helper", scope: !3, file: !3, line: 671, type: !1468, scopeLine: 674, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !78, !78, !78, !78, !83, !78}
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477}
!1471 = !DILocalVariable(name: "stream_count", arg: 1, scope: !1467, file: !3, line: 671, type: !78)
!1472 = !DILocalVariable(name: "block_count", arg: 2, scope: !1467, file: !3, line: 671, type: !78)
!1473 = !DILocalVariable(name: "compressed_size", arg: 3, scope: !1467, file: !3, line: 672, type: !78)
!1474 = !DILocalVariable(name: "uncompressed_size", arg: 4, scope: !1467, file: !3, line: 672, type: !78)
!1475 = !DILocalVariable(name: "checks", arg: 5, scope: !1467, file: !3, line: 673, type: !83)
!1476 = !DILocalVariable(name: "stream_padding", arg: 6, scope: !1467, file: !3, line: 673, type: !78)
!1477 = !DILocalVariable(name: "checks_str", scope: !1467, file: !3, line: 675, type: !283)
!1478 = distinct !DIAssignID()
!1479 = !DILocation(line: 0, scope: !1467)
!1480 = !DILocation(line: 675, column: 2, scope: !1467)
!1481 = !DILocation(line: 676, column: 2, scope: !1467)
!1482 = !DILocation(line: 679, column: 4, scope: !1467)
!1483 = !DILocation(line: 678, column: 2, scope: !1467)
!1484 = !DILocation(line: 681, column: 4, scope: !1467)
!1485 = !DILocation(line: 680, column: 2, scope: !1467)
!1486 = !DILocation(line: 683, column: 4, scope: !1467)
!1487 = !DILocation(line: 682, column: 2, scope: !1467)
!1488 = !DILocation(line: 686, column: 4, scope: !1467)
!1489 = !DILocation(line: 685, column: 2, scope: !1467)
!1490 = !DILocation(line: 0, scope: !145, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 689, column: 4, scope: !1467)
!1492 = !DILocation(line: 578, column: 24, scope: !394, inlinedAt: !1491)
!1493 = !DILocation(line: 578, column: 6, scope: !145, inlinedAt: !1491)
!1494 = !DILocation(line: 581, column: 23, scope: !145, inlinedAt: !1491)
!1495 = !DILocation(line: 582, column: 6, scope: !145, inlinedAt: !1491)
!1496 = !DILocation(line: 582, column: 4, scope: !145, inlinedAt: !1491)
!1497 = !DILocation(line: 583, column: 12, scope: !400, inlinedAt: !1491)
!1498 = !DILocation(line: 583, column: 6, scope: !145, inlinedAt: !1491)
!1499 = !DILocation(line: 587, column: 2, scope: !145, inlinedAt: !1491)
!1500 = !DILocation(line: 588, column: 2, scope: !145, inlinedAt: !1491)
!1501 = !DILocation(line: 688, column: 2, scope: !1467)
!1502 = !DILocation(line: 690, column: 2, scope: !1467)
!1503 = !DILocation(line: 692, column: 4, scope: !1467)
!1504 = !DILocation(line: 691, column: 2, scope: !1467)
!1505 = !DILocation(line: 695, column: 1, scope: !1467)
!1506 = !DISubprogram(name: "round_up_to_mib", scope: !22, file: !22, line: 48, type: !1507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!78, !78}
!1509 = !DISubprogram(name: "spec_mem_get_length", scope: !1510, file: !1510, line: 54, type: !1511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1510 = !DIFile(filename: "spec_mem_io/spec_mem_io.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "20f82235716911ab040d2b344ceb3e0d")
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!1513, !1516, !7, !270}
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1514, line: 27, baseType: !1515)
!1514 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !81, line: 44, baseType: !278)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "spec_fd_t", file: !1510, line: 40, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1510, line: 34, size: 320, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1524}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1518, file: !1510, line: 35, baseType: !1513, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1518, file: !1510, line: 36, baseType: !1513, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1518, file: !1510, line: 37, baseType: !1513, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1518, file: !1510, line: 38, baseType: !270, size: 32, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1518, file: !1510, line: 39, baseType: !1525, size: 64, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!1526 = !DISubprogram(name: "message_strm", scope: !6, file: !6, line: 86, type: !1527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!148, !667}
!1529 = !DISubprogram(name: "io_pread", scope: !263, file: !263, line: 120, type: !1530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!248, !261, !1532, !634, !275}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!1533 = !DISubprogram(name: "lzma_stream_footer_decode", scope: !568, file: !568, line: 201, type: !1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!667, !1536, !673}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!1537 = !DISubprogram(name: "hardware_memlimit_get", scope: !1538, file: !1538, line: 35, type: !1539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1538 = !DIFile(filename: "xz/hardware.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "7ed07700a75387ea633d6b4d26a671b7")
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!78, !54}
!1541 = !DISubprogram(name: "lzma_index_memused", scope: !67, file: !67, line: 296, type: !1542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!78, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!1546 = !DISubprogram(name: "message_bug", scope: !6, file: !6, line: 77, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1547 = !DISubprogram(name: "lzma_index_decoder", scope: !67, file: !67, line: 624, type: !1548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!667, !1550, !1551, !78}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!1552 = !DISubprogram(name: "lzma_code", scope: !37, file: !37, line: 529, type: !1553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!667, !1550, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !37, line: 322, baseType: !60)
!1556 = !DISubprogram(name: "lzma_memusage", scope: !37, file: !37, line: 571, type: !1557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!78, !1559}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!1561 = !DISubprogram(name: "message_mem_needed", scope: !6, file: !6, line: 90, type: !1562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null, !5, !78}
!1564 = !DISubprogram(name: "lzma_index_total_size", scope: !67, file: !67, line: 445, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!76, !1544}
!1567 = !DISubprogram(name: "lzma_stream_header_decode", scope: !568, file: !568, line: 174, type: !1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1568 = !DISubprogram(name: "lzma_stream_flags_compare", scope: !568, file: !568, line: 221, type: !1569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!667, !565, !565}
!1571 = !DISubprogram(name: "lzma_index_stream_flags", scope: !67, file: !67, line: 365, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!667, !255, !565}
!1574 = !DISubprogram(name: "lzma_index_stream_padding", scope: !67, file: !67, line: 397, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!667, !255, !76}
!1577 = !DISubprogram(name: "lzma_index_cat", scope: !67, file: !67, line: 567, type: !1578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!667, !255, !255, !684}
!1580 = !DISubprogram(name: "lzma_end", scope: !37, file: !37, line: 546, type: !1581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !1550}
!1583 = !DISubprogram(name: "lzma_index_checks", scope: !67, file: !67, line: 380, type: !1584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!83, !1544}
!1586 = !DISubprogram(name: "lzma_index_stream_count", scope: !67, file: !67, line: 405, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1587 = !DISubprogram(name: "lzma_index_block_count", scope: !67, file: !67, line: 415, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1588 = !DISubprogram(name: "lzma_index_file_size", scope: !67, file: !67, line: 457, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1589 = !DISubprogram(name: "lzma_index_uncompressed_size", scope: !67, file: !67, line: 464, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1590 = !DISubprogram(name: "lzma_index_iter_init", scope: !67, file: !67, line: 487, type: !1591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !1593, !1544}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!1594 = !DISubprogram(name: "lzma_index_iter_next", scope: !67, file: !67, line: 514, type: !1595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!581, !1593, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_index_iter_mode", file: !67, line: 268, baseType: !66)
!1598 = !DISubprogram(name: "lzma_index_iter_rewind", scope: !67, file: !67, line: 497, type: !1599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !1593}
!1601 = distinct !DISubprogram(name: "parse_details", scope: !3, file: !3, line: 559, type: !1602, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1607)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!248, !261, !1604, !1606, !519}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!1607 = !{!1608, !1609, !1610, !1611}
!1608 = !DILocalVariable(name: "pair", arg: 1, scope: !1601, file: !3, line: 559, type: !261)
!1609 = !DILocalVariable(name: "iter", arg: 2, scope: !1601, file: !3, line: 559, type: !1604)
!1610 = !DILocalVariable(name: "bhi", arg: 3, scope: !1601, file: !3, line: 560, type: !1606)
!1611 = !DILocalVariable(name: "xfi", arg: 4, scope: !1601, file: !3, line: 560, type: !519)
!1612 = distinct !DIAssignID()
!1613 = distinct !DIAssignID()
!1614 = !DILocalVariable(name: "buf", scope: !1615, file: !3, line: 400, type: !727)
!1615 = distinct !DISubprogram(name: "parse_block_header", scope: !3, file: !3, line: 388, type: !1602, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1616)
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1614, !1623, !1631, !1670, !1673, !1675}
!1617 = !DILocalVariable(name: "pair", arg: 1, scope: !1615, file: !3, line: 388, type: !261)
!1618 = !DILocalVariable(name: "iter", arg: 2, scope: !1615, file: !3, line: 388, type: !1604)
!1619 = !DILocalVariable(name: "bhi", arg: 3, scope: !1615, file: !3, line: 389, type: !1606)
!1620 = !DILocalVariable(name: "xfi", arg: 4, scope: !1615, file: !3, line: 389, type: !519)
!1621 = !DILocalVariable(name: "size", scope: !1615, file: !3, line: 397, type: !1622)
!1622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!1623 = !DILocalVariable(name: "filters", scope: !1615, file: !3, line: 409, type: !1624)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1625, size: 640, elements: !127)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !1626, line: 65, baseType: !1627)
!1626 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1626, line: 43, size: 128, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1627, file: !1626, line: 54, baseType: !76, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1627, file: !1626, line: 63, baseType: !74, size: 64, offset: 64)
!1631 = !DILocalVariable(name: "block", scope: !1615, file: !3, line: 410, type: !1632)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !1633, line: 245, baseType: !1634)
!1633 = !DIFile(filename: "liblzma/api/lzma/block.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1633, line: 30, size: 1664, elements: !1635)
!1635 = !{!1636, !1637, !1638, !1639, !1640, !1641, !1643, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1634, file: !1633, line: 47, baseType: !83, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !1634, file: !1633, line: 67, baseType: !83, size: 32, offset: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1634, file: !1633, line: 88, baseType: !574, size: 32, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !1634, file: !1633, line: 143, baseType: !76, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !1634, file: !1633, line: 167, baseType: !76, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !1634, file: !1633, line: 195, baseType: !1642, size: 64, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !1634, file: !1633, line: 212, baseType: !1644, size: 512, offset: 320)
!1644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 512, elements: !1645)
!1645 = !{!1646}
!1646 = !DISubrange(count: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !1634, file: !1633, line: 221, baseType: !74, size: 64, offset: 832)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !1634, file: !1633, line: 222, baseType: !74, size: 64, offset: 896)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !1634, file: !1633, line: 223, baseType: !74, size: 64, offset: 960)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !1634, file: !1633, line: 224, baseType: !83, size: 32, offset: 1024)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !1634, file: !1633, line: 225, baseType: !83, size: 32, offset: 1056)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !1634, file: !1633, line: 226, baseType: !76, size: 64, offset: 1088)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !1634, file: !1633, line: 227, baseType: !76, size: 64, offset: 1152)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !1634, file: !1633, line: 228, baseType: !76, size: 64, offset: 1216)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !1634, file: !1633, line: 229, baseType: !76, size: 64, offset: 1280)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !1634, file: !1633, line: 230, baseType: !76, size: 64, offset: 1344)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !1634, file: !1633, line: 231, baseType: !76, size: 64, offset: 1408)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !1634, file: !1633, line: 232, baseType: !576, size: 32, offset: 1472)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !1634, file: !1633, line: 233, baseType: !576, size: 32, offset: 1504)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !1634, file: !1633, line: 234, baseType: !576, size: 32, offset: 1536)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !1634, file: !1633, line: 235, baseType: !576, size: 32, offset: 1568)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !1634, file: !1633, line: 236, baseType: !581, size: 8, offset: 1600)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !1634, file: !1633, line: 237, baseType: !581, size: 8, offset: 1608)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !1634, file: !1633, line: 238, baseType: !581, size: 8, offset: 1616)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !1634, file: !1633, line: 239, baseType: !581, size: 8, offset: 1624)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !1634, file: !1633, line: 240, baseType: !581, size: 8, offset: 1632)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !1634, file: !1633, line: 241, baseType: !581, size: 8, offset: 1640)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !1634, file: !1633, line: 242, baseType: !581, size: 8, offset: 1648)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !1634, file: !1633, line: 243, baseType: !581, size: 8, offset: 1656)
!1670 = !DILocalVariable(name: "i", scope: !1671, file: !3, line: 471, type: !634)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 471, column: 3)
!1672 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 453, column: 32)
!1673 = !DILocalVariable(name: "i", scope: !1674, file: !3, line: 494, type: !634)
!1674 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 494, column: 2)
!1675 = !DILabel(scope: !1615, name: "data_error", file: !3, line: 499)
!1676 = !DILocation(line: 0, scope: !1615, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 562, column: 6, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 562, column: 6)
!1679 = distinct !DIAssignID()
!1680 = distinct !DIAssignID()
!1681 = !DILocation(line: 0, scope: !1601)
!1682 = !DILocation(line: 397, column: 24, scope: !1615, inlinedAt: !1677)
!1683 = !DILocation(line: 400, column: 2, scope: !1615, inlinedAt: !1677)
!1684 = !DILocation(line: 401, column: 27, scope: !1685, inlinedAt: !1677)
!1685 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 401, column: 6)
!1686 = !DILocation(line: 401, column: 45, scope: !1685, inlinedAt: !1677)
!1687 = !DILocation(line: 401, column: 6, scope: !1685, inlinedAt: !1677)
!1688 = !DILocation(line: 401, column: 6, scope: !1615, inlinedAt: !1677)
!1689 = !DILocation(line: 405, column: 6, scope: !1690, inlinedAt: !1677)
!1690 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 405, column: 6)
!1691 = !DILocation(line: 405, column: 16, scope: !1690, inlinedAt: !1677)
!1692 = !DILocation(line: 405, column: 6, scope: !1615, inlinedAt: !1677)
!1693 = !DILocation(line: 411, column: 16, scope: !1615, inlinedAt: !1677)
!1694 = distinct !DIAssignID()
!1695 = !DILocation(line: 412, column: 29, scope: !1615, inlinedAt: !1677)
!1696 = !DILocation(line: 412, column: 36, scope: !1615, inlinedAt: !1677)
!1697 = !DILocation(line: 412, column: 8, scope: !1615, inlinedAt: !1677)
!1698 = !DILocation(line: 412, column: 14, scope: !1615, inlinedAt: !1677)
!1699 = distinct !DIAssignID()
!1700 = !DILocation(line: 413, column: 8, scope: !1615, inlinedAt: !1677)
!1701 = !DILocation(line: 413, column: 16, scope: !1615, inlinedAt: !1677)
!1702 = distinct !DIAssignID()
!1703 = !DILocation(line: 415, column: 22, scope: !1615, inlinedAt: !1677)
!1704 = !DILocation(line: 415, column: 8, scope: !1615, inlinedAt: !1677)
!1705 = !DILocation(line: 415, column: 20, scope: !1615, inlinedAt: !1677)
!1706 = distinct !DIAssignID()
!1707 = !DILocation(line: 416, column: 24, scope: !1708, inlinedAt: !1677)
!1708 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 416, column: 6)
!1709 = !DILocation(line: 416, column: 6, scope: !1615, inlinedAt: !1677)
!1710 = !DILocation(line: 420, column: 10, scope: !1615, inlinedAt: !1677)
!1711 = !DILocation(line: 420, column: 2, scope: !1615, inlinedAt: !1677)
!1712 = !DILocation(line: 433, column: 3, scope: !1713, inlinedAt: !1677)
!1713 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 420, column: 58)
!1714 = !DILocation(line: 434, column: 2, scope: !1713, inlinedAt: !1677)
!1715 = !DILocation(line: 439, column: 24, scope: !1615, inlinedAt: !1677)
!1716 = !DILocation(line: 439, column: 40, scope: !1615, inlinedAt: !1677)
!1717 = !DILocation(line: 439, column: 18, scope: !1615, inlinedAt: !1677)
!1718 = !DILocation(line: 439, column: 7, scope: !1615, inlinedAt: !1677)
!1719 = !DILocation(line: 439, column: 16, scope: !1615, inlinedAt: !1677)
!1720 = !DILocation(line: 441, column: 24, scope: !1615, inlinedAt: !1677)
!1721 = !DILocation(line: 441, column: 42, scope: !1615, inlinedAt: !1677)
!1722 = !DILocation(line: 441, column: 18, scope: !1615, inlinedAt: !1677)
!1723 = !DILocation(line: 441, column: 2, scope: !1615, inlinedAt: !1677)
!1724 = !DILocation(line: 441, column: 16, scope: !1615, inlinedAt: !1677)
!1725 = !DILocation(line: 443, column: 2, scope: !1615, inlinedAt: !1677)
!1726 = !DILocation(line: 443, column: 16, scope: !1615, inlinedAt: !1677)
!1727 = !DILocation(line: 448, column: 47, scope: !1615, inlinedAt: !1677)
!1728 = !DILocation(line: 449, column: 4, scope: !1615, inlinedAt: !1677)
!1729 = !DILocation(line: 448, column: 7, scope: !1615, inlinedAt: !1677)
!1730 = !DILocation(line: 448, column: 22, scope: !1615, inlinedAt: !1677)
!1731 = !DILocation(line: 453, column: 16, scope: !1615, inlinedAt: !1677)
!1732 = !DILocation(line: 452, column: 10, scope: !1615, inlinedAt: !1677)
!1733 = !DILocation(line: 452, column: 2, scope: !1615, inlinedAt: !1677)
!1734 = !DILocation(line: 461, column: 13, scope: !1735, inlinedAt: !1677)
!1735 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 461, column: 7)
!1736 = !DILocation(line: 461, column: 31, scope: !1735, inlinedAt: !1677)
!1737 = !DILocation(line: 462, column: 5, scope: !1735, inlinedAt: !1677)
!1738 = !DILocation(line: 463, column: 21, scope: !1735, inlinedAt: !1677)
!1739 = !DILocation(line: 463, column: 6, scope: !1735, inlinedAt: !1677)
!1740 = !DILocation(line: 461, column: 7, scope: !1672, inlinedAt: !1677)
!1741 = !DILocation(line: 0, scope: !1671, inlinedAt: !1677)
!1742 = !DILocation(line: 471, column: 33, scope: !1743, inlinedAt: !1677)
!1743 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 471, column: 3)
!1744 = !DILocation(line: 471, column: 36, scope: !1743, inlinedAt: !1677)
!1745 = !DILocation(line: 471, column: 3, scope: !1671, inlinedAt: !1677)
!1746 = !DILocation(line: 472, column: 20, scope: !1743, inlinedAt: !1677)
!1747 = !DILocation(line: 472, column: 4, scope: !1743, inlinedAt: !1677)
!1748 = !DILocation(line: 471, column: 57, scope: !1743, inlinedAt: !1677)
!1749 = !DILocation(line: 471, column: 22, scope: !1743, inlinedAt: !1677)
!1750 = distinct !{!1750, !1745, !1751}
!1751 = !DILocation(line: 472, column: 27, scope: !1671, inlinedAt: !1677)
!1752 = !DILocation(line: 477, column: 3, scope: !1672, inlinedAt: !1677)
!1753 = !DILocation(line: 478, column: 2, scope: !1672, inlinedAt: !1677)
!1754 = !DILocation(line: 481, column: 27, scope: !1615, inlinedAt: !1677)
!1755 = !DILocation(line: 481, column: 19, scope: !1615, inlinedAt: !1677)
!1756 = !DILocation(line: 482, column: 31, scope: !1615, inlinedAt: !1677)
!1757 = !DILocation(line: 482, column: 7, scope: !1615, inlinedAt: !1677)
!1758 = !DILocation(line: 482, column: 23, scope: !1615, inlinedAt: !1677)
!1759 = !DILocation(line: 486, column: 18, scope: !1615, inlinedAt: !1677)
!1760 = !DILocation(line: 486, column: 7, scope: !1615, inlinedAt: !1677)
!1761 = !DILocation(line: 486, column: 16, scope: !1615, inlinedAt: !1677)
!1762 = !DILocation(line: 487, column: 11, scope: !1763, inlinedAt: !1677)
!1763 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 487, column: 6)
!1764 = !DILocation(line: 487, column: 24, scope: !1763, inlinedAt: !1677)
!1765 = !DILocation(line: 487, column: 6, scope: !1615, inlinedAt: !1677)
!1766 = !DILocation(line: 488, column: 21, scope: !1763, inlinedAt: !1677)
!1767 = !DILocation(line: 488, column: 3, scope: !1763, inlinedAt: !1677)
!1768 = !DILocation(line: 491, column: 30, scope: !1615, inlinedAt: !1677)
!1769 = !DILocation(line: 491, column: 2, scope: !1615, inlinedAt: !1677)
!1770 = !DILocation(line: 0, scope: !1674, inlinedAt: !1677)
!1771 = !DILocation(line: 494, column: 32, scope: !1772, inlinedAt: !1677)
!1772 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 494, column: 2)
!1773 = !DILocation(line: 494, column: 35, scope: !1772, inlinedAt: !1677)
!1774 = !DILocation(line: 494, column: 2, scope: !1674, inlinedAt: !1677)
!1775 = !DILocation(line: 495, column: 19, scope: !1772, inlinedAt: !1677)
!1776 = !DILocation(line: 495, column: 3, scope: !1772, inlinedAt: !1677)
!1777 = !DILocation(line: 494, column: 56, scope: !1772, inlinedAt: !1677)
!1778 = !DILocation(line: 494, column: 21, scope: !1772, inlinedAt: !1677)
!1779 = distinct !{!1779, !1774, !1780}
!1780 = !DILocation(line: 495, column: 26, scope: !1674, inlinedAt: !1677)
!1781 = !DILocation(line: 499, column: 1, scope: !1615, inlinedAt: !1677)
!1782 = !DILocation(line: 503, column: 2, scope: !1615, inlinedAt: !1677)
!1783 = !DILocation(line: 504, column: 1, scope: !1615, inlinedAt: !1677)
!1784 = !DILocation(line: 562, column: 6, scope: !1601)
!1785 = !DILocalVariable(name: "buf", scope: !1786, file: !3, line: 523, type: !727)
!1786 = distinct !DISubprogram(name: "parse_check_value", scope: !3, file: !3, line: 511, type: !1787, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!248, !261, !1604}
!1789 = !{!1790, !1791, !1792, !1793, !1785, !1795}
!1790 = !DILocalVariable(name: "pair", arg: 1, scope: !1786, file: !3, line: 511, type: !261)
!1791 = !DILocalVariable(name: "iter", arg: 2, scope: !1786, file: !3, line: 511, type: !1604)
!1792 = !DILocalVariable(name: "size", scope: !1786, file: !3, line: 520, type: !1622)
!1793 = !DILocalVariable(name: "offset", scope: !1786, file: !3, line: 521, type: !1794)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!1795 = !DILocalVariable(name: "i", scope: !1796, file: !3, line: 537, type: !634)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 537, column: 3)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 533, column: 11)
!1798 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 530, column: 6)
!1799 = !DILocation(line: 0, scope: !1786, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 565, column: 6, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 565, column: 6)
!1802 = !DILocation(line: 514, column: 19, scope: !1803, inlinedAt: !1800)
!1803 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 514, column: 6)
!1804 = !DILocation(line: 514, column: 26, scope: !1803, inlinedAt: !1800)
!1805 = !DILocation(line: 514, column: 32, scope: !1803, inlinedAt: !1800)
!1806 = !DILocation(line: 514, column: 6, scope: !1786, inlinedAt: !1800)
!1807 = !DILocation(line: 515, column: 3, scope: !1808, inlinedAt: !1800)
!1808 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 514, column: 52)
!1809 = !DILocation(line: 516, column: 3, scope: !1808, inlinedAt: !1800)
!1810 = !DILocation(line: 520, column: 24, scope: !1786, inlinedAt: !1800)
!1811 = !DILocation(line: 521, column: 35, scope: !1786, inlinedAt: !1800)
!1812 = !DILocation(line: 522, column: 18, scope: !1786, inlinedAt: !1800)
!1813 = !DILocation(line: 522, column: 31, scope: !1786, inlinedAt: !1800)
!1814 = !DILocation(line: 522, column: 4, scope: !1786, inlinedAt: !1800)
!1815 = !DILocation(line: 522, column: 29, scope: !1786, inlinedAt: !1800)
!1816 = !DILocation(line: 523, column: 2, scope: !1786, inlinedAt: !1800)
!1817 = !DILocation(line: 524, column: 6, scope: !1818, inlinedAt: !1800)
!1818 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 524, column: 6)
!1819 = !DILocation(line: 524, column: 6, scope: !1786, inlinedAt: !1800)
!1820 = !DILocation(line: 530, column: 6, scope: !1786, inlinedAt: !1800)
!1821 = !DILocation(line: 532, column: 19, scope: !1798, inlinedAt: !1800)
!1822 = !DILocation(line: 531, column: 3, scope: !1798, inlinedAt: !1800)
!1823 = !DILocation(line: 535, column: 20, scope: !1797, inlinedAt: !1800)
!1824 = !DILocation(line: 534, column: 3, scope: !1797, inlinedAt: !1800)
!1825 = !DILocation(line: 0, scope: !1796, inlinedAt: !1800)
!1826 = !DILocation(line: 538, column: 29, scope: !1827, inlinedAt: !1800)
!1827 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 537, column: 3)
!1828 = !DILocation(line: 538, column: 25, scope: !1827, inlinedAt: !1800)
!1829 = !DILocation(line: 538, column: 45, scope: !1827, inlinedAt: !1800)
!1830 = !DILocation(line: 538, column: 4, scope: !1827, inlinedAt: !1800)
!1831 = !DILocation(line: 537, column: 32, scope: !1827, inlinedAt: !1800)
!1832 = !DILocation(line: 537, column: 24, scope: !1827, inlinedAt: !1800)
!1833 = !DILocation(line: 537, column: 3, scope: !1796, inlinedAt: !1800)
!1834 = distinct !{!1834, !1833, !1835}
!1835 = !DILocation(line: 538, column: 54, scope: !1796, inlinedAt: !1800)
!1836 = !DILocation(line: 541, column: 1, scope: !1786, inlinedAt: !1800)
!1837 = !DILocation(line: 569, column: 1, scope: !1601)
!1838 = !DISubprogram(name: "lzma_check_size", scope: !30, file: !30, line: 95, type: !1839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!83, !574}
!1841 = !DISubprogram(name: "lzma_block_header_decode", scope: !1633, file: !1633, line: 343, type: !1842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!667, !1844, !684, !673}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1845 = !DISubprogram(name: "lzma_block_compressed_size", scope: !1633, file: !1633, line: 375, type: !1846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!667, !1844, !76}
!1848 = !DISubprogram(name: "free", scope: !1849, file: !1849, line: 555, type: !1850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1849 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !74}
!1852 = !DISubprogram(name: "lzma_raw_decoder_memusage", scope: !1626, file: !1626, line: 157, type: !1853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!78, !1855}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1857 = !DISubprogram(name: "message_filters_to_str", scope: !6, file: !6, line: 105, type: !1858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !268, !1855, !248}
!1860 = !DISubprogram(name: "tuklib_mbstr_fw", scope: !1861, file: !1861, line: 46, type: !1862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1861 = !DIFile(filename: "common/tuklib_mbstr.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5bc9cb58bcf05bb0a68592285fa2e6df")
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!270, !148, !270}
