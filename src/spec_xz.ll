; ModuleID = 'spec_xz.c'
source_filename = "spec_xz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }

@.str.5 = private unnamed_addr constant [25 x i8] c"Memory allocation failed\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Specified preset is not supported\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"Error initializing encoder with preset=%u check=%u: %s (code %u)\0A\00", align 1
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"Decompress write error on %d: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Input not in XZ format\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Unsupported compression options\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Compressed data is corrupt\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Compressed data is truncated or otherwise corrupt\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Unknown return code\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Decompression decoder error: %s (code %u)\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Compress write error on %d: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"File size limits exceeded\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Compression encoder error: %s (code %u)\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"lzma_stream_decoder reports an unsupported check method: \00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Unsupported decompression flags\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"Error initializing decoder: %s (code %u)\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@str.27 = private unnamed_addr constant [6 x i8] c"CRC64\00", align 1
@str.28 = private unnamed_addr constant [6 x i8] c"CRC32\00", align 1
@str.29 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@str.30 = private unnamed_addr constant [33 x i8] c"unknown!  This shouldn't happen.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @init_encoder(ptr noundef %strm, ptr noundef %options, i32 noundef %preset, i32 noundef %check) local_unnamed_addr #0 {
entry:
  %filters = alloca [5 x %struct.lzma_filter], align 16
  %lzma_local_options = alloca %struct.lzma_options_lzma, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %filters) #8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %lzma_local_options) #8
  %cmp = icmp eq ptr %options, null
  %spec.store.select = select i1 %cmp, ptr %lzma_local_options, ptr %options
  %cmp1 = icmp ugt i32 %check, 15
  %spec.store.select23 = select i1 %cmp1, i32 4, i32 %check
  %call = call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull %spec.store.select, i32 noundef %preset) #8
  store i64 33, ptr %filters, align 16
  %options5 = getelementptr inbounds i8, ptr %filters, i64 8
  store ptr %spec.store.select, ptr %options5, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %filters, i64 16
  store i64 -1, ptr %arrayidx6, align 16
  %call8 = call i32 @lzma_stream_encoder(ptr noundef %strm, ptr noundef nonnull %filters, i32 noundef %spec.store.select23) #8
  switch i32 %call8, label %sw.default17 [
    i32 0, label %cleanup
    i32 3, label %sw.bb9
    i32 5, label %sw.epilog18
    i32 8, label %sw.bb16
  ]

sw.bb9:                                           ; preds = %entry
  %call10 = call i32 @lzma_get_check(ptr noundef %strm) #8
  br label %sw.epilog18

sw.bb16:                                          ; preds = %entry
  br label %sw.epilog18

sw.default17:                                     ; preds = %entry
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %entry, %sw.bb9, %sw.default17, %sw.bb16
  %msg.0 = phi ptr [ @.str.7, %sw.default17 ], [ @.str.6, %sw.bb16 ], [ @.str.5, %sw.bb9 ], [ @.str.5, %entry ]
  %call19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %preset, i32 noundef %spec.store.select23, ptr noundef nonnull %msg.0, i32 noundef %call8)
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog18
  %retval.0 = phi i1 [ false, %sw.epilog18 ], [ true, %entry ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lzma_local_options) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters) #8
  ret i1 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_stream_encoder(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_get_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @uncompressStream(i32 noundef %zStream, i32 noundef %stream) local_unnamed_addr #0 {
entry:
  %strm = alloca %struct.lzma_stream, align 8
  %in = alloca [8192 x i8], align 16
  %out = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %strm) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %strm, i8 0, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %in) #8
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %out) #8
  %call.i = call i32 @lzma_stream_decoder(ptr noundef nonnull %strm, i64 noundef -1, i32 noundef 10) #8
  switch i32 %call.i, label %sw.default15.i [
    i32 0, label %if.end
    i32 3, label %sw.bb1.i
    i32 5, label %init_decoder.exit
    i32 8, label %sw.bb14.i
  ]

sw.bb1.i:                                         ; preds = %entry
  %call2.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19)
  %call3.i = call i32 @lzma_get_check(ptr noundef nonnull %strm) #8
  switch i32 %call3.i, label %sw.default.i [
    i32 0, label %if.end.sink.split
    i32 1, label %sw.bb6.i
    i32 4, label %sw.bb8.i
    i32 10, label %sw.bb10.i
  ]

sw.bb6.i:                                         ; preds = %sw.bb1.i
  br label %if.end.sink.split

sw.bb8.i:                                         ; preds = %sw.bb1.i
  br label %if.end.sink.split

sw.bb10.i:                                        ; preds = %sw.bb1.i
  br label %if.end.sink.split

sw.default.i:                                     ; preds = %sw.bb1.i
  br label %if.end.sink.split

sw.bb14.i:                                        ; preds = %entry
  br label %init_decoder.exit

sw.default15.i:                                   ; preds = %entry
  br label %init_decoder.exit

init_decoder.exit:                                ; preds = %entry, %sw.bb14.i, %sw.default15.i
  %msg.0.i = phi ptr [ @.str.14, %sw.default15.i ], [ @.str.25, %sw.bb14.i ], [ @.str.5, %entry ]
  %call17.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %msg.0.i, i32 noundef %call.i)
  br label %cleanup47

if.end.sink.split:                                ; preds = %sw.bb1.i, %sw.bb6.i, %sw.bb8.i, %sw.bb10.i, %sw.default.i
  %str.30.sink = phi ptr [ @str.30, %sw.default.i ], [ @str, %sw.bb10.i ], [ @str.27, %sw.bb8.i ], [ @str.28, %sw.bb6.i ], [ @str.29, %sw.bb1.i ]
  %puts24.i = call i32 @puts(ptr nonnull dereferenceable(1) %str.30.sink)
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %entry
  %avail_in = getelementptr inbounds i8, ptr %strm, i64 8
  %next_out = getelementptr inbounds i8, ptr %strm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %strm, i8 0, i64 16, i1 false)
  store ptr %out, ptr %next_out, align 8
  %avail_out = getelementptr inbounds i8, ptr %strm, i64 32
  store i64 8192, ptr %avail_out, align 8
  br label %while.cond

while.condthread-pre-split:                       ; preds = %if.end32
  %.pr = load i64, ptr %avail_in, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.condthread-pre-split, %if.end
  %0 = phi i64 [ %.pr, %while.condthread-pre-split ], [ 0, %if.end ]
  %action.0 = phi i32 [ %action.1, %while.condthread-pre-split ], [ 0, %if.end ]
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %while.cond
  %1 = load ptr, ptr @spec_fd, align 8
  %call2 = call i32 @spec_mem_feof(ptr noundef %1, i32 noundef 3, i32 noundef %zStream) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end13

if.then3:                                         ; preds = %land.lhs.true
  store ptr %in, ptr %strm, align 8
  %2 = load ptr, ptr @spec_fd, align 8
  %call7 = call i64 @spec_mem_fread(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %in, i64 noundef 1, i32 noundef 8192, i32 noundef %zStream) #8
  store i64 %call7, ptr %avail_in, align 8
  %3 = load ptr, ptr @spec_fd, align 8
  %call9 = call i32 @spec_mem_feof(ptr noundef %3, i32 noundef 3, i32 noundef %zStream) #8
  %tobool10.not = icmp eq i32 %call9, 0
  %spec.select = select i1 %tobool10.not, i32 %action.0, i32 3
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %land.lhs.true, %while.cond
  %action.1 = phi i32 [ %action.0, %land.lhs.true ], [ %action.0, %while.cond ], [ %spec.select, %if.then3 ]
  %call14 = call i32 @lzma_code(ptr noundef nonnull %strm, i32 noundef %action.1) #8
  %4 = load i64, ptr %avail_out, align 8
  %cmp16 = icmp eq i64 %4, 0
  %cmp17 = icmp eq i32 %call14, 1
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp17
  br i1 %or.cond, label %if.then18, label %if.end32

if.then18:                                        ; preds = %if.end13
  %sub = sub i64 8192, %4
  %5 = load ptr, ptr @spec_fd, align 8
  %conv = trunc i64 %sub to i32
  %call21 = call i64 @spec_mem_fwrite(ptr noundef %5, i32 noundef 3, ptr noundef nonnull %out, i64 noundef 1, i32 noundef %conv, i32 noundef %stream) #8
  %cmp22.not = icmp eq i64 %call21, %sub
  br i1 %cmp22.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then18
  store ptr %out, ptr %next_out, align 8
  store i64 8192, ptr %avail_out, align 8
  br label %if.end32

cleanup:                                          ; preds = %if.then18
  %call25 = tail call ptr @__errno_location() #9
  %6 = load i32, ptr %call25, align 4
  %call26 = call ptr @strerror(i32 noundef %6) #8
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %stream, ptr noundef %call26)
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
  ]

sw.bb:                                            ; preds = %if.end32
  call void @lzma_end(ptr noundef nonnull %strm) #8
  br label %cleanup47

sw.epilog.loopexit:                               ; preds = %if.end32
  br label %sw.epilog

sw.epilog.loopexit69:                             ; preds = %if.end32
  br label %sw.epilog

sw.epilog.loopexit78:                             ; preds = %if.end32
  br label %sw.epilog

sw.epilog.loopexit87:                             ; preds = %if.end32
  br label %sw.epilog

sw.epilog.loopexit96:                             ; preds = %if.end32
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end32, %sw.epilog.loopexit96, %sw.epilog.loopexit87, %sw.epilog.loopexit78, %sw.epilog.loopexit69, %sw.epilog.loopexit
  %msg.0 = phi ptr [ @.str.5, %sw.epilog.loopexit ], [ @.str.10, %sw.epilog.loopexit69 ], [ @.str.11, %sw.epilog.loopexit78 ], [ @.str.12, %sw.epilog.loopexit87 ], [ @.str.13, %sw.epilog.loopexit96 ], [ @.str.14, %if.end32 ]
  %call41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %msg.0, i32 noundef %call14)
  br label %cleanup47

cleanup47:                                        ; preds = %cleanup, %init_decoder.exit, %sw.epilog, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %out) #8
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %in) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %strm) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @spec_mem_feof(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @spec_mem_fread(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @spec_mem_fwrite(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @compressStream(i32 noundef %stream, i32 noundef %zStream, i32 noundef %preset) local_unnamed_addr #0 {
entry:
  %filters.i = alloca [5 x %struct.lzma_filter], align 16
  %lzma_local_options.i = alloca %struct.lzma_options_lzma, align 8
  %strm = alloca %struct.lzma_stream, align 8
  %in = alloca [8192 x i8], align 16
  %out = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %strm) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %strm, i8 0, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %in) #8
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %out) #8
  %tobool.not = icmp sgt i32 %preset, -1
  %cond = select i1 %tobool.not, i32 4, i32 10
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %filters.i) #8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %lzma_local_options.i) #8
  %call.i = call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull %lzma_local_options.i, i32 noundef %preset) #8
  store i64 33, ptr %filters.i, align 16
  %options5.i = getelementptr inbounds i8, ptr %filters.i, i64 8
  store ptr %lzma_local_options.i, ptr %options5.i, align 8
  %arrayidx6.i = getelementptr inbounds i8, ptr %filters.i, i64 16
  store i64 -1, ptr %arrayidx6.i, align 16
  %call8.i = call i32 @lzma_stream_encoder(ptr noundef nonnull %strm, ptr noundef nonnull %filters.i, i32 noundef %cond) #8
  switch i32 %call8.i, label %sw.default17.i [
    i32 0, label %if.end
    i32 3, label %sw.bb9.i
    i32 5, label %init_encoder.exit
    i32 8, label %sw.bb16.i
  ]

sw.bb9.i:                                         ; preds = %entry
  %call10.i = call i32 @lzma_get_check(ptr noundef nonnull %strm) #8
  br label %init_encoder.exit

sw.bb16.i:                                        ; preds = %entry
  br label %init_encoder.exit

sw.default17.i:                                   ; preds = %entry
  br label %init_encoder.exit

init_encoder.exit:                                ; preds = %entry, %sw.bb9.i, %sw.bb16.i, %sw.default17.i
  %msg.0.i = phi ptr [ @.str.7, %sw.default17.i ], [ @.str.6, %sw.bb16.i ], [ @.str.5, %sw.bb9.i ], [ @.str.5, %entry ]
  %call19.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %preset, i32 noundef %cond, ptr noundef nonnull %msg.0.i, i32 noundef %call8.i)
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lzma_local_options.i) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters.i) #8
  br label %cleanup45

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lzma_local_options.i) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %filters.i) #8
  %avail_in = getelementptr inbounds i8, ptr %strm, i64 8
  %next_out = getelementptr inbounds i8, ptr %strm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %strm, i8 0, i64 16, i1 false)
  store ptr %out, ptr %next_out, align 8
  %avail_out = getelementptr inbounds i8, ptr %strm, i64 32
  store i64 8192, ptr %avail_out, align 8
  br label %while.cond

while.condthread-pre-split:                       ; preds = %if.end33
  %.pr = load i64, ptr %avail_in, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.condthread-pre-split, %if.end
  %0 = phi i64 [ %.pr, %while.condthread-pre-split ], [ 0, %if.end ]
  %action.0 = phi i32 [ %action.1, %while.condthread-pre-split ], [ 0, %if.end ]
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %while.cond
  %1 = load ptr, ptr @spec_fd, align 8
  %call2 = call i32 @spec_mem_feof(ptr noundef %1, i32 noundef 3, i32 noundef %stream) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end14

if.then4:                                         ; preds = %land.lhs.true
  store ptr %in, ptr %strm, align 8
  %2 = load ptr, ptr @spec_fd, align 8
  %call8 = call i64 @spec_mem_fread(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %in, i64 noundef 1, i32 noundef 8192, i32 noundef %stream) #8
  store i64 %call8, ptr %avail_in, align 8
  %3 = load ptr, ptr @spec_fd, align 8
  %call10 = call i32 @spec_mem_feof(ptr noundef %3, i32 noundef 3, i32 noundef %stream) #8
  %tobool11.not = icmp eq i32 %call10, 0
  %spec.select = select i1 %tobool11.not, i32 %action.0, i32 3
  br label %if.end14

if.end14:                                         ; preds = %if.then4, %land.lhs.true, %while.cond
  %action.1 = phi i32 [ %action.0, %land.lhs.true ], [ %action.0, %while.cond ], [ %spec.select, %if.then4 ]
  %call15 = call i32 @lzma_code(ptr noundef nonnull %strm, i32 noundef %action.1) #8
  %4 = load i64, ptr %avail_out, align 8
  %cmp17 = icmp eq i64 %4, 0
  %cmp18 = icmp eq i32 %call15, 1
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp18
  br i1 %or.cond, label %if.then19, label %if.end33

if.then19:                                        ; preds = %if.end14
  %sub = sub i64 8192, %4
  %5 = load ptr, ptr @spec_fd, align 8
  %conv = trunc i64 %sub to i32
  %call22 = call i64 @spec_mem_fwrite(ptr noundef %5, i32 noundef 3, ptr noundef nonnull %out, i64 noundef 1, i32 noundef %conv, i32 noundef %zStream) #8
  %cmp23.not = icmp eq i64 %call22, %sub
  br i1 %cmp23.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then19
  store ptr %out, ptr %next_out, align 8
  store i64 8192, ptr %avail_out, align 8
  br label %if.end33

cleanup:                                          ; preds = %if.then19
  %call26 = tail call ptr @__errno_location() #9
  %6 = load i32, ptr %call26, align 4
  %call27 = call ptr @strerror(i32 noundef %6) #8
  %call28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %zStream, ptr noundef %call27)
  br label %cleanup45

if.end33:                                         ; preds = %cleanup.thread, %if.end14
  switch i32 %call15, label %sw.epilog [
    i32 0, label %while.condthread-pre-split
    i32 1, label %sw.bb
    i32 5, label %sw.epilog.loopexit
    i32 9, label %sw.epilog.loopexit84
  ]

sw.bb:                                            ; preds = %if.end33
  call void @lzma_end(ptr noundef nonnull %strm) #8
  br label %cleanup45

sw.epilog.loopexit:                               ; preds = %if.end33
  br label %sw.epilog

sw.epilog.loopexit84:                             ; preds = %if.end33
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end33, %sw.epilog.loopexit84, %sw.epilog.loopexit
  %msg.0 = phi ptr [ @.str.5, %sw.epilog.loopexit ], [ @.str.17, %sw.epilog.loopexit84 ], [ @.str.14, %if.end33 ]
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %msg.0, i32 noundef %call15)
  br label %cleanup45

cleanup45:                                        ; preds = %cleanup, %init_encoder.exit, %sw.epilog, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %out) #8
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %in) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %strm) #8
  ret void
}

declare i32 @lzma_stream_decoder(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
