; ModuleID = 'liblzma/simple/simple_coder.c'
source_filename = "liblzma/simple/simple_coder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_coder_init(ptr nocapture noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef %filter, i64 noundef %simple_size, i64 noundef %unfiltered_max, i32 noundef %alignment, i1 noundef zeroext %is_encoder) local_unnamed_addr #0 {
entry:
  %storedv = zext i1 %is_encoder to i8
  %0 = load ptr, ptr %next, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end27

if.then:                                          ; preds = %entry
  %mul = shl i64 %unfiltered_max, 1
  %add = add i64 %mul, 128
  %call = tail call ptr @lzma_alloc(i64 noundef %add, ptr noundef %allocator) #5
  store ptr %call, ptr %next, align 8
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @simple_code, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %next, i64 32
  store ptr @simple_coder_end, ptr %end, align 8
  %update = getelementptr inbounds i8, ptr %next, i64 56
  store ptr @simple_coder_update, ptr %update, align 8
  store ptr null, ptr %call, align 8
  %.compoundliteral.sroa.2.0.next6.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next6.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.next6.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next6.sroa_idx, i8 0, i64 48, i1 false)
  %1 = load ptr, ptr %next, align 8
  %filter12 = getelementptr inbounds i8, ptr %1, i64 72
  store ptr %filter, ptr %filter12, align 8
  %2 = load ptr, ptr %next, align 8
  %allocated = getelementptr inbounds i8, ptr %2, i64 96
  store i64 %mul, ptr %allocated, align 8
  %cmp15.not = icmp eq i64 %simple_size, 0
  br i1 %cmp15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end
  %call17 = tail call ptr @lzma_alloc(i64 noundef %simple_size, ptr noundef %allocator) #5
  %3 = load ptr, ptr %next, align 8
  %simple = getelementptr inbounds i8, ptr %3, i64 80
  store ptr %call17, ptr %simple, align 8
  %4 = load ptr, ptr %next, align 8
  %simple20 = getelementptr inbounds i8, ptr %4, i64 80
  %5 = load ptr, ptr %simple20, align 8
  %cmp21 = icmp eq ptr %5, null
  br i1 %cmp21, label %return, label %if.end27

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %next, align 8
  %simple25 = getelementptr inbounds i8, ptr %6, i64 80
  store ptr null, ptr %simple25, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then16, %entry
  %options = getelementptr inbounds i8, ptr %filters, i64 16
  %7 = load ptr, ptr %options, align 8
  %cmp28.not = icmp eq ptr %7, null
  br i1 %cmp28.not, label %if.else38, label %if.then29

if.then29:                                        ; preds = %if.end27
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %next, align 8
  %now_pos = getelementptr inbounds i8, ptr %9, i64 88
  store i32 %8, ptr %now_pos, align 8
  %10 = load ptr, ptr %next, align 8
  %now_pos35 = getelementptr inbounds i8, ptr %10, i64 88
  %11 = load i32, ptr %now_pos35, align 8
  %sub = add i32 %alignment, -1
  %and = and i32 %11, %sub
  %tobool.not.not = icmp eq i32 %and, 0
  br i1 %tobool.not.not, label %if.end41, label %return

if.else38:                                        ; preds = %if.end27
  %12 = load ptr, ptr %next, align 8
  %now_pos40 = getelementptr inbounds i8, ptr %12, i64 88
  store i32 0, ptr %now_pos40, align 8
  %.pre = load ptr, ptr %next, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then29, %if.else38
  %13 = phi ptr [ %10, %if.then29 ], [ %.pre, %if.else38 ]
  %is_encoder43 = getelementptr inbounds i8, ptr %13, i64 65
  store i8 %storedv, ptr %is_encoder43, align 1
  %14 = load ptr, ptr %next, align 8
  %end_was_reached = getelementptr inbounds i8, ptr %14, i64 64
  store i8 0, ptr %end_was_reached, align 8
  %15 = load ptr, ptr %next, align 8
  %pos = getelementptr inbounds i8, ptr %15, i64 104
  store i64 0, ptr %pos, align 8
  %16 = load ptr, ptr %next, align 8
  %filtered = getelementptr inbounds i8, ptr %16, i64 112
  store i64 0, ptr %filtered, align 8
  %17 = load ptr, ptr %next, align 8
  %size = getelementptr inbounds i8, ptr %17, i64 120
  store i64 0, ptr %size, align 8
  %18 = load ptr, ptr %next, align 8
  %add.ptr = getelementptr inbounds i8, ptr %filters, i64 24
  %call51 = tail call i32 @lzma_next_filter_init(ptr noundef %18, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #5
  br label %return

return:                                           ; preds = %if.then29, %if.then16, %if.then, %if.end41
  %retval.1 = phi i32 [ 8, %if.then29 ], [ %call51, %if.end41 ], [ 5, %if.then ], [ 5, %if.then16 ]
  ret i32 %retval.1
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @simple_code(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 {
entry:
  %cmp = icmp eq i32 %action, 1
  br i1 %cmp, label %cleanup106, label %if.end

if.end:                                           ; preds = %entry
  %pos = getelementptr inbounds i8, ptr %pcoder, i64 104
  %0 = load i64, ptr %pos, align 8
  %filtered = getelementptr inbounds i8, ptr %pcoder, i64 112
  %1 = load i64, ptr %filtered, align 8
  %cmp1 = icmp ult i64 %0, %1
  br i1 %cmp1, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  %buffer = getelementptr inbounds i8, ptr %pcoder, i64 128
  %call = tail call i64 @lzma_bufcpy(ptr noundef nonnull %buffer, ptr noundef nonnull %pos, i64 noundef %1, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #5
  %2 = load i64, ptr %pos, align 8
  %3 = load i64, ptr %filtered, align 8
  %cmp7 = icmp ult i64 %2, %3
  br i1 %cmp7, label %cleanup106, label %if.end9

if.end9:                                          ; preds = %if.then2
  %end_was_reached = getelementptr inbounds i8, ptr %pcoder, i64 64
  %4 = load i8, ptr %end_was_reached, align 8, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %4 to i1
  br i1 %loadedv, label %cleanup106, label %if.end12

if.end12:                                         ; preds = %if.end9, %if.end
  %5 = phi i64 [ %0, %if.end ], [ %2, %if.end9 ]
  store i64 0, ptr %filtered, align 8
  %6 = load i64, ptr %out_pos, align 8
  %sub = sub i64 %out_size, %6
  %size = getelementptr inbounds i8, ptr %pcoder, i64 120
  %7 = load i64, ptr %size, align 8
  %sub15 = sub i64 %7, %5
  %cmp16 = icmp ugt i64 %sub, %sub15
  %cmp17 = icmp eq i64 %7, %5
  %or.cond = or i1 %cmp17, %cmp16
  br i1 %or.cond, label %if.then18, label %if.else50

if.then18:                                        ; preds = %if.end12
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %6
  %buffer19 = getelementptr inbounds i8, ptr %pcoder, i64 128
  %add.ptr22 = getelementptr inbounds i8, ptr %buffer19, i64 %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr nonnull align 1 %add.ptr22, i64 %sub15, i1 false)
  %add = add i64 %sub15, %6
  store i64 %add, ptr %out_pos, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %code.i = getelementptr inbounds i8, ptr %pcoder, i64 24
  %8 = load ptr, ptr %code.i, align 8, !noalias !10
  %cmp.i = icmp eq ptr %8, null
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then18
  %call.i = tail call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #5
  %is_encoder.i = getelementptr inbounds i8, ptr %pcoder, i64 65
  %9 = load i8, ptr %is_encoder.i, align 1, !range !5, !noalias !10, !noundef !6
  %loadedv.i = trunc nuw i8 %9 to i1
  %cmp1.i = icmp eq i32 %action, 3
  %or.cond.i = and i1 %cmp1.i, %loadedv.i
  br i1 %or.cond.i, label %land.lhs.true2.i, label %cleanup.cont

land.lhs.true2.i:                                 ; preds = %if.then.i
  %10 = load i64, ptr %in_pos, align 8, !alias.scope !7, !noalias !14
  %cmp3.i = icmp eq i64 %10, %in_size
  br i1 %cmp3.i, label %cleanup.cont.sink.split, label %cleanup.cont

if.else.i:                                        ; preds = %if.then18
  %11 = load ptr, ptr %pcoder, align 8, !noalias !10
  %call9.i = tail call i32 %8(ptr noundef %11, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #5
  switch i32 %call9.i, label %cleanup106 [
    i32 1, label %cleanup.cont.sink.split
    i32 0, label %cleanup.cont
  ]

cleanup.cont.sink.split:                          ; preds = %if.else.i, %land.lhs.true2.i
  %end_was_reached12.i = getelementptr inbounds i8, ptr %pcoder, i64 64
  store i8 1, ptr %end_was_reached12.i, align 8, !noalias !10
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %cleanup.cont.sink.split, %if.else.i, %if.then.i, %land.lhs.true2.i
  %12 = load i64, ptr %out_pos, align 8
  %sub28 = sub i64 %12, %6
  %filter.i = getelementptr inbounds i8, ptr %pcoder, i64 72
  %13 = load ptr, ptr %filter.i, align 8
  %simple.i = getelementptr inbounds i8, ptr %pcoder, i64 80
  %14 = load ptr, ptr %simple.i, align 8
  %now_pos.i = getelementptr inbounds i8, ptr %pcoder, i64 88
  %15 = load i32, ptr %now_pos.i, align 8
  %is_encoder.i190 = getelementptr inbounds i8, ptr %pcoder, i64 65
  %16 = load i8, ptr %is_encoder.i190, align 1, !range !5, !noundef !6
  %loadedv.i191 = trunc nuw i8 %16 to i1
  %call.i192 = tail call i64 %13(ptr noundef %14, i32 noundef %15, i1 noundef zeroext %loadedv.i191, ptr noundef %add.ptr, i64 noundef %sub28) #5
  %17 = load i32, ptr %now_pos.i, align 8
  %18 = trunc i64 %call.i192 to i32
  %conv2.i = add i32 %17, %18
  store i32 %conv2.i, ptr %now_pos.i, align 8
  %sub32 = sub i64 %sub28, %call.i192
  store i64 0, ptr %pos, align 8
  store i64 %sub32, ptr %size, align 8
  %end_was_reached35 = getelementptr inbounds i8, ptr %pcoder, i64 64
  %19 = load i8, ptr %end_was_reached35, align 8, !range !5, !noundef !6
  %loadedv36 = trunc nuw i8 %19 to i1
  br i1 %loadedv36, label %if.end65.thread, label %if.else

if.end65.thread:                                  ; preds = %cleanup.cont
  store i64 0, ptr %size, align 8
  br label %if.end96

if.else:                                          ; preds = %cleanup.cont
  %cmp39.not = icmp eq i64 %sub28, %call.i192
  br i1 %cmp39.not, label %if.end65, label %if.then40

if.then40:                                        ; preds = %if.else
  %20 = load i64, ptr %out_pos, align 8
  %sub41 = sub i64 %20, %sub32
  store i64 %sub41, ptr %out_pos, align 8
  %add.ptr44 = getelementptr inbounds i8, ptr %out, i64 %sub41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %buffer19, ptr align 1 %add.ptr44, i64 %sub32, i1 false)
  br label %if.end65

if.else50:                                        ; preds = %if.end12
  %cmp52.not = icmp eq i64 %5, 0
  br i1 %cmp52.not, label %if.end65, label %if.then53

if.then53:                                        ; preds = %if.else50
  %buffer54 = getelementptr inbounds i8, ptr %pcoder, i64 128
  %add.ptr59 = getelementptr inbounds i8, ptr %buffer54, i64 %5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %buffer54, ptr nonnull align 1 %add.ptr59, i64 %sub15, i1 false)
  store i64 %sub15, ptr %size, align 8
  store i64 0, ptr %pos, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then40, %if.else50, %if.then53
  %21 = phi i64 [ %sub15, %if.then53 ], [ %7, %if.else50 ], [ %sub32, %if.then40 ], [ %sub32, %if.else ]
  %cmp67.not = icmp eq i64 %21, 0
  br i1 %cmp67.not, label %if.end96, label %if.then68

if.then68:                                        ; preds = %if.end65
  %buffer70 = getelementptr inbounds i8, ptr %pcoder, i64 128
  %allocated = getelementptr inbounds i8, ptr %pcoder, i64 96
  %22 = load i64, ptr %allocated, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %code.i193 = getelementptr inbounds i8, ptr %pcoder, i64 24
  %23 = load ptr, ptr %code.i193, align 8, !noalias !18
  %cmp.i194 = icmp eq ptr %23, null
  br i1 %cmp.i194, label %if.then.i201, label %if.else.i195

if.then.i201:                                     ; preds = %if.then68
  %call.i202 = tail call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer70, ptr noundef nonnull %size, i64 noundef %22) #5
  %is_encoder.i203 = getelementptr inbounds i8, ptr %pcoder, i64 65
  %24 = load i8, ptr %is_encoder.i203, align 1, !range !5, !noalias !18, !noundef !6
  %loadedv.i204 = trunc nuw i8 %24 to i1
  %cmp1.i205 = icmp eq i32 %action, 3
  %or.cond.i206 = and i1 %cmp1.i205, %loadedv.i204
  br i1 %or.cond.i206, label %land.lhs.true2.i207, label %cleanup.cont79

land.lhs.true2.i207:                              ; preds = %if.then.i201
  %25 = load i64, ptr %in_pos, align 8, !alias.scope !15, !noalias !22
  %cmp3.i208 = icmp eq i64 %25, %in_size
  br i1 %cmp3.i208, label %cleanup.cont79.sink.split, label %cleanup.cont79

if.else.i195:                                     ; preds = %if.then68
  %26 = load ptr, ptr %pcoder, align 8, !noalias !18
  %call9.i196 = tail call i32 %23(ptr noundef %26, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer70, ptr noundef nonnull %size, i64 noundef %22, i32 noundef %action) #5
  switch i32 %call9.i196, label %cleanup106 [
    i32 1, label %cleanup.cont79.sink.split
    i32 0, label %cleanup.cont79
  ]

cleanup.cont79.sink.split:                        ; preds = %if.else.i195, %land.lhs.true2.i207
  %end_was_reached12.i200 = getelementptr inbounds i8, ptr %pcoder, i64 64
  store i8 1, ptr %end_was_reached12.i200, align 8, !noalias !18
  br label %cleanup.cont79

cleanup.cont79:                                   ; preds = %cleanup.cont79.sink.split, %if.else.i195, %if.then.i201, %land.lhs.true2.i207
  %27 = load i64, ptr %size, align 8
  %filter.i212 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %28 = load ptr, ptr %filter.i212, align 8
  %simple.i213 = getelementptr inbounds i8, ptr %pcoder, i64 80
  %29 = load ptr, ptr %simple.i213, align 8
  %now_pos.i214 = getelementptr inbounds i8, ptr %pcoder, i64 88
  %30 = load i32, ptr %now_pos.i214, align 8
  %is_encoder.i215 = getelementptr inbounds i8, ptr %pcoder, i64 65
  %31 = load i8, ptr %is_encoder.i215, align 1, !range !5, !noundef !6
  %loadedv.i216 = trunc nuw i8 %31 to i1
  %call.i217 = tail call i64 %28(ptr noundef %29, i32 noundef %30, i1 noundef zeroext %loadedv.i216, ptr noundef nonnull %buffer70, i64 noundef %27) #5
  %32 = load i32, ptr %now_pos.i214, align 8
  %33 = trunc i64 %call.i217 to i32
  %conv2.i218 = add i32 %32, %33
  store i32 %conv2.i218, ptr %now_pos.i214, align 8
  store i64 %call.i217, ptr %filtered, align 8
  %end_was_reached85 = getelementptr inbounds i8, ptr %pcoder, i64 64
  %34 = load i8, ptr %end_was_reached85, align 8, !range !5, !noundef !6
  %loadedv86 = trunc nuw i8 %34 to i1
  br i1 %loadedv86, label %if.then87, label %if.end90

if.then87:                                        ; preds = %cleanup.cont79
  %35 = load i64, ptr %size, align 8
  store i64 %35, ptr %filtered, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %cleanup.cont79
  %36 = phi i64 [ %35, %if.then87 ], [ %call.i217, %cleanup.cont79 ]
  %call95 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %buffer70, ptr noundef nonnull %pos, i64 noundef %36, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #5
  br label %if.end96

if.end96:                                         ; preds = %if.end65.thread, %if.end90, %if.end65
  %end_was_reached97 = getelementptr inbounds i8, ptr %pcoder, i64 64
  %37 = load i8, ptr %end_was_reached97, align 8, !range !5, !noundef !6
  %loadedv98 = trunc nuw i8 %37 to i1
  br i1 %loadedv98, label %land.lhs.true, label %if.end103

land.lhs.true:                                    ; preds = %if.end96
  %38 = load i64, ptr %pos, align 8
  %39 = load i64, ptr %size, align 8
  %cmp101 = icmp eq i64 %38, %39
  br i1 %cmp101, label %cleanup106, label %if.end103

if.end103:                                        ; preds = %land.lhs.true, %if.end96
  br label %cleanup106

cleanup106:                                       ; preds = %if.else.i195, %if.else.i, %if.end103, %land.lhs.true, %if.end9, %if.then2, %entry
  %retval.4 = phi i32 [ 8, %entry ], [ 0, %if.then2 ], [ 1, %if.end9 ], [ 0, %if.end103 ], [ 1, %land.lhs.true ], [ %call9.i, %if.else.i ], [ %call9.i196, %if.else.i195 ]
  ret i32 %retval.4
}

; Function Attrs: nounwind uwtable
define internal void @simple_coder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #5
  %simple = getelementptr inbounds i8, ptr %pcoder, i64 80
  %0 = load ptr, ptr %simple, align 8
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #5
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simple_coder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr nocapture readnone %filters_null, ptr noundef %reversed_filters) #0 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %reversed_filters, i64 16
  %call = tail call i32 @lzma_next_filter_update(ptr noundef %pcoder, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #5
  ret i32 %call
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!8}
!8 = distinct !{!8, !9, !"copy_or_code: %in_pos"}
!9 = distinct !{!9, !"copy_or_code"}
!10 = !{!11, !8, !12, !13}
!11 = distinct !{!11, !9, !"copy_or_code: %in"}
!12 = distinct !{!12, !9, !"copy_or_code: %out"}
!13 = distinct !{!13, !9, !"copy_or_code: %out_pos"}
!14 = !{!11, !12, !13}
!15 = !{!16}
!16 = distinct !{!16, !17, !"copy_or_code: %in_pos"}
!17 = distinct !{!17, !"copy_or_code"}
!18 = !{!19, !16, !20, !21}
!19 = distinct !{!19, !17, !"copy_or_code: %in"}
!20 = distinct !{!20, !17, !"copy_or_code: %out"}
!21 = distinct !{!21, !17, !"copy_or_code: %out_pos"}
!22 = !{!19, !20, !21}
