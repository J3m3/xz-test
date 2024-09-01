; ModuleID = 'xz/message.c'
source_filename = "xz/message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter = type { i64, ptr }

@verbosity = internal unnamed_addr global i32 2, align 4
@files_pos = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Internal error (bug)\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"No integrity check; not verifying file integrity\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"Unsupported type of integrity check; not verifying file integrity\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Memory usage limit reached\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"File format not recognized\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Unsupported options\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Compressed data is corrupt\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Unexpected end of input\00", align 1
@opt_mode = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"%s B\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s MiB\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" --\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"hc3\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"hc4\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"bt2\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"bt3\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"bt4\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"lzma%c=dict=%s\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c",lc=%u,lp=%u,pb=%u,mode=%s,nice=%u,mf=%s,depth=%u\00", align 1
@message_filters_to_str.bcj_names = internal constant [6 x [9 x i8]] [[9 x i8] c"x86\00\00\00\00\00\00", [9 x i8] c"powerpc\00\00", [9 x i8] c"ia64\00\00\00\00\00", [9 x i8] c"arm\00\00\00\00\00\00", [9 x i8] c"armthumb\00", [9 x i8] c"sparc\00\00\00\00"], align 16
@.str.26 = private unnamed_addr constant [10 x i8] c"=start=%u\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"delta=dist=%u\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [22 x i8] c"%s: Filter chain: %s\0A\00", align 1
@progname = external local_unnamed_addr global ptr, align 8
@opt_robot = external local_unnamed_addr global i8, align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"XZ_VERSION=%u\0ALIBLZMA_VERSION=%u\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"liblzma %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [82 x i8] c"Usage: %s [OPTION]... [FILE]...\0ACompress or decompress FILEs in the .xz format.\0A\0A\00", align 1
@.str.34 = private unnamed_addr constant [74 x i8] c"Mandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c" Operation mode:\0A\00", align 1
@.str.36 = private unnamed_addr constant [190 x i8] c"  -z, --compress      force compression\0A  -d, --decompress    force decompression\0A  -t, --test          test compressed file integrity\0A  -l, --list          list information about .xz files\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"\0A Operation modifiers:\0A\00", align 1
@.str.38 = private unnamed_addr constant [206 x i8] c"  -k, --keep          keep (don't delete) input files\0A  -f, --force         force overwrite of output file and (de)compress links\0A  -c, --stdout        write to standard output and don't delete input files\00", align 1
@.str.39 = private unnamed_addr constant [431 x i8] c"      --no-sparse     do not create sparse files when decompressing\0A  -S, --suffix=.SUF   use the suffix `.SUF' on compressed files\0A      --files[=FILE]  read filenames to process from FILE; if FILE is\0A                      omitted, filenames are read from the standard input;\0A                      filenames must be terminated with the newline character\0A      --files0[=FILE] like --files but use the null character as terminator\00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"\0A Basic file format and compression options:\0A\00", align 1
@.str.41 = private unnamed_addr constant [272 x i8] c"  -F, --format=FMT    file format to encode or decode; possible values are\0A                      `auto' (default), `xz', `lzma', and `raw'\0A  -C, --check=CHECK   integrity check type: `none' (use with caution),\0A                      `crc32', `crc64' (default), or `sha256'\00", align 1
@.str.42 = private unnamed_addr constant [157 x i8] c"  -0 ... -9           compression preset; default is 6; take compressor *and*\0A                      decompressor memory usage into account before using 7-9!\00", align 1
@.str.43 = private unnamed_addr constant [150 x i8] c"  -e, --extreme       try to improve compression ratio by using more CPU time;\0A                      does not affect decompressor memory requirements\00", align 1
@.str.44 = private unnamed_addr constant [244 x i8] c"      --memlimit-compress=LIMIT\0A      --memlimit-decompress=LIMIT\0A  -M, --memlimit=LIMIT\0A                      set memory usage limit for compression, decompression,\0A                      or both; LIMIT is in bytes, % of RAM, or 0 for defaults\00", align 1
@.str.45 = private unnamed_addr constant [157 x i8] c"      --no-adjust     if compression settings exceed the memory usage limit,\0A                      give an error instead of adjusting the settings downwards\00", align 1
@.str.46 = private unnamed_addr constant [71 x i8] c"\0A Custom filter chain for compression (alternative for using presets):\00", align 1
@.str.47 = private unnamed_addr constant [824 x i8] c"\0A  --lzma1[=OPTS]      LZMA1 or LZMA2; OPTS is a comma-separated list of zero or\0A  --lzma2[=OPTS]      more of the following options (valid values; default):\0A                        preset=PRE reset options to a preset (0-9[e])\0A                        dict=NUM   dictionary size (4KiB - 1536MiB; 8MiB)\0A                        lc=NUM     number of literal context bits (0-4; 3)\0A                        lp=NUM     number of literal position bits (0-4; 0)\0A                        pb=NUM     number of position bits (0-4; 2)\0A                        mode=MODE  compression mode (fast, normal; normal)\0A                        nice=NUM   nice length of a match (2-273; 64)\0A                        mf=NAME    match finder (hc3, hc4, bt2, bt3, bt4; bt4)\0A                        depth=NUM  maximum search depth; 0=automatic (default)\00", align 1
@.str.48 = private unnamed_addr constant [457 x i8] c"\0A  --x86[=OPTS]        x86 BCJ filter (32-bit and 64-bit)\0A  --powerpc[=OPTS]    PowerPC BCJ filter (big endian only)\0A  --ia64[=OPTS]       IA-64 (Itanium) BCJ filter\0A  --arm[=OPTS]        ARM BCJ filter (little endian only)\0A  --armthumb[=OPTS]   ARM-Thumb BCJ filter (little endian only)\0A  --sparc[=OPTS]      SPARC BCJ filter\0A                      Valid OPTS for all BCJ filters:\0A                        start=NUM  start offset for conversions (default=0)\00", align 1
@.str.49 = private unnamed_addr constant [210 x i8] c"\0A  --delta[=OPTS]      Delta filter; valid OPTS (valid values; default):\0A                        dist=NUM   distance between bytes being subtracted\0A                                   from each other (1-256; 1)\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"\0A Other options:\0A\00", align 1
@.str.51 = private unnamed_addr constant [148 x i8] c"  -q, --quiet         suppress warnings; specify twice to suppress errors too\0A  -v, --verbose       be verbose; specify twice for even more verbose\00", align 1
@.str.52 = private unnamed_addr constant [63 x i8] c"  -Q, --no-warn       make warnings not affect the exit status\00", align 1
@.str.53 = private unnamed_addr constant [73 x i8] c"      --robot         use machine-parsable messages (useful for scripts)\00", align 1
@.str.55 = private unnamed_addr constant [131 x i8] c"      --info-memory   display the total amount of RAM and the currently active\0A                      memory usage limits, and exit\00", align 1
@.str.56 = private unnamed_addr constant [130 x i8] c"  -h, --help          display the short help (lists only the basic options)\0A  -H, --long-help     display this long help and exit\00", align 1
@.str.57 = private unnamed_addr constant [133 x i8] c"  -h, --help          display this short help and exit\0A  -H, --long-help     display the long help (lists also the advanced options)\00", align 1
@.str.58 = private unnamed_addr constant [58 x i8] c"  -V, --version       display the version number and exit\00", align 1
@.str.59 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"Report bugs to <%s>.\0A\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"support@spec.org\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"CPU2017 xz benchmark\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"http://www.spec.org/cpu2017/\00", align 1
@uint32_to_optstr.buf = internal global [16 x i8] zeroinitializer, align 16
@.str.65 = private unnamed_addr constant [6 x i8] c"%uMiB\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"%uKiB\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@str = private unnamed_addr constant [48 x i8] c"xz (CPU2017 xz benchmark) 5.0.5benchmarkcpu2017\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_init() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @message_verbosity_increase() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @verbosity, align 4
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %inc = add nuw nsw i32 %0, 1
  store i32 %inc, ptr @verbosity, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @message_verbosity_decrease() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @verbosity, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr @verbosity, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 5) i32 @message_verbosity_get() local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @verbosity, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_set_files(i32 noundef %files) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @message_filename(ptr noundef %src_name) local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @files_pos, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @files_pos, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_progress_start(ptr nocapture noundef readnone %strm, i64 noundef %in_size) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_progress_update() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_progress_end(i1 noundef zeroext %success) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message(i32 noundef %v, ptr nocapture noundef readnone %fmt, ...) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @message_warning(ptr nocapture noundef readnone %fmt, ...) local_unnamed_addr #4 {
entry:
  tail call void @set_exit_status(i32 noundef 2) #9
  ret void
}

declare void @set_exit_status(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @message_error(ptr nocapture noundef readnone %fmt, ...) local_unnamed_addr #4 {
entry:
  tail call void @set_exit_status(i32 noundef 1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @message_fatal(ptr nocapture noundef readnone %fmt, ...) local_unnamed_addr #4 {
entry:
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  ret void
}

declare void @tuklib_exit(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @message_bug() local_unnamed_addr #4 {
entry:
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @message_signal_handler() local_unnamed_addr #4 {
entry:
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @message_strm(i32 noundef %code) local_unnamed_addr #4 {
entry:
  switch i32 %code, label %sw.epilog [
    i32 2, label %return
    i32 3, label %sw.bb1
    i32 5, label %sw.bb2
    i32 6, label %sw.bb3
    i32 7, label %sw.bb4
    i32 8, label %sw.bb5
    i32 9, label %sw.bb6
    i32 10, label %sw.bb7
  ]

sw.bb1:                                           ; preds = %entry
  br label %return

sw.bb2:                                           ; preds = %entry
  %call = tail call ptr @strerror(i32 noundef 12) #9
  br label %return

sw.bb3:                                           ; preds = %entry
  br label %return

sw.bb4:                                           ; preds = %entry
  br label %return

sw.bb5:                                           ; preds = %entry
  br label %return

sw.bb6:                                           ; preds = %entry
  br label %return

sw.bb7:                                           ; preds = %entry
  br label %return

sw.epilog:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %sw.epilog, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi ptr [ @.str, %sw.epilog ], [ @.str.8, %sw.bb7 ], [ @.str.7, %sw.bb6 ], [ @.str.6, %sw.bb5 ], [ @.str.5, %sw.bb4 ], [ @.str.4, %sw.bb3 ], [ %call, %sw.bb2 ], [ @.str.3, %sw.bb1 ], [ @.str.2, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @message_mem_needed(i32 noundef %v, i64 noundef %memusage) local_unnamed_addr #4 {
entry:
  %memlimitstr = alloca [128 x i8], align 16
  %0 = load i32, ptr @verbosity, align 4
  %cmp = icmp ult i32 %0, %v
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @round_up_to_mib(i64 noundef %memusage) #9
  %1 = load i32, ptr @opt_mode, align 4
  %call1 = tail call i64 @hardware_memlimit_get(i32 noundef %1) #9
  %cmp2 = icmp eq i64 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @uint64_to_str(i64 noundef %call, i32 noundef 0) #9
  br label %return

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %memlimitstr) #9
  %cmp6 = icmp ult i64 %call1, 1048576
  br i1 %cmp6, label %if.end14, label %if.else

if.else:                                          ; preds = %if.end5
  %call11 = tail call i64 @round_up_to_mib(i64 noundef %call1) #9
  br label %if.end14

if.end14:                                         ; preds = %if.end5, %if.else
  %call11.sink = phi i64 [ %call11, %if.else ], [ %call1, %if.end5 ]
  %.str.11.sink = phi ptr [ @.str.11, %if.else ], [ @.str.10, %if.end5 ]
  %call12 = tail call ptr @uint64_to_str(i64 noundef %call11.sink, i32 noundef 1) #9
  %call13 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %memlimitstr, i64 noundef 128, ptr noundef nonnull %.str.11.sink, ptr noundef %call12) #9
  %call15 = tail call ptr @uint64_to_str(i64 noundef %call, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %memlimitstr) #9
  br label %return

return:                                           ; preds = %if.then3, %if.end14, %entry
  ret void
}

declare i64 @round_up_to_mib(i64 noundef) local_unnamed_addr #5

declare i64 @hardware_memlimit_get(i32 noundef) local_unnamed_addr #5

declare ptr @uint64_to_str(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @message_filters_to_str(ptr noundef %buf, ptr nocapture noundef readonly %filters, i1 noundef zeroext %all_known) local_unnamed_addr #4 {
entry:
  %pos = alloca ptr, align 8
  %left = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #9
  store ptr %buf, ptr %pos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %left) #9
  store i64 512, ptr %left, align 8
  %0 = load i64, ptr %filters, align 8
  %cmp.not68 = icmp eq i64 %0, -1
  br i1 %cmp.not68, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %left) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #9
  ret void

for.body:                                         ; preds = %entry, %for.inc
  %i.069 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %arrayidx70 = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %i.069
  %cmp1 = icmp eq i64 %i.069, 0
  %cond = select i1 %cmp1, ptr @.str.14, ptr @.str.15
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond) #9
  %1 = load i64, ptr %arrayidx70, align 8
  switch i64 %1, label %sw.default39 [
    i64 4611686018427387905, label %sw.bb
    i64 33, label %sw.bb
    i64 4, label %sw.bb23
    i64 5, label %sw.bb23
    i64 6, label %sw.bb23
    i64 7, label %sw.bb23
    i64 8, label %sw.bb23
    i64 9, label %sw.bb23
    i64 3, label %sw.bb35
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %options = getelementptr inbounds i8, ptr %arrayidx70, i64 8
  %2 = load ptr, ptr %options, align 8
  br i1 %all_known, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %mode5 = getelementptr inbounds i8, ptr %2, i64 32
  %3 = load i32, ptr %mode5, align 8
  %switch.selectcmp = icmp eq i32 %3, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.17, ptr @.str.18
  %switch.selectcmp66 = icmp eq i32 %3, 1
  %switch.select67 = select i1 %switch.selectcmp66, ptr @.str.16, ptr %switch.select
  %mf8 = getelementptr inbounds i8, ptr %2, i64 40
  %4 = load i32, ptr %mf8, align 8
  switch i32 %4, label %sw.default14 [
    i32 3, label %if.end
    i32 4, label %sw.bb10
    i32 18, label %sw.bb11
    i32 19, label %sw.bb12
    i32 20, label %sw.bb13
  ]

sw.bb10:                                          ; preds = %if.then
  br label %if.end

sw.bb11:                                          ; preds = %if.then
  br label %if.end

sw.bb12:                                          ; preds = %if.then
  br label %if.end

sw.bb13:                                          ; preds = %if.then
  br label %if.end

sw.default14:                                     ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb10, %sw.bb11, %sw.bb12, %sw.bb13, %sw.default14, %sw.bb
  %mode.1 = phi ptr [ %switch.select67, %sw.default14 ], [ %switch.select67, %sw.bb13 ], [ %switch.select67, %sw.bb12 ], [ %switch.select67, %sw.bb11 ], [ %switch.select67, %sw.bb10 ], [ null, %sw.bb ], [ %switch.select67, %if.then ]
  %mf.0 = phi ptr [ @.str.18, %sw.default14 ], [ @.str.23, %sw.bb13 ], [ @.str.22, %sw.bb12 ], [ @.str.21, %sw.bb11 ], [ @.str.20, %sw.bb10 ], [ null, %sw.bb ], [ @.str.19, %if.then ]
  %cmp18 = icmp eq i64 %1, 33
  %cond19 = select i1 %cmp18, i32 50, i32 49
  %5 = load i32, ptr %2, align 8
  %and.i = and i32 %5, 1048575
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %shr.i = lshr exact i32 %5, 20
  %call.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @uint32_to_optstr.buf, i64 noundef 16, ptr noundef nonnull @.str.65, i32 noundef %shr.i) #9
  br label %uint32_to_optstr.exit

if.else.i:                                        ; preds = %if.end
  %and1.i = and i32 %5, 1023
  %cmp2.i = icmp eq i32 %and1.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.else6.i

if.then3.i:                                       ; preds = %if.else.i
  %shr4.i = lshr exact i32 %5, 10
  %call5.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @uint32_to_optstr.buf, i64 noundef 16, ptr noundef nonnull @.str.66, i32 noundef %shr4.i) #9
  br label %uint32_to_optstr.exit

if.else6.i:                                       ; preds = %if.else.i
  %call7.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @uint32_to_optstr.buf, i64 noundef 16, ptr noundef nonnull @.str.67, i32 noundef %5) #9
  br label %uint32_to_optstr.exit

uint32_to_optstr.exit:                            ; preds = %if.then.i, %if.then3.i, %if.else6.i
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.24, i32 noundef %cond19, ptr noundef nonnull @uint32_to_optstr.buf) #9
  br i1 %all_known, label %if.then21, label %for.inc

if.then21:                                        ; preds = %uint32_to_optstr.exit
  %lc = getelementptr inbounds i8, ptr %2, i64 20
  %6 = load i32, ptr %lc, align 4
  %lp = getelementptr inbounds i8, ptr %2, i64 24
  %7 = load i32, ptr %lp, align 8
  %pb = getelementptr inbounds i8, ptr %2, i64 28
  %8 = load i32, ptr %pb, align 4
  %nice_len = getelementptr inbounds i8, ptr %2, i64 36
  %9 = load i32, ptr %nice_len, align 4
  %depth = getelementptr inbounds i8, ptr %2, i64 44
  %10 = load i32, ptr %depth, align 4
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.25, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %mode.1, i32 noundef %9, ptr noundef %mf.0, i32 noundef %10) #9
  br label %for.inc

sw.bb23:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %options26 = getelementptr inbounds i8, ptr %arrayidx70, i64 8
  %11 = load ptr, ptr %options26, align 8
  %sub = add nsw i64 %1, -4
  %arrayidx29 = getelementptr inbounds [6 x [9 x i8]], ptr @message_filters_to_str.bcj_names, i64 0, i64 %sub
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.13, ptr noundef nonnull %arrayidx29) #9
  %cmp30.not = icmp eq ptr %11, null
  br i1 %cmp30.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb23
  %12 = load i32, ptr %11, align 4
  %cmp31.not = icmp eq i32 %12, 0
  br i1 %cmp31.not, label %for.inc, label %if.then32

if.then32:                                        ; preds = %land.lhs.true
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.26, i32 noundef %12) #9
  br label %for.inc

sw.bb35:                                          ; preds = %for.body
  %options38 = getelementptr inbounds i8, ptr %arrayidx70, i64 8
  %13 = load ptr, ptr %options38, align 8
  %dist = getelementptr inbounds i8, ptr %13, i64 4
  %14 = load i32, ptr %dist, align 4
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.27, i32 noundef %14) #9
  br label %for.inc

sw.default39:                                     ; preds = %for.body
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.18) #9
  br label %for.inc

for.inc:                                          ; preds = %sw.bb23, %land.lhs.true, %if.then32, %uint32_to_optstr.exit, %if.then21, %sw.bb35, %sw.default39
  %inc = add i64 %i.069, 1
  %arrayidx = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %inc
  %15 = load i64, ptr %arrayidx, align 8
  %cmp.not = icmp eq i64 %15, -1
  br i1 %cmp.not, label %for.cond.cleanup, label %for.body
}

declare void @my_snprintf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @message_filters_show(i32 noundef %v, ptr nocapture noundef readonly %filters) local_unnamed_addr #4 {
entry:
  %buf = alloca [512 x i8], align 16
  %0 = load i32, ptr @verbosity, align 4
  %cmp = icmp ult i32 %0, %v
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #9
  call void @message_filters_to_str(ptr noundef nonnull %buf, ptr noundef %filters, i1 noundef zeroext true)
  %1 = load ptr, ptr @stderr, align 8
  %2 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef %2, ptr noundef nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_try_help() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @message_version() local_unnamed_addr #4 {
entry:
  %0 = load i8, ptr @opt_robot, align 1, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %0 to i1
  br i1 %loadedv, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @lzma_version_number() #9
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 50000056, i32 noundef %call)
  br label %if.end

if.else:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %call3 = tail call ptr @lzma_version_string() #9
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %call3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr @verbosity, align 4
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  tail call void @tuklib_exit(i32 noundef 0, i32 noundef 1, i32 noundef %conv) #9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare i32 @lzma_version_number() local_unnamed_addr #5

declare ptr @lzma_version_string() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @message_help(i1 noundef zeroext %long_help) local_unnamed_addr #4 {
entry:
  %0 = load ptr, ptr @progname, align 8
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef %0)
  br i1 %long_help, label %if.then29, label %if.else.critedge

if.then29:                                        ; preds = %entry
  %call1 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.34)
  %call4 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.35)
  %call6 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.36)
  %call9 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.37)
  %call1164 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.38)
  %call14 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.39)
  %call18 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.40)
  %call19 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.41)
  %call21 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.42)
  %call22 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.43)
  %call25 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.44)
  %call26 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.45)
  %call30 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.46)
  %call31 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.47)
  %call32 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.48)
  %call33 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.49)
  %call37 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.50)
  %call39 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.51)
  %call42 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.52)
  %call43 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.53)
  %putchar = tail call i32 @putchar(i32 10)
  br label %if.end48

if.else.critedge:                                 ; preds = %entry
  %call6.c = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.36)
  %call11 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.38)
  %call21.c = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.42)
  %call22.c = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.43)
  br label %if.end48

if.end48:                                         ; preds = %if.else.critedge, %if.then29
  %.str.51.sink = phi ptr [ @.str.51, %if.else.critedge ], [ @.str.55, %if.then29 ]
  %.str.57.sink = phi ptr [ @.str.57, %if.else.critedge ], [ @.str.56, %if.then29 ]
  %call39.c = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %.str.51.sink)
  %call47 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %.str.57.sink)
  %call49 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.58)
  %call50 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.59)
  %call51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef nonnull @.str.61)
  %call52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64)
  %1 = load i32, ptr @verbosity, align 4
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  tail call void @tuklib_exit(i32 noundef 0, i32 noundef 1, i32 noundef %conv) #9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{i8 0, i8 2}
!6 = !{}
