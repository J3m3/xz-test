; ModuleID = 'liblzma/lz/lz_decoder.c'
source_filename = "liblzma/lz/lz_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_lz_options = type { i64, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lz_decoder_init(ptr nocapture noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr nocapture noundef readonly %lz_init) local_unnamed_addr #0 {
entry:
  %lz_options = alloca %struct.lzma_lz_options, align 8
  %0 = load ptr, ptr %next, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 4272, ptr noundef %allocator) #8
  store ptr %call, ptr %next, align 8
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @lz_decode, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %next, i64 32
  store ptr @lz_decoder_end, ptr %end, align 8
  store ptr null, ptr %call, align 8
  %1 = load ptr, ptr %next, align 8
  %size = getelementptr inbounds i8, ptr %1, i64 32
  store i64 0, ptr %size, align 8
  %2 = load ptr, ptr %next, align 8
  %lz = getelementptr inbounds i8, ptr %2, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %lz, i8 0, i64 40, i1 false)
  %3 = load ptr, ptr %next, align 8
  %next13 = getelementptr inbounds i8, ptr %3, i64 88
  store ptr null, ptr %next13, align 8
  %.compoundliteral14.sroa.2.0.next13.sroa_idx = getelementptr inbounds i8, ptr %3, i64 96
  store i64 -1, ptr %.compoundliteral14.sroa.2.0.next13.sroa_idx, align 8
  %.compoundliteral14.sroa.3.0.next13.sroa_idx = getelementptr inbounds i8, ptr %3, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral14.sroa.3.0.next13.sroa_idx, i8 0, i64 48, i1 false)
  %.pre = load ptr, ptr %next, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry
  %4 = phi ptr [ %.pre, %if.end ], [ %0, %entry ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lz_options) #8
  %lz20 = getelementptr inbounds i8, ptr %4, i64 48
  %options = getelementptr inbounds i8, ptr %filters, i64 16
  %5 = load ptr, ptr %options, align 8
  %call21 = call i32 %lz_init(ptr noundef nonnull %lz20, ptr noundef %allocator, ptr noundef %5, ptr noundef nonnull %lz_options) #8
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %do.end, label %cleanup90

do.end:                                           ; preds = %if.end18
  %6 = load i64, ptr %lz_options, align 8
  %cmp25 = icmp ult i64 %6, 4096
  br i1 %cmp25, label %if.end32, label %if.end28

if.end28:                                         ; preds = %do.end
  %cmp30 = icmp ugt i64 %6, -16
  br i1 %cmp30, label %cleanup90, label %if.end32

if.end32:                                         ; preds = %do.end, %if.end28
  %7 = phi i64 [ %6, %if.end28 ], [ 4096, %do.end ]
  %add = add nuw i64 %7, 15
  %and = and i64 %add, -16
  store i64 %and, ptr %lz_options, align 8
  %8 = load ptr, ptr %next, align 8
  %size37 = getelementptr inbounds i8, ptr %8, i64 32
  %9 = load i64, ptr %size37, align 8
  %cmp39.not = icmp eq i64 %9, %and
  br i1 %cmp39.not, label %if.end59, label %if.then40

if.then40:                                        ; preds = %if.end32
  %10 = load ptr, ptr %8, align 8
  call void @lzma_free(ptr noundef %10, ptr noundef %allocator) #8
  %11 = load i64, ptr %lz_options, align 8
  %call45 = call ptr @lzma_alloc(i64 noundef %11, ptr noundef %allocator) #8
  %12 = load ptr, ptr %next, align 8
  store ptr %call45, ptr %12, align 8
  %13 = load ptr, ptr %next, align 8
  %14 = load ptr, ptr %13, align 8
  %cmp52 = icmp eq ptr %14, null
  br i1 %cmp52, label %cleanup90, label %if.end54

if.end54:                                         ; preds = %if.then40
  %15 = load i64, ptr %lz_options, align 8
  %size58 = getelementptr inbounds i8, ptr %13, i64 32
  store i64 %15, ptr %size58, align 8
  %.pre127 = load ptr, ptr %next, align 8
  %size.i.phi.trans.insert = getelementptr inbounds i8, ptr %.pre127, i64 32
  %.pre128 = load i64, ptr %size.i.phi.trans.insert, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end54, %if.end32
  %16 = phi i64 [ %.pre128, %if.end54 ], [ %and, %if.end32 ]
  %17 = phi ptr [ %.pre127, %if.end54 ], [ %8, %if.end32 ]
  %pos.i = getelementptr inbounds i8, ptr %17, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pos.i, i8 0, i64 16, i1 false)
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i64 %16
  %arrayidx.i = getelementptr i8, ptr %19, i64 -1
  store i8 0, ptr %arrayidx.i, align 1
  %need_reset.i = getelementptr inbounds i8, ptr %17, i64 40
  store i8 0, ptr %need_reset.i, align 8
  %preset_dict = getelementptr inbounds i8, ptr %lz_options, i64 8
  %20 = load ptr, ptr %preset_dict, align 8
  %cmp61 = icmp ne ptr %20, null
  %preset_dict_size = getelementptr inbounds i8, ptr %lz_options, i64 16
  %21 = load i64, ptr %preset_dict_size, align 8
  %cmp62 = icmp ne i64 %21, 0
  %or.cond = select i1 %cmp61, i1 %cmp62, i1 false
  br i1 %or.cond, label %if.then63, label %if.end78

if.then63:                                        ; preds = %if.end59
  %22 = load i64, ptr %lz_options, align 8
  %cond = call i64 @llvm.umin.i64(i64 %21, i64 %22)
  %sub = sub i64 %21, %cond
  %23 = load ptr, ptr %next, align 8
  %24 = load ptr, ptr %23, align 8
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %sub
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr nonnull align 1 %add.ptr, i64 %cond, i1 false)
  %25 = load ptr, ptr %next, align 8
  %pos = getelementptr inbounds i8, ptr %25, i64 8
  store i64 %cond, ptr %pos, align 8
  %26 = load ptr, ptr %next, align 8
  %full = getelementptr inbounds i8, ptr %26, i64 16
  store i64 %cond, ptr %full, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then63, %if.end59
  %27 = load ptr, ptr %next, align 8
  %next_finished = getelementptr inbounds i8, ptr %27, i64 152
  store i8 0, ptr %next_finished, align 8
  %28 = load ptr, ptr %next, align 8
  %this_finished = getelementptr inbounds i8, ptr %28, i64 153
  store i8 0, ptr %this_finished, align 1
  %29 = load ptr, ptr %next, align 8
  %temp = getelementptr inbounds i8, ptr %29, i64 160
  store i64 0, ptr %temp, align 8
  %30 = load ptr, ptr %next, align 8
  %size85 = getelementptr inbounds i8, ptr %30, i64 168
  store i64 0, ptr %size85, align 8
  %31 = load ptr, ptr %next, align 8
  %next87 = getelementptr inbounds i8, ptr %31, i64 88
  %add.ptr88 = getelementptr inbounds i8, ptr %filters, i64 24
  %call89 = call i32 @lzma_next_filter_init(ptr noundef nonnull %next87, ptr noundef %allocator, ptr noundef nonnull %add.ptr88) #8
  br label %cleanup90

cleanup90:                                        ; preds = %if.then40, %if.end28, %if.end18, %if.end78
  %retval.1 = phi i32 [ %call89, %if.end78 ], [ %call21, %if.end18 ], [ 5, %if.end28 ], [ 5, %if.then40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lz_options) #8
  br label %return

return:                                           ; preds = %if.then, %cleanup90
  %retval.2 = phi i32 [ %retval.1, %cleanup90 ], [ 5, %if.then ]
  ret i32 %retval.2
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lz_decode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 {
entry:
  %next = getelementptr inbounds i8, ptr %pcoder, i64 88
  %code = getelementptr inbounds i8, ptr %pcoder, i64 112
  %0 = load ptr, ptr %code, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %out_pos.promoted = load i64, ptr %out_pos, align 8
  %cmp1155 = icmp ult i64 %out_pos.promoted, %out_size
  br i1 %cmp1155, label %while.body.lr.ph, label %cleanup67

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %next_finished = getelementptr inbounds i8, ptr %pcoder, i64 152
  %temp = getelementptr inbounds i8, ptr %pcoder, i64 160
  %size = getelementptr inbounds i8, ptr %pcoder, i64 168
  %buffer = getelementptr inbounds i8, ptr %pcoder, i64 176
  %this_finished = getelementptr inbounds i8, ptr %pcoder, i64 153
  %pos.i105 = getelementptr inbounds i8, ptr %pcoder, i64 8
  %size.i106 = getelementptr inbounds i8, ptr %pcoder, i64 32
  %limit.i107 = getelementptr inbounds i8, ptr %pcoder, i64 24
  %lz.i108 = getelementptr inbounds i8, ptr %pcoder, i64 48
  %code.i109 = getelementptr inbounds i8, ptr %pcoder, i64 56
  %need_reset.i111 = getelementptr inbounds i8, ptr %pcoder, i64 40
  br label %while.body

if.then:                                          ; preds = %entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %pos.i = getelementptr inbounds i8, ptr %pcoder, i64 8
  %size.i = getelementptr inbounds i8, ptr %pcoder, i64 32
  %limit.i = getelementptr inbounds i8, ptr %pcoder, i64 24
  %lz.i = getelementptr inbounds i8, ptr %pcoder, i64 48
  %code.i = getelementptr inbounds i8, ptr %pcoder, i64 56
  %out_pos.promoted.i = load i64, ptr %out_pos, align 8, !alias.scope !5, !noalias !8
  %need_reset.i = getelementptr inbounds i8, ptr %pcoder, i64 40
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.then
  %1 = phi i64 [ %out_pos.promoted.i, %if.then ], [ %add29.i, %while.cond.i.backedge ]
  %2 = load i64, ptr %pos.i, align 8, !noalias !12
  %3 = load i64, ptr %size.i, align 8, !noalias !12
  %cmp.i = icmp eq i64 %2, %3
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.cond.i
  store i64 0, ptr %pos.i, align 8, !noalias !12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.cond.i
  %4 = phi i64 [ 0, %if.then.i ], [ %2, %while.cond.i ]
  %sub.i = sub i64 %out_size, %1
  %sub12.i = sub i64 %3, %4
  %sub.sub12.i = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 %sub12.i)
  %add.i = add i64 %sub.sub12.i, %4
  store i64 %add.i, ptr %limit.i, align 8, !noalias !12
  %5 = load ptr, ptr %code.i, align 8, !noalias !12
  %6 = load ptr, ptr %lz.i, align 8, !noalias !12
  %call.i = tail call i32 %5(ptr noundef %6, ptr noundef nonnull %pcoder, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) #8, !noalias !13
  %7 = load i64, ptr %pos.i, align 8, !noalias !12
  %sub26.i = sub i64 %7, %4
  %add.ptr.i = getelementptr inbounds i8, ptr %out, i64 %1
  %8 = load ptr, ptr %pcoder, align 8, !noalias !12
  %add.ptr28.i = getelementptr inbounds i8, ptr %8, i64 %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr align 1 %add.ptr28.i, i64 %sub26.i, i1 false), !noalias !5
  %add29.i = add i64 %sub26.i, %1
  store i64 %add29.i, ptr %out_pos, align 8, !alias.scope !5, !noalias !8
  %9 = load i8, ptr %need_reset.i, align 8, !range !14, !noalias !12, !noundef !15
  %loadedv.i = trunc nuw i8 %9 to i1
  br i1 %loadedv.i, label %if.then31.i, label %if.else.i

if.then31.i:                                      ; preds = %if.end.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pos.i, i8 0, i64 16, i1 false), !noalias !12
  %10 = load i64, ptr %size.i, align 8, !noalias !12
  %11 = getelementptr i8, ptr %8, i64 %10
  %arrayidx.i.i = getelementptr i8, ptr %11, i64 -1
  store i8 0, ptr %arrayidx.i.i, align 1, !noalias !13
  store i8 0, ptr %need_reset.i, align 8, !noalias !12
  %cmp32.not.i = icmp ne i32 %call.i, 0
  %cmp33.i = icmp eq i64 %add29.i, %out_size
  %or.cond86.i = select i1 %cmp32.not.i, i1 true, i1 %cmp33.i
  br i1 %or.cond86.i, label %cleanup67, label %while.cond.i.backedge

if.else.i:                                        ; preds = %if.end.i
  %cmp36.not.i = icmp ne i32 %call.i, 0
  %cmp38.i = icmp eq i64 %add29.i, %out_size
  %or.cond.i = select i1 %cmp36.not.i, i1 true, i1 %cmp38.i
  br i1 %or.cond.i, label %cleanup67, label %lor.lhs.false39.i

lor.lhs.false39.i:                                ; preds = %if.else.i
  %12 = load i64, ptr %size.i, align 8, !noalias !12
  %cmp44.i = icmp ult i64 %7, %12
  br i1 %cmp44.i, label %cleanup67, label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %lor.lhs.false39.i, %if.then31.i
  br label %while.cond.i

while.body:                                       ; preds = %while.body.lr.ph, %cleanup64
  %add29.i123150156 = phi i64 [ %out_pos.promoted, %while.body.lr.ph ], [ %add29.i123, %cleanup64 ]
  %13 = load i8, ptr %next_finished, align 8, !range !14, !noundef !15
  %loadedv = trunc nuw i8 %13 to i1
  br i1 %loadedv, label %if.end27, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %14 = load i64, ptr %temp, align 8
  %15 = load i64, ptr %size, align 8
  %cmp3 = icmp eq i64 %14, %15
  br i1 %cmp3, label %if.then4, label %if.end27

if.then4:                                         ; preds = %land.lhs.true
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %temp, i8 0, i64 16, i1 false)
  %16 = load ptr, ptr %code, align 8
  %17 = load ptr, ptr %next, align 8
  %call16 = tail call i32 %16(ptr noundef %17, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef nonnull %buffer, ptr noundef nonnull %size, i64 noundef 4096, i32 noundef %action) #8
  switch i32 %call16, label %cleanup67 [
    i32 1, label %if.then18
    i32 0, label %lor.lhs.false
  ]

if.then18:                                        ; preds = %if.then4
  store i8 1, ptr %next_finished, align 8
  br label %if.end27

lor.lhs.false:                                    ; preds = %if.then4
  %18 = load i64, ptr %size, align 8
  %cmp23 = icmp eq i64 %18, 0
  br i1 %cmp23, label %cleanup67, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false, %if.then18, %land.lhs.true, %while.body
  %19 = load i8, ptr %this_finished, align 1, !range !14, !noundef !15
  %loadedv28 = trunc nuw i8 %19 to i1
  %20 = load i64, ptr %size, align 8
  br i1 %loadedv28, label %if.then29, label %if.end39

if.then29:                                        ; preds = %if.end27
  %cmp32.not = icmp eq i64 %20, 0
  br i1 %cmp32.not, label %if.end34, label %cleanup67

if.end34:                                         ; preds = %if.then29
  %21 = load i8, ptr %next_finished, align 8, !range !14, !noundef !15
  %loadedv36 = zext nneg i8 %21 to i32
  br label %cleanup67

if.end39:                                         ; preds = %if.end27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  br label %while.cond.i112

while.cond.i112:                                  ; preds = %while.cond.i112.backedge, %if.end39
  %22 = phi i64 [ %add29.i123150156, %if.end39 ], [ %add29.i123, %while.cond.i112.backedge ]
  %23 = load i64, ptr %pos.i105, align 8, !noalias !19
  %24 = load i64, ptr %size.i106, align 8, !noalias !19
  %cmp.i113 = icmp eq i64 %23, %24
  br i1 %cmp.i113, label %if.then.i138, label %if.end.i114

if.then.i138:                                     ; preds = %while.cond.i112
  store i64 0, ptr %pos.i105, align 8, !noalias !19
  br label %if.end.i114

if.end.i114:                                      ; preds = %if.then.i138, %while.cond.i112
  %25 = phi i64 [ 0, %if.then.i138 ], [ %23, %while.cond.i112 ]
  %sub.i115 = sub i64 %out_size, %22
  %sub12.i116 = sub i64 %24, %25
  %sub.sub12.i117 = tail call i64 @llvm.umin.i64(i64 %sub.i115, i64 %sub12.i116)
  %add.i118 = add i64 %sub.sub12.i117, %25
  store i64 %add.i118, ptr %limit.i107, align 8, !noalias !19
  %26 = load ptr, ptr %code.i109, align 8, !noalias !19
  %27 = load ptr, ptr %lz.i108, align 8, !noalias !19
  %call.i119 = tail call i32 %26(ptr noundef %27, ptr noundef nonnull %pcoder, ptr noundef nonnull %buffer, ptr noundef nonnull %temp, i64 noundef %20) #8, !noalias !23
  %28 = load i64, ptr %pos.i105, align 8, !noalias !19
  %sub26.i120 = sub i64 %28, %25
  %add.ptr.i121 = getelementptr inbounds i8, ptr %out, i64 %22
  %29 = load ptr, ptr %pcoder, align 8, !noalias !19
  %add.ptr28.i122 = getelementptr inbounds i8, ptr %29, i64 %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i121, ptr align 1 %add.ptr28.i122, i64 %sub26.i120, i1 false), !noalias !16
  %add29.i123 = add i64 %sub26.i120, %22
  store i64 %add29.i123, ptr %out_pos, align 8, !alias.scope !16, !noalias !24
  %30 = load i8, ptr %need_reset.i111, align 8, !range !14, !noalias !19, !noundef !15
  %loadedv.i124 = trunc nuw i8 %30 to i1
  br i1 %loadedv.i124, label %if.then31.i133, label %if.else.i125

if.then31.i133:                                   ; preds = %if.end.i114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pos.i105, i8 0, i64 16, i1 false), !noalias !19
  %31 = load i64, ptr %size.i106, align 8, !noalias !19
  %32 = getelementptr i8, ptr %29, i64 %31
  %arrayidx.i.i134 = getelementptr i8, ptr %32, i64 -1
  store i8 0, ptr %arrayidx.i.i134, align 1, !noalias !23
  store i8 0, ptr %need_reset.i111, align 8, !noalias !19
  %cmp32.not.i135 = icmp ne i32 %call.i119, 0
  %cmp33.i136 = icmp eq i64 %add29.i123, %out_size
  %or.cond86.i137 = select i1 %cmp32.not.i135, i1 true, i1 %cmp33.i136
  br i1 %or.cond86.i137, label %decode_buffer.exit139, label %while.cond.i112.backedge

if.else.i125:                                     ; preds = %if.end.i114
  %cmp36.not.i126 = icmp ne i32 %call.i119, 0
  %cmp38.i127 = icmp eq i64 %add29.i123, %out_size
  %or.cond.i128 = select i1 %cmp36.not.i126, i1 true, i1 %cmp38.i127
  br i1 %or.cond.i128, label %decode_buffer.exit139, label %lor.lhs.false39.i129

lor.lhs.false39.i129:                             ; preds = %if.else.i125
  %33 = load i64, ptr %size.i106, align 8, !noalias !19
  %cmp44.i130 = icmp ult i64 %28, %33
  br i1 %cmp44.i130, label %if.else55, label %while.cond.i112.backedge

while.cond.i112.backedge:                         ; preds = %lor.lhs.false39.i129, %if.then31.i133
  br label %while.cond.i112

decode_buffer.exit139:                            ; preds = %if.then31.i133, %if.else.i125
  switch i32 %call.i119, label %cleanup67 [
    i32 1, label %if.then50
    i32 0, label %if.else55
  ]

if.then50:                                        ; preds = %decode_buffer.exit139
  store i8 1, ptr %this_finished, align 1
  br label %cleanup64

if.else55:                                        ; preds = %lor.lhs.false39.i129, %decode_buffer.exit139
  %34 = load i8, ptr %next_finished, align 8, !range !14, !noundef !15
  %loadedv57 = trunc nuw i8 %34 to i1
  %cmp59 = icmp ult i64 %add29.i123, %out_size
  %or.cond = select i1 %loadedv57, i1 %cmp59, i1 false
  br i1 %or.cond, label %cleanup67, label %cleanup64

cleanup64:                                        ; preds = %if.then50, %if.else55
  %cmp1 = icmp ult i64 %add29.i123, %out_size
  br i1 %cmp1, label %while.body, label %cleanup67

cleanup67:                                        ; preds = %cleanup64, %if.then4, %lor.lhs.false, %decode_buffer.exit139, %if.else55, %lor.lhs.false39.i, %if.else.i, %if.then31.i, %while.cond.preheader, %if.end34, %if.then29
  %retval.4 = phi i32 [ 9, %if.then29 ], [ %loadedv36, %if.end34 ], [ 0, %while.cond.preheader ], [ %call.i, %if.else.i ], [ 0, %lor.lhs.false39.i ], [ %call.i, %if.then31.i ], [ 0, %cleanup64 ], [ %call16, %if.then4 ], [ 0, %lor.lhs.false ], [ %call.i119, %decode_buffer.exit139 ], [ 9, %if.else55 ]
  ret i32 %retval.4
}

; Function Attrs: nounwind uwtable
define internal void @lz_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  %next = getelementptr inbounds i8, ptr %pcoder, i64 88
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #8
  %0 = load ptr, ptr %pcoder, align 8
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #8
  %lz = getelementptr inbounds i8, ptr %pcoder, i64 48
  %end = getelementptr inbounds i8, ptr %pcoder, i64 80
  %1 = load ptr, ptr %end, align 8
  %cmp.not = icmp eq ptr %1, null
  %2 = load ptr, ptr %lz, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void %1(ptr noundef %2, ptr noundef %allocator) #8
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @lzma_free(ptr noundef %2, ptr noundef %allocator) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @lzma_free(ptr noundef nonnull %pcoder, ptr noundef %allocator) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @lzma_lz_decoder_memusage(i64 noundef %dictionary_size) local_unnamed_addr #5 {
entry:
  %add = add i64 %dictionary_size, 4272
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define dso_local void @lzma_lz_decoder_uncompressed(ptr nocapture noundef readonly %pcoder, i64 noundef %uncompressed_size) local_unnamed_addr #0 {
entry:
  %lz = getelementptr inbounds i8, ptr %pcoder, i64 48
  %set_uncompressed = getelementptr inbounds i8, ptr %pcoder, i64 72
  %0 = load ptr, ptr %set_uncompressed, align 8
  %1 = load ptr, ptr %lz, align 8
  tail call void %0(ptr noundef %1, i64 noundef %uncompressed_size) #8
  ret void
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"decode_buffer: %out_pos"}
!7 = distinct !{!7, !"decode_buffer"}
!8 = !{!9, !10, !11}
!9 = distinct !{!9, !7, !"decode_buffer: %in"}
!10 = distinct !{!10, !7, !"decode_buffer: %in_pos"}
!11 = distinct !{!11, !7, !"decode_buffer: %out"}
!12 = !{!9, !10, !11, !6}
!13 = !{!11, !6}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!17}
!17 = distinct !{!17, !18, !"decode_buffer: %out_pos"}
!18 = distinct !{!18, !"decode_buffer"}
!19 = !{!20, !21, !22, !17}
!20 = distinct !{!20, !18, !"decode_buffer: %in"}
!21 = distinct !{!21, !18, !"decode_buffer: %in_pos"}
!22 = distinct !{!22, !18, !"decode_buffer: %out"}
!23 = !{!22, !17}
!24 = !{!20, !21, !22}
