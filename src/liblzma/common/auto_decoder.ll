; ModuleID = 'liblzma/common/auto_decoder.c'
source_filename = "liblzma/common/auto_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_auto_decoder(ptr noundef %strm, i64 noundef %memlimit, i32 noundef %flags) local_unnamed_addr #0 {
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
  %cmp.not.i = icmp eq i64 %2, ptrtoint (ptr @auto_decoder_init to i64)
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end
  store i64 ptrtoint (ptr @auto_decoder_init to i64), ptr %init.i, align 8
  %cmp2.i = icmp eq i64 %memlimit, 0
  br i1 %cmp2.i, label %cleanup7, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %tobool.not.i = icmp ult i32 %flags, 16
  br i1 %tobool.not.i, label %if.end6.i, label %cleanup7

if.end6.i:                                        ; preds = %if.end4.i
  %3 = load ptr, ptr %0, align 8
  %cmp7.i = icmp eq ptr %3, null
  br i1 %cmp7.i, label %if.then8.i, label %do.end10

if.then8.i:                                       ; preds = %if.end6.i
  %call.i = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %1) #3
  store ptr %call.i, ptr %0, align 8
  %cmp11.i = icmp eq ptr %call.i, null
  br i1 %cmp11.i, label %cleanup7, label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i
  %code.i = getelementptr inbounds i8, ptr %0, i64 24
  store ptr @auto_decode, ptr %code.i, align 8
  %end.i = getelementptr inbounds i8, ptr %0, i64 32
  store ptr @auto_decoder_end, ptr %end.i, align 8
  %get_check.i = getelementptr inbounds i8, ptr %0, i64 40
  store ptr @auto_decoder_get_check, ptr %get_check.i, align 8
  %memconfig.i = getelementptr inbounds i8, ptr %0, i64 48
  store ptr @auto_decoder_memconfig, ptr %memconfig.i, align 8
  store ptr null, ptr %call.i, align 8
  %.compoundliteral.sroa.2.0.next15.sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i64 8
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next15.sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0.next15.sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next15.sroa_idx.i, i8 0, i64 48, i1 false)
  %.pre.i = load ptr, ptr %0, align 8
  br label %do.end10

cleanup7:                                         ; preds = %if.then8.i, %if.end4.i, %if.end.i
  %retval.0.i.ph = phi i32 [ 5, %if.then8.i ], [ 8, %if.end4.i ], [ 11, %if.end.i ]
  tail call void @lzma_end(ptr noundef nonnull %strm) #3
  br label %return

do.end10:                                         ; preds = %if.end13.i, %if.end6.i
  %4 = phi ptr [ %.pre.i, %if.end13.i ], [ %3, %if.end6.i ]
  %memlimit24.i = getelementptr inbounds i8, ptr %4, i64 64
  store i64 %memlimit, ptr %memlimit24.i, align 8
  %5 = load ptr, ptr %0, align 8
  %flags26.i = getelementptr inbounds i8, ptr %5, i64 72
  store i32 %flags, ptr %flags26.i, align 8
  %6 = load ptr, ptr %0, align 8
  %sequence.i = getelementptr inbounds i8, ptr %6, i64 76
  store i32 0, ptr %sequence.i, align 4
  %7 = load ptr, ptr %internal, align 8
  %supported_actions = getelementptr inbounds i8, ptr %7, i64 80
  store i8 1, ptr %supported_actions, align 8
  %8 = load ptr, ptr %internal, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %8, i64 83
  store i8 1, ptr %arrayidx14, align 1
  br label %return

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %retval.0.i.ph, %cleanup7 ], [ 0, %do.end10 ]
  ret i32 %retval.2
}

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 12) i32 @auto_decoder_init(ptr noundef %next, ptr noundef %allocator, i64 noundef %memlimit, i32 noundef %flags) #0 {
entry:
  %init = getelementptr inbounds i8, ptr %next, i64 16
  %0 = load i64, ptr %init, align 8
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @auto_decoder_init to i64)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @auto_decoder_init to i64), ptr %init, align 8
  %cmp2 = icmp eq i64 %memlimit, 0
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp ult i32 %flags, 16
  br i1 %tobool.not, label %if.end6, label %return

if.end6:                                          ; preds = %if.end4
  %1 = load ptr, ptr %next, align 8
  %cmp7 = icmp eq ptr %1, null
  br i1 %cmp7, label %if.then8, label %if.end22

if.then8:                                         ; preds = %if.end6
  %call = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %allocator) #3
  store ptr %call, ptr %next, align 8
  %cmp11 = icmp eq ptr %call, null
  br i1 %cmp11, label %return, label %if.end13

if.end13:                                         ; preds = %if.then8
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @auto_decode, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %next, i64 32
  store ptr @auto_decoder_end, ptr %end, align 8
  %get_check = getelementptr inbounds i8, ptr %next, i64 40
  store ptr @auto_decoder_get_check, ptr %get_check, align 8
  %memconfig = getelementptr inbounds i8, ptr %next, i64 48
  store ptr @auto_decoder_memconfig, ptr %memconfig, align 8
  store ptr null, ptr %call, align 8
  %.compoundliteral.sroa.2.0.next15.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next15.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.next15.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next15.sroa_idx, i8 0, i64 48, i1 false)
  %.pre = load ptr, ptr %next, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end13, %if.end6
  %2 = phi ptr [ %.pre, %if.end13 ], [ %1, %if.end6 ]
  %memlimit24 = getelementptr inbounds i8, ptr %2, i64 64
  store i64 %memlimit, ptr %memlimit24, align 8
  %3 = load ptr, ptr %next, align 8
  %flags26 = getelementptr inbounds i8, ptr %3, i64 72
  store i32 %flags, ptr %flags26, align 8
  %4 = load ptr, ptr %next, align 8
  %sequence = getelementptr inbounds i8, ptr %4, i64 76
  store i32 0, ptr %sequence, align 4
  br label %return

return:                                           ; preds = %if.then8, %if.end4, %if.end, %if.end22
  %retval.0 = phi i32 [ 0, %if.end22 ], [ 11, %if.end ], [ 8, %if.end4 ], [ 5, %if.then8 ]
  ret i32 %retval.0
}

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @auto_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 {
entry:
  %sequence = getelementptr inbounds i8, ptr %pcoder, i64 76
  %0 = load i32, ptr %sequence, align 4
  switch i32 %0, label %cleanup56 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb32
    i32 2, label %sw.bb49
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %in_pos, align 8
  %cmp.not = icmp ult i64 %1, %in_size
  br i1 %cmp.not, label %if.end, label %cleanup56

if.end:                                           ; preds = %sw.bb
  store i32 1, ptr %sequence, align 4
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %1
  %2 = load i8, ptr %arrayidx, align 1
  %cmp2 = icmp eq i8 %2, -3
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 64
  %3 = load i64, ptr %memlimit, align 8
  br i1 %cmp2, label %do.body, label %do.body9

do.body:                                          ; preds = %if.end
  %flags = getelementptr inbounds i8, ptr %pcoder, i64 72
  %4 = load i32, ptr %flags, align 8
  %call = tail call i32 @lzma_stream_decoder_init(ptr noundef nonnull %pcoder, ptr noundef %allocator, i64 noundef %3, i32 noundef %4) #3
  %cmp5.not = icmp eq i32 %call, 0
  br i1 %cmp5.not, label %sw.bb32, label %cleanup56

do.body9:                                         ; preds = %if.end
  %call13 = tail call i32 @lzma_alone_decoder_init(ptr noundef nonnull %pcoder, ptr noundef %allocator, i64 noundef %3, i1 noundef zeroext true) #3
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %do.end22, label %cleanup56

do.end22:                                         ; preds = %do.body9
  %flags23 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %5 = load i32, ptr %flags23, align 8
  %and = and i32 %5, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end25, label %cleanup56

if.end25:                                         ; preds = %do.end22
  %and27 = and i32 %5, 4
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %sw.bb32, label %cleanup56

sw.bb32:                                          ; preds = %do.body, %if.end25, %entry
  %code = getelementptr inbounds i8, ptr %pcoder, i64 24
  %6 = load ptr, ptr %code, align 8
  %7 = load ptr, ptr %pcoder, align 8
  %call36 = tail call i32 %6(ptr noundef %7, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #3
  %cmp37.not = icmp eq i32 %call36, 1
  br i1 %cmp37.not, label %lor.lhs.false, label %cleanup56

lor.lhs.false:                                    ; preds = %sw.bb32
  %flags39 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %8 = load i32, ptr %flags39, align 8
  %and40 = and i32 %8, 8
  %cmp41 = icmp eq i32 %and40, 0
  br i1 %cmp41, label %cleanup56, label %cleanup46

cleanup46:                                        ; preds = %lor.lhs.false
  store i32 2, ptr %sequence, align 4
  br label %sw.bb49

sw.bb49:                                          ; preds = %cleanup46, %entry
  %9 = load i64, ptr %in_pos, align 8
  %cmp50 = icmp ult i64 %9, %in_size
  br i1 %cmp50, label %cleanup56, label %if.end53

if.end53:                                         ; preds = %sw.bb49
  %cmp54 = icmp eq i32 %action, 3
  %cond = zext i1 %cmp54 to i32
  br label %cleanup56

cleanup56:                                        ; preds = %sw.bb32, %lor.lhs.false, %entry, %sw.bb49, %if.end25, %do.end22, %sw.bb, %do.body, %do.body9, %if.end53
  %retval.4 = phi i32 [ %cond, %if.end53 ], [ %call, %do.body ], [ %call13, %do.body9 ], [ 0, %sw.bb ], [ 2, %do.end22 ], [ 4, %if.end25 ], [ 9, %sw.bb49 ], [ 11, %entry ], [ 1, %lor.lhs.false ], [ %call36, %sw.bb32 ]
  ret i32 %retval.4
}

; Function Attrs: nounwind uwtable
define internal void @auto_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #3
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @auto_decoder_get_check(ptr nocapture noundef readonly %pcoder) #0 {
entry:
  %get_check = getelementptr inbounds i8, ptr %pcoder, i64 40
  %0 = load ptr, ptr %get_check, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %pcoder, align 8
  %call = tail call i32 %0(ptr noundef %1) #3
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @auto_decoder_memconfig(ptr nocapture noundef %pcoder, ptr noundef %memusage, ptr noundef %old_memlimit, i64 noundef %new_memlimit) #0 {
entry:
  %memconfig = getelementptr inbounds i8, ptr %pcoder, i64 48
  %0 = load ptr, ptr %memconfig, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pcoder, align 8
  %call = tail call i32 %0(ptr noundef %1, ptr noundef %memusage, ptr noundef %old_memlimit, i64 noundef %new_memlimit) #3
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 32768, ptr %memusage, align 8
  %memlimit = getelementptr inbounds i8, ptr %pcoder, i64 64
  %2 = load i64, ptr %memlimit, align 8
  store i64 %2, ptr %old_memlimit, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %if.else ]
  %cmp5 = icmp eq i32 %ret.0, 0
  %cmp6 = icmp ne i64 %new_memlimit, 0
  %or.cond = and i1 %cmp6, %cmp5
  br i1 %or.cond, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %memlimit8 = getelementptr inbounds i8, ptr %pcoder, i64 64
  store i64 %new_memlimit, ptr %memlimit8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  ret i32 %ret.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @lzma_stream_decoder_init(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lzma_alone_decoder_init(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
