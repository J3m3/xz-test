; ModuleID = 'liblzma/common/stream_encoder.c'
source_filename = "liblzma/common/stream_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_filter = type { i64, ptr }

@stream_encode.convert = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 3, i32 3], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, i32 noundef %check) #0 {
entry:
  %stream_flags = alloca %struct.lzma_stream_flags, align 8
  %init = getelementptr inbounds i8, ptr %next, i64 16
  %0 = load i64, ptr %init, align 8
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_stream_encoder_init to i64)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_stream_encoder_init to i64), ptr %init, align 8
  %cmp2 = icmp eq ptr %filters, null
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %next, align 8
  %cmp5 = icmp eq ptr %1, null
  br i1 %cmp5, label %if.then6, label %if.end32

if.then6:                                         ; preds = %if.end4
  %call = tail call ptr @lzma_alloc(i64 noundef 1472, ptr noundef %allocator) #4
  store ptr %call, ptr %next, align 8
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %return, label %if.end11

if.end11:                                         ; preds = %if.then6
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @stream_encode, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %next, i64 32
  store ptr @stream_encoder_end, ptr %end, align 8
  %update = getelementptr inbounds i8, ptr %next, i64 56
  store ptr @stream_encoder_update, ptr %update, align 8
  %filters13 = getelementptr inbounds i8, ptr %call, i64 280
  store i64 -1, ptr %filters13, align 8
  %2 = load ptr, ptr %next, align 8
  %block_encoder = getelementptr inbounds i8, ptr %2, i64 8
  store ptr null, ptr %block_encoder, align 8
  %.compoundliteral.sroa.2.0.block_encoder.sroa_idx = getelementptr inbounds i8, ptr %2, i64 16
  store i64 -1, ptr %.compoundliteral.sroa.2.0.block_encoder.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.block_encoder.sroa_idx = getelementptr inbounds i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.block_encoder.sroa_idx, i8 0, i64 48, i1 false)
  %3 = load ptr, ptr %next, align 8
  %index_encoder = getelementptr inbounds i8, ptr %3, i64 360
  store ptr null, ptr %index_encoder, align 8
  %.compoundliteral22.sroa.2.0.index_encoder.sroa_idx = getelementptr inbounds i8, ptr %3, i64 368
  store i64 -1, ptr %.compoundliteral22.sroa.2.0.index_encoder.sroa_idx, align 8
  %.compoundliteral22.sroa.3.0.index_encoder.sroa_idx = getelementptr inbounds i8, ptr %3, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral22.sroa.3.0.index_encoder.sroa_idx, i8 0, i64 48, i1 false)
  %4 = load ptr, ptr %next, align 8
  %index = getelementptr inbounds i8, ptr %4, i64 424
  store ptr null, ptr %index, align 8
  %.pre = load ptr, ptr %next, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.end11, %if.end4
  %5 = phi ptr [ %.pre, %if.end11 ], [ %1, %if.end4 ]
  store i32 0, ptr %5, align 8
  %6 = load ptr, ptr %next, align 8
  %block_options = getelementptr inbounds i8, ptr %6, i64 72
  store i32 0, ptr %block_options, align 8
  %7 = load ptr, ptr %next, align 8
  %check37 = getelementptr inbounds i8, ptr %7, i64 80
  store i32 %check, ptr %check37, align 8
  %8 = load ptr, ptr %next, align 8
  %index39 = getelementptr inbounds i8, ptr %8, i64 424
  %9 = load ptr, ptr %index39, align 8
  tail call void @lzma_index_end(ptr noundef %9, ptr noundef %allocator) #4
  %call40 = tail call ptr @lzma_index_init(ptr noundef %allocator) #4
  %10 = load ptr, ptr %next, align 8
  %index42 = getelementptr inbounds i8, ptr %10, i64 424
  store ptr %call40, ptr %index42, align 8
  %11 = load ptr, ptr %next, align 8
  %index44 = getelementptr inbounds i8, ptr %11, i64 424
  %12 = load ptr, ptr %index44, align 8
  %cmp45 = icmp eq ptr %12, null
  br i1 %cmp45, label %return, label %if.end47

if.end47:                                         ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %stream_flags) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags, i8 0, i64 56, i1 false)
  %check49 = getelementptr inbounds i8, ptr %stream_flags, i64 16
  store i32 %check, ptr %check49, align 8
  %buffer = getelementptr inbounds i8, ptr %11, i64 448
  %call52 = call i32 @lzma_stream_header_encode(ptr noundef nonnull %stream_flags, ptr noundef nonnull %buffer) #4
  %cmp53.not = icmp eq i32 %call52, 0
  br i1 %cmp53.not, label %do.end56, label %cleanup61

do.end56:                                         ; preds = %if.end47
  %13 = load ptr, ptr %next, align 8
  %buffer_pos = getelementptr inbounds i8, ptr %13, i64 432
  store i64 0, ptr %buffer_pos, align 8
  %14 = load ptr, ptr %next, align 8
  %buffer_size = getelementptr inbounds i8, ptr %14, i64 440
  store i64 12, ptr %buffer_size, align 8
  %15 = load ptr, ptr %next, align 8
  %call60 = call i32 @stream_encoder_update(ptr noundef %15, ptr noundef %allocator, ptr noundef nonnull %filters, ptr noundef null)
  br label %cleanup61

cleanup61:                                        ; preds = %if.end47, %do.end56
  %retval.1 = phi i32 [ %call60, %do.end56 ], [ %call52, %if.end47 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %stream_flags) #4
  br label %return

return:                                           ; preds = %if.end32, %if.then6, %if.end, %cleanup61
  %retval.2 = phi i32 [ %retval.1, %cleanup61 ], [ 11, %if.end ], [ 5, %if.then6 ], [ 5, %if.end32 ]
  ret i32 %retval.2
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @stream_encode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 {
entry:
  %stream_flags = alloca %struct.lzma_stream_flags, align 8
  %0 = load i64, ptr %out_pos, align 8
  %cmp180 = icmp ult i64 %0, %out_size
  br i1 %cmp180, label %while.body.lr.ph, label %cleanup103

while.body.lr.ph:                                 ; preds = %entry
  %index_encoder78 = getelementptr inbounds i8, ptr %pcoder, i64 360
  %code79 = getelementptr inbounds i8, ptr %pcoder, i64 384
  %backward_size = getelementptr inbounds i8, ptr %stream_flags, i64 8
  %index87 = getelementptr inbounds i8, ptr %pcoder, i64 424
  %check = getelementptr inbounds i8, ptr %stream_flags, i64 16
  %check90 = getelementptr inbounds i8, ptr %pcoder, i64 80
  %buffer91 = getelementptr inbounds i8, ptr %pcoder, i64 448
  %buffer_size98 = getelementptr inbounds i8, ptr %pcoder, i64 440
  %block_encoder = getelementptr inbounds i8, ptr %pcoder, i64 8
  %code = getelementptr inbounds i8, ptr %pcoder, i64 32
  %idxprom = zext i32 %action to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @stream_encode.convert, i64 0, i64 %idxprom
  %cmp52 = icmp eq i32 %action, 1
  %block_options56 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %uncompressed_size = getelementptr inbounds i8, ptr %pcoder, i64 96
  %block_encoder_is_initialized = getelementptr inbounds i8, ptr %pcoder, i64 4
  %compressed_size.i = getelementptr inbounds i8, ptr %pcoder, i64 88
  %header_size = getelementptr inbounds i8, ptr %pcoder, i64 76
  %cmp13.not = icmp eq i32 %action, 3
  %buffer_pos = getelementptr inbounds i8, ptr %pcoder, i64 432
  %.pre = load i32, ptr %pcoder, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %1 = phi i32 [ %.pre, %while.body.lr.ph ], [ %19, %sw.epilog ]
  switch i32 %1, label %cleanup103 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 5, label %sw.bb
    i32 1, label %sw.bb10
    i32 3, label %sw.bb46
    i32 4, label %sw.bb76
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  %2 = load i64, ptr %buffer_size98, align 8
  %call = call i64 @lzma_bufcpy(ptr noundef nonnull %buffer91, ptr noundef nonnull %buffer_pos, i64 noundef %2, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #4
  %3 = load i64, ptr %buffer_pos, align 8
  %4 = load i64, ptr %buffer_size98, align 8
  %cmp3 = icmp ult i64 %3, %4
  br i1 %cmp3, label %cleanup103, label %if.end

if.end:                                           ; preds = %sw.bb
  %5 = load i32, ptr %pcoder, align 8
  %cmp5 = icmp eq i32 %5, 5
  br i1 %cmp5, label %cleanup103, label %if.end7

if.end7:                                          ; preds = %if.end
  store i64 0, ptr %buffer_pos, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %pcoder, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  %6 = load i64, ptr %in_pos, align 8
  %cmp11 = icmp eq i64 %6, %in_size
  br i1 %cmp11, label %if.then12, label %if.end22

if.then12:                                        ; preds = %sw.bb10
  br i1 %cmp13.not, label %do.body, label %if.then14

if.then14:                                        ; preds = %if.then12
  %cmp15 = icmp ne i32 %action, 0
  %cond = zext i1 %cmp15 to i32
  br label %cleanup103

do.body:                                          ; preds = %if.then12
  %7 = load ptr, ptr %index87, align 8
  %call17 = call i32 @lzma_index_encoder_init(ptr noundef nonnull %index_encoder78, ptr noundef %allocator, ptr noundef %7) #4
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %do.end, label %cleanup103

do.end:                                           ; preds = %do.body
  store i32 4, ptr %pcoder, align 8
  br label %sw.epilog

if.end22:                                         ; preds = %sw.bb10
  %8 = load i8, ptr %block_encoder_is_initialized, align 4, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %8 to i1
  br i1 %loadedv, label %if.end35, label %do.body24

do.body24:                                        ; preds = %if.end22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %compressed_size.i, i8 -1, i64 16, i1 false)
  %call.i = call i32 @lzma_block_header_size(ptr noundef nonnull %block_options56) #4
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %block_encoder_init.exit, label %cleanup103

block_encoder_init.exit:                          ; preds = %do.body24
  %call4.i = call i32 @lzma_block_encoder_init(ptr noundef nonnull %block_encoder, ptr noundef %allocator, ptr noundef nonnull %block_options56) #4
  %cmp27.not = icmp eq i32 %call4.i, 0
  br i1 %cmp27.not, label %if.end35, label %cleanup103

if.end35:                                         ; preds = %block_encoder_init.exit, %if.end22
  store i8 0, ptr %block_encoder_is_initialized, align 4
  %call39 = call i32 @lzma_block_header_encode(ptr noundef nonnull %block_options56, ptr noundef nonnull %buffer91) #4
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %if.end42, label %cleanup103

if.end42:                                         ; preds = %if.end35
  %9 = load i32, ptr %header_size, align 4
  %conv = zext i32 %9 to i64
  store i64 %conv, ptr %buffer_size98, align 8
  store i32 2, ptr %pcoder, align 8
  br label %sw.epilog

sw.bb46:                                          ; preds = %while.body
  %10 = load ptr, ptr %code, align 8
  %11 = load ptr, ptr %block_encoder, align 8
  %12 = load i32, ptr %arrayidx, align 4
  %call49 = call i32 %10(ptr noundef %11, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %12) #4
  %cmp50 = icmp ne i32 %call49, 1
  %or.cond = or i1 %cmp52, %cmp50
  br i1 %or.cond, label %cleanup103, label %if.end55

if.end55:                                         ; preds = %sw.bb46
  %call57 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %block_options56) #4
  %13 = load ptr, ptr %index87, align 8
  %14 = load i64, ptr %uncompressed_size, align 8
  %call62 = call i32 @lzma_index_append(ptr noundef %13, ptr noundef %allocator, i64 noundef %call57, i64 noundef %14) #4
  %cmp63.not = icmp eq i32 %call62, 0
  br i1 %cmp63.not, label %cleanup74, label %cleanup103

cleanup74:                                        ; preds = %if.end55
  store i32 1, ptr %pcoder, align 8
  br label %sw.epilog

sw.bb76:                                          ; preds = %while.body
  %15 = load ptr, ptr %code79, align 8
  %16 = load ptr, ptr %index_encoder78, align 8
  %call82 = call i32 %15(ptr noundef %16, ptr noundef %allocator, ptr noundef null, ptr noundef null, i64 noundef 0, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef 0) #4
  %cmp83.not = icmp eq i32 %call82, 1
  br i1 %cmp83.not, label %if.end86, label %cleanup103

if.end86:                                         ; preds = %sw.bb76
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %stream_flags) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags, i8 0, i64 56, i1 false)
  %17 = load ptr, ptr %index87, align 8
  %call88 = call i64 @lzma_index_size(ptr noundef %17) #4
  store i64 %call88, ptr %backward_size, align 8
  %18 = load i32, ptr %check90, align 8
  store i32 %18, ptr %check, align 8
  %call93 = call i32 @lzma_stream_footer_encode(ptr noundef nonnull %stream_flags, ptr noundef nonnull %buffer91) #4
  %cmp94.not = icmp eq i32 %call93, 0
  br i1 %cmp94.not, label %cleanup101.thread176, label %cleanup101

cleanup101.thread176:                             ; preds = %if.end86
  store i64 12, ptr %buffer_size98, align 8
  store i32 5, ptr %pcoder, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %stream_flags) #4
  br label %sw.epilog

cleanup101:                                       ; preds = %if.end86
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %stream_flags) #4
  br label %cleanup103

sw.epilog:                                        ; preds = %cleanup101.thread176, %cleanup74, %if.end42, %do.end, %if.end7
  %19 = phi i32 [ 5, %cleanup101.thread176 ], [ 1, %cleanup74 ], [ 2, %if.end42 ], [ 4, %do.end ], [ %inc, %if.end7 ]
  %20 = load i64, ptr %out_pos, align 8
  %cmp = icmp ult i64 %20, %out_size
  br i1 %cmp, label %while.body, label %cleanup103

cleanup103:                                       ; preds = %block_encoder_init.exit, %do.body, %sw.bb, %if.end, %if.end35, %while.body, %sw.epilog, %do.body24, %sw.bb46, %if.end55, %sw.bb76, %entry, %cleanup101, %if.then14
  %retval.9 = phi i32 [ 11, %cleanup101 ], [ %cond, %if.then14 ], [ 0, %entry ], [ %call4.i, %block_encoder_init.exit ], [ %call17, %do.body ], [ 0, %sw.bb ], [ 1, %if.end ], [ 11, %if.end35 ], [ 11, %while.body ], [ 0, %sw.epilog ], [ %call.i, %do.body24 ], [ %call49, %sw.bb46 ], [ %call62, %if.end55 ], [ %call82, %sw.bb76 ]
  ret i32 %retval.9
}

; Function Attrs: nounwind uwtable
define internal void @stream_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  %block_encoder = getelementptr inbounds i8, ptr %pcoder, i64 8
  tail call void @lzma_next_end(ptr noundef nonnull %block_encoder, ptr noundef %allocator) #4
  %index_encoder = getelementptr inbounds i8, ptr %pcoder, i64 360
  tail call void @lzma_next_end(ptr noundef nonnull %index_encoder, ptr noundef %allocator) #4
  %index = getelementptr inbounds i8, ptr %pcoder, i64 424
  %0 = load ptr, ptr %index, align 8
  tail call void @lzma_index_end(ptr noundef %0, ptr noundef %allocator) #4
  %filters = getelementptr inbounds i8, ptr %pcoder, i64 280
  %1 = load i64, ptr %filters, align 8
  %cmp.not14 = icmp eq i64 %1, -1
  br i1 %cmp.not14, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  tail call void @lzma_free(ptr noundef nonnull %pcoder, ptr noundef %allocator) #4
  ret void

for.body:                                         ; preds = %entry, %for.body
  %arrayidx16 = phi ptr [ %arrayidx, %for.body ], [ %filters, %entry ]
  %i.015 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  %options = getelementptr inbounds i8, ptr %arrayidx16, i64 8
  %2 = load ptr, ptr %options, align 8
  tail call void @lzma_free(ptr noundef %2, ptr noundef %allocator) #4
  %inc = add i64 %i.015, 1
  %arrayidx = getelementptr inbounds [5 x %struct.lzma_filter], ptr %filters, i64 0, i64 %inc
  %3 = load i64, ptr %arrayidx, align 8
  %cmp.not = icmp eq i64 %3, -1
  br i1 %cmp.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind uwtable
define internal i32 @stream_encoder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr noundef %filters, ptr noundef %reversed_filters) #0 {
entry:
  %0 = load i32, ptr %pcoder, align 8
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %block_encoder_is_initialized = getelementptr inbounds i8, ptr %pcoder, i64 4
  store i8 0, ptr %block_encoder_is_initialized, align 4
  %filters1 = getelementptr inbounds i8, ptr %pcoder, i64 104
  store ptr %filters, ptr %filters1, align 8
  %block_options.i = getelementptr inbounds i8, ptr %pcoder, i64 72
  %compressed_size.i = getelementptr inbounds i8, ptr %pcoder, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %compressed_size.i, i8 -1, i64 16, i1 false)
  %call.i = tail call i32 @lzma_block_header_size(ptr noundef nonnull %block_options.i) #4
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %block_encoder_init.exit, label %block_encoder_init.exit.thread

block_encoder_init.exit.thread:                   ; preds = %if.then
  %filters256 = getelementptr inbounds i8, ptr %pcoder, i64 280
  store ptr %filters256, ptr %filters1, align 8
  br label %cleanup31

block_encoder_init.exit:                          ; preds = %if.then
  %block_encoder.i = getelementptr inbounds i8, ptr %pcoder, i64 8
  %call4.i = tail call i32 @lzma_block_encoder_init(ptr noundef nonnull %block_encoder.i, ptr noundef %allocator, ptr noundef nonnull %block_options.i) #4
  %filters2 = getelementptr inbounds i8, ptr %pcoder, i64 280
  store ptr %filters2, ptr %filters1, align 8
  %cmp5.not = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not, label %if.end, label %cleanup31

if.end:                                           ; preds = %block_encoder_init.exit
  store i8 1, ptr %block_encoder_is_initialized, align 4
  br label %if.end22

if.else:                                          ; preds = %entry
  %cmp9 = icmp ult i32 %0, 4
  br i1 %cmp9, label %do.body, label %cleanup31

do.body:                                          ; preds = %if.else
  %block_encoder = getelementptr inbounds i8, ptr %pcoder, i64 8
  %update = getelementptr inbounds i8, ptr %pcoder, i64 64
  %1 = load ptr, ptr %update, align 8
  %2 = load ptr, ptr %block_encoder, align 8
  %call13 = tail call i32 %1(ptr noundef %2, ptr noundef %allocator, ptr noundef %filters, ptr noundef %reversed_filters) #4
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end22, label %cleanup31

if.end22:                                         ; preds = %if.end, %do.body
  %filters23 = getelementptr inbounds i8, ptr %pcoder, i64 280
  %3 = load i64, ptr %filters23, align 8
  %cmp24.not58 = icmp eq i64 %3, -1
  br i1 %cmp24.not58, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %if.end22
  %call30 = tail call i32 @lzma_filters_copy(ptr noundef %filters, ptr noundef nonnull %filters23, ptr noundef %allocator) #4
  br label %cleanup31

for.body:                                         ; preds = %if.end22, %for.body
  %arrayidx60 = phi ptr [ %arrayidx, %for.body ], [ %filters23, %if.end22 ]
  %i.059 = phi i64 [ %inc, %for.body ], [ 0, %if.end22 ]
  %options = getelementptr inbounds i8, ptr %arrayidx60, i64 8
  %4 = load ptr, ptr %options, align 8
  tail call void @lzma_free(ptr noundef %4, ptr noundef %allocator) #4
  %inc = add i64 %i.059, 1
  %arrayidx = getelementptr inbounds [5 x %struct.lzma_filter], ptr %filters23, i64 0, i64 %inc
  %5 = load i64, ptr %arrayidx, align 8
  %cmp24.not = icmp eq i64 %5, -1
  br i1 %cmp24.not, label %for.cond.cleanup, label %for.body

cleanup31:                                        ; preds = %block_encoder_init.exit.thread, %block_encoder_init.exit, %if.else, %do.body, %for.cond.cleanup
  %retval.2 = phi i32 [ %call30, %for.cond.cleanup ], [ %call13, %do.body ], [ 11, %if.else ], [ %call4.i, %block_encoder_init.exit ], [ %call.i, %block_encoder_init.exit.thread ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_index_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @lzma_stream_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_encoder(ptr noundef %strm, ptr noundef %filters, i32 noundef %check) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #4
  %cmp.not.not = icmp eq i32 %call, 0
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %1 = load ptr, ptr %allocator, align 8
  %call3 = tail call i32 @lzma_stream_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %filters, i32 noundef %check)
  %cmp4.not.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #4
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8
  %supported_actions = getelementptr inbounds i8, ptr %2, i64 80
  store i8 1, ptr %supported_actions, align 8
  %3 = load ptr, ptr %internal, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 81
  store i8 1, ptr %arrayidx14, align 1
  %4 = load ptr, ptr %internal, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %4, i64 82
  store i8 1, ptr %arrayidx17, align 2
  %5 = load ptr, ptr %internal, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %5, i64 83
  store i8 1, ptr %arrayidx20, align 1
  br label %return

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ]
  ret i32 %retval.2
}

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lzma_index_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_block_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @lzma_index_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_stream_footer_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_block_header_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_block_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_filters_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{i8 0, i8 2}
!6 = !{}
