; ModuleID = 'liblzma/common/index_decoder.c'
source_filename = "liblzma/common/index_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_coder_s = type { i32, i64, ptr, ptr, i64, i64, i64, i64, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_decoder(ptr noundef %strm, ptr noundef %i, i64 noundef %memlimit) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #3
  %cmp.not.not = icmp eq i32 %call, 0
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %1 = load ptr, ptr %allocator, align 8
  %call3 = tail call i32 @index_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %i, i64 noundef %memlimit)
  %cmp4.not.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not.not, label %do.end10, label %cleanup7

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #3
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8
  %supported_actions = getelementptr inbounds i8, ptr %2, i64 80
  store i8 1, ptr %supported_actions, align 8
  %3 = load ptr, ptr %internal, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 83
  store i8 1, ptr %arrayidx14, align 1
  br label %return

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 12) i32 @index_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %i, i64 noundef %memlimit) #0 {
entry:
  %init = getelementptr inbounds i8, ptr %next, i64 16
  %0 = load i64, ptr %init, align 8
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @index_decoder_init to i64)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @index_decoder_init to i64), ptr %init, align 8
  %cmp2 = icmp eq ptr %i, null
  %cmp3 = icmp eq i64 %memlimit, 0
  %or.cond = or i1 %cmp2, %cmp3
  br i1 %or.cond, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %1 = load ptr, ptr %next, align 8
  %cmp6 = icmp eq ptr %1, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call = tail call ptr @lzma_alloc(i64 noundef 72, ptr noundef %allocator) #3
  store ptr %call, ptr %next, align 8
  %cmp10 = icmp eq ptr %call, null
  br i1 %cmp10, label %return, label %if.end12

if.end12:                                         ; preds = %if.then7
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @index_decode, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %next, i64 32
  store ptr @index_decoder_end, ptr %end, align 8
  %memconfig = getelementptr inbounds i8, ptr %next, i64 48
  store ptr @index_decoder_memconfig, ptr %memconfig, align 8
  %index = getelementptr inbounds i8, ptr %call, i64 16
  store ptr null, ptr %index, align 8
  br label %if.end16

if.else:                                          ; preds = %if.end5
  %index15 = getelementptr inbounds i8, ptr %1, i64 16
  %2 = load ptr, ptr %index15, align 8
  tail call void @lzma_index_end(ptr noundef %2, ptr noundef %allocator) #3
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end12
  %3 = load ptr, ptr %next, align 8
  %index_ptr.i = getelementptr inbounds i8, ptr %3, i64 24
  store ptr %i, ptr %index_ptr.i, align 8
  store ptr null, ptr %i, align 8
  %call.i = tail call ptr @lzma_index_init(ptr noundef %allocator) #3
  %index.i = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %call.i, ptr %index.i, align 8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %return, label %if.end.i

if.end.i:                                         ; preds = %if.end16
  store i32 0, ptr %3, align 8
  %memlimit2.i = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %memlimit, ptr %memlimit2.i, align 8
  %count.i = getelementptr inbounds i8, ptr %3, i64 32
  store i64 0, ptr %count.i, align 8
  %pos.i = getelementptr inbounds i8, ptr %3, i64 56
  store i64 0, ptr %pos.i, align 8
  %crc32.i = getelementptr inbounds i8, ptr %3, i64 64
  store i32 0, ptr %crc32.i, align 8
  br label %return

return:                                           ; preds = %if.end.i, %if.end16, %if.then7, %if.end
  %retval.0 = phi i32 [ 11, %if.end ], [ 5, %if.then7 ], [ 0, %if.end.i ], [ 5, %if.end16 ]
  ret i32 %retval.0
}

declare void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_buffer_decode(ptr noundef %i, ptr noundef %memlimit, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) local_unnamed_addr #0 {
entry:
  %coder = alloca %struct.lzma_coder_s, align 8
  %0 = insertelement <4 x ptr> poison, ptr %i, i64 0
  %1 = insertelement <4 x ptr> %0, ptr %memlimit, i64 1
  %2 = insertelement <4 x ptr> %1, ptr %in, i64 2
  %3 = insertelement <4 x ptr> %2, ptr %in_pos, i64 3
  %4 = icmp eq <4 x ptr> %3, zeroinitializer
  %5 = bitcast <4 x i1> %4 to i4
  %.not = icmp eq i4 %5, 0
  br i1 %.not, label %lor.lhs.false6, label %return

lor.lhs.false6:                                   ; preds = %entry
  %6 = load i64, ptr %in_pos, align 8
  %cmp7 = icmp ugt i64 %6, %in_size
  br i1 %cmp7, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %coder) #3
  %7 = load i64, ptr %memlimit, align 8
  %index_ptr.i = getelementptr inbounds i8, ptr %coder, i64 24
  store ptr %i, ptr %index_ptr.i, align 8
  store ptr null, ptr %i, align 8
  %call.i = tail call ptr @lzma_index_init(ptr noundef %allocator) #3
  %index.i = getelementptr inbounds i8, ptr %coder, i64 16
  store ptr %call.i, ptr %index.i, align 8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %cleanup25, label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, ptr %coder, align 8
  %memlimit2.i = getelementptr inbounds i8, ptr %coder, i64 8
  store i64 %7, ptr %memlimit2.i, align 8
  %count.i = getelementptr inbounds i8, ptr %coder, i64 32
  store i64 0, ptr %count.i, align 8
  %pos.i = getelementptr inbounds i8, ptr %coder, i64 56
  store i64 0, ptr %pos.i, align 8
  %crc32.i = getelementptr inbounds i8, ptr %coder, i64 64
  store i32 0, ptr %crc32.i, align 8
  %8 = load i64, ptr %in_pos, align 8
  %call11 = call i32 @index_decode(ptr noundef nonnull %coder, ptr noundef %allocator, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr poison, ptr poison, i64 poison, i32 poison)
  %cmp12 = icmp eq i32 %call11, 1
  br i1 %cmp12, label %cleanup25, label %if.else

if.else:                                          ; preds = %do.end
  %9 = load ptr, ptr %index.i, align 8
  call void @lzma_index_end(ptr noundef %9, ptr noundef %allocator) #3
  store i64 %8, ptr %in_pos, align 8
  switch i32 %call11, label %if.end22.fold.split [
    i32 0, label %cleanup25
    i32 6, label %if.then18
  ]

if.then18:                                        ; preds = %if.else
  %10 = load i64, ptr %count.i, align 8
  %call19 = call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %10) #3
  store i64 %call19, ptr %memlimit, align 8
  br label %cleanup25

if.end22.fold.split:                              ; preds = %if.else
  br label %cleanup25

cleanup25:                                        ; preds = %if.end, %if.then18, %do.end, %if.end22.fold.split, %if.else
  %retval.1 = phi i32 [ 6, %if.then18 ], [ 0, %do.end ], [ 9, %if.else ], [ %call11, %if.end22.fold.split ], [ 5, %if.end ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %coder) #3
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false6, %cleanup25
  %retval.2 = phi i32 [ %retval.1, %cleanup25 ], [ 11, %lor.lhs.false6 ], [ 11, %entry ]
  ret i32 %retval.2
}

; Function Attrs: nounwind uwtable
define internal i32 @index_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias nocapture readnone %out, ptr noalias nocapture readnone %out_pos, i64 %out_size, i32 %action) #0 {
entry:
  %0 = load i64, ptr %in_pos, align 8
  %cmp199 = icmp ult i64 %0, %in_size
  br i1 %cmp199, label %while.body.lr.ph, label %out111

while.body.lr.ph:                                 ; preds = %entry
  %index65 = getelementptr inbounds i8, ptr %pcoder, i64 16
  %pos68 = getelementptr inbounds i8, ptr %pcoder, i64 56
  %unpadded_size = getelementptr inbounds i8, ptr %pcoder, i64 40
  %uncompressed_size = getelementptr inbounds i8, ptr %pcoder, i64 48
  %count56 = getelementptr inbounds i8, ptr %pcoder, i64 32
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 8
  %.pre = load i32, ptr %pcoder, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %1 = phi i32 [ %.pre, %while.body.lr.ph ], [ %29, %sw.epilog ]
  %2 = phi i64 [ %0, %while.body.lr.ph ], [ %30, %sw.epilog ]
  switch i32 %1, label %cleanup117 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb11
    i32 3, label %sw.bb23
    i32 4, label %sw.bb23
    i32 5, label %sw.bb64
    i32 6, label %while.body.sw.bb70_crit_edge
    i32 7, label %sw.bb88
  ]

while.body.sw.bb70_crit_edge:                     ; preds = %while.body
  %.pre205 = load i64, ptr %pos68, align 8
  br label %sw.bb70

sw.bb:                                            ; preds = %while.body
  %inc = add nuw i64 %2, 1
  store i64 %inc, ptr %in_pos, align 8
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %2
  %3 = load i8, ptr %arrayidx, align 1
  %cmp1.not = icmp eq i8 %3, 0
  br i1 %cmp1.not, label %sw.epilog.sink.split, label %cleanup117

sw.bb4:                                           ; preds = %while.body
  %call = tail call i32 @lzma_vli_decode(ptr noundef nonnull %count56, ptr noundef nonnull %pos68, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #3
  %cmp5.not = icmp eq i32 %call, 1
  br i1 %cmp5.not, label %if.end8, label %out111.loopexit

if.end8:                                          ; preds = %sw.bb4
  store i64 0, ptr %pos68, align 8
  store i32 2, ptr %pcoder, align 8
  br label %sw.bb11

sw.bb11:                                          ; preds = %while.body, %if.end8
  %4 = load i64, ptr %count56, align 8
  %call13 = tail call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %4) #3
  %5 = load i64, ptr %memlimit, align 8
  %cmp14 = icmp ugt i64 %call13, %5
  br i1 %cmp14, label %out111.loopexit, label %if.end17

if.end17:                                         ; preds = %sw.bb11
  %6 = load ptr, ptr %index65, align 8
  %7 = load i64, ptr %count56, align 8
  tail call void @lzma_index_prealloc(ptr noundef %6, i64 noundef %7) #3
  %8 = load i64, ptr %count56, align 8
  %cmp20 = icmp eq i64 %8, 0
  %cond = select i1 %cmp20, i32 5, i32 3
  br label %sw.epilog.sink.split

sw.bb23:                                          ; preds = %while.body, %while.body
  %cmp25 = icmp eq i32 %1, 3
  %cond27 = select i1 %cmp25, ptr %unpadded_size, ptr %uncompressed_size
  %call29 = tail call i32 @lzma_vli_decode(ptr noundef nonnull %cond27, ptr noundef nonnull %pos68, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #3
  %cmp30.not = icmp eq i32 %call29, 1
  br i1 %cmp30.not, label %if.end33, label %out111.loopexit

if.end33:                                         ; preds = %sw.bb23
  store i64 0, ptr %pos68, align 8
  %9 = load i32, ptr %pcoder, align 8
  %cmp36 = icmp eq i32 %9, 3
  br i1 %cmp36, label %if.then38, label %do.body

if.then38:                                        ; preds = %if.end33
  %10 = load i64, ptr %unpadded_size, align 8
  %11 = add i64 %10, -9223372036854775805
  %or.cond = icmp ult i64 %11, -9223372036854775800
  br i1 %or.cond, label %cleanup117, label %sw.epilog.sink.split

do.body:                                          ; preds = %if.end33
  %12 = load ptr, ptr %index65, align 8
  %13 = load i64, ptr %unpadded_size, align 8
  %14 = load i64, ptr %uncompressed_size, align 8
  %call51 = tail call i32 @lzma_index_append(ptr noundef %12, ptr noundef %allocator, i64 noundef %13, i64 noundef %14) #3
  %cmp52.not = icmp eq i32 %call51, 0
  br i1 %cmp52.not, label %do.end, label %cleanup117

do.end:                                           ; preds = %do.body
  %15 = load i64, ptr %count56, align 8
  %dec = add i64 %15, -1
  store i64 %dec, ptr %count56, align 8
  %cmp57 = icmp eq i64 %dec, 0
  %cond59 = select i1 %cmp57, i32 5, i32 3
  br label %sw.epilog.sink.split

sw.bb64:                                          ; preds = %while.body
  %16 = load ptr, ptr %index65, align 8
  %call66 = tail call i32 @lzma_index_padding_size(ptr noundef %16) #3
  %conv67 = zext i32 %call66 to i64
  store i64 %conv67, ptr %pos68, align 8
  store i32 6, ptr %pcoder, align 8
  br label %sw.bb70

sw.bb70:                                          ; preds = %while.body.sw.bb70_crit_edge, %sw.bb64
  %17 = phi i64 [ %.pre205, %while.body.sw.bb70_crit_edge ], [ %conv67, %sw.bb64 ]
  %cmp72.not = icmp eq i64 %17, 0
  br i1 %cmp72.not, label %if.end84, label %if.then74

if.then74:                                        ; preds = %sw.bb70
  %dec76 = add i64 %17, -1
  store i64 %dec76, ptr %pos68, align 8
  %18 = load i64, ptr %in_pos, align 8
  %inc77 = add i64 %18, 1
  store i64 %inc77, ptr %in_pos, align 8
  %arrayidx78 = getelementptr inbounds i8, ptr %in, i64 %18
  %19 = load i8, ptr %arrayidx78, align 1
  %cmp80.not = icmp eq i8 %19, 0
  br i1 %cmp80.not, label %sw.epilog, label %cleanup117

if.end84:                                         ; preds = %sw.bb70
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %0
  %20 = load i64, ptr %in_pos, align 8
  %sub = sub i64 %20, %0
  %crc32 = getelementptr inbounds i8, ptr %pcoder, i64 64
  %21 = load i32, ptr %crc32, align 8
  %call85 = tail call i32 @lzma_crc32(ptr noundef %add.ptr, i64 noundef %sub, i32 noundef %21) #3
  store i32 %call85, ptr %crc32, align 8
  store i32 7, ptr %pcoder, align 8
  %in_pos.promoted.pre = load i64, ptr %in_pos, align 8
  br label %sw.bb88

sw.bb88:                                          ; preds = %while.body, %if.end84
  %in_pos.promoted = phi i64 [ %in_pos.promoted.pre, %if.end84 ], [ %2, %while.body ]
  %crc3294 = getelementptr inbounds i8, ptr %pcoder, i64 64
  br label %do.body89

do.body89:                                        ; preds = %do.cond103, %sw.bb88
  %22 = phi i64 [ %inc96, %do.cond103 ], [ %in_pos.promoted, %sw.bb88 ]
  %cmp90 = icmp eq i64 %22, %in_size
  br i1 %cmp90, label %cleanup117, label %if.end93

if.end93:                                         ; preds = %do.body89
  %23 = load i32, ptr %crc3294, align 8
  %24 = load i64, ptr %pos68, align 8
  %.tr = trunc i64 %24 to i32
  %sh_prom = shl i32 %.tr, 3
  %shr = lshr i32 %23, %sh_prom
  %inc96 = add i64 %22, 1
  store i64 %inc96, ptr %in_pos, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %in, i64 %22
  %25 = load i8, ptr %arrayidx97, align 1
  %26 = trunc i32 %shr to i8
  %cmp99.not = icmp eq i8 %25, %26
  br i1 %cmp99.not, label %do.cond103, label %cleanup117

do.cond103:                                       ; preds = %if.end93
  %inc105 = add i64 %24, 1
  store i64 %inc105, ptr %pos68, align 8
  %cmp106 = icmp ult i64 %inc105, 4
  br i1 %cmp106, label %do.body89, label %do.end108

do.end108:                                        ; preds = %do.cond103
  %27 = load ptr, ptr %index65, align 8
  %index_ptr = getelementptr inbounds i8, ptr %pcoder, i64 24
  %28 = load ptr, ptr %index_ptr, align 8
  store ptr %27, ptr %28, align 8
  store ptr null, ptr %index65, align 8
  br label %cleanup117

sw.epilog.sink.split:                             ; preds = %if.then38, %do.end, %sw.bb, %if.end17
  %storemerge.sink = phi i32 [ %cond, %if.end17 ], [ 1, %sw.bb ], [ %cond59, %do.end ], [ 4, %if.then38 ]
  store i32 %storemerge.sink, ptr %pcoder, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then74
  %29 = phi i32 [ 6, %if.then74 ], [ %storemerge.sink, %sw.epilog.sink.split ]
  %30 = load i64, ptr %in_pos, align 8
  %cmp = icmp ult i64 %30, %in_size
  br i1 %cmp, label %while.body, label %out111.loopexit

out111.loopexit:                                  ; preds = %sw.bb23, %sw.bb11, %sw.epilog, %sw.bb4
  %ret.3.ph = phi i32 [ %call, %sw.bb4 ], [ 0, %sw.epilog ], [ 6, %sw.bb11 ], [ %call29, %sw.bb23 ]
  %.pre207 = load i64, ptr %in_pos, align 8
  br label %out111

out111:                                           ; preds = %out111.loopexit, %entry
  %31 = phi i64 [ %0, %entry ], [ %.pre207, %out111.loopexit ]
  %ret.3 = phi i32 [ 0, %entry ], [ %ret.3.ph, %out111.loopexit ]
  %add.ptr112 = getelementptr inbounds i8, ptr %in, i64 %0
  %sub113 = sub i64 %31, %0
  %crc32114 = getelementptr inbounds i8, ptr %pcoder, i64 64
  %32 = load i32, ptr %crc32114, align 8
  %call115 = tail call i32 @lzma_crc32(ptr noundef %add.ptr112, i64 noundef %sub113, i32 noundef %32) #3
  store i32 %call115, ptr %crc32114, align 8
  br label %cleanup117

cleanup117:                                       ; preds = %if.then38, %do.body, %while.body, %if.then74, %sw.bb, %if.end93, %do.body89, %out111, %do.end108
  %retval.5 = phi i32 [ 1, %do.end108 ], [ %ret.3, %out111 ], [ 9, %if.end93 ], [ 0, %do.body89 ], [ %call51, %do.body ], [ 9, %if.then38 ], [ 11, %while.body ], [ 9, %if.then74 ], [ 9, %sw.bb ]
  ret i32 %retval.5
}

declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @lzma_index_memusage(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @index_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  %index = getelementptr inbounds i8, ptr %pcoder, i64 16
  %0 = load ptr, ptr %index, align 8
  tail call void @lzma_index_end(ptr noundef %0, ptr noundef %allocator) #3
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 7) i32 @index_decoder_memconfig(ptr nocapture noundef %pcoder, ptr nocapture noundef %memusage, ptr nocapture noundef writeonly %old_memlimit, i64 noundef %new_memlimit) #0 {
entry:
  %count = getelementptr inbounds i8, ptr %pcoder, i64 32
  %0 = load i64, ptr %count, align 8
  %call = tail call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %0) #3
  store i64 %call, ptr %memusage, align 8
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 8
  %1 = load i64, ptr %memlimit, align 8
  store i64 %1, ptr %old_memlimit, align 8
  %cmp.not = icmp eq i64 %new_memlimit, 0
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %memusage, align 8
  %cmp1 = icmp ugt i64 %2, %new_memlimit
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  store i64 %new_memlimit, ptr %memlimit, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ 6, %if.then ], [ 0, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lzma_index_init(ptr noundef) local_unnamed_addr #2

declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lzma_index_prealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lzma_index_padding_size(ptr noundef) local_unnamed_addr #2

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
