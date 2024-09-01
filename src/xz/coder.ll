; ModuleID = 'xz/coder.c'
source_filename = "xz/coder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%union.io_buf = type { [1024 x i64] }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }

@opt_mode = dso_local local_unnamed_addr global i32 0, align 4
@opt_format = dso_local local_unnamed_addr global i32 0, align 4
@opt_auto_adjust = dso_local local_unnamed_addr global i8 1, align 1
@check = internal unnamed_addr global i32 0, align 4
@check_default = internal unnamed_addr global i1 false, align 1
@preset_number = internal unnamed_addr global i32 6, align 4
@filters_count = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Maximum number of filters is four\00", align 1
@filters = internal global [5 x %struct.lzma_filter] zeroinitializer, align 16
@coder_set_compression_settings.opt_lzma = internal global %struct.lzma_options_lzma zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Using a preset in raw mode is discouraged.\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"The exact options of the presets may vary between software versions.\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"The .lzma format supports only the LZMA1 filter\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"LZMA1 cannot be used with the .xz format\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Unsupported filter chain or filter options\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Decompression will need %s MiB of memory.\00", align 1
@.str.7 = private unnamed_addr constant [101 x i8] c"Adjusted LZMA%c dictionary size from %s MiB to %s MiB to not exceed the memory usage limit of %s MiB\00", align 1
@in_buf = internal global %union.io_buf zeroinitializer, align 8
@strm = internal global %struct.lzma_stream zeroinitializer, align 8
@user_abort = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"Memory usage limit is too low for the given filter setup.\00", align 1
@opt_stdout = external local_unnamed_addr global i8, align 1
@opt_force = external local_unnamed_addr global i8, align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@is_format_xz.magic = internal constant [6 x i8] c"\FD7zXZ\00", align 1
@__const.is_format_lzma.filter = private unnamed_addr constant %struct.lzma_filter { i64 4611686018427387905, ptr null }, align 8
@out_buf = internal global %union.io_buf zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @coder_set_check(i32 noundef %new_check) local_unnamed_addr #0 {
entry:
  store i32 %new_check, ptr @check, align 4
  store i1 true, ptr @check_default, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @coder_set_preset(i32 noundef %new_preset) local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @preset_number, align 4
  %and = and i32 %0, -32
  %or = or i32 %and, %new_preset
  store i32 %or, ptr @preset_number, align 4
  %filters_count.promoted.i = load i32, ptr @filters_count, align 4
  %cmp.not5.i = icmp eq i32 %filters_count.promoted.i, 0
  br i1 %cmp.not5.i, label %forget_filter_chain.exit, label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %entry
  %1 = zext i32 %filters_count.promoted.i to i64
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.preheader.i
  %indvars.iv.i = phi i64 [ %1, %while.body.preheader.i ], [ %2, %while.body.i ]
  %2 = add nsw i64 %indvars.iv.i, -1
  %options.i = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %2, i32 1
  %3 = load ptr, ptr %options.i, align 8
  tail call void @free(ptr noundef %3) #8
  store ptr null, ptr %options.i, align 8
  %cmp.not.wide.i = icmp eq i64 %2, 0
  br i1 %cmp.not.wide.i, label %while.cond.while.end_crit_edge.i, label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 0, ptr @filters_count, align 4
  br label %forget_filter_chain.exit

forget_filter_chain.exit:                         ; preds = %entry, %while.cond.while.end_crit_edge.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @coder_set_extreme() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @preset_number, align 4
  %or = or i32 %0, -2147483648
  store i32 %or, ptr @preset_number, align 4
  %filters_count.promoted.i = load i32, ptr @filters_count, align 4
  %cmp.not5.i = icmp eq i32 %filters_count.promoted.i, 0
  br i1 %cmp.not5.i, label %forget_filter_chain.exit, label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %entry
  %1 = zext i32 %filters_count.promoted.i to i64
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.preheader.i
  %indvars.iv.i = phi i64 [ %1, %while.body.preheader.i ], [ %2, %while.body.i ]
  %2 = add nsw i64 %indvars.iv.i, -1
  %options.i = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %2, i32 1
  %3 = load ptr, ptr %options.i, align 8
  tail call void @free(ptr noundef %3) #8
  store ptr null, ptr %options.i, align 8
  %cmp.not.wide.i = icmp eq i64 %2, 0
  br i1 %cmp.not.wide.i, label %while.cond.while.end_crit_edge.i, label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 0, ptr @filters_count, align 4
  br label %forget_filter_chain.exit

forget_filter_chain.exit:                         ; preds = %entry, %while.cond.while.end_crit_edge.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @coder_add_filter(i64 noundef %id, ptr noundef %options) local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @filters_count, align 4
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str) #8
  %.pre = load i32, ptr @filters_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %idxprom
  store i64 %id, ptr %arrayidx, align 16
  %options4 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %idxprom, i32 1
  store ptr %options, ptr %options4, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr @filters_count, align 4
  store i32 6, ptr @preset_number, align 4
  ret void
}

declare void @message_fatal(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @coder_set_compression_settings() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @filters_count, align 4
  %cmp = icmp eq i32 %0, 0
  %.pre = load i32, ptr @opt_format, align 4
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %.pre, 3
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  tail call void (i32, ptr, ...) @message(i32 noundef 2, ptr noundef nonnull @.str.1) #8
  tail call void (i32, ptr, ...) @message(i32 noundef 2, ptr noundef nonnull @.str.2) #8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %1 = load i32, ptr @preset_number, align 4
  %call = tail call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull @coder_set_compression_settings.opt_lzma, i32 noundef %1) #8
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @message_bug() #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = load i32, ptr @opt_format, align 4
  %cmp5 = icmp eq i32 %2, 2
  %cond = select i1 %cmp5, i64 4611686018427387905, i64 33
  store i64 %cond, ptr @filters, align 16
  store ptr @coder_set_compression_settings.opt_lzma, ptr getelementptr inbounds (i8, ptr @filters, i64 8), align 8
  store i32 1, ptr @filters_count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end4, %entry
  %3 = phi i32 [ %2, %if.end4 ], [ %.pre, %entry ]
  %4 = phi i32 [ 1, %if.end4 ], [ %0, %entry ]
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %idxprom
  store i64 -1, ptr %arrayidx, align 16
  %cmp7 = icmp eq i32 %3, 2
  br i1 %cmp7, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %cmp8 = icmp ne i32 %4, 1
  %5 = load i64, ptr @filters, align 16
  %cmp9 = icmp ne i64 %5, 4611686018427387905
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then10, label %if.end22

if.then10:                                        ; preds = %land.lhs.true
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.3) #8
  %.pr.pre = load i32, ptr @opt_format, align 4
  %.pre137.pre = load i32, ptr @filters_count, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6
  %6 = phi i32 [ %4, %if.end6 ], [ %.pre137.pre, %if.then10 ]
  %7 = phi i32 [ %3, %if.end6 ], [ %.pr.pre, %if.then10 ]
  %cmp12 = icmp eq i32 %7, 1
  %cmp14133 = icmp ne i32 %6, 0
  %or.cond135 = select i1 %cmp12, i1 %cmp14133, i1 false
  br i1 %or.cond135, label %for.body, label %if.end22

for.body:                                         ; preds = %if.end11, %for.inc
  %8 = phi i32 [ %10, %for.inc ], [ %6, %if.end11 ]
  %i.0134 = phi i64 [ %inc, %for.inc ], [ 0, %if.end11 ]
  %arrayidx16 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %i.0134
  %9 = load i64, ptr %arrayidx16, align 16
  %cmp18 = icmp eq i64 %9, 4611686018427387905
  br i1 %cmp18, label %if.then20, label %for.inc

if.then20:                                        ; preds = %for.body
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.4) #8
  %.pre138 = load i32, ptr @filters_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then20
  %10 = phi i32 [ %8, %for.body ], [ %.pre138, %if.then20 ]
  %inc = add nuw nsw i64 %i.0134, 1
  %conv = zext i32 %10 to i64
  %cmp14 = icmp ult i64 %inc, %conv
  br i1 %cmp14, label %for.body, label %if.end22

if.end22:                                         ; preds = %for.inc, %land.lhs.true, %if.end11
  tail call void @message_filters_show(i32 noundef 4, ptr noundef nonnull @filters) #8
  %11 = load i32, ptr @opt_mode, align 4
  %call23 = tail call i64 @hardware_memlimit_get(i32 noundef %11) #8
  %12 = load i32, ptr @opt_mode, align 4
  %cmp24 = icmp eq i32 %12, 0
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end22
  %call27 = tail call i64 @lzma_raw_encoder_memusage(ptr noundef nonnull @filters) #8
  br label %if.end29

if.else:                                          ; preds = %if.end22
  %call28 = tail call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull @filters) #8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  %memory_usage.0 = phi i64 [ %call27, %if.then26 ], [ %call28, %if.else ]
  %cmp30 = icmp eq i64 %memory_usage.0, -1
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.5) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29
  tail call void @message_mem_needed(i32 noundef 4, i64 noundef %memory_usage.0) #8
  %13 = load i32, ptr @opt_mode, align 4
  %cmp34 = icmp eq i32 %13, 0
  br i1 %cmp34, label %if.then36, label %if.end44

if.then36:                                        ; preds = %if.end33
  %call37 = tail call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull @filters) #8
  %cmp38.not = icmp eq i64 %call37, -1
  br i1 %cmp38.not, label %if.end44, label %if.then40

if.then40:                                        ; preds = %if.then36
  %call41 = tail call i64 @round_up_to_mib(i64 noundef %call37) #8
  %call42 = tail call ptr @uint64_to_str(i64 noundef %call41, i32 noundef 0) #8
  tail call void (i32, ptr, ...) @message(i32 noundef 4, ptr noundef nonnull @.str.6, ptr noundef %call42) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %if.then40, %if.end33
  %cmp45 = icmp ugt i64 %memory_usage.0, %call23
  br i1 %cmp45, label %if.then47, label %if.end102

if.then47:                                        ; preds = %if.end44
  %14 = load i8, ptr @opt_auto_adjust, align 1, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %14 to i1
  %15 = load i32, ptr @opt_format, align 4
  %cmp49 = icmp ne i32 %15, 3
  %or.cond110.not = select i1 %loadedv, i1 %cmp49, i1 false
  br i1 %or.cond110.not, label %while.cond.preheader, label %if.then51

if.then51:                                        ; preds = %if.then47
  tail call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef nonnull @.str.8) #8
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %memory_usage.0) #8
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then47, %if.then51
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end67
  %i53.0 = phi i64 [ %inc68, %if.end67 ], [ 0, %while.cond.preheader ]
  %arrayidx54 = getelementptr inbounds [5 x %struct.lzma_filter], ptr @filters, i64 0, i64 %i53.0
  %16 = load i64, ptr %arrayidx54, align 16
  switch i64 %16, label %if.end67 [
    i64 33, label %while.end
    i64 4611686018427387905, label %while.end
    i64 -1, label %if.then66
  ]

if.then66:                                        ; preds = %while.cond
  tail call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef nonnull @.str.8) #8
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %memory_usage.0) #8
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  br label %if.end67

if.end67:                                         ; preds = %while.cond, %if.then66
  %inc68 = add i64 %i53.0, 1
  br label %while.cond

while.end:                                        ; preds = %while.cond, %while.cond
  %options = getelementptr inbounds i8, ptr %arrayidx54, i64 8
  %17 = load ptr, ptr %options, align 8
  %18 = load i32, ptr %17, align 8
  %and = and i32 %18, -1048576
  br label %while.cond71

while.cond71:                                     ; preds = %if.end86, %while.end
  %storemerge = phi i32 [ %and, %while.end ], [ %sub, %if.end86 ]
  %memory_usage.1 = phi i64 [ %memory_usage.0, %while.end ], [ %call78, %if.end86 ]
  store i32 %storemerge, ptr %17, align 8
  %cmp74 = icmp ult i32 %storemerge, 1048576
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %while.cond71
  tail call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef nonnull @.str.8) #8
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %memory_usage.1) #8
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %while.cond71
  %call78 = tail call i64 @lzma_raw_encoder_memusage(ptr noundef nonnull @filters) #8
  %cmp79 = icmp eq i64 %call78, -1
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end77
  tail call void @message_bug() #8
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end77
  %cmp83.not = icmp ugt i64 %call78, %call23
  br i1 %cmp83.not, label %if.end86, label %while.end88

if.end86:                                         ; preds = %if.end82
  %19 = load i32, ptr %17, align 8
  %sub = add i32 %19, -1048576
  br label %while.cond71

while.end88:                                      ; preds = %if.end82
  %20 = load i64, ptr %arrayidx54, align 16
  %cmp91 = icmp eq i64 %20, 33
  %cond93 = select i1 %cmp91, i32 50, i32 49
  %shr = lshr i32 %18, 20
  %conv94 = zext nneg i32 %shr to i64
  %call95 = tail call ptr @uint64_to_str(i64 noundef %conv94, i32 noundef 0) #8
  %21 = load i32, ptr %17, align 8
  %shr97 = lshr i32 %21, 20
  %conv98 = zext nneg i32 %shr97 to i64
  %call99 = tail call ptr @uint64_to_str(i64 noundef %conv98, i32 noundef 1) #8
  %call100 = tail call i64 @round_up_to_mib(i64 noundef %call23) #8
  %call101 = tail call ptr @uint64_to_str(i64 noundef %call100, i32 noundef 2) #8
  tail call void (i32, ptr, ...) @message(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %cond93, ptr noundef %call95, ptr noundef %call99, ptr noundef %call101) #8
  br label %if.end102

if.end102:                                        ; preds = %while.end88, %if.end44
  %.b = load i1, ptr @check_default, align 1
  br i1 %.b, label %if.end109, label %if.then104

if.then104:                                       ; preds = %if.end102
  store i32 4, ptr @check, align 4
  %call105 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef 4) #8
  %tobool106.not = icmp eq i8 %call105, 0
  br i1 %tobool106.not, label %if.then107, label %if.end109

if.then107:                                       ; preds = %if.then104
  store i32 1, ptr @check, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.then107, %if.end102
  ret void
}

declare void @message(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @message_bug() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @message_filters_show(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @hardware_memlimit_get(i32 noundef) local_unnamed_addr #2

declare i64 @lzma_raw_encoder_memusage(ptr noundef) local_unnamed_addr #2

declare i64 @lzma_raw_decoder_memusage(ptr noundef) local_unnamed_addr #2

declare void @message_mem_needed(i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @uint64_to_str(i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @round_up_to_mib(i64 noundef) local_unnamed_addr #2

declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @coder_run(ptr noundef %filename) local_unnamed_addr #1 {
entry:
  tail call void @message_filename(ptr noundef %filename) #8
  %call = tail call ptr @io_open_src(ptr noundef %filename) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store ptr @in_buf, ptr @strm, align 8
  %call1 = tail call i64 @io_read(ptr noundef nonnull %call, ptr noundef nonnull @in_buf, i64 noundef 8192) #8
  store i64 %call1, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8
  %cmp2.not = icmp eq i64 %call1, -1
  br i1 %cmp2.not, label %if.end18, label %if.then3

if.then3:                                         ; preds = %if.end
  %0 = load i32, ptr @opt_mode, align 4
  %cmp.i = icmp eq i32 %0, 0
  %1 = load i32, ptr @opt_format, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then3
  switch i32 %1, label %if.then47.i [
    i32 3, label %sw.bb4.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb1.i:                                         ; preds = %if.then.i
  %2 = load i32, ptr @check, align 4
  %call.i = tail call i32 @lzma_stream_encoder(ptr noundef nonnull @strm, ptr noundef nonnull @filters, i32 noundef %2) #8
  br label %if.end45.i

sw.bb2.i:                                         ; preds = %if.then.i
  %3 = load ptr, ptr getelementptr inbounds (i8, ptr @filters, i64 8), align 8
  %call3.i = tail call i32 @lzma_alone_encoder(ptr noundef nonnull @strm, ptr noundef %3) #8
  br label %if.end45.i

sw.bb4.i:                                         ; preds = %if.then.i
  %call5.i = tail call i32 @lzma_raw_encoder(ptr noundef nonnull @strm, ptr noundef nonnull @filters) #8
  br label %if.end45.i

if.else.i:                                        ; preds = %if.then3
  switch i32 %1, label %sw.bb23.i [
    i32 0, label %sw.bb6.i
    i32 1, label %sw.bb13.i
    i32 2, label %sw.bb17.i
    i32 3, label %sw.bb35.i
  ]

sw.bb6.i:                                         ; preds = %if.else.i
  %cmp.i.i = icmp ugt i64 %call1, 5
  br i1 %cmp.i.i, label %is_format_xz.exit.i, label %if.else9.i

is_format_xz.exit.i:                              ; preds = %sw.bb6.i
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @in_buf, ptr noundef nonnull dereferenceable(6) @is_format_xz.magic, i64 6)
  %cmp1.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp1.i.i, label %sw.bb29.i, label %if.else9.i

if.else9.i:                                       ; preds = %is_format_xz.exit.i, %sw.bb6.i
  %call10.i = tail call fastcc zeroext i1 @is_format_lzma()
  br i1 %call10.i, label %sw.bb32.i, label %sw.bb23thread-pre-split.i

sw.bb13.i:                                        ; preds = %if.else.i
  %cmp.i61.i = icmp ugt i64 %call1, 5
  br i1 %cmp.i61.i, label %is_format_xz.exit65.i, label %sw.bb23thread-pre-split.i

is_format_xz.exit65.i:                            ; preds = %sw.bb13.i
  %bcmp.i63.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @in_buf, ptr noundef nonnull dereferenceable(6) @is_format_xz.magic, i64 6)
  %bcmp.i63.fr.i = freeze i32 %bcmp.i63.i
  %cmp1.i64.i = icmp eq i32 %bcmp.i63.fr.i, 0
  br i1 %cmp1.i64.i, label %sw.bb29.i, label %sw.bb23thread-pre-split.i

sw.bb17.i:                                        ; preds = %if.else.i
  %call18.i = tail call fastcc zeroext i1 @is_format_lzma()
  br i1 %call18.i, label %sw.bb32.i, label %sw.bb23thread-pre-split.i

sw.bb23thread-pre-split.i:                        ; preds = %sw.bb17.i, %is_format_xz.exit65.i, %sw.bb13.i, %if.else9.i
  %.pr.i = load i32, ptr @opt_mode, align 4
  br label %sw.bb23.i

sw.bb23.i:                                        ; preds = %sw.bb23thread-pre-split.i, %if.else.i
  %4 = phi i32 [ %.pr.i, %sw.bb23thread-pre-split.i ], [ %0, %if.else.i ]
  %cmp24.i = icmp eq i32 %4, 1
  br i1 %cmp24.i, label %land.lhs.true.i, label %if.then47.i

land.lhs.true.i:                                  ; preds = %sw.bb23.i
  %5 = load i8, ptr @opt_stdout, align 1, !range !5, !noundef !6
  %loadedv.i = trunc nuw i8 %5 to i1
  br i1 %loadedv.i, label %land.lhs.true25.i, label %if.then47.i

land.lhs.true25.i:                                ; preds = %land.lhs.true.i
  %6 = load i8, ptr @opt_force, align 1, !range !5, !noundef !6
  %loadedv26.i = trunc nuw i8 %6 to i1
  br i1 %loadedv26.i, label %coder_init.exit, label %if.then47.i

sw.bb29.i:                                        ; preds = %is_format_xz.exit65.i, %is_format_xz.exit.i
  %call30.i = tail call i64 @hardware_memlimit_get(i32 noundef 1) #8
  %call31.i = tail call i32 @lzma_stream_decoder(ptr noundef nonnull @strm, i64 noundef %call30.i, i32 noundef 10) #8
  br label %sw.epilog37.i

sw.bb32.i:                                        ; preds = %sw.bb17.i, %if.else9.i
  %call33.i = tail call i64 @hardware_memlimit_get(i32 noundef 1) #8
  %call34.i = tail call i32 @lzma_alone_decoder(ptr noundef nonnull @strm, i64 noundef %call33.i) #8
  br label %sw.epilog37.i

sw.bb35.i:                                        ; preds = %if.else.i
  %call36.i = tail call i32 @lzma_raw_decoder(ptr noundef nonnull @strm, ptr noundef nonnull @filters) #8
  br label %if.end45.i

sw.epilog37.i:                                    ; preds = %sw.bb32.i, %sw.bb29.i
  %ret.0.i = phi i32 [ %call34.i, %sw.bb32.i ], [ %call31.i, %sw.bb29.i ]
  %cmp38.i = icmp eq i32 %ret.0.i, 0
  br i1 %cmp38.i, label %if.then41.i, label %if.then47.i

if.then41.i:                                      ; preds = %sw.epilog37.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (i8, ptr @strm, i64 24), i8 0, i64 16, i1 false)
  %call42.i = tail call i32 @lzma_code(ptr noundef nonnull @strm, i32 noundef 0) #8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then41.i, %sw.bb35.i, %sw.bb4.i, %sw.bb2.i, %sw.bb1.i
  %ret.3.i = phi i32 [ %call3.i, %sw.bb2.i ], [ %call.i, %sw.bb1.i ], [ %call5.i, %sw.bb4.i ], [ %call42.i, %if.then41.i ], [ %call36.i, %sw.bb35.i ]
  %cmp46.not.i = icmp eq i32 %ret.3.i, 0
  br i1 %cmp46.not.i, label %coder_init.exit, label %if.then47.i

if.then47.i:                                      ; preds = %if.end45.i, %sw.epilog37.i, %land.lhs.true25.i, %land.lhs.true.i, %sw.bb23.i, %if.then.i
  %ret.390.i = phi i32 [ %ret.3.i, %if.end45.i ], [ 11, %if.then.i ], [ 7, %sw.bb23.i ], [ 7, %land.lhs.true.i ], [ 7, %land.lhs.true25.i ], [ %ret.0.i, %sw.epilog37.i ]
  %7 = load ptr, ptr %call, align 8
  %call48.i = tail call ptr @message_strm(i32 noundef %ret.390.i) #8
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.9, ptr noundef %7, ptr noundef %call48.i) #8
  %cmp49.i = icmp eq i32 %ret.390.i, 6
  br i1 %cmp49.i, label %if.then50.i, label %if.end18

if.then50.i:                                      ; preds = %if.then47.i
  %call51.i = tail call i64 @lzma_memusage(ptr noundef nonnull @strm) #8
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %call51.i) #8
  br label %if.end18

coder_init.exit:                                  ; preds = %land.lhs.true25.i, %if.end45.i
  %cmp10 = phi i1 [ true, %if.end45.i ], [ false, %land.lhs.true25.i ]
  %8 = load i32, ptr @user_abort, align 4
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then6, label %if.end18

if.then6:                                         ; preds = %coder_init.exit
  %9 = load i32, ptr @opt_mode, align 4
  %cmp7 = icmp eq i32 %9, 2
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then6
  %call8 = tail call zeroext i1 @io_open_dest(ptr noundef nonnull %call) #8
  br i1 %call8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false, %if.then6
  tail call void @message_progress_start(ptr noundef nonnull @strm, i64 noundef 0) #8
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then9
  %src_eof.i = getelementptr inbounds i8, ptr %call, i64 24
  %10 = load i8, ptr %src_eof.i, align 8, !range !5, !noundef !6
  store ptr @out_buf, ptr getelementptr inbounds (i8, ptr @strm, i64 24), align 8
  store i64 8192, ptr getelementptr inbounds (i8, ptr @strm, i64 32), align 8
  %11 = load i32, ptr @user_abort, align 4
  %tobool.not92.i = icmp eq i32 %11, 0
  br i1 %tobool.not92.i, label %while.body.preheader.i, label %if.end15

while.body.preheader.i:                           ; preds = %if.then11
  %loadedv.i29 = trunc nuw i8 %10 to i1
  %cond.i = select i1 %loadedv.i29, i32 3, i32 0
  br label %while.body.i

while.body.i:                                     ; preds = %if.end61.i, %while.body.preheader.i
  %action.093.i = phi i32 [ %action.1.i, %if.end61.i ], [ %cond.i, %while.body.preheader.i ]
  %12 = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8
  %cmp.i30 = icmp eq i64 %12, 0
  br i1 %cmp.i30, label %land.lhs.true.i32, label %if.end9.i

land.lhs.true.i32:                                ; preds = %while.body.i
  %13 = load i8, ptr %src_eof.i, align 8, !range !5, !noundef !6
  %loadedv2.i = trunc nuw i8 %13 to i1
  br i1 %loadedv2.i, label %if.end9.i, label %if.then.i33

if.then.i33:                                      ; preds = %land.lhs.true.i32
  store ptr @in_buf, ptr @strm, align 8
  %call.i34 = tail call i64 @io_read(ptr noundef nonnull %call, ptr noundef nonnull @in_buf, i64 noundef 8192) #8
  store i64 %call.i34, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8
  %cmp3.i = icmp eq i64 %call.i34, -1
  br i1 %cmp3.i, label %if.end15, label %if.end.i

if.end.i:                                         ; preds = %if.then.i33
  %14 = load i8, ptr %src_eof.i, align 8, !range !5, !noundef !6
  %loadedv6.i = trunc nuw i8 %14 to i1
  %spec.select.i = select i1 %loadedv6.i, i32 3, i32 %action.093.i
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i, %land.lhs.true.i32, %while.body.i
  %action.1.i = phi i32 [ %action.093.i, %land.lhs.true.i32 ], [ %action.093.i, %while.body.i ], [ %spec.select.i, %if.end.i ]
  %call10.i31 = tail call i32 @lzma_code(ptr noundef nonnull @strm, i32 noundef %action.1.i) #8
  %15 = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 32), align 8
  %cmp11.i = icmp eq i64 %15, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end18.i

if.then12.i:                                      ; preds = %if.end9.i
  %16 = load i32, ptr @opt_mode, align 4
  %cmp13.not.i = icmp eq i32 %16, 2
  br i1 %cmp13.not.i, label %if.end17.i, label %land.lhs.true14.i

land.lhs.true14.i:                                ; preds = %if.then12.i
  %call15.i = tail call zeroext i1 @io_write(ptr noundef nonnull %call, ptr noundef nonnull @out_buf, i64 noundef 8192) #8
  br i1 %call15.i, label %if.end15, label %if.end17.i

if.end17.i:                                       ; preds = %land.lhs.true14.i, %if.then12.i
  store ptr @out_buf, ptr getelementptr inbounds (i8, ptr @strm, i64 24), align 8
  store i64 8192, ptr getelementptr inbounds (i8, ptr @strm, i64 32), align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end17.i, %if.end9.i
  %17 = phi i64 [ 8192, %if.end17.i ], [ %15, %if.end9.i ]
  %cmp19.not.i = icmp eq i32 %call10.i31, 0
  br i1 %cmp19.not.i, label %if.end61.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end18.i
  %18 = add i32 %call10.i31, -4
  %19 = icmp ult i32 %18, -2
  %20 = load i32, ptr @opt_mode, align 4
  %cmp25.i = icmp ne i32 %20, 2
  %or.cond.i = select i1 %19, i1 %cmp25.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true26.i, label %if.end31.i

land.lhs.true26.i:                                ; preds = %if.then20.i
  %sub27.i = sub i64 8192, %17
  %call28.i = tail call zeroext i1 @io_write(ptr noundef nonnull %call, ptr noundef nonnull @out_buf, i64 noundef %sub27.i) #8
  br i1 %call28.i, label %if.end15, label %if.end31.i

if.end31.i:                                       ; preds = %land.lhs.true26.i, %if.then20.i
  %cmp32.i = icmp eq i32 %call10.i31, 1
  br i1 %cmp32.i, label %if.then33.i, label %if.end47.i

if.then33.i:                                      ; preds = %if.end31.i
  %21 = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8
  %cmp34.i = icmp eq i64 %21, 0
  br i1 %cmp34.i, label %land.lhs.true35.i, label %if.end53.i

land.lhs.true35.i:                                ; preds = %if.then33.i
  %22 = load i8, ptr %src_eof.i, align 8, !range !5, !noundef !6
  %loadedv37.i = trunc nuw i8 %22 to i1
  br i1 %loadedv37.i, label %if.end15, label %if.then38.i

if.then38.i:                                      ; preds = %land.lhs.true35.i
  %call39.i = tail call i64 @io_read(ptr noundef nonnull %call, ptr noundef nonnull @in_buf, i64 noundef 1) #8
  store i64 %call39.i, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8
  switch i64 %call39.i, label %if.end53.i [
    i64 -1, label %if.end15
    i64 0, label %while.end.loopexit100.i
  ]

if.end47.i:                                       ; preds = %if.end31.i
  br i1 %19, label %if.end53.i, label %if.end57.i

if.end53.i:                                       ; preds = %if.end47.i, %if.then38.i, %if.then33.i
  %ret.087.i = phi i32 [ 9, %if.then33.i ], [ 9, %if.then38.i ], [ %call10.i31, %if.end47.i ]
  %23 = load ptr, ptr %call, align 8
  %call50.i = tail call ptr @message_strm(i32 noundef %ret.087.i) #8
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.9, ptr noundef %23, ptr noundef %call50.i) #8
  %cmp54.i = icmp eq i32 %ret.087.i, 6
  br i1 %cmp54.i, label %if.then55.i, label %if.end15

if.then55.i:                                      ; preds = %if.end53.i
  %call56.i = tail call i64 @lzma_memusage(ptr noundef nonnull @strm) #8
  tail call void @message_mem_needed(i32 noundef 1, i64 noundef %call56.i) #8
  br label %if.end15

if.end57.i:                                       ; preds = %if.end47.i
  %24 = load ptr, ptr %call, align 8
  %call52.i = tail call ptr @message_strm(i32 noundef %call10.i31) #8
  tail call void (ptr, ...) @message_warning(ptr noundef nonnull @.str.9, ptr noundef %24, ptr noundef %call52.i) #8
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end57.i, %if.end18.i
  tail call void @message_progress_update() #8
  %25 = load i32, ptr @user_abort, align 4
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %while.body.i, label %if.end15

while.end.loopexit100.i:                          ; preds = %if.then38.i
  br label %if.end15

if.else:                                          ; preds = %if.then9
  %.pre.i = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end2.i, %if.else
  %26 = phi i64 [ %call3.i38, %if.end2.i ], [ %.pre.i, %if.else ]
  %cmp.not.i = icmp eq i64 %26, 0
  %27 = load i32, ptr @user_abort, align 4
  %tobool.not.i35 = icmp ne i32 %27, 0
  %or.cond.not.i = select i1 %cmp.not.i, i1 true, i1 %tobool.not.i35
  br i1 %or.cond.not.i, label %if.end15, label %if.end.i36

if.end.i36:                                       ; preds = %while.cond.i
  %call.i37 = tail call zeroext i1 @io_write(ptr noundef nonnull %call, ptr noundef nonnull @in_buf, i64 noundef %26) #8
  br i1 %call.i37, label %if.end15, label %if.end2.i

if.end2.i:                                        ; preds = %if.end.i36
  %28 = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8
  %29 = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 16), align 8
  %add.i = add i64 %29, %28
  store i64 %add.i, ptr getelementptr inbounds (i8, ptr @strm, i64 16), align 8
  store i64 %add.i, ptr getelementptr inbounds (i8, ptr @strm, i64 40), align 8
  tail call void @message_progress_update() #8
  %call3.i38 = tail call i64 @io_read(ptr noundef nonnull %call, ptr noundef nonnull @in_buf, i64 noundef 8192) #8
  store i64 %call3.i38, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8
  %cmp4.i = icmp eq i64 %call3.i38, -1
  br i1 %cmp4.i, label %if.end15, label %while.cond.i

if.end15:                                         ; preds = %if.end2.i, %if.end.i36, %while.cond.i, %if.end61.i, %land.lhs.true26.i, %land.lhs.true14.i, %if.then.i33, %while.end.loopexit100.i, %if.then55.i, %if.end53.i, %if.then38.i, %land.lhs.true35.i, %if.then11
  %success.0.in = phi i1 [ false, %if.then11 ], [ false, %if.then38.i ], [ true, %land.lhs.true35.i ], [ true, %while.end.loopexit100.i ], [ false, %if.then55.i ], [ false, %if.end53.i ], [ false, %if.then.i33 ], [ false, %land.lhs.true14.i ], [ false, %land.lhs.true26.i ], [ false, %if.end61.i ], [ false, %if.end.i36 ], [ false, %if.end2.i ], [ %cmp.not.i, %while.cond.i ]
  tail call void @message_progress_end(i1 noundef zeroext %success.0.in) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then47.i, %if.then50.i, %coder_init.exit, %if.end15, %lor.lhs.false, %if.end
  %success.2 = phi i1 [ false, %if.end ], [ false, %coder_init.exit ], [ %success.0.in, %if.end15 ], [ false, %lor.lhs.false ], [ false, %if.then50.i ], [ false, %if.then47.i ]
  tail call void @io_close(ptr noundef nonnull %call, i1 noundef zeroext %success.2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end18
  ret void
}

declare void @message_filename(ptr noundef) local_unnamed_addr #2

declare ptr @io_open_src(ptr noundef) local_unnamed_addr #2

declare i64 @io_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @io_open_dest(ptr noundef) local_unnamed_addr #2

declare void @message_progress_start(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @message_progress_end(i1 noundef zeroext) local_unnamed_addr #2

declare void @io_close(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

declare void @tuklib_exit(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_stream_encoder(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_alone_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lzma_raw_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @is_format_lzma() unnamed_addr #1 {
entry:
  %filter = alloca %struct.lzma_filter, align 8
  %0 = load i64, ptr getelementptr inbounds (i8, ptr @strm, i64 8), align 8
  %cmp = icmp ult i64 %0, 13
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %filter) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %filter, ptr noundef nonnull align 8 dereferenceable(16) @__const.is_format_lzma.filter, i64 16, i1 false)
  %call = call i32 @lzma_properties_decode(ptr noundef nonnull %filter, ptr noundef null, ptr noundef nonnull @in_buf, i64 noundef 5) #8
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end3, label %cleanup33

if.end3:                                          ; preds = %if.end
  %options = getelementptr inbounds i8, ptr %filter, i64 8
  %1 = load ptr, ptr %options, align 8
  %2 = load i32, ptr %1, align 8
  call void @free(ptr noundef %1) #8
  %cmp5.not = icmp eq i32 %2, -1
  br i1 %cmp5.not, label %if.end19, label %if.then6

if.then6:                                         ; preds = %if.end3
  %sub = add i32 %2, -1
  %shr = lshr i32 %sub, 2
  %or = or i32 %shr, %sub
  %shr7 = lshr i32 %or, 3
  %or8 = or i32 %shr7, %or
  %shr9 = lshr i32 %or8, 4
  %or10 = or i32 %shr9, %or8
  %shr11 = lshr i32 %or10, 8
  %or12 = or i32 %shr11, %or10
  %shr13 = lshr i32 %or12, 16
  %or14 = or i32 %shr13, %or12
  %inc = add i32 %or14, 1
  %cmp15 = icmp eq i32 %inc, %2
  %cmp16 = icmp ne i32 %2, 0
  %or.cond.not = and i1 %cmp16, %cmp15
  br i1 %or.cond.not, label %if.end19, label %cleanup33

if.end19:                                         ; preds = %if.then6, %if.end3
  %3 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 5), align 1
  %conv = zext i8 %3 to i64
  %4 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 6), align 2
  %conv.1 = zext i8 %4 to i64
  %shl.1 = shl nuw nsw i64 %conv.1, 8
  %or21.1 = or disjoint i64 %shl.1, %conv
  %5 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 7), align 1
  %conv.2 = zext i8 %5 to i64
  %shl.2 = shl nuw nsw i64 %conv.2, 16
  %or21.2 = or disjoint i64 %shl.2, %or21.1
  %6 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 8), align 8
  %conv.3 = zext i8 %6 to i64
  %shl.3 = shl nuw nsw i64 %conv.3, 24
  %or21.3 = or disjoint i64 %shl.3, %or21.2
  %7 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 9), align 1
  %conv.4 = zext i8 %7 to i64
  %shl.4 = shl nuw nsw i64 %conv.4, 32
  %or21.4 = or disjoint i64 %shl.4, %or21.3
  %8 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 10), align 2
  %conv.5 = zext i8 %8 to i64
  %shl.5 = shl nuw nsw i64 %conv.5, 40
  %or21.5 = or i64 %shl.5, %or21.4
  %9 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 11), align 1
  %conv.6 = zext i8 %9 to i64
  %shl.6 = shl nuw nsw i64 %conv.6, 48
  %or21.6 = or i64 %shl.6, %or21.5
  %10 = load i8, ptr getelementptr inbounds (i8, ptr @in_buf, i64 12), align 4
  %conv.7 = zext i8 %10 to i64
  %shl.7 = shl nuw i64 %conv.7, 56
  %or21.7 = or i64 %shl.7, %or21.6
  %11 = add i64 %or21.7, 1
  %or.cond34 = icmp ult i64 %11, 274877906946
  br label %cleanup33

cleanup33:                                        ; preds = %if.end19, %if.then6, %if.end
  %retval.3 = phi i1 [ false, %if.end ], [ %or.cond34, %if.end19 ], [ false, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %filter) #8
  br label %return

return:                                           ; preds = %entry, %cleanup33
  %retval.4 = phi i1 [ %retval.3, %cleanup33 ], [ false, %entry ]
  ret i1 %retval.4
}

declare i32 @lzma_stream_decoder(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_alone_decoder(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lzma_raw_decoder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @message_error(ptr noundef, ...) local_unnamed_addr #2

declare ptr @message_strm(i32 noundef) local_unnamed_addr #2

declare i64 @lzma_memusage(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @lzma_properties_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @io_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @message_warning(ptr noundef, ...) local_unnamed_addr #2

declare void @message_progress_update() local_unnamed_addr #2

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{i8 0, i8 2}
!6 = !{}
