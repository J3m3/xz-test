; ModuleID = 'liblzma/common/index_encoder.c'
source_filename = "liblzma/common/index_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_coder_s = type { i32, ptr, %struct.lzma_index_iter, i64, i32 }
%struct.lzma_index_iter = type { %struct.anon, %struct.anon.0, [6 x %union.anon] }
%struct.anon = type { ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.0 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_index_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %i) #0 {
entry:
  %init = getelementptr inbounds i8, ptr %next, i64 16
  %0 = load i64, ptr %init, align 8
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_index_encoder_init to i64)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_index_encoder_init to i64), ptr %init, align 8
  %cmp2 = icmp eq ptr %i, null
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %next, align 8
  %cmp5 = icmp eq ptr %1, null
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end4
  %call = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %allocator) #3
  store ptr %call, ptr %next, align 8
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %return, label %if.end11

if.end11:                                         ; preds = %if.then6
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @index_encode, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %next, i64 32
  store ptr @index_encoder_end, ptr %end, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end4
  %2 = phi ptr [ %call, %if.end11 ], [ %1, %if.end4 ]
  %iter.i = getelementptr inbounds i8, ptr %2, i64 16
  tail call void @lzma_index_iter_init(ptr noundef nonnull %iter.i, ptr noundef nonnull %i) #3
  store i32 0, ptr %2, align 8
  %index.i = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %i, ptr %index.i, align 8
  %pos.i = getelementptr inbounds i8, ptr %2, i64 320
  store i64 0, ptr %pos.i, align 8
  %crc32.i = getelementptr inbounds i8, ptr %2, i64 328
  store i32 0, ptr %crc32.i, align 8
  br label %return

return:                                           ; preds = %if.then6, %if.end, %if.end12
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 11, %if.end ], [ 5, %if.then6 ]
  ret i32 %retval.0
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @index_encode(ptr noundef %pcoder, ptr nocapture readnone %allocator, ptr noalias nocapture readnone %in, ptr noalias nocapture readnone %in_pos, i64 %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 %action) #0 {
entry:
  %0 = load i64, ptr %out_pos, align 8
  %cmp136 = icmp ult i64 %0, %out_size
  br i1 %cmp136, label %while.body.lr.ph, label %out60

while.body.lr.ph:                                 ; preds = %entry
  %pos35 = getelementptr inbounds i8, ptr %pcoder, i64 320
  %iter = getelementptr inbounds i8, ptr %pcoder, i64 16
  %index10 = getelementptr inbounds i8, ptr %pcoder, i64 8
  %.pre = load i32, ptr %pcoder, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %1 = phi i32 [ %.pre, %while.body.lr.ph ], [ %15, %sw.epilog ]
  %2 = phi i32 [ %.pre, %while.body.lr.ph ], [ %16, %sw.epilog ]
  %3 = phi i64 [ %0, %while.body.lr.ph ], [ %17, %sw.epilog ]
  %.fr = freeze i32 %1
  switch i32 %2, label %cleanup66 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 4, label %sw.bb7
    i32 2, label %sw.bb16
    i32 3, label %sw.bb16
    i32 5, label %sw.bb34
    i32 6, label %sw.bb46
  ]

sw.bb:                                            ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %3
  store i8 0, ptr %arrayidx, align 1
  %inc = add nuw i64 %3, 1
  store i64 %inc, ptr %out_pos, align 8
  store i32 1, ptr %pcoder, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %4 = load ptr, ptr %index10, align 8
  %call = tail call i64 @lzma_index_block_count(ptr noundef %4) #3
  %call3 = tail call i32 @lzma_vli_encode(i64 noundef %call, ptr noundef nonnull %pos35, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #3
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %cleanup.thread, label %out60.loopexit

cleanup.thread:                                   ; preds = %sw.bb2
  store i64 0, ptr %pos35, align 8
  store i32 4, ptr %pcoder, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  %call8 = tail call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %iter, i32 noundef 2) #3
  %tobool.not = icmp eq i8 %call8, 0
  br i1 %tobool.not, label %sw.bb16.thread, label %if.then9

if.then9:                                         ; preds = %sw.bb7
  %5 = load ptr, ptr %index10, align 8
  %call11 = tail call i32 @lzma_index_padding_size(ptr noundef %5) #3
  %conv = zext i32 %call11 to i64
  store i64 %conv, ptr %pos35, align 8
  store i32 5, ptr %pcoder, align 8
  br label %sw.epilog

sw.bb16.thread:                                   ; preds = %sw.bb7
  store i32 2, ptr %pcoder, align 8
  br label %6

sw.bb16:                                          ; preds = %while.body, %while.body
  %cmp18 = icmp eq i32 %.fr, 2
  br i1 %cmp18, label %6, label %7

6:                                                ; preds = %sw.bb16.thread, %sw.bb16
  br label %7

7:                                                ; preds = %sw.bb16, %6
  %8 = phi i64 [ 192, %6 ], [ 184, %sw.bb16 ]
  %cond.in = getelementptr inbounds i8, ptr %pcoder, i64 %8
  %cond = load i64, ptr %cond.in, align 8
  %call24 = tail call i32 @lzma_vli_encode(i64 noundef %cond, ptr noundef nonnull %pos35, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #3
  %cmp25.not = icmp eq i32 %call24, 1
  br i1 %cmp25.not, label %cleanup32.thread, label %out60.loopexit

cleanup32.thread:                                 ; preds = %7
  store i64 0, ptr %pos35, align 8
  %9 = load i32, ptr %pcoder, align 8
  %inc31 = add i32 %9, 1
  store i32 %inc31, ptr %pcoder, align 8
  br label %sw.epilog

sw.bb34:                                          ; preds = %while.body
  %10 = load i64, ptr %pos35, align 8
  %cmp36.not = icmp eq i64 %10, 0
  br i1 %cmp36.not, label %if.end42, label %if.then38

if.then38:                                        ; preds = %sw.bb34
  %dec = add i64 %10, -1
  store i64 %dec, ptr %pos35, align 8
  %inc40 = add nuw i64 %3, 1
  store i64 %inc40, ptr %out_pos, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %out, i64 %3
  store i8 0, ptr %arrayidx41, align 1
  br label %sw.epilog

if.end42:                                         ; preds = %sw.bb34
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %0
  %sub = sub i64 %3, %0
  %crc32 = getelementptr inbounds i8, ptr %pcoder, i64 328
  %11 = load i32, ptr %crc32, align 8
  %call43 = tail call i32 @lzma_crc32(ptr noundef %add.ptr, i64 noundef %sub, i32 noundef %11) #3
  store i32 %call43, ptr %crc32, align 8
  store i32 6, ptr %pcoder, align 8
  %out_pos.promoted.pre = load i64, ptr %out_pos, align 8
  br label %sw.bb46

sw.bb46:                                          ; preds = %while.body, %if.end42
  %out_pos.promoted = phi i64 [ %out_pos.promoted.pre, %if.end42 ], [ %3, %while.body ]
  %crc3251 = getelementptr inbounds i8, ptr %pcoder, i64 328
  br label %do.body

do.body:                                          ; preds = %if.end50, %sw.bb46
  %12 = phi i64 [ %inc55, %if.end50 ], [ %out_pos.promoted, %sw.bb46 ]
  %cmp47 = icmp eq i64 %12, %out_size
  br i1 %cmp47, label %cleanup66, label %if.end50

if.end50:                                         ; preds = %do.body
  %13 = load i32, ptr %crc3251, align 8
  %14 = load i64, ptr %pos35, align 8
  %.tr = trunc i64 %14 to i32
  %sh_prom = shl i32 %.tr, 3
  %shr = lshr i32 %13, %sh_prom
  %conv53 = trunc i32 %shr to i8
  %arrayidx54 = getelementptr inbounds i8, ptr %out, i64 %12
  store i8 %conv53, ptr %arrayidx54, align 1
  %inc55 = add i64 %12, 1
  store i64 %inc55, ptr %out_pos, align 8
  %inc57 = add i64 %14, 1
  store i64 %inc57, ptr %pos35, align 8
  %cmp58 = icmp ult i64 %inc57, 4
  br i1 %cmp58, label %do.body, label %cleanup66

sw.epilog:                                        ; preds = %cleanup32.thread, %cleanup.thread, %if.then38, %if.then9, %sw.bb
  %15 = phi i32 [ %inc31, %cleanup32.thread ], [ 4, %cleanup.thread ], [ %.fr, %if.then38 ], [ 5, %if.then9 ], [ 1, %sw.bb ]
  %16 = phi i32 [ %inc31, %cleanup32.thread ], [ 4, %cleanup.thread ], [ 5, %if.then38 ], [ 5, %if.then9 ], [ 1, %sw.bb ]
  %17 = load i64, ptr %out_pos, align 8
  %cmp = icmp ult i64 %17, %out_size
  br i1 %cmp, label %while.body, label %out60.loopexit

out60.loopexit:                                   ; preds = %7, %sw.bb2, %sw.epilog
  %ret.4.ph = phi i32 [ 0, %sw.epilog ], [ %call3, %sw.bb2 ], [ %call24, %7 ]
  %.pre144 = load i64, ptr %out_pos, align 8
  br label %out60

out60:                                            ; preds = %out60.loopexit, %entry
  %18 = phi i64 [ %0, %entry ], [ %.pre144, %out60.loopexit ]
  %ret.4 = phi i32 [ 0, %entry ], [ %ret.4.ph, %out60.loopexit ]
  %add.ptr61 = getelementptr inbounds i8, ptr %out, i64 %0
  %sub62 = sub i64 %18, %0
  %crc3263 = getelementptr inbounds i8, ptr %pcoder, i64 328
  %19 = load i32, ptr %crc3263, align 8
  %call64 = tail call i32 @lzma_crc32(ptr noundef %add.ptr61, i64 noundef %sub62, i32 noundef %19) #3
  store i32 %call64, ptr %crc3263, align 8
  br label %cleanup66

cleanup66:                                        ; preds = %while.body, %if.end50, %do.body, %out60
  %retval.0 = phi i32 [ %ret.4, %out60 ], [ 1, %if.end50 ], [ 0, %do.body ], [ 11, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal void @index_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_encoder(ptr noundef %strm, ptr noundef %i) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #3
  %cmp.not.not = icmp eq i32 %call, 0
  br i1 %cmp.not.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %1 = load ptr, ptr %allocator, align 8
  %init.i = getelementptr inbounds i8, ptr %0, i64 16
  %2 = load i64, ptr %init.i, align 8
  %cmp.not.i = icmp eq i64 %2, ptrtoint (ptr @lzma_index_encoder_init to i64)
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end
  store i64 ptrtoint (ptr @lzma_index_encoder_init to i64), ptr %init.i, align 8
  %cmp2.i = icmp eq ptr %i, null
  br i1 %cmp2.i, label %cleanup7, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %3 = load ptr, ptr %0, align 8
  %cmp5.i = icmp eq ptr %3, null
  br i1 %cmp5.i, label %if.then6.i, label %do.end10

if.then6.i:                                       ; preds = %if.end4.i
  %call.i = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %1) #3
  store ptr %call.i, ptr %0, align 8
  %cmp9.i = icmp eq ptr %call.i, null
  br i1 %cmp9.i, label %cleanup7, label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i
  %code.i = getelementptr inbounds i8, ptr %0, i64 24
  store ptr @index_encode, ptr %code.i, align 8
  %end.i = getelementptr inbounds i8, ptr %0, i64 32
  store ptr @index_encoder_end, ptr %end.i, align 8
  br label %do.end10

cleanup7:                                         ; preds = %if.then6.i, %if.end.i
  %retval.0.i.ph = phi i32 [ 5, %if.then6.i ], [ 11, %if.end.i ]
  tail call void @lzma_end(ptr noundef nonnull %strm) #3
  br label %return

do.end10:                                         ; preds = %if.end11.i, %if.end4.i
  %4 = phi ptr [ %call.i, %if.end11.i ], [ %3, %if.end4.i ]
  %iter.i.i = getelementptr inbounds i8, ptr %4, i64 16
  tail call void @lzma_index_iter_init(ptr noundef nonnull %iter.i.i, ptr noundef nonnull %i) #3
  store i32 0, ptr %4, align 8
  %index.i.i = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %i, ptr %index.i.i, align 8
  %pos.i.i = getelementptr inbounds i8, ptr %4, i64 320
  store i64 0, ptr %pos.i.i, align 8
  %crc32.i.i = getelementptr inbounds i8, ptr %4, i64 328
  store i32 0, ptr %crc32.i.i, align 8
  %5 = load ptr, ptr %internal, align 8
  %supported_actions = getelementptr inbounds i8, ptr %5, i64 80
  store i8 1, ptr %supported_actions, align 8
  %6 = load ptr, ptr %internal, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %6, i64 83
  store i8 1, ptr %arrayidx14, align 1
  br label %return

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %retval.0.i.ph, %cleanup7 ], [ 0, %do.end10 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_index_buffer_encode(ptr noundef %i, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 {
entry:
  %coder = alloca %struct.lzma_coder_s, align 8
  %cmp = icmp eq ptr %i, null
  %cmp1 = icmp eq ptr %out, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq ptr %out_pos, null
  %or.cond13 = or i1 %or.cond, %cmp3
  br i1 %or.cond13, label %return, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %0 = load i64, ptr %out_pos, align 8
  %cmp5 = icmp ugt i64 %0, %out_size
  br i1 %cmp5, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false4
  %sub = sub i64 %out_size, %0
  %call = tail call i64 @lzma_index_size(ptr noundef nonnull %i) #3
  %cmp6 = icmp ult i64 %sub, %call
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %coder) #3
  %iter.i = getelementptr inbounds i8, ptr %coder, i64 16
  call void @lzma_index_iter_init(ptr noundef nonnull %iter.i, ptr noundef nonnull %i) #3
  store i32 0, ptr %coder, align 8
  %index.i = getelementptr inbounds i8, ptr %coder, i64 8
  store ptr %i, ptr %index.i, align 8
  %pos.i = getelementptr inbounds i8, ptr %coder, i64 320
  store i64 0, ptr %pos.i, align 8
  %crc32.i = getelementptr inbounds i8, ptr %coder, i64 328
  store i32 0, ptr %crc32.i, align 8
  %1 = load i64, ptr %out_pos, align 8
  %call9 = call i32 @index_encode(ptr noundef nonnull %coder, ptr poison, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 poison)
  %cmp10 = icmp eq i32 %call9, 1
  br i1 %cmp10, label %if.end12, label %if.else

if.else:                                          ; preds = %if.end8
  store i64 %1, ptr %out_pos, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end8, %if.else
  %ret.0 = phi i32 [ 11, %if.else ], [ 0, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %coder) #3
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false4, %if.end12
  %retval.0 = phi i32 [ %ret.0, %if.end12 ], [ 11, %lor.lhs.false4 ], [ 11, %entry ], [ 10, %if.end ]
  ret i32 %retval.0
}

declare i64 @lzma_index_size(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_index_block_count(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i8 @lzma_index_iter_next(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lzma_index_padding_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_index_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
