; ModuleID = 'liblzma/lzma/lzma2_encoder.c'
source_filename = "liblzma/lzma/lzma2_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma2_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @lzma_lz_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @lzma2_encoder_init) #7
  ret i32 %call
}

declare i32 @lzma_lz_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_encoder_init(ptr nocapture noundef %lz, ptr noundef %allocator, ptr noundef readonly %options, ptr noundef %lz_options) #0 {
entry:
  %cmp = icmp eq ptr %options, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %lz, align 8
  %cmp1 = icmp eq ptr %0, null
  br i1 %cmp1, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @lzma_alloc(i64 noundef 65704, ptr noundef %allocator) #7
  store ptr %call, ptr %lz, align 8
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %if.then2
  %code = getelementptr inbounds i8, ptr %lz, i64 8
  store ptr @lzma2_encode, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %lz, i64 16
  store ptr @lzma2_encoder_end, ptr %end, align 8
  %options_update = getelementptr inbounds i8, ptr %lz, i64 24
  store ptr @lzma2_encoder_options_update, ptr %options_update, align 8
  %lzma = getelementptr inbounds i8, ptr %call, i64 8
  store ptr null, ptr %lzma, align 8
  %.pre = load ptr, ptr %lz, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end
  %1 = phi ptr [ %.pre, %if.end7 ], [ %0, %if.end ]
  %opt_cur = getelementptr inbounds i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %opt_cur, ptr noundef nonnull align 8 dereferenceable(112) %options, i64 112, i1 false)
  %2 = load ptr, ptr %lz, align 8
  store i32 0, ptr %2, align 8
  %3 = load ptr, ptr %lz, align 8
  %need_properties = getelementptr inbounds i8, ptr %3, i64 128
  store i8 1, ptr %need_properties, align 8
  %4 = load ptr, ptr %lz, align 8
  %need_state_reset = getelementptr inbounds i8, ptr %4, i64 129
  store i8 0, ptr %need_state_reset, align 1
  %5 = load ptr, ptr %lz, align 8
  %preset_dict = getelementptr inbounds i8, ptr %5, i64 24
  %6 = load ptr, ptr %preset_dict, align 8
  %cmp16 = icmp eq ptr %6, null
  br i1 %cmp16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end9
  %preset_dict_size = getelementptr inbounds i8, ptr %5, i64 32
  %7 = load i32, ptr %preset_dict_size, align 8
  %cmp19 = icmp eq i32 %7, 0
  %8 = zext i1 %cmp19 to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end9
  %storedv = phi i8 [ 1, %if.end9 ], [ %8, %lor.rhs ]
  %need_dictionary_reset = getelementptr inbounds i8, ptr %5, i64 130
  store i8 %storedv, ptr %need_dictionary_reset, align 2
  %9 = load ptr, ptr %lz, align 8
  %lzma22 = getelementptr inbounds i8, ptr %9, i64 8
  %opt_cur24 = getelementptr inbounds i8, ptr %9, i64 16
  %call25 = tail call i32 @lzma_lzma_encoder_create(ptr noundef nonnull %lzma22, ptr noundef %allocator, ptr noundef nonnull %opt_cur24, ptr noundef %lz_options) #7
  %cmp26.not.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not.not, label %do.end, label %return

do.end:                                           ; preds = %lor.end
  %10 = load i64, ptr %lz_options, align 8
  %dict_size = getelementptr inbounds i8, ptr %lz_options, i64 8
  %11 = load i64, ptr %dict_size, align 8
  %add = add i64 %11, %10
  %cmp29 = icmp ult i64 %add, 65536
  br i1 %cmp29, label %if.then30, label %return

if.then30:                                        ; preds = %do.end
  %sub = sub i64 65536, %11
  store i64 %sub, ptr %lz_options, align 8
  br label %return

return:                                           ; preds = %lor.end, %do.end, %if.then30, %if.then2, %entry
  %retval.1 = phi i32 [ %call25, %lor.end ], [ 11, %entry ], [ 5, %if.then2 ], [ 0, %if.then30 ], [ 0, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 65704, 65703) i64 @lzma_lzma2_encoder_memusage(ptr noundef %options) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @lzma_lzma_encoder_memusage(ptr noundef %options) #7
  %cmp = icmp eq i64 %call, -1
  %add = add i64 %call, 65704
  %retval.0 = select i1 %cmp, i64 -1, i64 %add
  ret i64 %retval.0
}

declare i64 @lzma_lzma_encoder_memusage(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @lzma_lzma2_props_encode(ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %out) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr %options, align 8
  %cmp = icmp ugt i32 %0, 4096
  %1 = add i32 %0, -1
  %spec.select = select i1 %cmp, i32 %1, i32 4095
  %shr = lshr i32 %spec.select, 2
  %or = or i32 %shr, %spec.select
  %shr2 = lshr i32 %or, 3
  %or3 = or i32 %shr2, %or
  %shr4 = lshr i32 %or3, 4
  %or5 = or i32 %shr4, %or3
  %shr6 = lshr i32 %or5, 8
  %or7 = or i32 %shr6, %or5
  %shr8 = lshr i32 %or7, 16
  %or9 = or i32 %shr8, %or7
  %cmp10 = icmp eq i32 %or9, -1
  br i1 %cmp10, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %add = add nuw i32 %or9, 1
  %cmp.i = icmp ult i32 %or9, 8191
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  %idxprom.i = zext nneg i32 %add to i64
  %arrayidx.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom.i
  %2 = load i8, ptr %arrayidx.i, align 1
  br label %get_pos_slot.exit

if.end.i:                                         ; preds = %if.else
  %cmp1.i = icmp ult i32 %or9, 33554431
  br i1 %cmp1.i, label %if.then3.i, label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  %shr.i = lshr i32 %add, 12
  %idxprom4.i = zext nneg i32 %shr.i to i64
  %arrayidx5.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom4.i
  %3 = load i8, ptr %arrayidx5.i, align 1
  %add.i = add i8 %3, 24
  br label %get_pos_slot.exit

if.end7.i:                                        ; preds = %if.end.i
  %shr8.i = lshr i32 %add, 24
  %idxprom9.i = zext nneg i32 %shr8.i to i64
  %arrayidx10.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom9.i
  %4 = load i8, ptr %arrayidx10.i, align 1
  %add12.i = add i8 %4, 48
  br label %get_pos_slot.exit

get_pos_slot.exit:                                ; preds = %if.then.i, %if.then3.i, %if.end7.i
  %retval.0.i = phi i8 [ %2, %if.then.i ], [ %add.i, %if.then3.i ], [ %add12.i, %if.end7.i ]
  %conv = add i8 %retval.0.i, -24
  br label %if.end

if.end:                                           ; preds = %entry, %get_pos_slot.exit
  %storemerge = phi i8 [ %conv, %get_pos_slot.exit ], [ 40, %entry ]
  store i8 %storemerge, ptr %out, align 1
  ret i32 0
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_encode(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size) #0 {
entry:
  %0 = load i64, ptr %out_pos, align 8
  %cmp173 = icmp ult i64 %0, %out_size
  br i1 %cmp173, label %while.body.lr.ph, label %cleanup91

while.body.lr.ph:                                 ; preds = %entry
  %buf73 = getelementptr inbounds i8, ptr %pcoder, i64 160
  %buf_pos75 = getelementptr inbounds i8, ptr %pcoder, i64 152
  %uncompressed_size84 = getelementptr inbounds i8, ptr %pcoder, i64 136
  %1 = getelementptr i8, ptr %mf, i64 24
  %write_pos.i = getelementptr inbounds i8, ptr %mf, i64 36
  %read_ahead.i = getelementptr inbounds i8, ptr %mf, i64 28
  %need_state_reset = getelementptr inbounds i8, ptr %pcoder, i64 129
  %lzma = getelementptr inbounds i8, ptr %pcoder, i64 8
  %opt_cur = getelementptr inbounds i8, ptr %pcoder, i64 16
  %compressed_size = getelementptr inbounds i8, ptr %pcoder, i64 144
  %match_len_max = getelementptr inbounds i8, ptr %mf, i64 100
  %add.ptr = getelementptr inbounds i8, ptr %pcoder, i64 166
  %need_dictionary_reset.i = getelementptr inbounds i8, ptr %pcoder, i64 130
  %arrayidx5.i = getelementptr inbounds i8, ptr %pcoder, i64 161
  %arrayidx10.i = getelementptr inbounds i8, ptr %pcoder, i64 162
  %need_properties.i = getelementptr inbounds i8, ptr %pcoder, i64 128
  %.pre = load i32, ptr %pcoder, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %2 = phi i32 [ %.pre, %while.body.lr.ph ], [ %36, %sw.epilog ]
  %3 = phi i64 [ %0, %while.body.lr.ph ], [ %37, %sw.epilog ]
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %while.body.sw.bb14_crit_edge
    i32 2, label %while.body.sw.bb60_crit_edge
    i32 3, label %sw.bb72
    i32 4, label %sw.bb83
  ]

while.body.sw.bb60_crit_edge:                     ; preds = %while.body
  %.pre184 = load i64, ptr %compressed_size, align 8
  br label %sw.bb60

while.body.sw.bb14_crit_edge:                     ; preds = %while.body
  %.pre181 = load i64, ptr %uncompressed_size84, align 8
  br label %sw.bb14

sw.bb:                                            ; preds = %while.body
  %4 = load i32, ptr %write_pos.i, align 4
  %5 = load i32, ptr %1, align 8
  %sub.i = sub i32 %4, %5
  %6 = load i32, ptr %read_ahead.i, align 4
  %add.i = sub i32 0, %6
  %cmp1 = icmp eq i32 %sub.i, %add.i
  br i1 %cmp1, label %if.then, label %if.end6

if.then:                                          ; preds = %sw.bb
  %action = getelementptr inbounds i8, ptr %mf, i64 104
  %7 = load i32, ptr %action, align 8
  %cmp2 = icmp eq i32 %7, 3
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %inc = add nuw i64 %3, 1
  store i64 %inc, ptr %out_pos, align 8
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %3
  store i8 0, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %cmp5 = icmp ne i32 %7, 0
  %cond = zext i1 %cmp5 to i32
  br label %cleanup91

if.end6:                                          ; preds = %sw.bb
  %8 = load i8, ptr %need_state_reset, align 1, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %8 to i1
  br i1 %loadedv, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end6
  %9 = load ptr, ptr %lzma, align 8
  %call8 = tail call i32 @lzma_lzma_encoder_reset(ptr noundef %9, ptr noundef nonnull %opt_cur) #7
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end12, label %cleanup91

if.end12:                                         ; preds = %do.body, %if.end6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %uncompressed_size84, i8 0, i64 16, i1 false)
  store i32 1, ptr %pcoder, align 8
  br label %sw.bb14

sw.bb14:                                          ; preds = %while.body.sw.bb14_crit_edge, %if.end12
  %10 = phi i64 [ %.pre181, %while.body.sw.bb14_crit_edge ], [ 0, %if.end12 ]
  %11 = trunc i64 %10 to i32
  %conv = sub i32 2097152, %11
  %12 = load i32, ptr %match_len_max, align 4
  %cmp16 = icmp ult i32 %conv, %12
  %.pre182 = load i32, ptr %1, align 8
  %.pre183 = load i32, ptr %read_ahead.i, align 4
  %13 = add i32 %conv, %.pre182
  %14 = add i32 %12, %.pre183
  %sub21 = sub i32 %13, %14
  %limit.0 = select i1 %cmp16, i32 0, i32 %sub21
  %15 = load ptr, ptr %lzma, align 8
  %call28 = tail call i32 @lzma_lzma_encode(ptr noundef %15, ptr noundef nonnull %mf, ptr noundef nonnull %add.ptr, ptr noundef nonnull %compressed_size, i64 noundef 65536, i32 noundef %limit.0) #7
  %16 = load i32, ptr %1, align 8
  %17 = load i32, ptr %read_ahead.i, align 4
  %18 = add i32 %.pre183, %16
  %19 = add i32 %.pre182, %17
  %sub32 = sub i32 %18, %19
  %conv33 = zext i32 %sub32 to i64
  %20 = load i64, ptr %uncompressed_size84, align 8
  %add35 = add i64 %20, %conv33
  store i64 %add35, ptr %uncompressed_size84, align 8
  %cmp36.not = icmp eq i32 %call28, 1
  br i1 %cmp36.not, label %if.end39, label %cleanup91

if.end39:                                         ; preds = %sw.bb14
  %21 = load i64, ptr %compressed_size, align 8
  %cmp42.not = icmp ult i64 %21, %add35
  br i1 %cmp42.not, label %if.end52, label %cleanup54

if.end52:                                         ; preds = %if.end39
  %22 = load i8, ptr %need_properties.i, align 8, !range !5, !noundef !6
  %loadedv.i154 = trunc nuw i8 %22 to i1
  br i1 %loadedv.i154, label %if.then.i, label %if.else5.i

if.then.i:                                        ; preds = %if.end52
  %23 = load i8, ptr %need_dictionary_reset.i, align 2, !range !5, !noundef !6
  %loadedv1.i = trunc nuw i8 %23 to i1
  br i1 %loadedv1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then.i
  store i8 -32, ptr %buf73, align 1
  br label %if.end14.i

if.else.i:                                        ; preds = %if.then.i
  store i8 -64, ptr %buf73, align 1
  br label %if.end14.i

if.else5.i:                                       ; preds = %if.end52
  %24 = load i8, ptr %need_state_reset, align 1, !range !5, !noundef !6
  %loadedv6.i = trunc nuw i8 %24 to i1
  br i1 %loadedv6.i, label %if.then7.i, label %if.else10.i

if.then7.i:                                       ; preds = %if.else5.i
  store i8 -96, ptr %arrayidx5.i, align 1
  br label %if.end14.i

if.else10.i:                                      ; preds = %if.else5.i
  store i8 -128, ptr %arrayidx5.i, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else10.i, %if.then7.i, %if.else.i, %if.then2.i
  %pos.0.i = phi i64 [ 0, %if.then2.i ], [ 0, %if.else.i ], [ 1, %if.then7.i ], [ 1, %if.else10.i ]
  store i64 %pos.0.i, ptr %buf_pos75, align 8
  %sub.i157 = add i64 %add35, -1
  %shr.i158 = lshr i64 %sub.i157, 16
  %inc.i = add nuw nsw i64 %pos.0.i, 1
  %arrayidx16.i = getelementptr inbounds [65542 x i8], ptr %buf73, i64 0, i64 %pos.0.i
  %25 = load i8, ptr %arrayidx16.i, align 1
  %26 = trunc i64 %shr.i158 to i8
  %conv17.i = add i8 %25, %26
  store i8 %conv17.i, ptr %arrayidx16.i, align 1
  %shr18.i = lshr i64 %sub.i157, 8
  %conv19.i = trunc i64 %shr18.i to i8
  %inc21.i = or disjoint i64 %pos.0.i, 2
  %arrayidx22.i = getelementptr inbounds [65542 x i8], ptr %buf73, i64 0, i64 %inc.i
  store i8 %conv19.i, ptr %arrayidx22.i, align 1
  %conv24.i = trunc i64 %sub.i157 to i8
  %inc26.i = add nuw nsw i64 %pos.0.i, 3
  %arrayidx27.i = getelementptr inbounds [65542 x i8], ptr %buf73, i64 0, i64 %inc21.i
  store i8 %conv24.i, ptr %arrayidx27.i, align 1
  %sub28.i = add i64 %21, -1
  %shr29.i = lshr i64 %sub28.i, 8
  %conv30.i = trunc i64 %shr29.i to i8
  %inc32.i = or disjoint i64 %pos.0.i, 4
  %arrayidx33.i = getelementptr inbounds [65542 x i8], ptr %buf73, i64 0, i64 %inc26.i
  store i8 %conv30.i, ptr %arrayidx33.i, align 1
  %conv35.i = trunc i64 %sub28.i to i8
  %arrayidx38.i = getelementptr inbounds [65542 x i8], ptr %buf73, i64 0, i64 %inc32.i
  store i8 %conv35.i, ptr %arrayidx38.i, align 1
  br i1 %loadedv.i154, label %if.then41.i, label %cleanup54.thread165

if.then41.i:                                      ; preds = %if.end14.i
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx16.i, i64 5
  %call.i = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef nonnull %opt_cur, ptr noundef nonnull %add.ptr.i) #7
  %.pre.i = load i64, ptr %compressed_size, align 8
  br label %cleanup54.thread165

cleanup54.thread165:                              ; preds = %if.then41.i, %if.end14.i
  %27 = phi i64 [ %.pre.i, %if.then41.i ], [ %21, %if.end14.i ]
  store i8 0, ptr %need_properties.i, align 8
  store i8 0, ptr %need_state_reset, align 1
  store i8 0, ptr %need_dictionary_reset.i, align 2
  %add48.i = add i64 %27, 6
  store i64 %add48.i, ptr %compressed_size, align 8
  store i32 2, ptr %pcoder, align 8
  br label %sw.bb60

cleanup54:                                        ; preds = %if.end39
  %conv46 = zext i32 %17 to i64
  %add48 = add i64 %add35, %conv46
  store i64 %add48, ptr %uncompressed_size84, align 8
  store i32 0, ptr %read_ahead.i, align 4
  %28 = load i8, ptr %need_dictionary_reset.i, align 2, !range !5, !noundef !6
  %loadedv.i = trunc nuw i8 %28 to i1
  %spec.select.i = select i1 %loadedv.i, i8 1, i8 2
  store i8 %spec.select.i, ptr %buf73, align 8
  store i8 0, ptr %need_dictionary_reset.i, align 2
  %sub.i153 = add i64 %add48, 65535
  %shr.i = lshr i64 %sub.i153, 8
  %conv.i = trunc i64 %shr.i to i8
  store i8 %conv.i, ptr %arrayidx5.i, align 1
  %29 = trunc i64 %add48 to i8
  %conv8.i = add i8 %29, -1
  store i8 %conv8.i, ptr %arrayidx10.i, align 2
  store i64 0, ptr %buf_pos75, align 8
  store i8 1, ptr %need_state_reset, align 1
  br label %sw.epilog.sink.split

sw.bb60:                                          ; preds = %while.body.sw.bb60_crit_edge, %cleanup54.thread165
  %30 = phi i64 [ %.pre184, %while.body.sw.bb60_crit_edge ], [ %add48.i, %cleanup54.thread165 ]
  %call64 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %buf73, ptr noundef nonnull %buf_pos75, i64 noundef %30, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #7
  %31 = load i64, ptr %buf_pos75, align 8
  %32 = load i64, ptr %compressed_size, align 8
  %cmp67.not = icmp eq i64 %31, %32
  br i1 %cmp67.not, label %sw.epilog.sink.split, label %cleanup91

sw.bb72:                                          ; preds = %while.body
  %call76 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %buf73, ptr noundef nonnull %buf_pos75, i64 noundef 3, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #7
  %33 = load i64, ptr %buf_pos75, align 8
  %cmp78.not = icmp eq i64 %33, 3
  br i1 %cmp78.not, label %if.end81, label %cleanup91

if.end81:                                         ; preds = %sw.bb72
  store i32 4, ptr %pcoder, align 8
  %.pre180 = load i64, ptr %out_pos, align 8
  br label %sw.bb83

sw.bb83:                                          ; preds = %while.body, %if.end81
  %34 = phi i64 [ %3, %while.body ], [ %.pre180, %if.end81 ]
  %mf.val = load ptr, ptr %mf, align 8
  %mf.val152 = load i32, ptr %1, align 8
  %sub.i160 = sub i64 %out_size, %34
  %35 = load i64, ptr %uncompressed_size84, align 8
  %sub..i = tail call i64 @llvm.umin.i64(i64 %sub.i160, i64 %35)
  %add.ptr.i161 = getelementptr inbounds i8, ptr %out, i64 %34
  %idx.ext.i = zext i32 %mf.val152 to i64
  %add.ptr1.i = getelementptr inbounds i8, ptr %mf.val, i64 %idx.ext.i
  %idx.neg.i = sub i64 0, %35
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr1.i, i64 %idx.neg.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i161, ptr readonly align 1 %add.ptr2.i, i64 %sub..i, i1 false)
  %add.i162 = add i64 %sub..i, %34
  store i64 %add.i162, ptr %out_pos, align 8
  %sub3.i = sub i64 %35, %sub..i
  store i64 %sub3.i, ptr %uncompressed_size84, align 8
  %cmp86.not.not = icmp ugt i64 %35, %sub.i160
  br i1 %cmp86.not.not, label %cleanup91, label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb83, %sw.bb60, %cleanup54
  %.sink = phi i32 [ 3, %cleanup54 ], [ 0, %sw.bb60 ], [ 0, %sw.bb83 ]
  store i32 %.sink, ptr %pcoder, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %while.body
  %36 = phi i32 [ %2, %while.body ], [ %.sink, %sw.epilog.sink.split ]
  %37 = load i64, ptr %out_pos, align 8
  %cmp = icmp ult i64 %37, %out_size
  br i1 %cmp, label %while.body, label %cleanup91

cleanup91:                                        ; preds = %do.body, %sw.bb60, %sw.bb72, %sw.bb83, %sw.epilog, %sw.bb14, %entry, %if.end
  %retval.7 = phi i32 [ %cond, %if.end ], [ 0, %entry ], [ %call8, %do.body ], [ 0, %sw.bb60 ], [ 0, %sw.bb72 ], [ 0, %sw.bb83 ], [ 0, %sw.epilog ], [ 0, %sw.bb14 ]
  ret i32 %retval.7
}

; Function Attrs: nounwind uwtable
define internal void @lzma2_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  %lzma = getelementptr inbounds i8, ptr %pcoder, i64 8
  %0 = load ptr, ptr %lzma, align 8
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #7
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal range(i32 0, 12) i32 @lzma2_encoder_options_update(ptr nocapture noundef %pcoder, ptr nocapture noundef readonly %filter) #3 {
entry:
  %options = getelementptr inbounds i8, ptr %filter, i64 8
  %0 = load ptr, ptr %options, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %cleanup38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %pcoder, align 8
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %if.end, label %cleanup38

if.end:                                           ; preds = %lor.lhs.false
  %lc = getelementptr inbounds i8, ptr %pcoder, i64 36
  %2 = load i32, ptr %lc, align 4
  %lc3 = getelementptr inbounds i8, ptr %0, i64 20
  %3 = load i32, ptr %lc3, align 4
  %cmp4.not = icmp eq i32 %2, %3
  br i1 %cmp4.not, label %lor.lhs.false5, label %if.then13

lor.lhs.false5:                                   ; preds = %if.end
  %lp = getelementptr inbounds i8, ptr %pcoder, i64 40
  %4 = load i32, ptr %lp, align 8
  %lp7 = getelementptr inbounds i8, ptr %0, i64 24
  %5 = load i32, ptr %lp7, align 8
  %cmp8.not = icmp eq i32 %4, %5
  br i1 %cmp8.not, label %lor.lhs.false9, label %if.then13

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %pb = getelementptr inbounds i8, ptr %pcoder, i64 44
  %6 = load i32, ptr %pb, align 4
  %pb11 = getelementptr inbounds i8, ptr %0, i64 28
  %7 = load i32, ptr %pb11, align 4
  %cmp12.not = icmp eq i32 %6, %7
  br i1 %cmp12.not, label %cleanup38, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false9, %lor.lhs.false5, %if.end
  %cmp15 = icmp ugt i32 %3, 4
  br i1 %cmp15, label %cleanup38, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.then13
  %lp17 = getelementptr inbounds i8, ptr %0, i64 24
  %8 = load i32, ptr %lp17, align 8
  %cmp18 = icmp ugt i32 %8, 4
  %add = add nuw nsw i32 %8, %3
  %cmp22 = icmp ugt i32 %add, 4
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp22
  br i1 %or.cond, label %cleanup38, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false16
  %pb24 = getelementptr inbounds i8, ptr %0, i64 28
  %9 = load i32, ptr %pb24, align 4
  %cmp25 = icmp ugt i32 %9, 4
  br i1 %cmp25, label %cleanup38, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false23
  store i32 %3, ptr %lc, align 4
  %10 = load i32, ptr %lp17, align 8
  %lp33 = getelementptr inbounds i8, ptr %pcoder, i64 40
  store i32 %10, ptr %lp33, align 8
  %11 = load i32, ptr %pb24, align 4
  %pb36 = getelementptr inbounds i8, ptr %pcoder, i64 44
  store i32 %11, ptr %pb36, align 4
  %need_properties = getelementptr inbounds i8, ptr %pcoder, i64 128
  store i8 1, ptr %need_properties, align 8
  %need_state_reset = getelementptr inbounds i8, ptr %pcoder, i64 129
  store i8 1, ptr %need_state_reset, align 1
  br label %cleanup38

cleanup38:                                        ; preds = %lor.lhs.false23, %lor.lhs.false16, %if.then13, %if.end27, %lor.lhs.false9, %entry, %lor.lhs.false
  %retval.1 = phi i32 [ 11, %lor.lhs.false ], [ 11, %entry ], [ 8, %lor.lhs.false23 ], [ 8, %lor.lhs.false16 ], [ 8, %if.then13 ], [ 0, %if.end27 ], [ 0, %lor.lhs.false9 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @lzma_lzma_encoder_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_lzma_encoder_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_lzma_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{i8 0, i8 2}
!6 = !{}
