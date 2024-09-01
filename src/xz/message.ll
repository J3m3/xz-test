; ModuleID = 'xz/message.c'
source_filename = "xz/message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter = type { i64, ptr }

@verbosity = internal unnamed_addr global i32 2, align 4, !dbg !0
@files_pos = internal unnamed_addr global i32 0, align 4, !dbg !452
@.str = private unnamed_addr constant [21 x i8] c"Internal error (bug)\00", align 1, !dbg !64
@.str.2 = private unnamed_addr constant [49 x i8] c"No integrity check; not verifying file integrity\00", align 1, !dbg !75
@.str.3 = private unnamed_addr constant [66 x i8] c"Unsupported type of integrity check; not verifying file integrity\00", align 1, !dbg !80
@.str.4 = private unnamed_addr constant [27 x i8] c"Memory usage limit reached\00", align 1, !dbg !85
@.str.5 = private unnamed_addr constant [27 x i8] c"File format not recognized\00", align 1, !dbg !90
@.str.6 = private unnamed_addr constant [20 x i8] c"Unsupported options\00", align 1, !dbg !92
@.str.7 = private unnamed_addr constant [27 x i8] c"Compressed data is corrupt\00", align 1, !dbg !97
@.str.8 = private unnamed_addr constant [24 x i8] c"Unexpected end of input\00", align 1, !dbg !99
@opt_mode = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"%s B\00", align 1, !dbg !109
@.str.11 = private unnamed_addr constant [7 x i8] c"%s MiB\00", align 1, !dbg !114
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !124
@.str.14 = private unnamed_addr constant [3 x i8] c"--\00", align 1, !dbg !129
@.str.15 = private unnamed_addr constant [4 x i8] c" --\00", align 1, !dbg !131
@.str.16 = private unnamed_addr constant [5 x i8] c"fast\00", align 1, !dbg !136
@.str.17 = private unnamed_addr constant [7 x i8] c"normal\00", align 1, !dbg !138
@.str.18 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1, !dbg !140
@.str.19 = private unnamed_addr constant [4 x i8] c"hc3\00", align 1, !dbg !145
@.str.20 = private unnamed_addr constant [4 x i8] c"hc4\00", align 1, !dbg !147
@.str.21 = private unnamed_addr constant [4 x i8] c"bt2\00", align 1, !dbg !149
@.str.22 = private unnamed_addr constant [4 x i8] c"bt3\00", align 1, !dbg !151
@.str.23 = private unnamed_addr constant [4 x i8] c"bt4\00", align 1, !dbg !153
@.str.24 = private unnamed_addr constant [15 x i8] c"lzma%c=dict=%s\00", align 1, !dbg !155
@.str.25 = private unnamed_addr constant [50 x i8] c",lc=%u,lp=%u,pb=%u,mode=%s,nice=%u,mf=%s,depth=%u\00", align 1, !dbg !160
@message_filters_to_str.bcj_names = internal constant [6 x [9 x i8]] [[9 x i8] c"x86\00\00\00\00\00\00", [9 x i8] c"powerpc\00\00", [9 x i8] c"ia64\00\00\00\00\00", [9 x i8] c"arm\00\00\00\00\00\00", [9 x i8] c"armthumb\00", [9 x i8] c"sparc\00\00\00\00"], align 16, !dbg !165
@.str.26 = private unnamed_addr constant [10 x i8] c"=start=%u\00", align 1, !dbg !274
@.str.27 = private unnamed_addr constant [14 x i8] c"delta=dist=%u\00", align 1, !dbg !279
@stderr = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [22 x i8] c"%s: Filter chain: %s\0A\00", align 1, !dbg !284
@progname = external local_unnamed_addr global ptr, align 8
@opt_robot = external local_unnamed_addr global i8, align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"XZ_VERSION=%u\0ALIBLZMA_VERSION=%u\0A\00", align 1, !dbg !294
@.str.32 = private unnamed_addr constant [12 x i8] c"liblzma %s\0A\00", align 1, !dbg !301
@.str.33 = private unnamed_addr constant [82 x i8] c"Usage: %s [OPTION]... [FILE]...\0ACompress or decompress FILEs in the .xz format.\0A\0A\00", align 1, !dbg !306
@.str.34 = private unnamed_addr constant [74 x i8] c"Mandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !311
@.str.35 = private unnamed_addr constant [18 x i8] c" Operation mode:\0A\00", align 1, !dbg !316
@.str.36 = private unnamed_addr constant [190 x i8] c"  -z, --compress      force compression\0A  -d, --decompress    force decompression\0A  -t, --test          test compressed file integrity\0A  -l, --list          list information about .xz files\00", align 1, !dbg !321
@.str.37 = private unnamed_addr constant [24 x i8] c"\0A Operation modifiers:\0A\00", align 1, !dbg !326
@.str.38 = private unnamed_addr constant [206 x i8] c"  -k, --keep          keep (don't delete) input files\0A  -f, --force         force overwrite of output file and (de)compress links\0A  -c, --stdout        write to standard output and don't delete input files\00", align 1, !dbg !328
@.str.39 = private unnamed_addr constant [431 x i8] c"      --no-sparse     do not create sparse files when decompressing\0A  -S, --suffix=.SUF   use the suffix `.SUF' on compressed files\0A      --files[=FILE]  read filenames to process from FILE; if FILE is\0A                      omitted, filenames are read from the standard input;\0A                      filenames must be terminated with the newline character\0A      --files0[=FILE] like --files but use the null character as terminator\00", align 1, !dbg !333
@.str.40 = private unnamed_addr constant [46 x i8] c"\0A Basic file format and compression options:\0A\00", align 1, !dbg !338
@.str.41 = private unnamed_addr constant [272 x i8] c"  -F, --format=FMT    file format to encode or decode; possible values are\0A                      `auto' (default), `xz', `lzma', and `raw'\0A  -C, --check=CHECK   integrity check type: `none' (use with caution),\0A                      `crc32', `crc64' (default), or `sha256'\00", align 1, !dbg !343
@.str.42 = private unnamed_addr constant [157 x i8] c"  -0 ... -9           compression preset; default is 6; take compressor *and*\0A                      decompressor memory usage into account before using 7-9!\00", align 1, !dbg !348
@.str.43 = private unnamed_addr constant [150 x i8] c"  -e, --extreme       try to improve compression ratio by using more CPU time;\0A                      does not affect decompressor memory requirements\00", align 1, !dbg !353
@.str.44 = private unnamed_addr constant [244 x i8] c"      --memlimit-compress=LIMIT\0A      --memlimit-decompress=LIMIT\0A  -M, --memlimit=LIMIT\0A                      set memory usage limit for compression, decompression,\0A                      or both; LIMIT is in bytes, % of RAM, or 0 for defaults\00", align 1, !dbg !358
@.str.45 = private unnamed_addr constant [157 x i8] c"      --no-adjust     if compression settings exceed the memory usage limit,\0A                      give an error instead of adjusting the settings downwards\00", align 1, !dbg !363
@.str.46 = private unnamed_addr constant [71 x i8] c"\0A Custom filter chain for compression (alternative for using presets):\00", align 1, !dbg !365
@.str.47 = private unnamed_addr constant [824 x i8] c"\0A  --lzma1[=OPTS]      LZMA1 or LZMA2; OPTS is a comma-separated list of zero or\0A  --lzma2[=OPTS]      more of the following options (valid values; default):\0A                        preset=PRE reset options to a preset (0-9[e])\0A                        dict=NUM   dictionary size (4KiB - 1536MiB; 8MiB)\0A                        lc=NUM     number of literal context bits (0-4; 3)\0A                        lp=NUM     number of literal position bits (0-4; 0)\0A                        pb=NUM     number of position bits (0-4; 2)\0A                        mode=MODE  compression mode (fast, normal; normal)\0A                        nice=NUM   nice length of a match (2-273; 64)\0A                        mf=NAME    match finder (hc3, hc4, bt2, bt3, bt4; bt4)\0A                        depth=NUM  maximum search depth; 0=automatic (default)\00", align 1, !dbg !370
@.str.48 = private unnamed_addr constant [457 x i8] c"\0A  --x86[=OPTS]        x86 BCJ filter (32-bit and 64-bit)\0A  --powerpc[=OPTS]    PowerPC BCJ filter (big endian only)\0A  --ia64[=OPTS]       IA-64 (Itanium) BCJ filter\0A  --arm[=OPTS]        ARM BCJ filter (little endian only)\0A  --armthumb[=OPTS]   ARM-Thumb BCJ filter (little endian only)\0A  --sparc[=OPTS]      SPARC BCJ filter\0A                      Valid OPTS for all BCJ filters:\0A                        start=NUM  start offset for conversions (default=0)\00", align 1, !dbg !375
@.str.49 = private unnamed_addr constant [210 x i8] c"\0A  --delta[=OPTS]      Delta filter; valid OPTS (valid values; default):\0A                        dist=NUM   distance between bytes being subtracted\0A                                   from each other (1-256; 1)\00", align 1, !dbg !380
@.str.50 = private unnamed_addr constant [18 x i8] c"\0A Other options:\0A\00", align 1, !dbg !385
@.str.51 = private unnamed_addr constant [148 x i8] c"  -q, --quiet         suppress warnings; specify twice to suppress errors too\0A  -v, --verbose       be verbose; specify twice for even more verbose\00", align 1, !dbg !387
@.str.52 = private unnamed_addr constant [63 x i8] c"  -Q, --no-warn       make warnings not affect the exit status\00", align 1, !dbg !392
@.str.53 = private unnamed_addr constant [73 x i8] c"      --robot         use machine-parsable messages (useful for scripts)\00", align 1, !dbg !397
@.str.55 = private unnamed_addr constant [131 x i8] c"      --info-memory   display the total amount of RAM and the currently active\0A                      memory usage limits, and exit\00", align 1, !dbg !407
@.str.56 = private unnamed_addr constant [130 x i8] c"  -h, --help          display the short help (lists only the basic options)\0A  -H, --long-help     display this long help and exit\00", align 1, !dbg !412
@.str.57 = private unnamed_addr constant [133 x i8] c"  -h, --help          display this short help and exit\0A  -H, --long-help     display the long help (lists also the advanced options)\00", align 1, !dbg !417
@.str.58 = private unnamed_addr constant [58 x i8] c"  -V, --version       display the version number and exit\00", align 1, !dbg !422
@.str.59 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !427
@.str.60 = private unnamed_addr constant [22 x i8] c"Report bugs to <%s>.\0A\00", align 1, !dbg !432
@.str.61 = private unnamed_addr constant [17 x i8] c"support@spec.org\00", align 1, !dbg !434
@.str.62 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !439
@.str.63 = private unnamed_addr constant [21 x i8] c"CPU2017 xz benchmark\00", align 1, !dbg !441
@.str.64 = private unnamed_addr constant [29 x i8] c"http://www.spec.org/cpu2017/\00", align 1, !dbg !443
@uint32_to_optstr.buf = internal global [16 x i8] zeroinitializer, align 16, !dbg !456
@.str.65 = private unnamed_addr constant [6 x i8] c"%uMiB\00", align 1, !dbg !466
@.str.66 = private unnamed_addr constant [6 x i8] c"%uKiB\00", align 1, !dbg !470
@.str.67 = private unnamed_addr constant [3 x i8] c"%u\00", align 1, !dbg !472
@str = private unnamed_addr constant [48 x i8] c"xz (CPU2017 xz benchmark) 5.0.5benchmarkcpu2017\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_init() local_unnamed_addr #0 !dbg !482 {
entry:
  ret void, !dbg !485
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @message_verbosity_increase() local_unnamed_addr #1 !dbg !486 {
entry:
  %0 = load i32, ptr @verbosity, align 4, !dbg !487
  %cmp = icmp ult i32 %0, 4, !dbg !489
  br i1 %cmp, label %if.then, label %if.end, !dbg !490

if.then:                                          ; preds = %entry
  %inc = add nuw nsw i32 %0, 1, !dbg !491
  store i32 %inc, ptr @verbosity, align 4, !dbg !491
  br label %if.end, !dbg !491

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !492
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @message_verbosity_decrease() local_unnamed_addr #1 !dbg !493 {
entry:
  %0 = load i32, ptr @verbosity, align 4, !dbg !494
  %cmp.not = icmp eq i32 %0, 0, !dbg !496
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !497

if.then:                                          ; preds = %entry
  %dec = add nsw i32 %0, -1, !dbg !498
  store i32 %dec, ptr @verbosity, align 4, !dbg !498
  br label %if.end, !dbg !498

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !499
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 5) i32 @message_verbosity_get() local_unnamed_addr #2 !dbg !500 {
entry:
  %0 = load i32, ptr @verbosity, align 4, !dbg !503
  ret i32 %0, !dbg !504
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_set_files(i32 noundef %files) local_unnamed_addr #0 !dbg !505 {
entry:
    #dbg_value(i32 %files, !509, !DIExpression(), !510)
  ret void, !dbg !511
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @message_filename(ptr noundef %src_name) local_unnamed_addr #1 !dbg !512 {
entry:
    #dbg_value(ptr %src_name, !516, !DIExpression(), !517)
  %0 = load i32, ptr @files_pos, align 4, !dbg !518
  %inc = add i32 %0, 1, !dbg !518
  store i32 %inc, ptr @files_pos, align 4, !dbg !518
  ret void, !dbg !519
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_progress_start(ptr nocapture noundef readnone %strm, i64 noundef %in_size) local_unnamed_addr #0 !dbg !520 {
entry:
    #dbg_value(ptr %strm, !563, !DIExpression(), !565)
    #dbg_value(i64 %in_size, !564, !DIExpression(), !565)
  ret void, !dbg !566
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_progress_update() local_unnamed_addr #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_progress_end(i1 noundef zeroext %success) local_unnamed_addr #0 !dbg !569 {
entry:
    #dbg_value(i1 %success, !573, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !574)
  ret void, !dbg !575
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message(i32 noundef %v, ptr nocapture noundef readnone %fmt, ...) local_unnamed_addr #0 !dbg !576 {
entry:
    #dbg_assign(i1 undef, !582, !DIExpression(), !593, ptr undef, !DIExpression(), !594)
    #dbg_value(i32 %v, !580, !DIExpression(), !594)
    #dbg_value(ptr %fmt, !581, !DIExpression(), !594)
  ret void, !dbg !595
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @message_warning(ptr nocapture noundef readnone %fmt, ...) local_unnamed_addr #4 !dbg !596 {
entry:
    #dbg_assign(i1 undef, !601, !DIExpression(), !602, ptr undef, !DIExpression(), !603)
    #dbg_value(ptr %fmt, !600, !DIExpression(), !603)
  tail call void @set_exit_status(i32 noundef 2) #9, !dbg !604
  ret void, !dbg !605
}

declare !dbg !606 void @set_exit_status(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @message_error(ptr nocapture noundef readnone %fmt, ...) local_unnamed_addr #4 !dbg !609 {
entry:
    #dbg_assign(i1 undef, !612, !DIExpression(), !613, ptr undef, !DIExpression(), !614)
    #dbg_value(ptr %fmt, !611, !DIExpression(), !614)
  tail call void @set_exit_status(i32 noundef 1) #9, !dbg !615
  ret void, !dbg !616
}

; Function Attrs: nounwind uwtable
define dso_local void @message_fatal(ptr nocapture noundef readnone %fmt, ...) local_unnamed_addr #4 !dbg !617 {
entry:
    #dbg_assign(i1 undef, !620, !DIExpression(), !621, ptr undef, !DIExpression(), !622)
    #dbg_value(ptr %fmt, !619, !DIExpression(), !622)
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #9, !dbg !623
  ret void, !dbg !624
}

declare !dbg !625 void @tuklib_exit(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @message_bug() local_unnamed_addr #4 !dbg !630 {
entry:
    #dbg_assign(i1 undef, !620, !DIExpression(), !631, ptr undef, !DIExpression(), !632)
    #dbg_value(ptr @.str, !619, !DIExpression(), !632)
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #9, !dbg !634
  ret void, !dbg !635
}

; Function Attrs: nounwind uwtable
define dso_local void @message_signal_handler() local_unnamed_addr #4 !dbg !636 {
entry:
    #dbg_assign(i1 undef, !620, !DIExpression(), !637, ptr undef, !DIExpression(), !638)
    #dbg_value(ptr poison, !619, !DIExpression(), !638)
  tail call void @tuklib_exit(i32 noundef 1, i32 noundef 1, i32 noundef 0) #9, !dbg !640
  ret void, !dbg !641
}

; Function Attrs: nounwind uwtable
define dso_local ptr @message_strm(i32 noundef %code) local_unnamed_addr #4 !dbg !642 {
entry:
    #dbg_value(i32 %code, !647, !DIExpression(), !648)
  switch i32 %code, label %sw.epilog [
    i32 2, label %return
    i32 3, label %sw.bb1
    i32 5, label %sw.bb2
    i32 6, label %sw.bb3
    i32 7, label %sw.bb4
    i32 8, label %sw.bb5
    i32 9, label %sw.bb6
    i32 10, label %sw.bb7
  ], !dbg !649

sw.bb1:                                           ; preds = %entry
  br label %return, !dbg !650

sw.bb2:                                           ; preds = %entry
  %call = tail call ptr @strerror(i32 noundef 12) #9, !dbg !652
  br label %return, !dbg !653

sw.bb3:                                           ; preds = %entry
  br label %return, !dbg !654

sw.bb4:                                           ; preds = %entry
  br label %return, !dbg !655

sw.bb5:                                           ; preds = %entry
  br label %return, !dbg !656

sw.bb6:                                           ; preds = %entry
  br label %return, !dbg !657

sw.bb7:                                           ; preds = %entry
  br label %return, !dbg !658

sw.epilog:                                        ; preds = %entry
  br label %return, !dbg !659

return:                                           ; preds = %entry, %sw.epilog, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi ptr [ @.str, %sw.epilog ], [ @.str.8, %sw.bb7 ], [ @.str.7, %sw.bb6 ], [ @.str.6, %sw.bb5 ], [ @.str.5, %sw.bb4 ], [ @.str.4, %sw.bb3 ], [ %call, %sw.bb2 ], [ @.str.3, %sw.bb1 ], [ @.str.2, %entry ], !dbg !648
  ret ptr %retval.0, !dbg !660
}

; Function Attrs: nounwind
declare !dbg !661 ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @message_mem_needed(i32 noundef %v, i64 noundef %memusage) local_unnamed_addr #4 !dbg !665 {
entry:
  %memlimitstr = alloca [128 x i8], align 16, !DIAssignID !676
    #dbg_assign(i1 undef, !672, !DIExpression(), !676, ptr %memlimitstr, !DIExpression(), !677)
    #dbg_value(i32 %v, !669, !DIExpression(), !677)
    #dbg_value(i64 %memusage, !670, !DIExpression(), !677)
  %0 = load i32, ptr @verbosity, align 4, !dbg !678
  %cmp = icmp ult i32 %0, %v, !dbg !680
  br i1 %cmp, label %return, label %if.end, !dbg !681

if.end:                                           ; preds = %entry
  %call = tail call i64 @round_up_to_mib(i64 noundef %memusage) #9, !dbg !682
    #dbg_value(i64 %call, !670, !DIExpression(), !677)
  %1 = load i32, ptr @opt_mode, align 4, !dbg !683
  %call1 = tail call i64 @hardware_memlimit_get(i32 noundef %1) #9, !dbg !684
    #dbg_value(i64 %call1, !671, !DIExpression(), !677)
  %cmp2 = icmp eq i64 %call1, -1, !dbg !685
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !687

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @uint64_to_str(i64 noundef %call, i32 noundef 0) #9, !dbg !688
  br label %return, !dbg !690

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %memlimitstr) #9, !dbg !691
  %cmp6 = icmp ult i64 %call1, 1048576, !dbg !692
  br i1 %cmp6, label %if.end14, label %if.else, !dbg !694

if.else:                                          ; preds = %if.end5
  %call11 = tail call i64 @round_up_to_mib(i64 noundef %call1) #9, !dbg !695
  br label %if.end14

if.end14:                                         ; preds = %if.end5, %if.else
  %call11.sink = phi i64 [ %call11, %if.else ], [ %call1, %if.end5 ]
  %.str.11.sink = phi ptr [ @.str.11, %if.else ], [ @.str.10, %if.end5 ]
  %call12 = tail call ptr @uint64_to_str(i64 noundef %call11.sink, i32 noundef 1) #9, !dbg !697
  %call13 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %memlimitstr, i64 noundef 128, ptr noundef nonnull %.str.11.sink, ptr noundef %call12) #9, !dbg !697
  %call15 = tail call ptr @uint64_to_str(i64 noundef %call, i32 noundef 0) #9, !dbg !698
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %memlimitstr) #9, !dbg !699
  br label %return

return:                                           ; preds = %if.then3, %if.end14, %entry
  ret void, !dbg !699
}

declare !dbg !700 i64 @round_up_to_mib(i64 noundef) local_unnamed_addr #5

declare !dbg !704 i64 @hardware_memlimit_get(i32 noundef) local_unnamed_addr #5

declare !dbg !708 ptr @uint64_to_str(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !711 noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @message_filters_to_str(ptr noundef %buf, ptr nocapture noundef readonly %filters, i1 noundef zeroext %all_known) local_unnamed_addr #4 !dbg !167 {
entry:
  %pos = alloca ptr, align 8, !DIAssignID !717
    #dbg_assign(i1 undef, !191, !DIExpression(), !717, ptr %pos, !DIExpression(), !718)
  %left = alloca i64, align 8, !DIAssignID !719
    #dbg_assign(i1 undef, !192, !DIExpression(), !719, ptr %left, !DIExpression(), !718)
    #dbg_value(ptr %buf, !188, !DIExpression(), !718)
    #dbg_value(ptr %filters, !189, !DIExpression(), !718)
    #dbg_value(i1 %all_known, !190, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !718)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #9, !dbg !720
  store ptr %buf, ptr %pos, align 8, !dbg !721, !DIAssignID !722
    #dbg_assign(ptr %buf, !191, !DIExpression(), !722, ptr %pos, !DIExpression(), !718)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %left) #9, !dbg !723
  store i64 512, ptr %left, align 8, !dbg !724, !DIAssignID !725
    #dbg_assign(i64 512, !192, !DIExpression(), !725, ptr %left, !DIExpression(), !718)
    #dbg_value(i64 0, !195, !DIExpression(), !726)
  %0 = load i64, ptr %filters, align 8, !dbg !727
  %cmp.not68 = icmp eq i64 %0, -1, !dbg !728
  br i1 %cmp.not68, label %for.cond.cleanup, label %for.body, !dbg !729

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %left) #9, !dbg !730
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #9, !dbg !730
  ret void, !dbg !730

for.body:                                         ; preds = %entry, %for.inc
  %i.069 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %arrayidx70 = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %i.069, !dbg !731
    #dbg_value(i64 %i.069, !195, !DIExpression(), !726)
  %cmp1 = icmp eq i64 %i.069, 0, !dbg !731
  %cond = select i1 %cmp1, ptr @.str.14, ptr @.str.15, !dbg !732
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond) #9, !dbg !733
  %1 = load i64, ptr %arrayidx70, align 8, !dbg !734
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
  ], !dbg !735

sw.bb:                                            ; preds = %for.body, %for.body
  %options = getelementptr inbounds i8, ptr %arrayidx70, i64 8, !dbg !736
  %2 = load ptr, ptr %options, align 8, !dbg !736
    #dbg_value(ptr %2, !197, !DIExpression(), !737)
    #dbg_value(ptr null, !241, !DIExpression(), !737)
    #dbg_value(ptr null, !244, !DIExpression(), !737)
  br i1 %all_known, label %if.then, label %if.end, !dbg !738

if.then:                                          ; preds = %sw.bb
  %mode5 = getelementptr inbounds i8, ptr %2, i64 32, !dbg !739
  %3 = load i32, ptr %mode5, align 8, !dbg !739
  %switch.selectcmp = icmp eq i32 %3, 2, !dbg !742
  %switch.select = select i1 %switch.selectcmp, ptr @.str.17, ptr @.str.18, !dbg !742
  %switch.selectcmp66 = icmp eq i32 %3, 1, !dbg !742
  %switch.select67 = select i1 %switch.selectcmp66, ptr @.str.16, ptr %switch.select, !dbg !742
    #dbg_value(ptr %switch.select67, !241, !DIExpression(), !737)
  %mf8 = getelementptr inbounds i8, ptr %2, i64 40, !dbg !743
  %4 = load i32, ptr %mf8, align 8, !dbg !743
  switch i32 %4, label %sw.default14 [
    i32 3, label %if.end
    i32 4, label %sw.bb10
    i32 18, label %sw.bb11
    i32 19, label %sw.bb12
    i32 20, label %sw.bb13
  ], !dbg !744

sw.bb10:                                          ; preds = %if.then
    #dbg_value(ptr @.str.20, !244, !DIExpression(), !737)
  br label %if.end, !dbg !745

sw.bb11:                                          ; preds = %if.then
    #dbg_value(ptr @.str.21, !244, !DIExpression(), !737)
  br label %if.end, !dbg !747

sw.bb12:                                          ; preds = %if.then
    #dbg_value(ptr @.str.22, !244, !DIExpression(), !737)
  br label %if.end, !dbg !748

sw.bb13:                                          ; preds = %if.then
    #dbg_value(ptr @.str.23, !244, !DIExpression(), !737)
  br label %if.end, !dbg !749

sw.default14:                                     ; preds = %if.then
    #dbg_value(ptr @.str.18, !244, !DIExpression(), !737)
  br label %if.end, !dbg !750

if.end:                                           ; preds = %if.then, %sw.bb10, %sw.bb11, %sw.bb12, %sw.bb13, %sw.default14, %sw.bb
  %mode.1 = phi ptr [ %switch.select67, %sw.default14 ], [ %switch.select67, %sw.bb13 ], [ %switch.select67, %sw.bb12 ], [ %switch.select67, %sw.bb11 ], [ %switch.select67, %sw.bb10 ], [ null, %sw.bb ], [ %switch.select67, %if.then ], !dbg !737
  %mf.0 = phi ptr [ @.str.18, %sw.default14 ], [ @.str.23, %sw.bb13 ], [ @.str.22, %sw.bb12 ], [ @.str.21, %sw.bb11 ], [ @.str.20, %sw.bb10 ], [ null, %sw.bb ], [ @.str.19, %if.then ], !dbg !737
    #dbg_value(ptr %mf.0, !244, !DIExpression(), !737)
    #dbg_value(ptr %mode.1, !241, !DIExpression(), !737)
  %cmp18 = icmp eq i64 %1, 33, !dbg !751
  %cond19 = select i1 %cmp18, i32 50, i32 49, !dbg !752
  %5 = load i32, ptr %2, align 8, !dbg !753
    #dbg_value(i32 %5, !462, !DIExpression(), !754)
  %and.i = and i32 %5, 1048575, !dbg !756
  %cmp.i = icmp eq i32 %and.i, 0, !dbg !758
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !759

if.then.i:                                        ; preds = %if.end
  %shr.i = lshr exact i32 %5, 20, !dbg !760
  %call.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @uint32_to_optstr.buf, i64 noundef 16, ptr noundef nonnull @.str.65, i32 noundef %shr.i) #9, !dbg !761
  br label %uint32_to_optstr.exit, !dbg !761

if.else.i:                                        ; preds = %if.end
  %and1.i = and i32 %5, 1023, !dbg !762
  %cmp2.i = icmp eq i32 %and1.i, 0, !dbg !764
  br i1 %cmp2.i, label %if.then3.i, label %if.else6.i, !dbg !765

if.then3.i:                                       ; preds = %if.else.i
  %shr4.i = lshr exact i32 %5, 10, !dbg !766
  %call5.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @uint32_to_optstr.buf, i64 noundef 16, ptr noundef nonnull @.str.66, i32 noundef %shr4.i) #9, !dbg !767
  br label %uint32_to_optstr.exit, !dbg !767

if.else6.i:                                       ; preds = %if.else.i
  %call7.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @uint32_to_optstr.buf, i64 noundef 16, ptr noundef nonnull @.str.67, i32 noundef %5) #9, !dbg !768
  br label %uint32_to_optstr.exit

uint32_to_optstr.exit:                            ; preds = %if.then.i, %if.then3.i, %if.else6.i
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.24, i32 noundef %cond19, ptr noundef nonnull @uint32_to_optstr.buf) #9, !dbg !769
  br i1 %all_known, label %if.then21, label %for.inc, !dbg !770

if.then21:                                        ; preds = %uint32_to_optstr.exit
  %lc = getelementptr inbounds i8, ptr %2, i64 20, !dbg !771
  %6 = load i32, ptr %lc, align 4, !dbg !771
  %lp = getelementptr inbounds i8, ptr %2, i64 24, !dbg !773
  %7 = load i32, ptr %lp, align 8, !dbg !773
  %pb = getelementptr inbounds i8, ptr %2, i64 28, !dbg !774
  %8 = load i32, ptr %pb, align 4, !dbg !774
  %nice_len = getelementptr inbounds i8, ptr %2, i64 36, !dbg !775
  %9 = load i32, ptr %nice_len, align 4, !dbg !775
  %depth = getelementptr inbounds i8, ptr %2, i64 44, !dbg !776
  %10 = load i32, ptr %depth, align 4, !dbg !776
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.25, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %mode.1, i32 noundef %9, ptr noundef %mf.0, i32 noundef %10) #9, !dbg !777
  br label %for.inc, !dbg !777

sw.bb23:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %options26 = getelementptr inbounds i8, ptr %arrayidx70, i64 8, !dbg !778
  %11 = load ptr, ptr %options26, align 8, !dbg !778
    #dbg_value(ptr %11, !245, !DIExpression(), !779)
  %sub = add nsw i64 %1, -4, !dbg !780
  %arrayidx29 = getelementptr inbounds [6 x [9 x i8]], ptr @message_filters_to_str.bcj_names, i64 0, i64 %sub, !dbg !781
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.13, ptr noundef nonnull %arrayidx29) #9, !dbg !782
  %cmp30.not = icmp eq ptr %11, null, !dbg !783
  br i1 %cmp30.not, label %for.inc, label %land.lhs.true, !dbg !785

land.lhs.true:                                    ; preds = %sw.bb23
  %12 = load i32, ptr %11, align 4, !dbg !786
  %cmp31.not = icmp eq i32 %12, 0, !dbg !787
  br i1 %cmp31.not, label %for.inc, label %if.then32, !dbg !788

if.then32:                                        ; preds = %land.lhs.true
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.26, i32 noundef %12) #9, !dbg !789
  br label %for.inc, !dbg !789

sw.bb35:                                          ; preds = %for.body
  %options38 = getelementptr inbounds i8, ptr %arrayidx70, i64 8, !dbg !790
  %13 = load ptr, ptr %options38, align 8, !dbg !790
    #dbg_value(ptr %13, !254, !DIExpression(), !791)
  %dist = getelementptr inbounds i8, ptr %13, i64 4, !dbg !792
  %14 = load i32, ptr %dist, align 4, !dbg !792
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.27, i32 noundef %14) #9, !dbg !793
  br label %for.inc

sw.default39:                                     ; preds = %for.body
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %pos, ptr noundef nonnull %left, ptr noundef nonnull @.str.18) #9, !dbg !794
  br label %for.inc, !dbg !795

for.inc:                                          ; preds = %sw.bb23, %land.lhs.true, %if.then32, %uint32_to_optstr.exit, %if.then21, %sw.bb35, %sw.default39
  %inc = add i64 %i.069, 1, !dbg !796
    #dbg_value(i64 %inc, !195, !DIExpression(), !726)
  %arrayidx = getelementptr inbounds %struct.lzma_filter, ptr %filters, i64 %inc, !dbg !797
  %15 = load i64, ptr %arrayidx, align 8, !dbg !727
  %cmp.not = icmp eq i64 %15, -1, !dbg !728
  br i1 %cmp.not, label %for.cond.cleanup, label %for.body, !dbg !729, !llvm.loop !798
}

declare !dbg !800 void @my_snprintf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @message_filters_show(i32 noundef %v, ptr nocapture noundef readonly %filters) local_unnamed_addr #4 !dbg !805 {
entry:
  %buf = alloca [512 x i8], align 16, !DIAssignID !815
    #dbg_assign(i1 undef, !811, !DIExpression(), !815, ptr %buf, !DIExpression(), !816)
    #dbg_value(i32 %v, !809, !DIExpression(), !816)
    #dbg_value(ptr %filters, !810, !DIExpression(), !816)
  %0 = load i32, ptr @verbosity, align 4, !dbg !817
  %cmp = icmp ult i32 %0, %v, !dbg !819
  br i1 %cmp, label %return, label %if.end, !dbg !820

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #9, !dbg !821
  call void @message_filters_to_str(ptr noundef nonnull %buf, ptr noundef %filters, i1 noundef zeroext true), !dbg !822
  %1 = load ptr, ptr @stderr, align 8, !dbg !823
  %2 = load ptr, ptr @progname, align 8, !dbg !824
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef %2, ptr noundef nonnull %buf) #10, !dbg !825
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #9, !dbg !826
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !826
}

; Function Attrs: nofree nounwind
declare !dbg !827 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @message_try_help() local_unnamed_addr #0 !dbg !880 {
entry:
  ret void, !dbg !881
}

; Function Attrs: nounwind uwtable
define dso_local void @message_version() local_unnamed_addr #4 !dbg !882 {
entry:
  %0 = load i8, ptr @opt_robot, align 1, !dbg !883, !range !885, !noundef !886
  %loadedv = trunc nuw i8 %0 to i1, !dbg !883
  br i1 %loadedv, label %if.then, label %if.else, !dbg !887

if.then:                                          ; preds = %entry
  %call = tail call i32 @lzma_version_number() #9, !dbg !888
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 50000056, i32 noundef %call), !dbg !890
  br label %if.end, !dbg !891

if.else:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str), !dbg !892
  %call3 = tail call ptr @lzma_version_string() #9, !dbg !894
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %call3), !dbg !895
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr @verbosity, align 4, !dbg !896
  %cmp = icmp ne i32 %1, 0, !dbg !897
  %conv = zext i1 %cmp to i32, !dbg !897
  tail call void @tuklib_exit(i32 noundef 0, i32 noundef 1, i32 noundef %conv) #9, !dbg !898
  ret void, !dbg !899
}

; Function Attrs: nofree nounwind
declare !dbg !900 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare !dbg !903 i32 @lzma_version_number() local_unnamed_addr #5

declare !dbg !907 ptr @lzma_version_string() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @message_help(i1 noundef zeroext %long_help) local_unnamed_addr #4 !dbg !910 {
entry:
    #dbg_value(i1 %long_help, !912, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !913)
  %0 = load ptr, ptr @progname, align 8, !dbg !914
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef %0), !dbg !915
  br i1 %long_help, label %if.then29, label %if.else.critedge, !dbg !916

if.then29:                                        ; preds = %entry
  %call1 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.34), !dbg !917
  %call4 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.35), !dbg !919
  %call6 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.36), !dbg !921
  %call9 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.37), !dbg !922
  %call1164 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.38), !dbg !924
  %call14 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.39), !dbg !925
  %call18 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.40), !dbg !927
  %call19 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.41), !dbg !930
  %call21 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.42), !dbg !931
  %call22 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.43), !dbg !932
  %call25 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.44), !dbg !933
  %call26 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.45), !dbg !936
  %call30 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.46), !dbg !937
  %call31 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.47), !dbg !940
  %call32 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.48), !dbg !941
  %call33 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.49), !dbg !942
  %call37 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.50), !dbg !943
  %call39 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.51), !dbg !945
  %call42 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.52), !dbg !946
  %call43 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.53), !dbg !949
  %putchar = tail call i32 @putchar(i32 10), !dbg !950
  br label %if.end48, !dbg !951

if.else.critedge:                                 ; preds = %entry
  %call6.c = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.36), !dbg !921
  %call11 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.38), !dbg !924
  %call21.c = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.42), !dbg !931
  %call22.c = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.43), !dbg !932
  br label %if.end48

if.end48:                                         ; preds = %if.else.critedge, %if.then29
  %.str.51.sink = phi ptr [ @.str.51, %if.else.critedge ], [ @.str.55, %if.then29 ]
  %.str.57.sink = phi ptr [ @.str.57, %if.else.critedge ], [ @.str.56, %if.then29 ]
  %call39.c = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %.str.51.sink), !dbg !913
  %call47 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %.str.57.sink), !dbg !952
  %call49 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.58), !dbg !953
  %call50 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.59), !dbg !954
  %call51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef nonnull @.str.61), !dbg !955
  %call52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64), !dbg !956
  %1 = load i32, ptr @verbosity, align 4, !dbg !957
  %cmp = icmp ne i32 %1, 0, !dbg !958
  %conv = zext i1 %cmp to i32, !dbg !958
  tail call void @tuklib_exit(i32 noundef 0, i32 noundef 1, i32 noundef %conv) #9, !dbg !959
  ret void, !dbg !960
}

; Function Attrs: nofree nounwind
declare !dbg !961 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!474, !475, !476, !477, !478, !479, !480}
!llvm.ident = !{!481}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "verbosity", scope: !2, file: !3, line: 31, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !61, globals: !63, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "xz/message.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "acefe33131fa250b4cbaf27f73caac97")
!4 = !{!5, !14, !18, !24, !38, !45, !50, !57}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "message_verbosity", file: !6, line: 14, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "xz/message.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "46ce4fae4ea23be71658f9b2e1a5aef3")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "V_SILENT", value: 0)
!10 = !DIEnumerator(name: "V_ERROR", value: 1)
!11 = !DIEnumerator(name: "V_WARNING", value: 2)
!12 = !DIEnumerator(name: "V_VERBOSE", value: 3)
!13 = !DIEnumerator(name: "V_DEBUG", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 44, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!16 = !{!17}
!17 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "exit_status_type", file: !19, line: 14, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "xz/main.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "f54f82fff34a105635379e91892f4bd0")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "E_SUCCESS", value: 0)
!22 = !DIEnumerator(name: "E_ERROR", value: 1)
!23 = !DIEnumerator(name: "E_WARNING", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 57, baseType: !7, size: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!26 = !DIEnumerator(name: "LZMA_OK", value: 0)
!27 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!28 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!29 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!30 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!31 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!32 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!33 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!34 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!35 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!36 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!37 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "operation_mode", file: !39, line: 13, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "xz/coder.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "17fcfb290997745d98f9605d60a11c50")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "MODE_COMPRESS", value: 0)
!42 = !DIEnumerator(name: "MODE_DECOMPRESS", value: 1)
!43 = !DIEnumerator(name: "MODE_TEST", value: 2)
!44 = !DIEnumerator(name: "MODE_LIST", value: 3)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 138, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "liblzma/api/lzma/lzma.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!49 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 58, baseType: !7, size: 32, elements: !51)
!51 = !{!52, !53, !54, !55, !56}
!52 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!53 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!54 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!55 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!56 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 35, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "liblzma/api/lzma/delta.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "397cde14a8f4a544385c9c6ecc7e0cc9")
!59 = !{!60}
!60 = !DIEnumerator(name: "LZMA_DELTA_TYPE_BYTE", value: 0)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !{!64, !70, !75, !80, !85, !90, !92, !97, !99, !104, !109, !114, !119, !124, !129, !131, !136, !138, !140, !145, !147, !149, !151, !153, !155, !160, !165, !274, !279, !284, !289, !294, !299, !301, !306, !311, !316, !321, !326, !328, !333, !338, !343, !348, !353, !358, !363, !365, !370, !375, !380, !385, !387, !392, !397, !402, !407, !412, !417, !422, !427, !432, !434, !439, !441, !443, !448, !450, !0, !452, !454, !456, !466, !470, !472}
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !3, line: 817, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 168, elements: !68)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !{!69}
!69 = !DISubrange(count: 21)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !3, line: 824, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 264, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 33)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !3, line: 833, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 392, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 49)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !3, line: 836, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 528, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 66)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !3, line: 843, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 216, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 27)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !3, line: 846, type: !87, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !3, line: 849, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 160, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 20)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !3, line: 852, type: !87, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !3, line: 855, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 192, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 24)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !3, line: 888, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 440, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 55)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !3, line: 903, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 40, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 5)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !3, line: 912, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 56, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 7)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !3, line: 916, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 376, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 47)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !3, line: 952, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 24, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 3)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !3, line: 952, type: !126, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !3, line: 952, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 32, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 4)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !3, line: 964, type: !111, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !3, line: 968, type: !116, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 972, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 8)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 978, type: !133, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !3, line: 982, type: !133, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !3, line: 986, type: !133, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !3, line: 990, type: !133, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !3, line: 994, type: !133, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1005, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 120, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 15)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1020, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 400, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 50)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "bcj_names", scope: !167, file: !3, line: 1035, type: !270, isLocal: true, isDefinition: true)
!167 = distinct !DISubprogram(name: "message_filters_to_str", scope: !3, file: !3, line: 943, type: !168, scopeLine: 945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !187)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !170, !171, !186}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !174, line: 65, baseType: !175)
!174 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 43, size: 128, elements: !176)
!176 = !{!177, !185}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !175, file: !174, line: 54, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !179, line: 63, baseType: !180)
!179 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !181, line: 27, baseType: !182)
!181 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !183, line: 45, baseType: !184)
!183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!184 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !175, file: !174, line: 63, baseType: !62, size: 64, offset: 64)
!186 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!187 = !{!188, !189, !190, !191, !192, !195, !197, !241, !244, !245, !254}
!188 = !DILocalVariable(name: "buf", arg: 1, scope: !167, file: !3, line: 943, type: !170)
!189 = !DILocalVariable(name: "filters", arg: 2, scope: !167, file: !3, line: 944, type: !171)
!190 = !DILocalVariable(name: "all_known", arg: 3, scope: !167, file: !3, line: 944, type: !186)
!191 = !DILocalVariable(name: "pos", scope: !167, file: !3, line: 946, type: !170)
!192 = !DILocalVariable(name: "left", scope: !167, file: !3, line: 947, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !194, line: 18, baseType: !184)
!194 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!195 = !DILocalVariable(name: "i", scope: !196, file: !3, line: 949, type: !193)
!196 = distinct !DILexicalBlock(scope: !167, file: !3, line: 949, column: 2)
!197 = !DILocalVariable(name: "opt", scope: !198, file: !3, line: 957, type: !202)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 956, column: 27)
!199 = distinct !DILexicalBlock(scope: !200, file: !3, line: 954, column: 26)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 949, column: 61)
!201 = distinct !DILexicalBlock(scope: !196, file: !3, line: 949, column: 2)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !46, line: 399, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 185, size: 896, elements: !206)
!206 = !{!207, !210, !216, !217, !218, !219, !220, !222, !223, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !236, !237, !238, !239, !240}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !205, file: !46, line: 217, baseType: !208, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !181, line: 26, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !183, line: 42, baseType: !7)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !205, file: !46, line: 240, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !181, line: 24, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !183, line: 38, baseType: !215)
!215 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !205, file: !46, line: 254, baseType: !208, size: 32, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !205, file: !46, line: 281, baseType: !208, size: 32, offset: 160)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !205, file: !46, line: 293, baseType: !208, size: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !205, file: !46, line: 316, baseType: !208, size: 32, offset: 224)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !205, file: !46, line: 322, baseType: !221, size: 32, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !46, line: 155, baseType: !45)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !205, file: !46, line: 342, baseType: !208, size: 32, offset: 288)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !205, file: !46, line: 345, baseType: !224, size: 32, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !46, line: 111, baseType: !50)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !205, file: !46, line: 375, baseType: !208, size: 32, offset: 352)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !205, file: !46, line: 384, baseType: !208, size: 32, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !205, file: !46, line: 385, baseType: !208, size: 32, offset: 416)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !205, file: !46, line: 386, baseType: !208, size: 32, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !205, file: !46, line: 387, baseType: !208, size: 32, offset: 480)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !205, file: !46, line: 388, baseType: !208, size: 32, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !205, file: !46, line: 389, baseType: !208, size: 32, offset: 544)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !205, file: !46, line: 390, baseType: !208, size: 32, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !205, file: !46, line: 391, baseType: !208, size: 32, offset: 608)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !205, file: !46, line: 392, baseType: !235, size: 32, offset: 640)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !15, line: 46, baseType: !14)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !205, file: !46, line: 393, baseType: !235, size: 32, offset: 672)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !205, file: !46, line: 394, baseType: !235, size: 32, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !205, file: !46, line: 395, baseType: !235, size: 32, offset: 736)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !205, file: !46, line: 396, baseType: !62, size: 64, offset: 768)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !205, file: !46, line: 397, baseType: !62, size: 64, offset: 832)
!241 = !DILocalVariable(name: "mode", scope: !198, file: !3, line: 958, type: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!244 = !DILocalVariable(name: "mf", scope: !198, file: !3, line: 959, type: !242)
!245 = !DILocalVariable(name: "opt", scope: !246, file: !3, line: 1044, type: !247)
!246 = distinct !DILexicalBlock(scope: !199, file: !3, line: 1034, column: 27)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_bcj", file: !250, line: 90, baseType: !251)
!250 = !DIFile(filename: "liblzma/api/lzma/bcj.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "a1035092336f34cf9afafbb05b1edd83")
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !250, line: 73, size: 32, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "start_offset", scope: !251, file: !250, line: 88, baseType: !208, size: 32)
!254 = !DILocalVariable(name: "opt", scope: !255, file: !3, line: 1057, type: !256)
!255 = distinct !DILexicalBlock(scope: !199, file: !3, line: 1056, column: 27)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_delta", file: !58, line: 77, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 45, size: 320, elements: !260)
!260 = !{!261, !263, !264, !265, !266, !267, !268, !269}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !259, file: !58, line: 47, baseType: !262, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_delta_type", file: !58, line: 37, baseType: !57)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !259, file: !58, line: 59, baseType: !208, size: 32, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !259, file: !58, line: 70, baseType: !208, size: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !259, file: !58, line: 71, baseType: !208, size: 32, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !259, file: !58, line: 72, baseType: !208, size: 32, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !259, file: !58, line: 73, baseType: !208, size: 32, offset: 160)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !259, file: !58, line: 74, baseType: !62, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !259, file: !58, line: 75, baseType: !62, size: 64, offset: 256)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 432, elements: !271)
!271 = !{!272, !273}
!272 = !DISubrange(count: 6)
!273 = !DISubrange(count: 9)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1050, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 80, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 10)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1058, type: !281, isLocal: true, isDefinition: true)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 112, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 14)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1083, type: !286, isLocal: true, isDefinition: true)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 176, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 22)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1093, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 304, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 38)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1105, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 272, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 34)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1108, type: !77, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1109, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 96, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 12)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1119, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 656, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 82)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1126, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 592, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 74)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1130, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 144, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 18)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1132, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1520, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 190)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1139, type: !101, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1141, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1648, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 206)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1147, type: !335, isLocal: true, isDefinition: true)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 3448, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 431)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1156, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 368, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 46)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1157, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 2176, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 272)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1164, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1256, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 157)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1168, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1200, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 150)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1173, type: !360, isLocal: true, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1952, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 244)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1180, type: !350, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1186, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 568, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 71)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1195, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 6592, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 824)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1210, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 3656, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 457)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1222, type: !382, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1680, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 210)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1231, type: !318, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1233, type: !389, isLocal: true, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1184, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 148)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1238, type: !394, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 504, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 63)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1240, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 584, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 73)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1242, type: !404, isLocal: true, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 1)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1243, type: !409, isLocal: true, isDefinition: true)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1048, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 131)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1246, type: !414, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1040, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 130)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1250, type: !419, isLocal: true, isDefinition: true)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1064, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 133)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1255, type: !424, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 464, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 58)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1258, type: !429, isLocal: true, isDefinition: true)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 448, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 56)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1265, type: !286, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1269, type: !436, isLocal: true, isDefinition: true)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 136, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 17)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1270, type: !94, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1270, type: !66, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1270, type: !445, isLocal: true, isDefinition: true)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 232, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 29)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "files_total", scope: !2, file: !3, line: 28, type: !7, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "filename", scope: !2, file: !3, line: 34, type: !242, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "files_pos", scope: !2, file: !3, line: 25, type: !7, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!455 = distinct !DIGlobalVariable(name: "current_filename_printed", scope: !2, file: !3, line: 47, type: !186, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "buf", scope: !458, file: !3, line: 929, type: !463, isLocal: true, isDefinition: true)
!458 = distinct !DISubprogram(name: "uint32_to_optstr", scope: !3, file: !3, line: 927, type: !459, scopeLine: 928, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!242, !208}
!461 = !{!462}
!462 = !DILocalVariable(name: "num", arg: 1, scope: !458, file: !3, line: 927, type: !208)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 128, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 16)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !3, line: 932, type: !468, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 48, elements: !469)
!469 = !{!272}
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !3, line: 934, type: !468, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !3, line: 936, type: !126, isLocal: true, isDefinition: true)
!474 = !{i32 7, !"Dwarf Version", i32 5}
!475 = !{i32 2, !"Debug Info Version", i32 3}
!476 = !{i32 1, !"wchar_size", i32 4}
!477 = !{i32 8, !"PIC Level", i32 2}
!478 = !{i32 7, !"PIE Level", i32 2}
!479 = !{i32 7, !"uwtable", i32 2}
!480 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!481 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!482 = distinct !DISubprogram(name: "message_init", scope: !3, file: !3, line: 130, type: !483, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!483 = !DISubroutineType(types: !484)
!484 = !{null}
!485 = !DILocation(line: 174, column: 2, scope: !482)
!486 = distinct !DISubprogram(name: "message_verbosity_increase", scope: !3, file: !3, line: 179, type: !483, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!487 = !DILocation(line: 181, column: 6, scope: !488)
!488 = distinct !DILexicalBlock(scope: !486, file: !3, line: 181, column: 6)
!489 = !DILocation(line: 181, column: 16, scope: !488)
!490 = !DILocation(line: 181, column: 6, scope: !486)
!491 = !DILocation(line: 182, column: 3, scope: !488)
!492 = !DILocation(line: 184, column: 2, scope: !486)
!493 = distinct !DISubprogram(name: "message_verbosity_decrease", scope: !3, file: !3, line: 189, type: !483, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!494 = !DILocation(line: 191, column: 6, scope: !495)
!495 = distinct !DILexicalBlock(scope: !493, file: !3, line: 191, column: 6)
!496 = !DILocation(line: 191, column: 16, scope: !495)
!497 = !DILocation(line: 191, column: 6, scope: !493)
!498 = !DILocation(line: 192, column: 3, scope: !495)
!499 = !DILocation(line: 194, column: 2, scope: !493)
!500 = distinct !DISubprogram(name: "message_verbosity_get", scope: !3, file: !3, line: 199, type: !501, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!501 = !DISubroutineType(types: !502)
!502 = !{!5}
!503 = !DILocation(line: 201, column: 9, scope: !500)
!504 = !DILocation(line: 201, column: 2, scope: !500)
!505 = distinct !DISubprogram(name: "message_set_files", scope: !3, file: !3, line: 206, type: !506, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !508)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !7}
!508 = !{!509}
!509 = !DILocalVariable(name: "files", arg: 1, scope: !505, file: !3, line: 206, type: !7)
!510 = !DILocation(line: 0, scope: !505)
!511 = !DILocation(line: 209, column: 2, scope: !505)
!512 = distinct !DISubprogram(name: "message_filename", scope: !3, file: !3, line: 251, type: !513, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !242}
!515 = !{!516}
!516 = !DILocalVariable(name: "src_name", arg: 1, scope: !512, file: !3, line: 251, type: !242)
!517 = !DILocation(line: 0, scope: !512)
!518 = !DILocation(line: 254, column: 2, scope: !512)
!519 = !DILocation(line: 265, column: 2, scope: !512)
!520 = distinct !DISubprogram(name: "message_progress_start", scope: !3, file: !3, line: 270, type: !521, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !562)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !523, !180}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !15, line: 490, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 453, size: 1088, elements: !526)
!526 = !{!527, !528, !529, !530, !532, !533, !534, !548, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !525, file: !15, line: 454, baseType: !211, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !525, file: !15, line: 455, baseType: !193, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !525, file: !15, line: 456, baseType: !180, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !525, file: !15, line: 458, baseType: !531, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !525, file: !15, line: 459, baseType: !193, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !525, file: !15, line: 460, baseType: !180, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !525, file: !15, line: 468, baseType: !535, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !15, line: 403, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 341, size: 192, elements: !538)
!538 = !{!539, !543, !547}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !537, file: !15, line: 376, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!62, !62, !193, !193}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !537, file: !15, line: 390, baseType: !544, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !62, !62}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !537, file: !15, line: 401, baseType: !62, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !525, file: !15, line: 471, baseType: !549, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !15, line: 411, baseType: !551)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !15, line: 411, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !525, file: !15, line: 479, baseType: !62, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !525, file: !15, line: 480, baseType: !62, size: 64, offset: 576)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !525, file: !15, line: 481, baseType: !62, size: 64, offset: 640)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !525, file: !15, line: 482, baseType: !62, size: 64, offset: 704)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !525, file: !15, line: 483, baseType: !180, size: 64, offset: 768)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !525, file: !15, line: 484, baseType: !180, size: 64, offset: 832)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !525, file: !15, line: 485, baseType: !193, size: 64, offset: 896)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !525, file: !15, line: 486, baseType: !193, size: 64, offset: 960)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !525, file: !15, line: 487, baseType: !235, size: 32, offset: 1024)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !525, file: !15, line: 488, baseType: !235, size: 32, offset: 1056)
!562 = !{!563, !564}
!563 = !DILocalVariable(name: "strm", arg: 1, scope: !520, file: !3, line: 270, type: !523)
!564 = !DILocalVariable(name: "in_size", arg: 2, scope: !520, file: !3, line: 270, type: !180)
!565 = !DILocation(line: 0, scope: !520)
!566 = !DILocation(line: 308, column: 2, scope: !520)
!567 = distinct !DISubprogram(name: "message_progress_update", scope: !3, file: !3, line: 563, type: !483, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!568 = !DILocation(line: 644, column: 2, scope: !567)
!569 = distinct !DISubprogram(name: "message_progress_end", scope: !3, file: !3, line: 729, type: !570, scopeLine: 730, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !572)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !186}
!572 = !{!573}
!573 = !DILocalVariable(name: "success", arg: 1, scope: !569, file: !3, line: 729, type: !186)
!574 = !DILocation(line: 0, scope: !569)
!575 = !DILocation(line: 736, column: 2, scope: !569)
!576 = distinct !DISubprogram(name: "message", scope: !3, file: !3, line: 766, type: !577, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !5, !242, null}
!579 = !{!580, !581, !582}
!580 = !DILocalVariable(name: "v", arg: 1, scope: !576, file: !3, line: 766, type: !5)
!581 = !DILocalVariable(name: "fmt", arg: 2, scope: !576, file: !3, line: 766, type: !242)
!582 = !DILocalVariable(name: "ap", scope: !576, file: !3, line: 768, type: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !584, line: 12, baseType: !585)
!584 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stdarg_va_list.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !586)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 192, elements: !405)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !588)
!588 = !{!589, !590, !591, !592}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !587, file: !3, line: 768, baseType: !7, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !587, file: !3, line: 768, baseType: !7, size: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !587, file: !3, line: 768, baseType: !62, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !587, file: !3, line: 768, baseType: !62, size: 64, offset: 128)
!593 = distinct !DIAssignID()
!594 = !DILocation(line: 0, scope: !576)
!595 = !DILocation(line: 773, column: 1, scope: !576)
!596 = distinct !DISubprogram(name: "message_warning", scope: !3, file: !3, line: 777, type: !597, scopeLine: 778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !242, null}
!599 = !{!600, !601}
!600 = !DILocalVariable(name: "fmt", arg: 1, scope: !596, file: !3, line: 777, type: !242)
!601 = !DILocalVariable(name: "ap", scope: !596, file: !3, line: 779, type: !583)
!602 = distinct !DIAssignID()
!603 = !DILocation(line: 0, scope: !596)
!604 = !DILocation(line: 784, column: 2, scope: !596)
!605 = !DILocation(line: 786, column: 1, scope: !596)
!606 = !DISubprogram(name: "set_exit_status", scope: !19, file: !19, line: 24, type: !607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !18}
!609 = distinct !DISubprogram(name: "message_error", scope: !3, file: !3, line: 790, type: !597, scopeLine: 791, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !610)
!610 = !{!611, !612}
!611 = !DILocalVariable(name: "fmt", arg: 1, scope: !609, file: !3, line: 790, type: !242)
!612 = !DILocalVariable(name: "ap", scope: !609, file: !3, line: 792, type: !583)
!613 = distinct !DIAssignID()
!614 = !DILocation(line: 0, scope: !609)
!615 = !DILocation(line: 797, column: 2, scope: !609)
!616 = !DILocation(line: 799, column: 1, scope: !609)
!617 = distinct !DISubprogram(name: "message_fatal", scope: !3, file: !3, line: 803, type: !597, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!618 = !{!619, !620}
!619 = !DILocalVariable(name: "fmt", arg: 1, scope: !617, file: !3, line: 803, type: !242)
!620 = !DILocalVariable(name: "ap", scope: !617, file: !3, line: 805, type: !583)
!621 = distinct !DIAssignID()
!622 = !DILocation(line: 0, scope: !617)
!623 = !DILocation(line: 810, column: 2, scope: !617)
!624 = !DILocation(line: 811, column: 1, scope: !617)
!625 = !DISubprogram(name: "tuklib_exit", scope: !626, file: !626, line: 21, type: !627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!626 = !DIFile(filename: "common/tuklib_exit.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "09538a5ffe493e3e268cd00199828e96")
!627 = !DISubroutineType(types: !628)
!628 = !{null, !629, !629, !629}
!629 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!630 = distinct !DISubprogram(name: "message_bug", scope: !3, file: !3, line: 815, type: !483, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!631 = distinct !DIAssignID()
!632 = !DILocation(line: 0, scope: !617, inlinedAt: !633)
!633 = distinct !DILocation(line: 817, column: 2, scope: !630)
!634 = !DILocation(line: 810, column: 2, scope: !617, inlinedAt: !633)
!635 = !DILocation(line: 818, column: 1, scope: !630)
!636 = distinct !DISubprogram(name: "message_signal_handler", scope: !3, file: !3, line: 822, type: !483, scopeLine: 823, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!637 = distinct !DIAssignID()
!638 = !DILocation(line: 0, scope: !617, inlinedAt: !639)
!639 = distinct !DILocation(line: 824, column: 2, scope: !636)
!640 = !DILocation(line: 810, column: 2, scope: !617, inlinedAt: !639)
!641 = !DILocation(line: 825, column: 1, scope: !636)
!642 = distinct !DISubprogram(name: "message_strm", scope: !3, file: !3, line: 829, type: !643, scopeLine: 830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!643 = !DISubroutineType(types: !644)
!644 = !{!242, !645}
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !15, line: 237, baseType: !24)
!646 = !{!647}
!647 = !DILocalVariable(name: "code", arg: 1, scope: !642, file: !3, line: 829, type: !645)
!648 = !DILocation(line: 0, scope: !642)
!649 = !DILocation(line: 831, column: 2, scope: !642)
!650 = !DILocation(line: 836, column: 3, scope: !651)
!651 = distinct !DILexicalBlock(scope: !642, file: !3, line: 831, column: 16)
!652 = !DILocation(line: 840, column: 10, scope: !651)
!653 = !DILocation(line: 840, column: 3, scope: !651)
!654 = !DILocation(line: 843, column: 3, scope: !651)
!655 = !DILocation(line: 846, column: 3, scope: !651)
!656 = !DILocation(line: 849, column: 3, scope: !651)
!657 = !DILocation(line: 852, column: 3, scope: !651)
!658 = !DILocation(line: 855, column: 3, scope: !651)
!659 = !DILocation(line: 867, column: 2, scope: !642)
!660 = !DILocation(line: 868, column: 1, scope: !642)
!661 = !DISubprogram(name: "strerror", scope: !662, file: !662, line: 419, type: !663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!662 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!663 = !DISubroutineType(types: !664)
!664 = !{!170, !629}
!665 = distinct !DISubprogram(name: "message_mem_needed", scope: !3, file: !3, line: 872, type: !666, scopeLine: 873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !668)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !5, !180}
!668 = !{!669, !670, !671, !672}
!669 = !DILocalVariable(name: "v", arg: 1, scope: !665, file: !3, line: 872, type: !5)
!670 = !DILocalVariable(name: "memusage", arg: 2, scope: !665, file: !3, line: 872, type: !180)
!671 = !DILocalVariable(name: "memlimit", scope: !665, file: !3, line: 883, type: !180)
!672 = !DILocalVariable(name: "memlimitstr", scope: !665, file: !3, line: 897, type: !673)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1024, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 128)
!676 = distinct !DIAssignID()
!677 = !DILocation(line: 0, scope: !665)
!678 = !DILocation(line: 874, column: 10, scope: !679)
!679 = distinct !DILexicalBlock(scope: !665, file: !3, line: 874, column: 6)
!680 = !DILocation(line: 874, column: 8, scope: !679)
!681 = !DILocation(line: 874, column: 6, scope: !665)
!682 = !DILocation(line: 881, column: 13, scope: !665)
!683 = !DILocation(line: 883, column: 44, scope: !665)
!684 = !DILocation(line: 883, column: 22, scope: !665)
!685 = !DILocation(line: 887, column: 15, scope: !686)
!686 = distinct !DILexicalBlock(scope: !665, file: !3, line: 887, column: 6)
!687 = !DILocation(line: 887, column: 6, scope: !665)
!688 = !DILocation(line: 890, column: 5, scope: !689)
!689 = distinct !DILexicalBlock(scope: !686, file: !3, line: 887, column: 30)
!690 = !DILocation(line: 891, column: 3, scope: !689)
!691 = !DILocation(line: 897, column: 2, scope: !665)
!692 = !DILocation(line: 902, column: 15, scope: !693)
!693 = distinct !DILexicalBlock(scope: !665, file: !3, line: 902, column: 6)
!694 = !DILocation(line: 902, column: 6, scope: !665)
!695 = !DILocation(line: 913, column: 19, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !3, line: 905, column: 9)
!697 = !DILocation(line: 0, scope: !693)
!698 = !DILocation(line: 917, column: 4, scope: !665)
!699 = !DILocation(line: 920, column: 1, scope: !665)
!700 = !DISubprogram(name: "round_up_to_mib", scope: !701, file: !701, line: 48, type: !702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!701 = !DIFile(filename: "xz/util.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "36136e1fc433f9fd7b2b728f8484a043")
!702 = !DISubroutineType(types: !703)
!703 = !{!180, !180}
!704 = !DISubprogram(name: "hardware_memlimit_get", scope: !705, file: !705, line: 35, type: !706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!705 = !DIFile(filename: "xz/hardware.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "7ed07700a75387ea633d6b4d26a671b7")
!706 = !DISubroutineType(types: !707)
!707 = !{!180, !38}
!708 = !DISubprogram(name: "uint64_to_str", scope: !701, file: !701, line: 61, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!709 = !DISubroutineType(types: !710)
!710 = !{!242, !180, !208}
!711 = !DISubprogram(name: "snprintf", scope: !712, file: !712, line: 378, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!713 = !DISubroutineType(types: !714)
!714 = !{!629, !715, !193, !716, null}
!715 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !170)
!716 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !242)
!717 = distinct !DIAssignID()
!718 = !DILocation(line: 0, scope: !167)
!719 = distinct !DIAssignID()
!720 = !DILocation(line: 946, column: 2, scope: !167)
!721 = !DILocation(line: 946, column: 8, scope: !167)
!722 = distinct !DIAssignID()
!723 = !DILocation(line: 947, column: 2, scope: !167)
!724 = !DILocation(line: 947, column: 9, scope: !167)
!725 = distinct !DIAssignID()
!726 = !DILocation(line: 0, scope: !196)
!727 = !DILocation(line: 949, column: 32, scope: !201)
!728 = !DILocation(line: 949, column: 35, scope: !201)
!729 = !DILocation(line: 949, column: 2, scope: !196)
!730 = !DILocation(line: 1072, column: 1, scope: !167)
!731 = !DILocation(line: 952, column: 36, scope: !200)
!732 = !DILocation(line: 952, column: 34, scope: !200)
!733 = !DILocation(line: 952, column: 3, scope: !200)
!734 = !DILocation(line: 954, column: 22, scope: !200)
!735 = !DILocation(line: 954, column: 3, scope: !200)
!736 = !DILocation(line: 957, column: 46, scope: !198)
!737 = !DILocation(line: 0, scope: !198)
!738 = !DILocation(line: 961, column: 8, scope: !198)
!739 = !DILocation(line: 962, column: 18, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 961, column: 19)
!741 = distinct !DILexicalBlock(scope: !198, file: !3, line: 961, column: 8)
!742 = !DILocation(line: 962, column: 5, scope: !740)
!743 = !DILocation(line: 976, column: 18, scope: !740)
!744 = !DILocation(line: 976, column: 5, scope: !740)
!745 = !DILocation(line: 983, column: 6, scope: !746)
!746 = distinct !DILexicalBlock(scope: !740, file: !3, line: 976, column: 22)
!747 = !DILocation(line: 987, column: 6, scope: !746)
!748 = !DILocation(line: 991, column: 6, scope: !746)
!749 = !DILocation(line: 995, column: 6, scope: !746)
!750 = !DILocation(line: 999, column: 6, scope: !746)
!751 = !DILocation(line: 1006, column: 20, scope: !198)
!752 = !DILocation(line: 1006, column: 6, scope: !198)
!753 = !DILocation(line: 1008, column: 28, scope: !198)
!754 = !DILocation(line: 0, scope: !458, inlinedAt: !755)
!755 = distinct !DILocation(line: 1008, column: 6, scope: !198)
!756 = !DILocation(line: 931, column: 11, scope: !757, inlinedAt: !755)
!757 = distinct !DILexicalBlock(scope: !458, file: !3, line: 931, column: 6)
!758 = !DILocation(line: 931, column: 40, scope: !757, inlinedAt: !755)
!759 = !DILocation(line: 931, column: 6, scope: !458, inlinedAt: !755)
!760 = !DILocation(line: 932, column: 52, scope: !757, inlinedAt: !755)
!761 = !DILocation(line: 932, column: 3, scope: !757, inlinedAt: !755)
!762 = !DILocation(line: 933, column: 16, scope: !763, inlinedAt: !755)
!763 = distinct !DILexicalBlock(scope: !757, file: !3, line: 933, column: 11)
!764 = !DILocation(line: 933, column: 45, scope: !763, inlinedAt: !755)
!765 = !DILocation(line: 933, column: 11, scope: !757, inlinedAt: !755)
!766 = !DILocation(line: 934, column: 52, scope: !763, inlinedAt: !755)
!767 = !DILocation(line: 934, column: 3, scope: !763, inlinedAt: !755)
!768 = !DILocation(line: 936, column: 3, scope: !763, inlinedAt: !755)
!769 = !DILocation(line: 1005, column: 4, scope: !198)
!770 = !DILocation(line: 1018, column: 8, scope: !198)
!771 = !DILocation(line: 1024, column: 11, scope: !772)
!772 = distinct !DILexicalBlock(scope: !198, file: !3, line: 1018, column: 8)
!773 = !DILocation(line: 1024, column: 20, scope: !772)
!774 = !DILocation(line: 1024, column: 29, scope: !772)
!775 = !DILocation(line: 1025, column: 17, scope: !772)
!776 = !DILocation(line: 1025, column: 36, scope: !772)
!777 = !DILocation(line: 1019, column: 5, scope: !772)
!778 = !DILocation(line: 1044, column: 45, scope: !246)
!779 = !DILocation(line: 0, scope: !246)
!780 = !DILocation(line: 1046, column: 6, scope: !246)
!781 = !DILocation(line: 1045, column: 35, scope: !246)
!782 = !DILocation(line: 1045, column: 4, scope: !246)
!783 = !DILocation(line: 1049, column: 12, scope: !784)
!784 = distinct !DILexicalBlock(scope: !246, file: !3, line: 1049, column: 8)
!785 = !DILocation(line: 1049, column: 20, scope: !784)
!786 = !DILocation(line: 1049, column: 28, scope: !784)
!787 = !DILocation(line: 1049, column: 41, scope: !784)
!788 = !DILocation(line: 1049, column: 8, scope: !246)
!789 = !DILocation(line: 1050, column: 5, scope: !784)
!790 = !DILocation(line: 1057, column: 47, scope: !255)
!791 = !DILocation(line: 0, scope: !255)
!792 = !DILocation(line: 1059, column: 11, scope: !255)
!793 = !DILocation(line: 1058, column: 4, scope: !255)
!794 = !DILocation(line: 1066, column: 4, scope: !199)
!795 = !DILocation(line: 1067, column: 4, scope: !199)
!796 = !DILocation(line: 949, column: 56, scope: !201)
!797 = !DILocation(line: 949, column: 21, scope: !201)
!798 = distinct !{!798, !729, !799}
!799 = !DILocation(line: 1069, column: 2, scope: !196)
!800 = !DISubprogram(name: "my_snprintf", scope: !701, file: !701, line: 104, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !803, !804, !242, null}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!805 = distinct !DISubprogram(name: "message_filters_show", scope: !3, file: !3, line: 1076, type: !806, scopeLine: 1077, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !5, !171}
!808 = !{!809, !810, !811}
!809 = !DILocalVariable(name: "v", arg: 1, scope: !805, file: !3, line: 1076, type: !5)
!810 = !DILocalVariable(name: "filters", arg: 2, scope: !805, file: !3, line: 1076, type: !171)
!811 = !DILocalVariable(name: "buf", scope: !805, file: !3, line: 1081, type: !812)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 4096, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 512)
!815 = distinct !DIAssignID()
!816 = !DILocation(line: 0, scope: !805)
!817 = !DILocation(line: 1078, column: 10, scope: !818)
!818 = distinct !DILexicalBlock(scope: !805, file: !3, line: 1078, column: 6)
!819 = !DILocation(line: 1078, column: 8, scope: !818)
!820 = !DILocation(line: 1078, column: 6, scope: !805)
!821 = !DILocation(line: 1081, column: 2, scope: !805)
!822 = !DILocation(line: 1082, column: 2, scope: !805)
!823 = !DILocation(line: 1083, column: 10, scope: !805)
!824 = !DILocation(line: 1083, column: 47, scope: !805)
!825 = !DILocation(line: 1083, column: 2, scope: !805)
!826 = !DILocation(line: 1085, column: 1, scope: !805)
!827 = !DISubprogram(name: "fprintf", scope: !712, file: !712, line: 350, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!828 = !DISubroutineType(types: !829)
!829 = !{!629, !830, !716, null}
!830 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !833, line: 7, baseType: !834)
!833 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !835, line: 49, size: 1728, elements: !836)
!835 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!836 = !{!837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !852, !854, !855, !856, !859, !861, !863, !864, !867, !869, !872, !875, !876, !877, !878, !879}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !834, file: !835, line: 51, baseType: !629, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !834, file: !835, line: 54, baseType: !170, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !834, file: !835, line: 55, baseType: !170, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !834, file: !835, line: 56, baseType: !170, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !834, file: !835, line: 57, baseType: !170, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !834, file: !835, line: 58, baseType: !170, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !834, file: !835, line: 59, baseType: !170, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !834, file: !835, line: 60, baseType: !170, size: 64, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !834, file: !835, line: 61, baseType: !170, size: 64, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !834, file: !835, line: 64, baseType: !170, size: 64, offset: 576)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !834, file: !835, line: 65, baseType: !170, size: 64, offset: 640)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !834, file: !835, line: 66, baseType: !170, size: 64, offset: 704)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !834, file: !835, line: 68, baseType: !850, size: 64, offset: 768)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !835, line: 36, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !834, file: !835, line: 70, baseType: !853, size: 64, offset: 832)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !834, file: !835, line: 72, baseType: !629, size: 32, offset: 896)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !834, file: !835, line: 73, baseType: !629, size: 32, offset: 928)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !834, file: !835, line: 74, baseType: !857, size: 64, offset: 960)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !183, line: 152, baseType: !858)
!858 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !834, file: !835, line: 77, baseType: !860, size: 16, offset: 1024)
!860 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !834, file: !835, line: 78, baseType: !862, size: 8, offset: 1040)
!862 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !834, file: !835, line: 79, baseType: !404, size: 8, offset: 1048)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !834, file: !835, line: 81, baseType: !865, size: 64, offset: 1088)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !835, line: 43, baseType: null)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !834, file: !835, line: 89, baseType: !868, size: 64, offset: 1152)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !183, line: 153, baseType: !858)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !834, file: !835, line: 91, baseType: !870, size: 64, offset: 1216)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !835, line: 37, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !834, file: !835, line: 92, baseType: !873, size: 64, offset: 1280)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !835, line: 38, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !834, file: !835, line: 93, baseType: !853, size: 64, offset: 1344)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !834, file: !835, line: 94, baseType: !62, size: 64, offset: 1408)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !834, file: !835, line: 95, baseType: !193, size: 64, offset: 1472)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !834, file: !835, line: 96, baseType: !629, size: 32, offset: 1536)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !834, file: !835, line: 98, baseType: !94, size: 160, offset: 1568)
!880 = distinct !DISubprogram(name: "message_try_help", scope: !3, file: !3, line: 1089, type: !483, scopeLine: 1090, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!881 = !DILocation(line: 1095, column: 2, scope: !880)
!882 = distinct !DISubprogram(name: "message_version", scope: !3, file: !3, line: 1100, type: !483, scopeLine: 1101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!883 = !DILocation(line: 1104, column: 6, scope: !884)
!884 = distinct !DILexicalBlock(scope: !882, file: !3, line: 1104, column: 6)
!885 = !{i8 0, i8 2}
!886 = !{}
!887 = !DILocation(line: 1104, column: 6, scope: !882)
!888 = !DILocation(line: 1106, column: 19, scope: !889)
!889 = distinct !DILexicalBlock(scope: !884, file: !3, line: 1104, column: 17)
!890 = !DILocation(line: 1105, column: 3, scope: !889)
!891 = !DILocation(line: 1107, column: 2, scope: !889)
!892 = !DILocation(line: 1108, column: 3, scope: !893)
!893 = distinct !DILexicalBlock(scope: !884, file: !3, line: 1107, column: 9)
!894 = !DILocation(line: 1109, column: 26, scope: !893)
!895 = !DILocation(line: 1109, column: 3, scope: !893)
!896 = !DILocation(line: 1112, column: 34, scope: !882)
!897 = !DILocation(line: 1112, column: 44, scope: !882)
!898 = !DILocation(line: 1112, column: 2, scope: !882)
!899 = !DILocation(line: 1113, column: 1, scope: !882)
!900 = !DISubprogram(name: "printf", scope: !712, file: !712, line: 356, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!901 = !DISubroutineType(types: !902)
!902 = !{!629, !716, null}
!903 = !DISubprogram(name: "lzma_version_number", scope: !904, file: !904, line: 121, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = !DIFile(filename: "liblzma/api/lzma/version.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "ce9c46134b3c5416e4204e8e7655d21a")
!905 = !DISubroutineType(types: !906)
!906 = !{!208}
!907 = !DISubprogram(name: "lzma_version_string", scope: !904, file: !904, line: 131, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !DISubroutineType(types: !909)
!909 = !{!242}
!910 = distinct !DISubprogram(name: "message_help", scope: !3, file: !3, line: 1117, type: !570, scopeLine: 1118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !911)
!911 = !{!912}
!912 = !DILocalVariable(name: "long_help", arg: 1, scope: !910, file: !3, line: 1117, type: !186)
!913 = !DILocation(line: 0, scope: !910)
!914 = !DILocation(line: 1121, column: 4, scope: !910)
!915 = !DILocation(line: 1119, column: 2, scope: !910)
!916 = !DILocation(line: 1125, column: 6, scope: !910)
!917 = !DILocation(line: 1126, column: 3, scope: !918)
!918 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1125, column: 6)
!919 = !DILocation(line: 1130, column: 3, scope: !920)
!920 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1129, column: 6)
!921 = !DILocation(line: 1132, column: 2, scope: !910)
!922 = !DILocation(line: 1139, column: 3, scope: !923)
!923 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1138, column: 6)
!924 = !DILocation(line: 1141, column: 2, scope: !910)
!925 = !DILocation(line: 1147, column: 3, scope: !926)
!926 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1146, column: 6)
!927 = !DILocation(line: 1156, column: 3, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 1155, column: 17)
!929 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1155, column: 6)
!930 = !DILocation(line: 1157, column: 3, scope: !928)
!931 = !DILocation(line: 1164, column: 2, scope: !910)
!932 = !DILocation(line: 1168, column: 2, scope: !910)
!933 = !DILocation(line: 1173, column: 3, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 1172, column: 17)
!935 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1172, column: 6)
!936 = !DILocation(line: 1180, column: 3, scope: !934)
!937 = !DILocation(line: 1186, column: 3, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 1185, column: 17)
!939 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1185, column: 6)
!940 = !DILocation(line: 1195, column: 3, scope: !938)
!941 = !DILocation(line: 1210, column: 3, scope: !938)
!942 = !DILocation(line: 1222, column: 3, scope: !938)
!943 = !DILocation(line: 1231, column: 3, scope: !944)
!944 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1230, column: 6)
!945 = !DILocation(line: 1233, column: 2, scope: !910)
!946 = !DILocation(line: 1238, column: 3, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 1237, column: 17)
!948 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1237, column: 6)
!949 = !DILocation(line: 1240, column: 3, scope: !947)
!950 = !DILocation(line: 1242, column: 3, scope: !947)
!951 = !DILocation(line: 1249, column: 2, scope: !947)
!952 = !DILocation(line: 0, scope: !948)
!953 = !DILocation(line: 1255, column: 2, scope: !910)
!954 = !DILocation(line: 1258, column: 2, scope: !910)
!955 = !DILocation(line: 1265, column: 2, scope: !910)
!956 = !DILocation(line: 1270, column: 2, scope: !910)
!957 = !DILocation(line: 1272, column: 34, scope: !910)
!958 = !DILocation(line: 1272, column: 44, scope: !910)
!959 = !DILocation(line: 1272, column: 2, scope: !910)
!960 = !DILocation(line: 1273, column: 1, scope: !910)
!961 = !DISubprogram(name: "puts", scope: !712, file: !712, line: 661, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubroutineType(types: !963)
!963 = !{!629, !242}
