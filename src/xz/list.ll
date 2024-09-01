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
@totals.0 = internal unnamed_addr global i64 0, align 8
@totals.1 = internal unnamed_addr global i64 0, align 8
@totals.2 = internal unnamed_addr global i64 0, align 8
@totals.3 = internal unnamed_addr global i64 0, align 8
@totals.4 = internal unnamed_addr global i64 0, align 8
@totals.5 = internal unnamed_addr global i64 0, align 8
@totals.6 = internal unnamed_addr global i64 0, align 8
@totals.7 = internal unnamed_addr global i32 0, align 8
@totals.8 = internal unnamed_addr global i8 1, align 4
@opt_format = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [62 x i8] c"--list works only on .xz files (--format=xz or --format=auto)\00", align 1
@stdin_filename = external constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"--list does not support reading from standard input\00", align 1
@opt_stdout = external local_unnamed_addr global i8, align 1
@opt_force = external local_unnamed_addr global i8, align 1
@__const.list_file.xfi = private unnamed_addr constant %struct.xz_file_info { ptr null, i64 0, i64 0, i8 1 }, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"totals\09%lu\09%lu\09%lu\09%lu\09%s\09%s\09%lu\09%lu\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\09%lu\09%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@check_names = internal constant [16 x [12 x i8]] [[12 x i8] c"None\00\00\00\00\00\00\00\00", [12 x i8] c"CRC32\00\00\00\00\00\00\00", [12 x i8] c"Unknown-2\00\00\00", [12 x i8] c"Unknown-3\00\00\00", [12 x i8] c"CRC64\00\00\00\00\00\00\00", [12 x i8] c"Unknown-5\00\00\00", [12 x i8] c"Unknown-6\00\00\00", [12 x i8] c"Unknown-7\00\00\00", [12 x i8] c"Unknown-8\00\00\00", [12 x i8] c"Unknown-9\00\00\00", [12 x i8] c"SHA-256\00\00\00\00\00", [12 x i8] c"Unknown-11\00\00", [12 x i8] c"Unknown-12\00\00", [12 x i8] c"Unknown-13\00\00", [12 x i8] c"Unknown-14\00\00", [12 x i8] c"Unknown-15\00\00"], align 16
@.str.10 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@get_ratio.buf = internal global [16 x i8] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"%5s %7s  %11s  %11s  %5s  %-7s \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"%s file\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%s files\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Totals:\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"  Number of files:    %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"  Memory needed:      %s MiB\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"  Sizes in headers:   %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"  Streams:            %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"  Blocks:             %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"  Compressed size:    %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"  Uncompressed size:  %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"  Ratio:              %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"  Check:              %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"  Stream padding:     %s\0A\00", align 1
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"name\09%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"file\09%lu\09%lu\09%lu\09%lu\09%s\09%s\09%lu\0A\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"stream\09%lu\09%lu\09%lu\09%lu\09%lu\09%lu\09%s\09%s\09%lu\0A\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"block\09%lu\09%lu\09%lu\09%lu\09%lu\09%lu\09%lu\09%s\09%s\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"\09%s\09%u\09%s\09%lu\09%lu\09%s\00", align 1
@check_value = internal global [129 x i8] zeroinitializer, align 16
@.str.34 = private unnamed_addr constant [16 x i8] c"summary\09%lu\09%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"%016lx\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@print_info_basic.headings_displayed = internal unnamed_addr global i1 false, align 1
@.str.38 = private unnamed_addr constant [65 x i8] c"Strms  Blocks   Compressed Uncompressed  Ratio  Check   Filename\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"%*s %*s  %*s  %*s  %*s  %-*s %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [123 x i8] c"  Streams:\0A    Stream    Blocks      CompOffset    UncompOffset        CompSize      UncompSize  Ratio  Check      Padding\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"    %*s %*s %*s %*s \00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"%*s %*s  %*s  %-*s %*s\0A\00", align 1
@.str.43 = private unnamed_addr constant [109 x i8] c"  Blocks:\0A    Stream     Block      CompOffset    UncompOffset       TotalSize      UncompSize  Ratio  Check\00", align 1
@.str.44 = private unnamed_addr constant [70 x i8] c"      CheckVal %*s Header  Flags        CompSize    MemUsage  Filters\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"%*s %*s  %*s  %-*s\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"%-*s  %*s  %-5s %*s %*s MiB  %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @list_totals() local_unnamed_addr #0 {
entry:
  %line.i = alloca [80 x i8], align 16
  %checks.i7 = alloca [1024 x i8], align 16
  %checks.i = alloca [1024 x i8], align 16
  %0 = load i8, ptr @opt_robot, align 1, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %0 to i1
  br i1 %loadedv, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %checks.i) #8
  %1 = load i32, ptr @totals.7, align 8
  call fastcc void @get_check_names(ptr noundef nonnull %checks.i, i32 noundef %1, i1 noundef zeroext false)
  %2 = load i64, ptr @totals.1, align 8
  %3 = load i64, ptr @totals.2, align 8
  %4 = load i64, ptr @totals.3, align 8
  %5 = load i64, ptr @totals.4, align 8
  %cmp.i.i = icmp eq i64 %5, 0
  br i1 %cmp.i.i, label %get_ratio.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then
  %conv.i.i = uitofp i64 %4 to double
  %conv1.i.i = uitofp i64 %5 to double
  %div.i.i = fdiv double %conv.i.i, %conv1.i.i
  %cmp2.i.i = fcmp ogt double %div.i.i, 9.999000e+00
  br i1 %cmp2.i.i, label %get_ratio.exit.i, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call.i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i.i) #8
  br label %get_ratio.exit.i

get_ratio.exit.i:                                 ; preds = %if.end5.i.i, %if.end.i.i, %if.then
  %retval.1.i.i = phi ptr [ @.str.10, %if.then ], [ @get_ratio.buf, %if.end5.i.i ], [ @.str.10, %if.end.i.i ]
  %6 = load i64, ptr @totals.5, align 8
  %7 = load i64, ptr @totals.0, align 8
  %call2.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull %retval.1.i.i, ptr noundef nonnull %checks.i, i64 noundef %6, i64 noundef %7)
  %call3.i = call i32 @message_verbosity_get() #8
  %cmp.i = icmp ugt i32 %call3.i, 3
  br i1 %cmp.i, label %if.then.i, label %print_totals_robot.exit

if.then.i:                                        ; preds = %get_ratio.exit.i
  %8 = load i64, ptr @totals.6, align 8
  %9 = load i8, ptr @totals.8, align 4, !range !5, !noundef !6
  %loadedv.i = trunc nuw i8 %9 to i1
  %cond.i = select i1 %loadedv.i, ptr @.str.4, ptr @.str.5
  %call4.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %8, ptr noundef nonnull %cond.i)
  br label %print_totals_robot.exit

print_totals_robot.exit:                          ; preds = %get_ratio.exit.i, %if.then.i
  %10 = load ptr, ptr @stdout, align 8
  %call.i6.i = call i32 @putc(i32 noundef 10, ptr noundef %10)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %checks.i) #8
  br label %if.end6

if.else:                                          ; preds = %entry
  %11 = load i64, ptr @totals.0, align 8
  %cmp = icmp ugt i64 %11, 1
  br i1 %cmp, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.else
  %call = tail call i32 @message_verbosity_get() #8
  %cmp2 = icmp ult i32 %call, 3
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.then1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %line.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %line.i, i8 45, i64 80, i1 false)
  %arrayidx.i = getelementptr inbounds i8, ptr %line.i, i64 79
  store i8 0, ptr %arrayidx.i, align 1
  %call.i = call i32 @puts(ptr noundef nonnull dereferenceable(1) %line.i)
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %checks.i7) #8
  %12 = load i32, ptr @totals.7, align 8
  call fastcc void @get_check_names(ptr noundef nonnull %checks.i7, i32 noundef %12, i1 noundef zeroext false)
  %13 = load i64, ptr @totals.1, align 8
  %call3.i8 = call ptr @uint64_to_str(i64 noundef %13, i32 noundef 0) #8
  %14 = load i64, ptr @totals.2, align 8
  %call4.i9 = call ptr @uint64_to_str(i64 noundef %14, i32 noundef 1) #8
  %15 = load i64, ptr @totals.3, align 8
  %call5.i = call ptr @uint64_to_nicestr(i64 noundef %15, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 2) #8
  %16 = load i64, ptr @totals.4, align 8
  %call6.i = call ptr @uint64_to_nicestr(i64 noundef %16, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 3) #8
  %17 = load i64, ptr @totals.4, align 8
  %cmp.i.i10 = icmp eq i64 %17, 0
  br i1 %cmp.i.i10, label %print_totals_basic.exit, label %if.end.i.i11

if.end.i.i11:                                     ; preds = %if.then3
  %18 = load i64, ptr @totals.3, align 8
  %conv.i.i12 = uitofp i64 %18 to double
  %conv1.i.i13 = uitofp i64 %17 to double
  %div.i.i14 = fdiv double %conv.i.i12, %conv1.i.i13
  %cmp2.i.i15 = fcmp ogt double %div.i.i14, 9.999000e+00
  br i1 %cmp2.i.i15, label %print_totals_basic.exit, label %if.end5.i.i16

if.end5.i.i16:                                    ; preds = %if.end.i.i11
  %call.i.i17 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i.i14) #8
  br label %print_totals_basic.exit

print_totals_basic.exit:                          ; preds = %if.then3, %if.end.i.i11, %if.end5.i.i16
  %retval.1.i.i19 = phi ptr [ @.str.10, %if.then3 ], [ @get_ratio.buf, %if.end5.i.i16 ], [ @.str.10, %if.end.i.i11 ]
  %call9.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %call3.i8, ptr noundef %call4.i9, ptr noundef %call5.i, ptr noundef %call6.i, ptr noundef nonnull %retval.1.i.i19, ptr noundef nonnull %checks.i7)
  %19 = load i64, ptr @totals.0, align 8
  %cmp10.i = icmp eq i64 %19, 1
  %cond11.i = select i1 %cmp10.i, ptr @.str.13, ptr @.str.14
  %call12.i = call ptr @uint64_to_str(i64 noundef %19, i32 noundef 0) #8
  %call13.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %cond11.i, ptr noundef %call12.i)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %checks.i7) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %line.i) #8
  br label %if.end6

if.else4:                                         ; preds = %if.then1
  %20 = load ptr, ptr @stdout, align 8
  %call.i.i20 = tail call i32 @putc(i32 noundef 10, ptr noundef %20)
  %call1.i = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.15)
  %21 = load i64, ptr @totals.0, align 8
  %call2.i21 = tail call ptr @uint64_to_str(i64 noundef %21, i32 noundef 0) #8
  %call3.i22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %call2.i21)
  %22 = load i64, ptr @totals.1, align 8
  %23 = load i64, ptr @totals.2, align 8
  %24 = load i64, ptr @totals.3, align 8
  %25 = load i64, ptr @totals.4, align 8
  %26 = load i32, ptr @totals.7, align 8
  %27 = load i64, ptr @totals.5, align 8
  tail call fastcc void @print_adv_helper(i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i32 noundef %26, i64 noundef %27)
  %call4.i23 = tail call i32 @message_verbosity_get() #8
  %cmp.i24 = icmp ugt i32 %call4.i23, 3
  br i1 %cmp.i24, label %if.then.i25, label %if.end6

if.then.i25:                                      ; preds = %if.else4
  %28 = load i64, ptr @totals.6, align 8
  %call5.i26 = tail call i64 @round_up_to_mib(i64 noundef %28) #8
  %call6.i27 = tail call ptr @uint64_to_str(i64 noundef %call5.i26, i32 noundef 0) #8
  %call7.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %call6.i27)
  %29 = load i8, ptr @totals.8, align 4, !range !5, !noundef !6
  %loadedv.i28 = trunc nuw i8 %29 to i1
  %cond.i29 = select i1 %loadedv.i28, ptr @.str.19, ptr @.str.20
  %call8.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %cond.i29)
  br label %if.end6

if.end6:                                          ; preds = %if.then.i25, %if.else4, %if.else, %print_totals_basic.exit, %print_totals_robot.exit
  ret void
}

declare i32 @message_verbosity_get() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @list_file(ptr noundef %filename) local_unnamed_addr #0 {
entry:
  %iter.i67 = alloca %struct.lzma_index_iter, align 8
  %bhi.i68 = alloca %struct.block_header_info, align 8
  %checks.i45 = alloca [1024 x i8], align 16
  %checks.i = alloca [1024 x i8], align 16
  %iter.i = alloca %struct.lzma_index_iter, align 8
  %bhi.i = alloca %struct.block_header_info, align 8
  %buf.i = alloca %union.io_buf, align 8
  %header_flags.i = alloca %struct.lzma_stream_flags, align 8
  %footer_flags.i = alloca %struct.lzma_stream_flags, align 8
  %strm.i = alloca %struct.lzma_stream, align 8
  %this_index.i = alloca ptr, align 8
  %xfi = alloca %struct.xz_file_info, align 8
  %0 = load i32, ptr @opt_format, align 4
  %or.cond = icmp ugt i32 %0, 1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @message_filename(ptr noundef %filename) #8
  %cmp2 = icmp eq ptr %filename, @stdin_filename
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.1) #8
  br label %return

if.end4:                                          ; preds = %if.end
  store i8 0, ptr @opt_stdout, align 1
  store i8 1, ptr @opt_force, align 1
  %call = tail call ptr @io_open_src(ptr noundef %filename) #8
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %xfi) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %xfi, ptr noundef nonnull align 8 dereferenceable(32) @__const.list_file.xfi, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %header_flags.i) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %footer_flags.i) #8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %strm.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %strm.i, i8 0, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %this_index.i) #8
  store ptr null, ptr %this_index.i, align 8
  %1 = load ptr, ptr @spec_fd, align 8
  %src_fd.i = getelementptr inbounds i8, ptr %call, i64 16
  %2 = load i32, ptr %src_fd.i, align 8
  %call.i = tail call i64 @spec_mem_get_length(ptr noundef %1, i32 noundef 3, i32 noundef %2) #8
  %arrayidx.i = getelementptr inbounds i8, ptr %buf.i, i64 8
  %backward_size.i = getelementptr inbounds i8, ptr %footer_flags.i, i64 8
  %avail_in.i = getelementptr inbounds i8, ptr %strm.i, i64 8
  %stream_padding136.i = getelementptr inbounds i8, ptr %xfi, i64 8
  %arrayidx17.i = getelementptr inbounds i8, ptr %buf.i, i64 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond144.i, %if.end7
  %add137.i209 = phi i64 [ 0, %if.end7 ], [ %add137.i, %do.cond144.i ]
  %combined_index.0.i = phi ptr [ null, %if.end7 ], [ %31, %do.cond144.i ]
  %pos.0.i = phi i64 [ %call.i, %if.end7 ], [ %sub102.i, %do.cond144.i ]
  %cmp.i = icmp slt i64 %pos.0.i, 24
  br i1 %cmp.i, label %if.then.i, label %if.end6.preheader.i

if.then.i:                                        ; preds = %do.body.i
  %3 = load ptr, ptr %call, align 8
  %call1.i = call ptr @message_strm(i32 noundef 9) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %3, ptr noundef %call1.i) #8
  br label %parse_indexes.exit.thread

if.end6.preheader.i:                              ; preds = %do.body.i
  %sub.i = add nsw i64 %pos.0.i, -12
  br label %if.end6.i

if.then3.i:                                       ; preds = %cleanup.i
  %4 = load ptr, ptr %call, align 8
  %call5.i = call ptr @message_strm(i32 noundef 9) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %4, ptr noundef %call5.i) #8
  br label %parse_indexes.exit.thread

if.end6.i:                                        ; preds = %cleanup.i, %if.end6.preheader.i
  %stream_padding.0315.i = phi i64 [ %add.lcssa.i, %cleanup.i ], [ 0, %if.end6.preheader.i ]
  %pos.1314.i = phi i64 [ %sub14.lcssa.i, %cleanup.i ], [ %sub.i, %if.end6.preheader.i ]
  %call7.i = call zeroext i1 @io_pread(ptr noundef %call, ptr noundef nonnull %buf.i, i64 noundef 12, i64 noundef %pos.1314.i) #8
  br i1 %call7.i, label %parse_indexes.exit.thread, label %if.end9.i

if.end9.i:                                        ; preds = %if.end6.i
  %5 = load i32, ptr %arrayidx.i, align 8
  %cmp10.not.i = icmp eq i32 %5, 0
  br i1 %cmp10.not.i, label %do.body13.preheader.i, label %while.end.i

do.body13.preheader.i:                            ; preds = %if.end9.i
  %6 = add i64 %pos.1314.i, -8
  %7 = add i64 %stream_padding.0315.i, 12
  %8 = add i64 %pos.1314.i, -12
  %add.i = add i64 %stream_padding.0315.i, 4
  %sub14.i = add nsw i64 %pos.1314.i, -4
  %9 = load i32, ptr %arrayidx17.i, align 4
  %cmp18.i = icmp eq i32 %9, 0
  br i1 %cmp18.i, label %do.body13.1.i, label %cleanup.i

do.body13.1.i:                                    ; preds = %do.body13.preheader.i
  %add.1.i = add i64 %stream_padding.0315.i, 8
  %10 = load i32, ptr %buf.i, align 8
  %cmp18.1.i = icmp eq i32 %10, 0
  br i1 %cmp18.1.i, label %do.body13.2.i, label %cleanup.i

do.body13.2.i:                                    ; preds = %do.body13.1.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body13.2.i, %do.body13.1.i, %do.body13.preheader.i
  %pos.2.lcssa.i = phi i64 [ %pos.1314.i, %do.body13.preheader.i ], [ %sub14.i, %do.body13.1.i ], [ %6, %do.body13.2.i ]
  %add.lcssa.i = phi i64 [ %add.i, %do.body13.preheader.i ], [ %add.1.i, %do.body13.1.i ], [ %7, %do.body13.2.i ]
  %sub14.lcssa.i = phi i64 [ %sub14.i, %do.body13.preheader.i ], [ %6, %do.body13.1.i ], [ %8, %do.body13.2.i ]
  %cmp2.i = icmp slt i64 %pos.2.lcssa.i, 16
  br i1 %cmp2.i, label %if.then3.i, label %if.end6.i

while.end.i:                                      ; preds = %if.end9.i
  %call19.i = call i32 @lzma_stream_footer_decode(ptr noundef nonnull %footer_flags.i, ptr noundef nonnull %buf.i) #8
  %cmp20.not.i = icmp eq i32 %call19.i, 0
  br i1 %cmp20.not.i, label %if.end24.i, label %if.then21.i

if.then21.i:                                      ; preds = %while.end.i
  %11 = load ptr, ptr %call, align 8
  %call23.i = call ptr @message_strm(i32 noundef %call19.i) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %11, ptr noundef %call23.i) #8
  br label %parse_indexes.exit.thread

if.end24.i:                                       ; preds = %while.end.i
  %12 = load i32, ptr %footer_flags.i, align 8
  %cmp25.not.i = icmp eq i32 %12, 0
  br i1 %cmp25.not.i, label %if.end29.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end24.i
  %13 = load ptr, ptr %call, align 8
  %call28.i = call ptr @message_strm(i32 noundef 8) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %13, ptr noundef %call28.i) #8
  br label %parse_indexes.exit.thread

if.end29.i:                                       ; preds = %if.end24.i
  %14 = load i64, ptr %backward_size.i, align 8
  %add30.i = add i64 %14, 12
  %cmp31.i = icmp ult i64 %pos.1314.i, %add30.i
  br i1 %cmp31.i, label %if.then32.i, label %if.end35.i

if.then32.i:                                      ; preds = %if.end29.i
  %15 = load ptr, ptr %call, align 8
  %call34.i = call ptr @message_strm(i32 noundef 9) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %15, ptr noundef %call34.i) #8
  br label %parse_indexes.exit.thread

if.end35.i:                                       ; preds = %if.end29.i
  %sub36.i = sub i64 %pos.1314.i, %14
  %call37.i = call i64 @hardware_memlimit_get(i32 noundef 3) #8
  %cmp38.not.i = icmp eq ptr %combined_index.0.i, null
  br i1 %cmp38.not.i, label %if.end45.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end35.i
  %call40.i = call i64 @lzma_index_memused(ptr noundef nonnull %combined_index.0.i) #8
  %cmp41.i = icmp ugt i64 %call40.i, %call37.i
  br i1 %cmp41.i, label %if.then42.i, label %if.end43.i

if.then42.i:                                      ; preds = %if.then39.i
  call void @message_bug() #8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %if.then39.i
  %sub44.i = sub i64 %call37.i, %call40.i
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end43.i, %if.end35.i
  %memlimit.0.i = phi i64 [ %sub44.i, %if.end43.i ], [ %call37.i, %if.end35.i ]
  %memused.0.i = phi i64 [ %call40.i, %if.end43.i ], [ 0, %if.end35.i ]
  %call46.i = call i32 @lzma_index_decoder(ptr noundef nonnull %strm.i, ptr noundef nonnull %this_index.i, i64 noundef %memlimit.0.i) #8
  %cmp47.not.i = icmp eq i32 %call46.i, 0
  br i1 %cmp47.not.i, label %do.body52.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end45.i
  %16 = load ptr, ptr %call, align 8
  %call50.i = call ptr @message_strm(i32 noundef %call46.i) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %16, ptr noundef %call50.i) #8
  br label %parse_indexes.exit.thread

do.body52.i:                                      ; preds = %if.end45.i, %if.end57.i
  %pos.4.i = phi i64 [ %add59.i, %if.end57.i ], [ %sub36.i, %if.end45.i ]
  %index_size.0.i = phi i64 [ %sub61.i, %if.end57.i ], [ %14, %if.end45.i ]
  %cond.i = call i64 @llvm.umin.i64(i64 %index_size.0.i, i64 8192)
  store i64 %cond.i, ptr %avail_in.i, align 8
  %call55.i = call zeroext i1 @io_pread(ptr noundef %call, ptr noundef nonnull %buf.i, i64 noundef %cond.i, i64 noundef %pos.4.i) #8
  br i1 %call55.i, label %parse_indexes.exit.thread, label %if.end57.i

if.end57.i:                                       ; preds = %do.body52.i
  %17 = load i64, ptr %avail_in.i, align 8
  %add59.i = add i64 %17, %pos.4.i
  %sub61.i = sub i64 %index_size.0.i, %17
  store ptr %buf.i, ptr %strm.i, align 8
  %call63.i = call i32 @lzma_code(ptr noundef nonnull %strm.i, i32 noundef 0) #8
  switch i32 %call63.i, label %if.then76.thread.i [
    i32 0, label %do.body52.i
    i32 1, label %if.then68.i
    i32 10, label %if.then76.thread.i.loopexit
  ]

if.then68.i:                                      ; preds = %if.end57.i
  %cmp69.i = icmp ne i64 %sub61.i, 0
  %18 = load i64, ptr %avail_in.i, align 8
  %cmp71.i = icmp ne i64 %18, 0
  %or.cond.i = select i1 %cmp69.i, i1 true, i1 %cmp71.i
  br i1 %or.cond.i, label %if.then76.thread.i, label %if.end91.i

if.then76.thread.i.loopexit:                      ; preds = %if.end57.i
  br label %if.then76.thread.i

if.then76.thread.i:                               ; preds = %if.then68.i, %if.end57.i, %if.then76.thread.i.loopexit
  %19 = phi i32 [ 9, %if.then76.thread.i.loopexit ], [ %call63.i, %if.end57.i ], [ 9, %if.then68.i ]
  %20 = load ptr, ptr %call, align 8
  %call81.i = call ptr @message_strm(i32 noundef %19) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %20, ptr noundef %call81.i) #8
  %cmp82.i = icmp eq i32 %19, 6
  br i1 %cmp82.i, label %if.then83.i, label %parse_indexes.exit.thread

if.then83.i:                                      ; preds = %if.then76.thread.i
  %call84.i = call i64 @lzma_memusage(ptr noundef nonnull %strm.i) #8
  %needed.0.i = call i64 @llvm.uadd.sat.i64(i64 %call84.i, i64 %memused.0.i)
  call void @message_mem_needed(i32 noundef 1, i64 noundef %needed.0.i) #8
  br label %parse_indexes.exit.thread

if.end91.i:                                       ; preds = %if.then68.i
  %21 = load i64, ptr %backward_size.i, align 8
  %add93.neg.i = add i64 %add59.i, -12
  %sub94.i = sub i64 %add93.neg.i, %21
  %22 = load ptr, ptr %this_index.i, align 8
  %call95.i = call i64 @lzma_index_total_size(ptr noundef %22) #8
  %cmp96.i = icmp ult i64 %sub94.i, %call95.i
  br i1 %cmp96.i, label %if.then97.i, label %if.end100.i

if.then97.i:                                      ; preds = %if.end91.i
  %23 = load ptr, ptr %call, align 8
  %call99.i = call ptr @message_strm(i32 noundef 9) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %23, ptr noundef %call99.i) #8
  br label %parse_indexes.exit.thread

if.end100.i:                                      ; preds = %if.end91.i
  %24 = load ptr, ptr %this_index.i, align 8
  %call101.i = call i64 @lzma_index_total_size(ptr noundef %24) #8
  %sub102.i = sub i64 %sub94.i, %call101.i
  %call103.i = call zeroext i1 @io_pread(ptr noundef %call, ptr noundef nonnull %buf.i, i64 noundef 12, i64 noundef %sub102.i) #8
  br i1 %call103.i, label %parse_indexes.exit.thread, label %if.end105.i

if.end105.i:                                      ; preds = %if.end100.i
  %call107.i = call i32 @lzma_stream_header_decode(ptr noundef nonnull %header_flags.i, ptr noundef nonnull %buf.i) #8
  %cmp108.not.i = icmp eq i32 %call107.i, 0
  br i1 %cmp108.not.i, label %if.end112.i, label %if.then109.i

if.then109.i:                                     ; preds = %if.end105.i
  %25 = load ptr, ptr %call, align 8
  %call111.i = call ptr @message_strm(i32 noundef %call107.i) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %25, ptr noundef %call111.i) #8
  br label %parse_indexes.exit.thread

if.end112.i:                                      ; preds = %if.end105.i
  %call113.i = call i32 @lzma_stream_flags_compare(ptr noundef nonnull %header_flags.i, ptr noundef nonnull %footer_flags.i) #8
  %cmp114.not.i = icmp eq i32 %call113.i, 0
  br i1 %cmp114.not.i, label %if.end118.i, label %if.then115.i

if.then115.i:                                     ; preds = %if.end112.i
  %26 = load ptr, ptr %call, align 8
  %call117.i = call ptr @message_strm(i32 noundef %call113.i) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %26, ptr noundef %call117.i) #8
  br label %parse_indexes.exit.thread

if.end118.i:                                      ; preds = %if.end112.i
  %27 = load ptr, ptr %this_index.i, align 8
  %call119.i = call i32 @lzma_index_stream_flags(ptr noundef %27, ptr noundef nonnull %footer_flags.i) #8
  %cmp120.not.i = icmp eq i32 %call119.i, 0
  br i1 %cmp120.not.i, label %if.end122.i, label %if.then121.i

if.then121.i:                                     ; preds = %if.end118.i
  call void @message_bug() #8
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then121.i, %if.end118.i
  %28 = load ptr, ptr %this_index.i, align 8
  %call123.i = call i32 @lzma_index_stream_padding(ptr noundef %28, i64 noundef %stream_padding.0315.i) #8
  %cmp124.not.i = icmp eq i32 %call123.i, 0
  br i1 %cmp124.not.i, label %if.end126.i, label %if.then125.i

if.then125.i:                                     ; preds = %if.end122.i
  call void @message_bug() #8
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then125.i, %if.end122.i
  br i1 %cmp38.not.i, label %do.cond144.i, label %if.then128.i

if.then128.i:                                     ; preds = %if.end126.i
  %29 = load ptr, ptr %this_index.i, align 8
  %call129.i = call i32 @lzma_index_cat(ptr noundef %29, ptr noundef nonnull %combined_index.0.i, ptr noundef null) #8
  %cmp130.not.i = icmp eq i32 %call129.i, 0
  br i1 %cmp130.not.i, label %do.cond144.i, label %if.then131.i

if.then131.i:                                     ; preds = %if.then128.i
  %30 = load ptr, ptr %call, align 8
  %call133.i = call ptr @message_strm(i32 noundef %call129.i) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %30, ptr noundef %call133.i) #8
  br label %parse_indexes.exit.thread

do.cond144.i:                                     ; preds = %if.then128.i, %if.end126.i
  %31 = load ptr, ptr %this_index.i, align 8
  store ptr null, ptr %this_index.i, align 8
  %add137.i = add i64 %add137.i209, %stream_padding.0315.i
  %cmp145.i = icmp sgt i64 %sub102.i, 0
  br i1 %cmp145.i, label %do.body.i, label %if.then9

parse_indexes.exit.thread:                        ; preds = %if.end100.i, %if.end6.i, %do.body52.i, %if.then.i, %if.then3.i, %if.then21.i, %if.then26.i, %if.then32.i, %if.then48.i, %if.then76.thread.i, %if.then83.i, %if.then97.i, %if.then109.i, %if.then115.i, %if.then131.i
  call void @lzma_end(ptr noundef nonnull %strm.i) #8
  call void @lzma_index_end(ptr noundef %combined_index.0.i, ptr noundef null) #8
  %32 = load ptr, ptr %this_index.i, align 8
  call void @lzma_index_end(ptr noundef %32, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %this_index.i) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %strm.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %footer_flags.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %header_flags.i) #8
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %buf.i) #8
  br label %if.end25

if.then9:                                         ; preds = %do.cond144.i
  store i64 %add137.i, ptr %stream_padding136.i, align 8
  call void @lzma_end(ptr noundef nonnull %strm.i) #8
  store ptr %31, ptr %xfi, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %this_index.i) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %strm.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %footer_flags.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %header_flags.i) #8
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %buf.i) #8
  %33 = load i8, ptr @opt_robot, align 1, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %33 to i1
  br i1 %loadedv, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %checks.i) #8
  %call.i33 = call i32 @lzma_index_checks(ptr noundef %31) #8
  call fastcc void @get_check_names(ptr noundef nonnull %checks.i, i32 noundef %call.i33, i1 noundef zeroext false)
  %34 = load ptr, ptr %call, align 8
  %call1.i34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef %34)
  %call3.i = call i64 @lzma_index_stream_count(ptr noundef %31) #8
  %call5.i35 = call i64 @lzma_index_block_count(ptr noundef %31) #8
  %call7.i36 = call i64 @lzma_index_file_size(ptr noundef %31) #8
  %call9.i = call i64 @lzma_index_uncompressed_size(ptr noundef %31) #8
  %call11.i = call i64 @lzma_index_file_size(ptr noundef %31) #8
  %call13.i = call i64 @lzma_index_uncompressed_size(ptr noundef %31) #8
  %cmp.i.i = icmp eq i64 %call13.i, 0
  br i1 %cmp.i.i, label %get_ratio.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then10
  %conv.i.i = uitofp i64 %call11.i to double
  %conv1.i.i = uitofp i64 %call13.i to double
  %div.i.i = fdiv double %conv.i.i, %conv1.i.i
  %cmp2.i.i = fcmp ogt double %div.i.i, 9.999000e+00
  br i1 %cmp2.i.i, label %get_ratio.exit.i, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call.i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i.i) #8
  br label %get_ratio.exit.i

get_ratio.exit.i:                                 ; preds = %if.end5.i.i, %if.end.i.i, %if.then10
  %retval.1.i.i = phi ptr [ @.str.10, %if.then10 ], [ @get_ratio.buf, %if.end5.i.i ], [ @.str.10, %if.end.i.i ]
  %call16.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %call3.i, i64 noundef %call5.i35, i64 noundef %call7.i36, i64 noundef %call9.i, ptr noundef nonnull %retval.1.i.i, ptr noundef nonnull %checks.i, i64 noundef %add137.i)
  %call17.i = call i32 @message_verbosity_get() #8
  %cmp.i37 = icmp ugt i32 %call17.i, 2
  br i1 %cmp.i37, label %if.then.i39, label %if.end75.i

if.then.i39:                                      ; preds = %get_ratio.exit.i
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %iter.i) #8
  call void @lzma_index_iter_init(ptr noundef nonnull %iter.i, ptr noundef %31) #8
  %call19116.i = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i, i32 noundef 1) #8
  %tobool.not117.i = icmp eq i8 %call19116.i, 0
  br i1 %tobool.not117.i, label %while.body.lr.ph.i, label %while.end.i40

while.body.lr.ph.i:                               ; preds = %if.then.i39
  %number.i = getelementptr inbounds i8, ptr %iter.i, i64 32
  %block_count.i = getelementptr inbounds i8, ptr %iter.i, i64 40
  %compressed_offset.i = getelementptr inbounds i8, ptr %iter.i, i64 48
  %uncompressed_offset.i = getelementptr inbounds i8, ptr %iter.i, i64 56
  %compressed_size.i = getelementptr inbounds i8, ptr %iter.i, i64 64
  %uncompressed_size.i = getelementptr inbounds i8, ptr %iter.i, i64 72
  %padding.i = getelementptr inbounds i8, ptr %iter.i, i64 80
  br label %while.body.i

while.body.i:                                     ; preds = %get_ratio.exit104.i, %while.body.lr.ph.i
  %35 = load i64, ptr %number.i, align 8
  %36 = load i64, ptr %block_count.i, align 8
  %37 = load i64, ptr %compressed_offset.i, align 8
  %38 = load i64, ptr %uncompressed_offset.i, align 8
  %39 = load i64, ptr %compressed_size.i, align 8
  %40 = load i64, ptr %uncompressed_size.i, align 8
  %cmp.i95.i = icmp eq i64 %40, 0
  br i1 %cmp.i95.i, label %get_ratio.exit104.i, label %if.end.i96.i

if.end.i96.i:                                     ; preds = %while.body.i
  %conv.i97.i = uitofp i64 %39 to double
  %conv1.i98.i = uitofp i64 %40 to double
  %div.i99.i = fdiv double %conv.i97.i, %conv1.i98.i
  %cmp2.i100.i = fcmp ogt double %div.i99.i, 9.999000e+00
  br i1 %cmp2.i100.i, label %get_ratio.exit104.i, label %if.end5.i101.i

if.end5.i101.i:                                   ; preds = %if.end.i96.i
  %call.i102.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i99.i) #8
  br label %get_ratio.exit104.i

get_ratio.exit104.i:                              ; preds = %if.end5.i101.i, %if.end.i96.i, %while.body.i
  %retval.1.i103.i = phi ptr [ @.str.10, %while.body.i ], [ @get_ratio.buf, %if.end5.i101.i ], [ @.str.10, %if.end.i96.i ]
  %41 = load ptr, ptr %iter.i, align 8
  %check.i = getelementptr inbounds i8, ptr %41, i64 16
  %42 = load i32, ptr %check.i, align 8
  %idxprom.i = zext i32 %42 to i64
  %arrayidx.i43 = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %idxprom.i
  %43 = load i64, ptr %padding.i, align 8
  %call33.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i64 noundef %35, i64 noundef %36, i64 noundef %37, i64 noundef %38, i64 noundef %39, i64 noundef %40, ptr noundef nonnull %retval.1.i103.i, ptr noundef nonnull %arrayidx.i43, i64 noundef %43)
  %call19.i44 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i, i32 noundef 1) #8
  %tobool.not.i = icmp eq i8 %call19.i44, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i40

while.end.i40:                                    ; preds = %get_ratio.exit104.i, %if.then.i39
  call void @lzma_index_iter_rewind(ptr noundef nonnull %iter.i) #8
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %bhi.i) #8
  %call35118.i = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i, i32 noundef 2) #8
  %tobool36.not.not119.i = icmp eq i8 %call35118.i, 0
  br i1 %tobool36.not.not119.i, label %while.body38.lr.ph.i, label %if.end75.critedge.i

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
  br label %while.body38.i

while.body38.i:                                   ; preds = %if.end71.i, %while.body38.lr.ph.i
  %call39.i = call i32 @message_verbosity_get() #8
  %cmp40.i = icmp ugt i32 %call39.i, 3
  br i1 %cmp40.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body38.i
  %call41.i = call fastcc zeroext i1 @parse_details(ptr noundef nonnull %call, ptr noundef nonnull %iter.i, ptr noundef nonnull %bhi.i, ptr noundef nonnull %xfi)
  br i1 %call41.i, label %print_info_robot.exit, label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %while.body38.i
  %44 = load i64, ptr %number44.i, align 8
  %45 = load i64, ptr %number_in_stream.i, align 8
  %46 = load i64, ptr %block.i, align 8
  %47 = load i64, ptr %compressed_file_offset.i, align 8
  %48 = load i64, ptr %uncompressed_file_offset.i, align 8
  %49 = load i64, ptr %total_size.i, align 8
  %50 = load i64, ptr %uncompressed_size50.i, align 8
  %cmp.i105.i = icmp eq i64 %50, 0
  br i1 %cmp.i105.i, label %get_ratio.exit114.i, label %if.end.i106.i

if.end.i106.i:                                    ; preds = %if.end.i
  %conv.i107.i = uitofp i64 %49 to double
  %conv1.i108.i = uitofp i64 %50 to double
  %div.i109.i = fdiv double %conv.i107.i, %conv1.i108.i
  %cmp2.i110.i = fcmp ogt double %div.i109.i, 9.999000e+00
  br i1 %cmp2.i110.i, label %get_ratio.exit114.i, label %if.end5.i111.i

if.end5.i111.i:                                   ; preds = %if.end.i106.i
  %call.i112.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i109.i) #8
  br label %get_ratio.exit114.i

get_ratio.exit114.i:                              ; preds = %if.end5.i111.i, %if.end.i106.i, %if.end.i
  %retval.1.i113.i = phi ptr [ @.str.10, %if.end.i ], [ @get_ratio.buf, %if.end5.i111.i ], [ @.str.10, %if.end.i106.i ]
  %51 = load ptr, ptr %iter.i, align 8
  %check58.i = getelementptr inbounds i8, ptr %51, i64 16
  %52 = load i32, ptr %check58.i, align 8
  %idxprom59.i = zext i32 %52 to i64
  %arrayidx60.i = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %idxprom59.i
  %call62.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i64 noundef %44, i64 noundef %45, i64 noundef %46, i64 noundef %47, i64 noundef %48, i64 noundef %49, i64 noundef %50, ptr noundef nonnull %retval.1.i113.i, ptr noundef nonnull %arrayidx60.i)
  %call63.i41 = call i32 @message_verbosity_get() #8
  %cmp64.i = icmp ugt i32 %call63.i41, 3
  br i1 %cmp64.i, label %if.then65.i, label %if.end71.i

if.then65.i:                                      ; preds = %get_ratio.exit114.i
  %53 = load i32, ptr %bhi.i, align 8
  %54 = load i64, ptr %compressed_size68.i, align 8
  %55 = load i64, ptr %memusage.i, align 8
  %call70.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull @check_value, i32 noundef %53, ptr noundef nonnull %flags66.i, i64 noundef %54, i64 noundef %55, ptr noundef nonnull %filter_chain.i)
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then65.i, %get_ratio.exit114.i
  %56 = load ptr, ptr @stdout, align 8
  %call.i115.i = call i32 @putc(i32 noundef 10, ptr noundef %56)
  %call35.i = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i, i32 noundef 2) #8
  %tobool36.not.not.i = icmp eq i8 %call35.i, 0
  br i1 %tobool36.not.not.i, label %while.body38.i, label %if.end75.critedge.i

if.end75.critedge.i:                              ; preds = %if.end71.i, %while.end.i40
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %bhi.i) #8
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %iter.i) #8
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.end75.critedge.i, %get_ratio.exit.i
  %call76.i = call i32 @message_verbosity_get() #8
  %cmp77.i = icmp ugt i32 %call76.i, 3
  br i1 %cmp77.i, label %if.then78.i, label %print_info_robot.exit.thread

if.then78.i:                                      ; preds = %if.end75.i
  %memusage_max.i = getelementptr inbounds i8, ptr %xfi, i64 16
  %57 = load i64, ptr %memusage_max.i, align 8
  %all_have_sizes.i = getelementptr inbounds i8, ptr %xfi, i64 24
  %58 = load i8, ptr %all_have_sizes.i, align 8, !range !5, !noundef !6
  %loadedv.i = trunc nuw i8 %58 to i1
  %cond.i38 = select i1 %loadedv.i, ptr @.str.4, ptr @.str.5
  %call79.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i64 noundef %57, ptr noundef nonnull %cond.i38)
  br label %print_info_robot.exit.thread

print_info_robot.exit.thread:                     ; preds = %if.then78.i, %if.end75.i
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %checks.i) #8
  br label %if.then23

print_info_robot.exit:                            ; preds = %land.lhs.true.i
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %bhi.i) #8
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %iter.i) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %checks.i) #8
  br label %if.end24

if.else:                                          ; preds = %if.then9
  %call12 = call i32 @message_verbosity_get() #8
  %cmp13 = icmp ult i32 %call12, 3
  br i1 %cmp13, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.else
  %.b56.i = load i1, ptr @print_info_basic.headings_displayed, align 1
  br i1 %.b56.i, label %if.end.i48, label %if.then.i46

if.then.i46:                                      ; preds = %if.then14
  store i1 true, ptr @print_info_basic.headings_displayed, align 1
  %call.i47 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.38)
  br label %if.end.i48

if.end.i48:                                       ; preds = %if.then.i46, %if.then14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %checks.i45) #8
  %call1.i49 = call i32 @lzma_index_checks(ptr noundef %31) #8
  call fastcc void @get_check_names(ptr noundef nonnull %checks.i45, i32 noundef %call1.i49, i1 noundef zeroext false)
  %call3.i50 = call i64 @lzma_index_stream_count(ptr noundef %31) #8
  %call4.i = call ptr @uint64_to_str(i64 noundef %call3.i50, i32 noundef 0) #8
  %call6.i = call i64 @lzma_index_block_count(ptr noundef %31) #8
  %call7.i51 = call ptr @uint64_to_str(i64 noundef %call6.i, i32 noundef 1) #8
  %call10.i = call i64 @lzma_index_file_size(ptr noundef %31) #8
  %call11.i52 = call ptr @uint64_to_nicestr(i64 noundef %call10.i, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 2) #8
  %call14.i = call i64 @lzma_index_uncompressed_size(ptr noundef %31) #8
  %call15.i = call ptr @uint64_to_nicestr(i64 noundef %call14.i, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i32 noundef 3) #8
  %call18.i = call i64 @lzma_index_file_size(ptr noundef %31) #8
  %call20.i = call i64 @lzma_index_uncompressed_size(ptr noundef %31) #8
  %cmp.i.i53 = icmp eq i64 %call20.i, 0
  br i1 %cmp.i.i53, label %print_info_basic.exit, label %if.end.i.i54

if.end.i.i54:                                     ; preds = %if.end.i48
  %conv.i.i55 = uitofp i64 %call18.i to double
  %conv1.i.i56 = uitofp i64 %call20.i to double
  %div.i.i57 = fdiv double %conv.i.i55, %conv1.i.i56
  %cmp2.i.i58 = fcmp ogt double %div.i.i57, 9.999000e+00
  br i1 %cmp2.i.i58, label %print_info_basic.exit, label %if.end5.i.i59

if.end5.i.i59:                                    ; preds = %if.end.i.i54
  %call.i.i60 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i.i57) #8
  br label %print_info_basic.exit

print_info_basic.exit:                            ; preds = %if.end.i48, %if.end.i.i54, %if.end5.i.i59
  %retval.1.i.i62 = phi ptr [ @.str.10, %if.end.i48 ], [ @get_ratio.buf, %if.end5.i.i59 ], [ @.str.10, %if.end.i.i54 ]
  %59 = load ptr, ptr %call, align 8
  %call25.i = call i32 @tuklib_mbstr_fw(ptr noundef %call4.i, i32 noundef 5) #8
  %call28.i63 = call i32 @tuklib_mbstr_fw(ptr noundef %call7.i51, i32 noundef 7) #8
  %call31.i = call i32 @tuklib_mbstr_fw(ptr noundef %call11.i52, i32 noundef 11) #8
  %call34.i64 = call i32 @tuklib_mbstr_fw(ptr noundef %call15.i, i32 noundef 11) #8
  %call37.i65 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %retval.1.i.i62, i32 noundef 5) #8
  %call40.i66 = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %checks.i45, i32 noundef 7) #8
  %call43.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %call25.i, ptr noundef %call4.i, i32 noundef %call28.i63, ptr noundef %call7.i51, i32 noundef %call31.i, ptr noundef %call11.i52, i32 noundef %call34.i64, ptr noundef %call15.i, i32 noundef %call37.i65, ptr noundef nonnull %retval.1.i.i62, i32 noundef %call40.i66, ptr noundef nonnull %checks.i45, ptr noundef %59)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %checks.i45) #8
  br label %if.then23

if.else17:                                        ; preds = %if.else
  %call.i69 = call i64 @lzma_index_stream_count(ptr noundef %31) #8
  %call2.i = call i64 @lzma_index_block_count(ptr noundef %31) #8
  %call4.i70 = call i64 @lzma_index_file_size(ptr noundef %31) #8
  %call6.i71 = call i64 @lzma_index_uncompressed_size(ptr noundef %31) #8
  %call8.i = call i32 @lzma_index_checks(ptr noundef %31) #8
  call fastcc void @print_adv_helper(i64 noundef %call.i69, i64 noundef %call2.i, i64 noundef %call4.i70, i64 noundef %call6.i71, i32 noundef %call8.i, i64 noundef %add137.i)
  %call9.i73 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.40)
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %iter.i67) #8
  call void @lzma_index_iter_init(ptr noundef nonnull %iter.i67, ptr noundef %31) #8
  %call11264.i = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i67, i32 noundef 1) #8
  %tobool.not265.i = icmp eq i8 %call11264.i, 0
  br i1 %tobool.not265.i, label %while.body.lr.ph.i91, label %while.end.i74

while.body.lr.ph.i91:                             ; preds = %if.else17
  %number.i92 = getelementptr inbounds i8, ptr %iter.i67, i64 32
  %block_count.i93 = getelementptr inbounds i8, ptr %iter.i67, i64 40
  %compressed_offset.i94 = getelementptr inbounds i8, ptr %iter.i67, i64 48
  %uncompressed_offset.i95 = getelementptr inbounds i8, ptr %iter.i67, i64 56
  %compressed_size.i96 = getelementptr inbounds i8, ptr %iter.i67, i64 64
  %uncompressed_size.i97 = getelementptr inbounds i8, ptr %iter.i67, i64 72
  %padding.i98 = getelementptr inbounds i8, ptr %iter.i67, i64 80
  br label %while.body.i99

while.body.i99:                                   ; preds = %if.end.i119, %while.body.lr.ph.i91
  %check_max.0266.i = phi i32 [ 0, %while.body.lr.ph.i91 ], [ %check_max.1.i, %if.end.i119 ]
  %60 = load i64, ptr %number.i92, align 8
  %call12.i = call ptr @uint64_to_str(i64 noundef %60, i32 noundef 0) #8
  %61 = load i64, ptr %block_count.i93, align 8
  %call14.i100 = call ptr @uint64_to_str(i64 noundef %61, i32 noundef 1) #8
  %62 = load i64, ptr %compressed_offset.i94, align 8
  %call17.i101 = call ptr @uint64_to_str(i64 noundef %62, i32 noundef 2) #8
  %63 = load i64, ptr %uncompressed_offset.i95, align 8
  %call20.i102 = call ptr @uint64_to_str(i64 noundef %63, i32 noundef 3) #8
  %call21.i = call i32 @tuklib_mbstr_fw(ptr noundef %call12.i, i32 noundef 6) #8
  %call24.i = call i32 @tuklib_mbstr_fw(ptr noundef %call14.i100, i32 noundef 9) #8
  %call27.i = call i32 @tuklib_mbstr_fw(ptr noundef %call17.i101, i32 noundef 15) #8
  %call30.i = call i32 @tuklib_mbstr_fw(ptr noundef %call20.i102, i32 noundef 15) #8
  %call32.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %call21.i, ptr noundef %call12.i, i32 noundef %call24.i, ptr noundef %call14.i100, i32 noundef %call27.i, ptr noundef %call17.i101, i32 noundef %call30.i, ptr noundef %call20.i102)
  %64 = load i64, ptr %compressed_size.i96, align 8
  %call34.i103 = call ptr @uint64_to_str(i64 noundef %64, i32 noundef 0) #8
  %65 = load i64, ptr %uncompressed_size.i97, align 8
  %call37.i104 = call ptr @uint64_to_str(i64 noundef %65, i32 noundef 1) #8
  %66 = load i64, ptr %uncompressed_size.i97, align 8
  %cmp.i.i105 = icmp eq i64 %66, 0
  br i1 %cmp.i.i105, label %get_ratio.exit.i113, label %if.end.i.i106

if.end.i.i106:                                    ; preds = %while.body.i99
  %67 = load i64, ptr %compressed_size.i96, align 8
  %conv.i.i107 = uitofp i64 %67 to double
  %conv1.i.i108 = uitofp i64 %66 to double
  %div.i.i109 = fdiv double %conv.i.i107, %conv1.i.i108
  %cmp2.i.i110 = fcmp ogt double %div.i.i109, 9.999000e+00
  br i1 %cmp2.i.i110, label %get_ratio.exit.i113, label %if.end5.i.i111

if.end5.i.i111:                                   ; preds = %if.end.i.i106
  %call.i.i112 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i.i109) #8
  br label %get_ratio.exit.i113

get_ratio.exit.i113:                              ; preds = %if.end5.i.i111, %if.end.i.i106, %while.body.i99
  %retval.1.i.i114 = phi ptr [ @.str.10, %while.body.i99 ], [ @get_ratio.buf, %if.end5.i.i111 ], [ @.str.10, %if.end.i.i106 ]
  %68 = load ptr, ptr %iter.i67, align 8
  %check.i115 = getelementptr inbounds i8, ptr %68, i64 16
  %69 = load i32, ptr %check.i115, align 8
  %idxprom.i116 = zext i32 %69 to i64
  %arrayidx46.i = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %idxprom.i116
  %70 = load i64, ptr %padding.i98, align 8
  %call49.i = call ptr @uint64_to_str(i64 noundef %70, i32 noundef 2) #8
  %call51.i = call i32 @tuklib_mbstr_fw(ptr noundef %call34.i103, i32 noundef 15) #8
  %call54.i = call i32 @tuklib_mbstr_fw(ptr noundef %call37.i104, i32 noundef 15) #8
  %call57.i = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %retval.1.i.i114, i32 noundef 5) #8
  %call60.i = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %arrayidx46.i, i32 noundef 10) #8
  %call63.i117 = call i32 @tuklib_mbstr_fw(ptr noundef %call49.i, i32 noundef 7) #8
  %call65.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %call51.i, ptr noundef %call34.i103, i32 noundef %call54.i, ptr noundef %call37.i104, i32 noundef %call57.i, ptr noundef nonnull %retval.1.i.i114, i32 noundef %call60.i, ptr noundef nonnull %arrayidx46.i, i32 noundef %call63.i117, ptr noundef %call49.i)
  %71 = load ptr, ptr %iter.i67, align 8
  %check68.i = getelementptr inbounds i8, ptr %71, i64 16
  %72 = load i32, ptr %check68.i, align 8
  %call69.i = call i32 @lzma_check_size(i32 noundef %72) #8
  %cmp.i118 = icmp ugt i32 %call69.i, %check_max.0266.i
  br i1 %cmp.i118, label %if.then.i122, label %if.end.i119

if.then.i122:                                     ; preds = %get_ratio.exit.i113
  %73 = load ptr, ptr %iter.i67, align 8
  %check72.i = getelementptr inbounds i8, ptr %73, i64 16
  %74 = load i32, ptr %check72.i, align 8
  %call73.i = call i32 @lzma_check_size(i32 noundef %74) #8
  br label %if.end.i119

if.end.i119:                                      ; preds = %if.then.i122, %get_ratio.exit.i113
  %check_max.1.i = phi i32 [ %call73.i, %if.then.i122 ], [ %check_max.0266.i, %get_ratio.exit.i113 ]
  %call11.i120 = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i67, i32 noundef 1) #8
  %tobool.not.i121 = icmp eq i8 %call11.i120, 0
  br i1 %tobool.not.i121, label %while.body.i99, label %while.end.loopexit.i

while.end.loopexit.i:                             ; preds = %if.end.i119
  %75 = shl i32 %check_max.1.i, 1
  br label %while.end.i74

while.end.i74:                                    ; preds = %while.end.loopexit.i, %if.else17
  %check_max.0.lcssa.i = phi i32 [ 0, %if.else17 ], [ %75, %while.end.loopexit.i ]
  %call74.i = call i32 @message_verbosity_get() #8
  %cmp75.i = icmp ugt i32 %call74.i, 3
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %bhi.i68) #8
  %call77.i = call i64 @lzma_index_block_count(ptr noundef %31) #8
  %cmp78.not.i = icmp eq i64 %call77.i, 0
  br i1 %cmp78.not.i, label %if.end198.i, label %if.then79.i

if.then79.i:                                      ; preds = %while.end.i74
  %cond.i75 = call i32 @llvm.umax.i32(i32 %check_max.0.lcssa.i, i32 8)
  %call82.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43)
  br i1 %cmp75.i, label %if.then83.i88, label %if.end85.i

if.then83.i88:                                    ; preds = %if.then79.i
  %sub.i89 = add nsw i32 %cond.i75, -8
  %call84.i90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %sub.i89, ptr noundef nonnull @.str.9)
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then83.i88, %if.then79.i
  %76 = load ptr, ptr @stdout, align 8
  %call.i252.i = call i32 @putc(i32 noundef 10, ptr noundef %76)
  call void @lzma_index_iter_init(ptr noundef nonnull %iter.i67, ptr noundef %31) #8
  %call89267.i = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i67, i32 noundef 2) #8
  %tobool90.not.not268.i = icmp eq i8 %call89267.i, 0
  br i1 %tobool90.not.not268.i, label %while.body92.lr.ph.i, label %if.end198.i

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
  br label %while.body92.i

while.body92.i:                                   ; preds = %if.end195.i, %while.body92.lr.ph.i
  br i1 %cmp75.i, label %land.lhs.true.i87, label %if.end96.i

land.lhs.true.i87:                                ; preds = %while.body92.i
  %call94.i = call fastcc zeroext i1 @parse_details(ptr noundef %call, ptr noundef nonnull %iter.i67, ptr noundef nonnull %bhi.i68, ptr noundef nonnull %xfi)
  br i1 %call94.i, label %if.end21, label %if.end96.i

if.end96.i:                                       ; preds = %land.lhs.true.i87, %while.body92.i
  %cond153.i = phi i32 [ 11, %land.lhs.true.i87 ], [ 1, %while.body92.i ]
  %77 = load i64, ptr %number99.i, align 8
  %call100.i = call ptr @uint64_to_str(i64 noundef %77, i32 noundef 0) #8
  %78 = load i64, ptr %number_in_stream.i79, align 8
  %call102.i = call ptr @uint64_to_str(i64 noundef %78, i32 noundef 1) #8
  %79 = load i64, ptr %compressed_file_offset.i80, align 8
  %call105.i = call ptr @uint64_to_str(i64 noundef %79, i32 noundef 2) #8
  %80 = load i64, ptr %uncompressed_file_offset.i81, align 8
  %call108.i = call ptr @uint64_to_str(i64 noundef %80, i32 noundef 3) #8
  %call110.i = call i32 @tuklib_mbstr_fw(ptr noundef %call100.i, i32 noundef 6) #8
  %call113.i85 = call i32 @tuklib_mbstr_fw(ptr noundef %call102.i, i32 noundef 9) #8
  %call116.i = call i32 @tuklib_mbstr_fw(ptr noundef %call105.i, i32 noundef 15) #8
  %call119.i86 = call i32 @tuklib_mbstr_fw(ptr noundef %call108.i, i32 noundef 15) #8
  %call121.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %call110.i, ptr noundef %call100.i, i32 noundef %call113.i85, ptr noundef %call102.i, i32 noundef %call116.i, ptr noundef %call105.i, i32 noundef %call119.i86, ptr noundef %call108.i)
  %81 = load i64, ptr %total_size.i82, align 8
  %call124.i = call ptr @uint64_to_str(i64 noundef %81, i32 noundef 0) #8
  %82 = load i64, ptr %uncompressed_size127.i, align 8
  %call128.i = call ptr @uint64_to_str(i64 noundef %82, i32 noundef 1) #8
  %83 = load i64, ptr %uncompressed_size127.i, align 8
  %cmp.i253.i = icmp eq i64 %83, 0
  br i1 %cmp.i253.i, label %get_ratio.exit262.i, label %if.end.i254.i

if.end.i254.i:                                    ; preds = %if.end96.i
  %84 = load i64, ptr %total_size.i82, align 8
  %conv.i255.i = uitofp i64 %84 to double
  %conv1.i256.i = uitofp i64 %83 to double
  %div.i257.i = fdiv double %conv.i255.i, %conv1.i256.i
  %cmp2.i258.i = fcmp ogt double %div.i257.i, 9.999000e+00
  br i1 %cmp2.i258.i, label %get_ratio.exit262.i, label %if.end5.i259.i

if.end5.i259.i:                                   ; preds = %if.end.i254.i
  %call.i260.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i257.i) #8
  br label %get_ratio.exit262.i

get_ratio.exit262.i:                              ; preds = %if.end5.i259.i, %if.end.i254.i, %if.end96.i
  %retval.1.i261.i = phi ptr [ @.str.10, %if.end96.i ], [ @get_ratio.buf, %if.end5.i259.i ], [ @.str.10, %if.end.i254.i ]
  %85 = load ptr, ptr %iter.i67, align 8
  %check138.i = getelementptr inbounds i8, ptr %85, i64 16
  %86 = load i32, ptr %check138.i, align 8
  %idxprom139.i = zext i32 %86 to i64
  %arrayidx140.i = getelementptr inbounds [16 x [12 x i8]], ptr @check_names, i64 0, i64 %idxprom139.i
  %call143.i = call i32 @tuklib_mbstr_fw(ptr noundef %call124.i, i32 noundef 15) #8
  %call146.i = call i32 @tuklib_mbstr_fw(ptr noundef %call128.i, i32 noundef 15) #8
  %call149.i = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %retval.1.i261.i, i32 noundef 5) #8
  %call154.i = call i32 @tuklib_mbstr_fw(ptr noundef nonnull %arrayidx140.i, i32 noundef %cond153.i) #8
  %call156.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %call143.i, ptr noundef %call124.i, i32 noundef %call146.i, ptr noundef %call128.i, i32 noundef %call149.i, ptr noundef nonnull %retval.1.i261.i, i32 noundef %call154.i, ptr noundef nonnull %arrayidx140.i)
  br i1 %cmp75.i, label %if.then158.i, label %if.end195.i

if.then158.i:                                     ; preds = %get_ratio.exit262.i
  %87 = load i64, ptr %unpadded_size.i, align 8
  %88 = load i32, ptr %bhi.i68, align 8
  %conv.i = zext i32 %88 to i64
  %89 = load ptr, ptr %iter.i67, align 8
  %check164.i = getelementptr inbounds i8, ptr %89, i64 16
  %90 = load i32, ptr %check164.i, align 8
  %call165.i = call i32 @lzma_check_size(i32 noundef %90) #8
  %conv166.i = zext i32 %call165.i to i64
  %91 = add nuw nsw i64 %conv.i, %conv166.i
  %sub167.i = sub i64 %87, %91
  %92 = load i32, ptr %bhi.i68, align 8
  %conv170.i = zext i32 %92 to i64
  %call171.i = call ptr @uint64_to_str(i64 noundef %conv170.i, i32 noundef 0) #8
  %call176.i = call ptr @uint64_to_str(i64 noundef %sub167.i, i32 noundef 1) #8
  %93 = load i64, ptr %memusage.i83, align 8
  %call178.i = call i64 @round_up_to_mib(i64 noundef %93) #8
  %call179.i = call ptr @uint64_to_str(i64 noundef %call178.i, i32 noundef 2) #8
  %call184.i = call i32 @tuklib_mbstr_fw(ptr noundef %call171.i, i32 noundef 6) #8
  %call188.i = call i32 @tuklib_mbstr_fw(ptr noundef %call176.i, i32 noundef 15) #8
  %call191.i = call i32 @tuklib_mbstr_fw(ptr noundef %call179.i, i32 noundef 7) #8
  %call194.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %cond.i75, ptr noundef nonnull @check_value, i32 noundef %call184.i, ptr noundef %call171.i, ptr noundef nonnull %flags173.i, i32 noundef %call188.i, ptr noundef %call176.i, i32 noundef %call191.i, ptr noundef %call179.i, ptr noundef nonnull %filter_chain.i84)
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.then158.i, %get_ratio.exit262.i
  %94 = load ptr, ptr @stdout, align 8
  %call.i263.i = call i32 @putc(i32 noundef 10, ptr noundef %94)
  %call89.i = call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter.i67, i32 noundef 2) #8
  %tobool90.not.not.i = icmp eq i8 %call89.i, 0
  br i1 %tobool90.not.not.i, label %while.body92.i, label %if.end198.i

if.end198.i:                                      ; preds = %if.end195.i, %if.end85.i, %while.end.i74
  br i1 %cmp75.i, label %if.then200.i, label %if.end21.thread

if.then200.i:                                     ; preds = %if.end198.i
  %memusage_max.i77 = getelementptr inbounds i8, ptr %xfi, i64 16
  %95 = load i64, ptr %memusage_max.i77, align 8
  %call201.i = call i64 @round_up_to_mib(i64 noundef %95) #8
  %call202.i = call ptr @uint64_to_str(i64 noundef %call201.i, i32 noundef 0) #8
  %call203.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %call202.i)
  %all_have_sizes.i78 = getelementptr inbounds i8, ptr %xfi, i64 24
  %96 = load i8, ptr %all_have_sizes.i78, align 8, !range !5, !noundef !6
  %loadedv204.i = trunc nuw i8 %96 to i1
  %cond206.i = select i1 %loadedv204.i, ptr @.str.19, ptr @.str.20
  %call207.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %cond206.i)
  br label %if.end21.thread

if.end21.thread:                                  ; preds = %if.then200.i, %if.end198.i
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %bhi.i68) #8
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %iter.i67) #8
  br label %if.then23

if.end21:                                         ; preds = %land.lhs.true.i87
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %bhi.i68) #8
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %iter.i67) #8
  br label %if.end24

if.then23:                                        ; preds = %print_info_robot.exit.thread, %if.end21.thread, %print_info_basic.exit
  %97 = load i64, ptr @totals.0, align 8
  %inc.i = add i64 %97, 1
  store i64 %inc.i, ptr @totals.0, align 8
  %98 = load ptr, ptr %xfi, align 8
  %call.i123 = call i64 @lzma_index_stream_count(ptr noundef %98) #8
  %99 = load i64, ptr @totals.1, align 8
  %add.i124 = add i64 %99, %call.i123
  store i64 %add.i124, ptr @totals.1, align 8
  %call2.i125 = call i64 @lzma_index_block_count(ptr noundef %98) #8
  %100 = load i64, ptr @totals.2, align 8
  %add3.i = add i64 %100, %call2.i125
  store i64 %add3.i, ptr @totals.2, align 8
  %call5.i126 = call i64 @lzma_index_file_size(ptr noundef %98) #8
  %101 = load i64, ptr @totals.3, align 8
  %add6.i = add i64 %101, %call5.i126
  store i64 %add6.i, ptr @totals.3, align 8
  %call8.i127 = call i64 @lzma_index_uncompressed_size(ptr noundef %98) #8
  %102 = load i64, ptr @totals.4, align 8
  %add9.i = add i64 %102, %call8.i127
  store i64 %add9.i, ptr @totals.4, align 8
  %103 = load i64, ptr %stream_padding136.i, align 8
  %104 = load i64, ptr @totals.5, align 8
  %add10.i = add i64 %104, %103
  store i64 %add10.i, ptr @totals.5, align 8
  %call12.i129 = call i32 @lzma_index_checks(ptr noundef %98) #8
  %105 = load i32, ptr @totals.7, align 8
  %or.i = or i32 %105, %call12.i129
  store i32 %or.i, ptr @totals.7, align 8
  %106 = load i64, ptr @totals.6, align 8
  %memusage_max.i130 = getelementptr inbounds i8, ptr %xfi, i64 16
  %107 = load i64, ptr %memusage_max.i130, align 8
  %cmp.i131 = icmp ult i64 %106, %107
  br i1 %cmp.i131, label %if.then.i134, label %update_totals.exit

if.then.i134:                                     ; preds = %if.then23
  store i64 %107, ptr @totals.6, align 8
  br label %update_totals.exit

update_totals.exit:                               ; preds = %if.then23, %if.then.i134
  %all_have_sizes.i133 = getelementptr inbounds i8, ptr %xfi, i64 24
  %108 = load i8, ptr %all_have_sizes.i133, align 8, !range !5, !noundef !6
  %109 = load i8, ptr @totals.8, align 4, !range !5, !noundef !6
  %and24.i = and i8 %109, %108
  store i8 %and24.i, ptr @totals.8, align 4
  br label %if.end24

if.end24:                                         ; preds = %print_info_robot.exit, %if.end21, %update_totals.exit
  %110 = load ptr, ptr %xfi, align 8
  call void @lzma_index_end(ptr noundef %110, ptr noundef null) #8
  br label %if.end25

if.end25:                                         ; preds = %parse_indexes.exit.thread, %if.end24
  call void @io_close(ptr noundef nonnull %call, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %xfi) #8
  br label %return

return:                                           ; preds = %if.end25, %if.end4, %if.then3
  ret void
}

declare void @message_fatal(ptr noundef, ...) local_unnamed_addr #1

declare void @message_filename(ptr noundef) local_unnamed_addr #1

declare void @message_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @io_open_src(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @io_close(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @get_check_names(ptr noundef %buf, i32 noundef %checks, i1 noundef zeroext %space_after_comma) unnamed_addr #0 {
entry:
  %pos = alloca ptr, align 8
  %left = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #8
  store ptr %buf, ptr %pos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %left) #8
  store i64 1024, ptr %left, align 8
  %cond = select i1 %space_after_comma, ptr @.str.6, ptr @.str.7
  %and = and i32 %checks, 1
  %tobool.not = icmp ne i32 %and, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %entry
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @check_names) #8
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %and.1 = and i32 %checks, 2
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  %cond2.1 = select i1 %tobool.not, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 12)) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %comma.1.1 = phi i1 [ true, %if.then.1 ], [ %tobool.not, %for.inc ]
  %and.2 = and i32 %checks, 4
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  %cond2.2 = select i1 %comma.1.1, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 24)) #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %comma.1.2 = phi i1 [ true, %if.then.2 ], [ %comma.1.1, %for.inc.1 ]
  %and.3 = and i32 %checks, 8
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  %cond2.3 = select i1 %comma.1.2, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 36)) #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %comma.1.3 = phi i1 [ true, %if.then.3 ], [ %comma.1.2, %for.inc.2 ]
  %and.4 = and i32 %checks, 16
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %if.then.4

if.then.4:                                        ; preds = %for.inc.3
  %cond2.4 = select i1 %comma.1.3, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 48)) #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3
  %comma.1.4 = phi i1 [ true, %if.then.4 ], [ %comma.1.3, %for.inc.3 ]
  %and.5 = and i32 %checks, 32
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %if.then.5

if.then.5:                                        ; preds = %for.inc.4
  %cond2.5 = select i1 %comma.1.4, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.5, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 60)) #8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4
  %comma.1.5 = phi i1 [ true, %if.then.5 ], [ %comma.1.4, %for.inc.4 ]
  %and.6 = and i32 %checks, 64
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %if.then.6

if.then.6:                                        ; preds = %for.inc.5
  %cond2.6 = select i1 %comma.1.5, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.6, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 72)) #8
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5
  %comma.1.6 = phi i1 [ true, %if.then.6 ], [ %comma.1.5, %for.inc.5 ]
  %and.7 = and i32 %checks, 128
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %if.then.7

if.then.7:                                        ; preds = %for.inc.6
  %cond2.7 = select i1 %comma.1.6, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.7, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 84)) #8
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6
  %comma.1.7 = phi i1 [ true, %if.then.7 ], [ %comma.1.6, %for.inc.6 ]
  %and.8 = and i32 %checks, 256
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %for.inc.8, label %if.then.8

if.then.8:                                        ; preds = %for.inc.7
  %cond2.8 = select i1 %comma.1.7, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.8, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 96)) #8
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7
  %comma.1.8 = phi i1 [ true, %if.then.8 ], [ %comma.1.7, %for.inc.7 ]
  %and.9 = and i32 %checks, 512
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %for.inc.9, label %if.then.9

if.then.9:                                        ; preds = %for.inc.8
  %cond2.9 = select i1 %comma.1.8, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.9, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 108)) #8
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8
  %comma.1.9 = phi i1 [ true, %if.then.9 ], [ %comma.1.8, %for.inc.8 ]
  %and.10 = and i32 %checks, 1024
  %tobool.not.10 = icmp eq i32 %and.10, 0
  br i1 %tobool.not.10, label %for.inc.10, label %if.then.10

if.then.10:                                       ; preds = %for.inc.9
  %cond2.10 = select i1 %comma.1.9, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.10, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 120)) #8
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then.10, %for.inc.9
  %comma.1.10 = phi i1 [ true, %if.then.10 ], [ %comma.1.9, %for.inc.9 ]
  %and.11 = and i32 %checks, 2048
  %tobool.not.11 = icmp eq i32 %and.11, 0
  br i1 %tobool.not.11, label %for.inc.11, label %if.then.11

if.then.11:                                       ; preds = %for.inc.10
  %cond2.11 = select i1 %comma.1.10, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.11, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 132)) #8
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then.11, %for.inc.10
  %comma.1.11 = phi i1 [ true, %if.then.11 ], [ %comma.1.10, %for.inc.10 ]
  %and.12 = and i32 %checks, 4096
  %tobool.not.12 = icmp eq i32 %and.12, 0
  br i1 %tobool.not.12, label %for.inc.12, label %if.then.12

if.then.12:                                       ; preds = %for.inc.11
  %cond2.12 = select i1 %comma.1.11, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.12, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 144)) #8
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then.12, %for.inc.11
  %comma.1.12 = phi i1 [ true, %if.then.12 ], [ %comma.1.11, %for.inc.11 ]
  %and.13 = and i32 %checks, 8192
  %tobool.not.13 = icmp eq i32 %and.13, 0
  br i1 %tobool.not.13, label %for.inc.13, label %if.then.13

if.then.13:                                       ; preds = %for.inc.12
  %cond2.13 = select i1 %comma.1.12, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.13, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 156)) #8
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then.13, %for.inc.12
  %comma.1.13 = phi i1 [ true, %if.then.13 ], [ %comma.1.12, %for.inc.12 ]
  %and.14 = and i32 %checks, 16384
  %tobool.not.14 = icmp eq i32 %and.14, 0
  br i1 %tobool.not.14, label %for.inc.14, label %if.then.14

if.then.14:                                       ; preds = %for.inc.13
  %cond2.14 = select i1 %comma.1.13, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.14, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 168)) #8
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.then.14, %for.inc.13
  %comma.1.14 = phi i1 [ true, %if.then.14 ], [ %comma.1.13, %for.inc.13 ]
  %and.15 = and i32 %checks, 32768
  %tobool.not.15 = icmp eq i32 %and.15, 0
  br i1 %tobool.not.15, label %for.inc.15, label %if.then.15

if.then.15:                                       ; preds = %for.inc.14
  %cond2.15 = select i1 %comma.1.14, ptr %cond, ptr @.str.9
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond2.15, ptr noundef nonnull getelementptr inbounds (i8, ptr @check_names, i64 180)) #8
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.then.15, %for.inc.14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %left) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare void @my_snprintf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

declare ptr @uint64_to_str(i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @uint64_to_nicestr(i64 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @print_adv_helper(i64 noundef %stream_count, i64 noundef %block_count, i64 noundef %compressed_size, i64 noundef %uncompressed_size, i32 noundef %checks, i64 noundef %stream_padding) unnamed_addr #0 {
entry:
  %checks_str = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %checks_str) #8
  call fastcc void @get_check_names(ptr noundef nonnull %checks_str, i32 noundef %checks, i1 noundef zeroext true)
  %call = call ptr @uint64_to_str(i64 noundef %stream_count, i32 noundef 0) #8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef %call)
  %call2 = call ptr @uint64_to_str(i64 noundef %block_count, i32 noundef 0) #8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %call2)
  %call4 = call ptr @uint64_to_nicestr(i64 noundef %compressed_size, i32 noundef 0, i32 noundef 4, i1 noundef zeroext true, i32 noundef 0) #8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %call4)
  %call6 = call ptr @uint64_to_nicestr(i64 noundef %uncompressed_size, i32 noundef 0, i32 noundef 4, i1 noundef zeroext true, i32 noundef 0) #8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %call6)
  %cmp.i = icmp eq i64 %uncompressed_size, 0
  br i1 %cmp.i, label %get_ratio.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %conv.i = uitofp i64 %compressed_size to double
  %conv1.i = uitofp i64 %uncompressed_size to double
  %div.i = fdiv double %conv.i, %conv1.i
  %cmp2.i = fcmp ogt double %div.i, 9.999000e+00
  br i1 %cmp2.i, label %get_ratio.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %call.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @get_ratio.buf, i64 noundef 16, ptr noundef nonnull @.str.11, double noundef %div.i) #8
  br label %get_ratio.exit

get_ratio.exit:                                   ; preds = %entry, %if.end.i, %if.end5.i
  %retval.1.i = phi ptr [ @.str.10, %entry ], [ @get_ratio.buf, %if.end5.i ], [ @.str.10, %if.end.i ]
  %call9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull %retval.1.i)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %checks_str)
  %call12 = call ptr @uint64_to_nicestr(i64 noundef %stream_padding, i32 noundef 0, i32 noundef 4, i1 noundef zeroext true, i32 noundef 0) #8
  %call13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %call12)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %checks_str) #8
  ret void
}

declare i64 @round_up_to_mib(i64 noundef) local_unnamed_addr #1

declare i64 @spec_mem_get_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @message_strm(i32 noundef) local_unnamed_addr #1

declare zeroext i1 @io_pread(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lzma_stream_footer_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @hardware_memlimit_get(i32 noundef) local_unnamed_addr #1

declare i64 @lzma_index_memused(ptr noundef) local_unnamed_addr #1

declare void @message_bug() local_unnamed_addr #1

declare i32 @lzma_index_decoder(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @lzma_memusage(ptr noundef) local_unnamed_addr #1

declare void @message_mem_needed(i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @lzma_index_total_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_stream_header_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_index_stream_flags(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_index_stream_padding(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lzma_index_cat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_index_checks(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_index_stream_count(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_index_block_count(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_index_file_size(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_index_uncompressed_size(ptr noundef) local_unnamed_addr #1

declare void @lzma_index_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @lzma_index_iter_next(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lzma_index_iter_rewind(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @parse_details(ptr noundef %pair, ptr nocapture noundef readonly %iter, ptr noundef %bhi, ptr nocapture noundef %xfi) unnamed_addr #0 {
entry:
  %buf.i6 = alloca %union.io_buf, align 8
  %buf.i = alloca %union.io_buf, align 8
  %filters.i = alloca [5 x %struct.lzma_filter], align 16
  %block19.i = alloca %struct.lzma_block, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %filters.i)
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %block19.i)
  %total_size.i = getelementptr inbounds i8, ptr %iter, i64 184
  %0 = load i64, ptr %total_size.i, align 8
  %1 = load ptr, ptr %iter, align 8
  %check.i = getelementptr inbounds i8, ptr %1, i64 16
  %2 = load i32, ptr %check.i, align 8
  %call.i = tail call i32 @lzma_check_size(i32 noundef %2) #8
  %conv.i = zext i32 %call.i to i64
  %sub.i = sub i64 %0, %conv.i
  %cmp.i = icmp ult i64 %sub.i, 1024
  br i1 %cmp.i, label %cond.true.i, label %cond.end.i

cond.true.i:                                      ; preds = %entry
  %3 = load i64, ptr %total_size.i, align 8
  %4 = load ptr, ptr %iter, align 8
  %check6.i = getelementptr inbounds i8, ptr %4, i64 16
  %5 = load i32, ptr %check6.i, align 8
  %call7.i = tail call i32 @lzma_check_size(i32 noundef %5) #8
  %6 = trunc i64 %3 to i32
  %7 = sub i32 %6, %call7.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry
  %cond.i = phi i32 [ %7, %cond.true.i ], [ 1024, %entry ]
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %buf.i) #8
  %conv11.i = zext i32 %cond.i to i64
  %compressed_file_offset.i = getelementptr inbounds i8, ptr %iter, i64 128
  %8 = load i64, ptr %compressed_file_offset.i, align 8
  %call13.i = call zeroext i1 @io_pread(ptr noundef %pair, ptr noundef nonnull %buf.i, i64 noundef %conv11.i, i64 noundef %8) #8
  br i1 %call13.i, label %parse_block_header.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %cond.end.i
  %9 = load i8, ptr %buf.i, align 8
  %cmp15.i = icmp eq i8 %9, 0
  br i1 %cmp15.i, label %data_error.i, label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i
  store i32 0, ptr %block19.i, align 8
  %10 = load ptr, ptr %iter, align 8
  %check22.i = getelementptr inbounds i8, ptr %10, i64 16
  %11 = load i32, ptr %check22.i, align 8
  %check23.i = getelementptr inbounds i8, ptr %block19.i, i64 8
  store i32 %11, ptr %check23.i, align 8
  %filters24.i = getelementptr inbounds i8, ptr %block19.i, i64 32
  store ptr %filters.i, ptr %filters24.i, align 8
  %conv26.i = zext i8 %9 to i32
  %add.i = shl nuw nsw i32 %conv26.i, 2
  %mul.i = add nuw nsw i32 %add.i, 4
  %header_size.i = getelementptr inbounds i8, ptr %block19.i, i64 4
  store i32 %mul.i, ptr %header_size.i, align 4
  %cmp28.i = icmp ugt i32 %mul.i, %cond.i
  br i1 %cmp28.i, label %data_error.i, label %if.end31.i

if.end31.i:                                       ; preds = %if.end18.i
  %call33.i = call i32 @lzma_block_header_decode(ptr noundef nonnull %block19.i, ptr noundef null, ptr noundef nonnull %buf.i) #8
  switch i32 %call33.i, label %sw.default.i [
    i32 0, label %sw.epilog.i
    i32 8, label %cleanup.sink.split.i
    i32 9, label %data_error.i
  ]

sw.default.i:                                     ; preds = %if.end31.i
  call void @message_bug() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.end31.i
  %compressed_size.i = getelementptr inbounds i8, ptr %block19.i, i64 16
  %12 = load i64, ptr %compressed_size.i, align 8
  %cmp36.not.i = icmp eq i64 %12, -1
  %conv39.i = select i1 %cmp36.not.i, i8 45, i8 99
  %flags40.i = getelementptr inbounds i8, ptr %bhi, i64 4
  store i8 %conv39.i, ptr %flags40.i, align 4
  %uncompressed_size.i = getelementptr inbounds i8, ptr %block19.i, i64 24
  %13 = load i64, ptr %uncompressed_size.i, align 8
  %cmp42.not.i = icmp eq i64 %13, -1
  %conv45.i = select i1 %cmp42.not.i, i8 45, i8 117
  %arrayidx47.i = getelementptr inbounds i8, ptr %bhi, i64 5
  store i8 %conv45.i, ptr %arrayidx47.i, align 1
  %arrayidx49.i = getelementptr inbounds i8, ptr %bhi, i64 6
  store i8 0, ptr %arrayidx49.i, align 2
  %cmp51.i = icmp ne i64 %12, -1
  %cmp54.i = icmp ne i64 %13, -1
  %14 = select i1 %cmp51.i, i1 %cmp54.i, i1 false
  %all_have_sizes.i = getelementptr inbounds i8, ptr %xfi, i64 24
  %15 = load i8, ptr %all_have_sizes.i, align 8, !range !5, !noundef !6
  %tobool132.i = icmp ne i8 %15, 0
  %tobool.i = and i1 %14, %tobool132.i
  %storedv.i = zext i1 %tobool.i to i8
  store i8 %storedv.i, ptr %all_have_sizes.i, align 8
  %unpadded_size.i = getelementptr inbounds i8, ptr %iter, i64 176
  %16 = load i64, ptr %unpadded_size.i, align 8
  %call58.i = call i32 @lzma_block_compressed_size(ptr noundef nonnull %block19.i, i64 noundef %16) #8
  switch i32 %call58.i, label %sw.default75.i [
    i32 0, label %sw.bb59.i
    i32 9, label %sw.bb70.i
  ]

sw.bb59.i:                                        ; preds = %sw.epilog.i
  %17 = load i64, ptr %uncompressed_size.i, align 8
  %cmp61.i = icmp eq i64 %17, -1
  br i1 %cmp61.i, label %sw.epilog76.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %sw.bb59.i
  %uncompressed_size65.i = getelementptr inbounds i8, ptr %iter, i64 168
  %18 = load i64, ptr %uncompressed_size65.i, align 8
  %cmp66.i = icmp eq i64 %17, %18
  br i1 %cmp66.i, label %sw.epilog76.i, label %sw.bb70.i

sw.bb70.i:                                        ; preds = %lor.lhs.false.i, %sw.epilog.i
  %19 = load i64, ptr %filters.i, align 16
  %cmp72.not133.i = icmp eq i64 %19, -1
  br i1 %cmp72.not133.i, label %data_error.i, label %for.body.i

for.body.i:                                       ; preds = %sw.bb70.i, %for.body.i
  %arrayidx71135.i = phi ptr [ %arrayidx71.i, %for.body.i ], [ %filters.i, %sw.bb70.i ]
  %i.0134.i = phi i64 [ %inc.i, %for.body.i ], [ 0, %sw.bb70.i ]
  %options.i = getelementptr inbounds i8, ptr %arrayidx71135.i, i64 8
  %20 = load ptr, ptr %options.i, align 8
  call void @free(ptr noundef %20) #8
  %inc.i = add i64 %i.0134.i, 1
  %arrayidx71.i = getelementptr inbounds [5 x %struct.lzma_filter], ptr %filters.i, i64 0, i64 %inc.i
  %21 = load i64, ptr %arrayidx71.i, align 16
  %cmp72.not.i = icmp eq i64 %21, -1
  br i1 %cmp72.not.i, label %data_error.i, label %for.body.i

sw.default75.i:                                   ; preds = %sw.epilog.i
  call void @message_bug() #8
  br label %sw.epilog76.i

sw.epilog76.i:                                    ; preds = %sw.default75.i, %lor.lhs.false.i, %sw.bb59.i
  %22 = load i32, ptr %header_size.i, align 4
  store i32 %22, ptr %bhi, align 8
  %23 = load i64, ptr %compressed_size.i, align 8
  %compressed_size80.i = getelementptr inbounds i8, ptr %bhi, i64 8
  store i64 %23, ptr %compressed_size80.i, align 8
  %call82.i = call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull %filters.i) #8
  %memusage.i = getelementptr inbounds i8, ptr %bhi, i64 16
  store i64 %call82.i, ptr %memusage.i, align 8
  %memusage_max.i = getelementptr inbounds i8, ptr %xfi, i64 16
  %24 = load i64, ptr %memusage_max.i, align 8
  %cmp84.i = icmp ult i64 %24, %call82.i
  br i1 %cmp84.i, label %if.then86.i, label %if.end89.i

if.then86.i:                                      ; preds = %sw.epilog76.i
  store i64 %call82.i, ptr %memusage_max.i, align 8
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then86.i, %sw.epilog76.i
  %filter_chain.i = getelementptr inbounds i8, ptr %bhi, i64 24
  call void @message_filters_to_str(ptr noundef nonnull %filter_chain.i, ptr noundef nonnull %filters.i, i1 noundef zeroext false) #8
  %25 = load i64, ptr %filters.i, align 16
  %cmp96.not136.i = icmp eq i64 %25, -1
  br i1 %cmp96.not136.i, label %if.end, label %for.body99.i

for.body99.i:                                     ; preds = %if.end89.i, %for.body99.i
  %arrayidx94138.i = phi ptr [ %arrayidx94.i, %for.body99.i ], [ %filters.i, %if.end89.i ]
  %i92.0137.i = phi i64 [ %inc103.i, %for.body99.i ], [ 0, %if.end89.i ]
  %options101.i = getelementptr inbounds i8, ptr %arrayidx94138.i, i64 8
  %26 = load ptr, ptr %options101.i, align 8
  call void @free(ptr noundef %26) #8
  %inc103.i = add i64 %i92.0137.i, 1
  %arrayidx94.i = getelementptr inbounds [5 x %struct.lzma_filter], ptr %filters.i, i64 0, i64 %inc103.i
  %27 = load i64, ptr %arrayidx94.i, align 16
  %cmp96.not.i = icmp eq i64 %27, -1
  br i1 %cmp96.not.i, label %if.end, label %for.body99.i

data_error.i:                                     ; preds = %for.body.i, %sw.bb70.i, %if.end31.i, %if.end18.i, %if.end.i
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %data_error.i, %if.end31.i
  %.sink139.i = phi i32 [ 9, %data_error.i ], [ %call33.i, %if.end31.i ]
  %28 = load ptr, ptr %pair, align 8
  %call106.i = call ptr @message_strm(i32 noundef %.sink139.i) #8
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.28, ptr noundef %28, ptr noundef %call106.i) #8
  br label %parse_block_header.exit.thread

parse_block_header.exit.thread:                   ; preds = %cond.end.i, %cleanup.sink.split.i
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters.i)
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %block19.i)
  br label %return

if.end:                                           ; preds = %for.body99.i, %if.end89.i
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters.i)
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %block19.i)
  %29 = load ptr, ptr %iter, align 8
  %check.i7 = getelementptr inbounds i8, ptr %29, i64 16
  %30 = load i32, ptr %check.i7, align 8
  %cmp.i8 = icmp eq i32 %30, 0
  br i1 %cmp.i8, label %if.then.i, label %if.end.i9

if.then.i:                                        ; preds = %if.end
  store i32 2960685, ptr @check_value, align 16
  br label %return

if.end.i9:                                        ; preds = %if.end
  %call4.i = call i32 @lzma_check_size(i32 noundef %30) #8
  %31 = load i64, ptr %compressed_file_offset.i, align 8
  %32 = load i64, ptr %total_size.i, align 8
  %conv.i12 = zext i32 %call4.i to i64
  %add.i13 = sub i64 %31, %conv.i12
  %sub.i14 = add i64 %add.i13, %32
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %buf.i6) #8
  %call7.i15 = call zeroext i1 @io_pread(ptr noundef %pair, ptr noundef nonnull %buf.i6, i64 noundef %conv.i12, i64 noundef %sub.i14) #8
  br i1 %call7.i15, label %cleanup.i, label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i9
  switch i32 %call4.i, label %for.body.i17 [
    i32 4, label %if.then12.i
    i32 8, label %if.then16.i
    i32 0, label %cleanup.i
  ]

if.then12.i:                                      ; preds = %if.end9.i
  %33 = load i32, ptr %buf.i6, align 8
  %call13.i16 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @check_value, i64 noundef 129, ptr noundef nonnull @.str.35, i32 noundef %33) #8
  br label %cleanup.i

if.then16.i:                                      ; preds = %if.end9.i
  %34 = load i64, ptr %buf.i6, align 8
  %call18.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @check_value, i64 noundef 129, ptr noundef nonnull @.str.36, i64 noundef %34) #8
  br label %cleanup.i

for.body.i17:                                     ; preds = %if.end9.i, %for.body.i17
  %i.041.i = phi i64 [ %inc.i19, %for.body.i17 ], [ 0, %if.end9.i ]
  %mul.i18 = shl nuw nsw i64 %i.041.i, 1
  %add.ptr.i = getelementptr inbounds i8, ptr @check_value, i64 %mul.i18
  %arrayidx23.i = getelementptr inbounds [8192 x i8], ptr %buf.i6, i64 0, i64 %i.041.i
  %35 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %35 to i32
  %call25.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i, i64 noundef 3, ptr noundef nonnull @.str.37, i32 noundef %conv24.i) #8
  %inc.i19 = add nuw nsw i64 %i.041.i, 1
  %exitcond.not.i = icmp eq i64 %inc.i19, %conv.i12
  br i1 %exitcond.not.i, label %cleanup.i, label %for.body.i17

cleanup.i:                                        ; preds = %for.body.i17, %if.then16.i, %if.then12.i, %if.end9.i, %if.end.i9
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %buf.i6) #8
  br label %return

return:                                           ; preds = %cleanup.i, %if.then.i, %parse_block_header.exit.thread
  %retval.0 = phi i1 [ true, %parse_block_header.exit.thread ], [ false, %if.then.i ], [ %call7.i15, %cleanup.i ]
  ret i1 %retval.0
}

declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare i32 @lzma_block_header_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_block_compressed_size(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

declare i64 @lzma_raw_decoder_memusage(ptr noundef) local_unnamed_addr #1

declare void @message_filters_to_str(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @tuklib_mbstr_fw(ptr noundef, i32 noundef) local_unnamed_addr #1

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{i8 0, i8 2}
!6 = !{}
