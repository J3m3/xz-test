; ModuleID = 'xz/file_io.c'
source_filename = "xz/file_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_pair = type { ptr, ptr, i32, i32, i8, i8, i64 }

@io_open_src.pair = internal global %struct.file_pair zeroinitializer, align 8, !dbg !0
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [59 x i8] c"%s: Seeking failed when trying to create a sparse file: %s\00", align 1, !dbg !46
@user_abort = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: Read error: %s\00", align 1, !dbg !51
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: Error seeking the file: %s\00", align 1, !dbg !56
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: Unexpected end of file\00", align 1, !dbg !61
@opt_stdout = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !66
@.str.5 = private unnamed_addr constant [19 x i8] c"(benchmark output)\00", align 1, !dbg !71
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: Closing the file failed: %s\00", align 1, !dbg !73
@.str.7 = private unnamed_addr constant [20 x i8] c"%s: Write error: %s\00", align 1, !dbg !78

; Function Attrs: nounwind uwtable
define dso_local void @io_init() local_unnamed_addr #0 !dbg !95 {
entry:
  tail call void @tuklib_open_stdxxx(i32 noundef 1) #7, !dbg !98
  ret void, !dbg !99
}

declare !dbg !100 void @tuklib_open_stdxxx(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @io_no_sparse() local_unnamed_addr #2 !dbg !104 {
entry:
  ret void, !dbg !105
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @io_open_src(ptr noundef %src_name) local_unnamed_addr #0 !dbg !2 {
entry:
    #dbg_value(ptr %src_name, !84, !DIExpression(), !106)
  %call = tail call zeroext i1 @is_empty_filename(ptr noundef %src_name) #7, !dbg !107
  br i1 %call, label %return, label %if.end, !dbg !109

if.end:                                           ; preds = %entry
  store ptr %src_name, ptr @io_open_src.pair, align 8, !dbg !110
  store ptr null, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 8), align 8, !dbg !110
  store i32 -1, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 16), align 8, !dbg !110
  store i32 -1, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 20), align 4, !dbg !110
  store i8 0, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 24), align 8, !dbg !110
  store i8 0, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 25), align 1, !dbg !110
  store i64 0, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 32), align 8, !dbg !110
  tail call void @signals_block() #7, !dbg !111
    #dbg_value(ptr @io_open_src.pair, !112, !DIExpression(), !119)
  %0 = load i8, ptr @opt_stdout, align 1, !dbg !121, !range !122, !noundef !123
  %loadedv.i = trunc nuw i8 %0 to i1, !dbg !121
    #dbg_value(i1 %loadedv.i, !117, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !119)
    #dbg_value(i32 256, !118, !DIExpression(), !119)
  br i1 %loadedv.i, label %if.then.i, label %do.body.i.preheader, !dbg !124

if.then.i:                                        ; preds = %if.end
  tail call void @signals_unblock() #7, !dbg !125
  br label %do.body.i.preheader, !dbg !125

do.body.i.preheader:                              ; preds = %if.then.i, %if.end
  br label %do.body.i, !dbg !127

do.body.i:                                        ; preds = %do.body.i.preheader, %land.lhs.true.i
  %1 = load ptr, ptr @spec_fd, align 8, !dbg !128
  %2 = load ptr, ptr @io_open_src.pair, align 8, !dbg !128
  %call.i = tail call i32 @spec_mem_open(ptr noundef %1, i32 noundef 3, ptr noundef %2, i32 noundef 256) #7, !dbg !128
  store i32 %call.i, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 16), align 8, !dbg !130
  %cmp.i = icmp eq i32 %call.i, -1, !dbg !131
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end.i, !dbg !132

land.lhs.true.i:                                  ; preds = %do.body.i
  %call3.i = tail call ptr @__errno_location() #8, !dbg !133
  %3 = load i32, ptr %call3.i, align 4, !dbg !133
  %cmp4.i = icmp eq i32 %3, 4, !dbg !134
  %4 = load i32, ptr @user_abort, align 4
  %tobool.not.i = icmp eq i32 %4, 0
  %or.cond.i = select i1 %cmp4.i, i1 %tobool.not.i, i1 false, !dbg !135
  br i1 %or.cond.i, label %do.body.i, label %do.end.i, !dbg !135, !llvm.loop !136

do.end.i:                                         ; preds = %land.lhs.true.i, %do.body.i
  br i1 %loadedv.i, label %if.then7.i, label %if.end8.i, !dbg !138

if.then7.i:                                       ; preds = %do.end.i
  tail call void @signals_block() #7, !dbg !139
  %.pre.i = load i32, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 16), align 8, !dbg !141
  br label %if.end8.i, !dbg !139

if.end8.i:                                        ; preds = %if.then7.i, %do.end.i
  %5 = phi i32 [ %.pre.i, %if.then7.i ], [ %call.i, %do.end.i ], !dbg !141
  %cmp10.i = icmp eq i32 %5, -1, !dbg !143
  br i1 %cmp10.i, label %if.then11.i, label %io_open_src_real.exit, !dbg !144

if.then11.i:                                      ; preds = %if.end8.i
  %call12.i = tail call ptr @__errno_location() #8, !dbg !145
  %6 = load i32, ptr %call12.i, align 4, !dbg !145
  %cmp13.i = icmp eq i32 %6, 4, !dbg !148
  br i1 %cmp13.i, label %io_open_src_real.exit, label %if.end15.i, !dbg !149

if.end15.i:                                       ; preds = %if.then11.i
  %7 = load ptr, ptr @io_open_src.pair, align 8, !dbg !150
  %call18.i = tail call ptr @strerror(i32 noundef %6) #7, !dbg !151
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.4, ptr noundef %7, ptr noundef %call18.i) #7, !dbg !152
  br label %io_open_src_real.exit, !dbg !153

io_open_src_real.exit:                            ; preds = %if.end8.i, %if.then11.i, %if.end15.i
  %cond = phi ptr [ @io_open_src.pair, %if.end8.i ], [ null, %if.then11.i ], [ null, %if.end15.i ], !dbg !154
    #dbg_value(i1 %cmp10.i, !85, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !106)
  tail call void @signals_unblock() #7, !dbg !154
  br label %return

return:                                           ; preds = %entry, %io_open_src_real.exit
  %retval.0 = phi ptr [ %cond, %io_open_src_real.exit ], [ null, %entry ], !dbg !106
  ret ptr %retval.0, !dbg !155
}

declare !dbg !156 zeroext i1 @is_empty_filename(ptr noundef) local_unnamed_addr #1

declare !dbg !160 void @signals_block() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !162 void @signals_unblock() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @io_open_dest(ptr nocapture noundef %pair) local_unnamed_addr #0 !dbg !163 {
entry:
    #dbg_value(ptr %pair, !165, !DIExpression(), !167)
  tail call void @signals_block() #7, !dbg !168
    #dbg_value(ptr %pair, !169, !DIExpression(), !174)
  %dest_name.i = getelementptr inbounds i8, ptr %pair, i64 8, !dbg !176
  store ptr @.str.5, ptr %dest_name.i, align 8, !dbg !177
    #dbg_value(i32 0, !172, !DIExpression(), !174)
  %0 = load ptr, ptr @spec_fd, align 8, !dbg !178
  %call.i = tail call i32 @spec_mem_open(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 0) #7, !dbg !178
  %dest_fd.i = getelementptr inbounds i8, ptr %pair, i64 20, !dbg !179
  store i32 %call.i, ptr %dest_fd.i, align 4, !dbg !180
  %cmp4.i = icmp eq i32 %call.i, -1, !dbg !181
  br i1 %cmp4.i, label %if.then5.i, label %io_open_dest_real.exit, !dbg !183

if.then5.i:                                       ; preds = %entry
  %1 = load ptr, ptr %dest_name.i, align 8, !dbg !184
  %call7.i = tail call ptr @__errno_location() #8, !dbg !186
  %2 = load i32, ptr %call7.i, align 4, !dbg !186
  %call8.i = tail call ptr @strerror(i32 noundef %2) #7, !dbg !187
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %call8.i) #7, !dbg !188
  %3 = load ptr, ptr %dest_name.i, align 8, !dbg !189
  tail call void @free(ptr noundef %3) #7, !dbg !190
  br label %io_open_dest_real.exit, !dbg !191

io_open_dest_real.exit:                           ; preds = %entry, %if.then5.i
    #dbg_value(i1 %cmp4.i, !166, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !167)
  tail call void @signals_unblock() #7, !dbg !192
  ret i1 %cmp4.i, !dbg !193
}

; Function Attrs: nounwind uwtable
define dso_local void @io_close(ptr nocapture noundef readonly %pair, i1 noundef zeroext %success) local_unnamed_addr #0 !dbg !194 {
entry:
  %zero = alloca [1 x i8], align 1, !DIAssignID !212
    #dbg_assign(i1 undef, !200, !DIExpression(), !212, ptr %zero, !DIExpression(), !213)
    #dbg_value(ptr %pair, !198, !DIExpression(), !214)
    #dbg_value(i1 %success, !199, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !214)
  br i1 %success, label %land.lhs.true, label %if.end11, !dbg !215

land.lhs.true:                                    ; preds = %entry
  %dest_try_sparse = getelementptr inbounds i8, ptr %pair, i64 25, !dbg !216
  %0 = load i8, ptr %dest_try_sparse, align 1, !dbg !216, !range !122, !noundef !123
  %loadedv1 = trunc nuw i8 %0 to i1, !dbg !216
  br i1 %loadedv1, label %land.lhs.true2, label %if.end11, !dbg !217

land.lhs.true2:                                   ; preds = %land.lhs.true
  %dest_pending_sparse = getelementptr inbounds i8, ptr %pair, i64 32, !dbg !218
  %1 = load i64, ptr %dest_pending_sparse, align 8, !dbg !218
  %cmp = icmp sgt i64 %1, 0, !dbg !219
  br i1 %cmp, label %if.then, label %if.end11, !dbg !220

if.then:                                          ; preds = %land.lhs.true2
  %2 = load ptr, ptr @spec_fd, align 8, !dbg !221
  %dest_fd = getelementptr inbounds i8, ptr %pair, i64 20, !dbg !221
  %3 = load i32, ptr %dest_fd, align 4, !dbg !221
  %sub = add nsw i64 %1, -1, !dbg !221
  %call = tail call i64 @spec_mem_lseek(ptr noundef %2, i32 noundef 3, i32 noundef %3, i64 noundef %sub, i32 noundef 1) #7, !dbg !221
  %cmp4 = icmp eq i64 %call, -1, !dbg !222
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !223

if.then5:                                         ; preds = %if.then
  %dest_name = getelementptr inbounds i8, ptr %pair, i64 8, !dbg !224
  %4 = load ptr, ptr %dest_name, align 8, !dbg !224
  %call6 = tail call ptr @__errno_location() #8, !dbg !226
  %5 = load i32, ptr %call6, align 4, !dbg !226
  %call7 = tail call ptr @strerror(i32 noundef %5) #7, !dbg !227
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str, ptr noundef %4, ptr noundef %call7) #7, !dbg !228
    #dbg_value(i8 0, !199, !DIExpression(), !214)
  br label %if.end11, !dbg !229

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zero) #7, !dbg !230
  store i8 0, ptr %zero, align 1, !dbg !231, !DIAssignID !232
    #dbg_assign(i8 0, !200, !DIExpression(), !232, ptr %zero, !DIExpression(), !213)
    #dbg_value(ptr %pair, !233, !DIExpression(), !247)
    #dbg_value(ptr %zero, !239, !DIExpression(), !247)
    #dbg_value(i64 1, !240, !DIExpression(), !247)
  br label %while.body.i, !dbg !250

while.body.i:                                     ; preds = %if.else, %cleanup.i
  %size.addr.0.i36 = phi i64 [ 1, %if.else ], [ %size.addr.1.i, %cleanup.i ]
  %buf.addr.0.i35 = phi ptr [ %zero, %if.else ], [ %buf.addr.1.i, %cleanup.i ]
    #dbg_value(i64 %size.addr.0.i36, !240, !DIExpression(), !247)
    #dbg_value(ptr %buf.addr.0.i35, !239, !DIExpression(), !247)
  %6 = load ptr, ptr @spec_fd, align 8, !dbg !251
  %7 = load i32, ptr %dest_fd, align 4, !dbg !251
  %call.i = call i64 @spec_mem_write(ptr noundef %6, i32 noundef 3, i32 noundef %7, ptr noundef %buf.addr.0.i35, i64 noundef %size.addr.0.i36) #7, !dbg !251
    #dbg_value(i64 %call.i, !241, !DIExpression(), !252)
  %cmp1.i = icmp eq i64 %call.i, -1, !dbg !253
  br i1 %cmp1.i, label %if.then.i, label %if.end13.i, !dbg !255

if.then.i:                                        ; preds = %while.body.i
  %call2.i = tail call ptr @__errno_location() #8, !dbg !256
  %8 = load i32, ptr %call2.i, align 4, !dbg !256
  switch i32 %8, label %if.then9.i [
    i32 4, label %if.then4.i
    i32 32, label %io_write_buf.exit
  ], !dbg !259

if.then4.i:                                       ; preds = %if.then.i
  %9 = load i32, ptr @user_abort, align 4, !dbg !260
  %tobool.not.i = icmp eq i32 %9, 0, !dbg !260
  br i1 %tobool.not.i, label %cleanup.i, label %io_write_buf.exit, !dbg !263, !llvm.loop !264

if.then9.i:                                       ; preds = %if.then.i
  %dest_name.i = getelementptr inbounds i8, ptr %pair, i64 8, !dbg !266
  %10 = load ptr, ptr %dest_name.i, align 8, !dbg !266
  %call11.i = call ptr @strerror(i32 noundef %8) #7, !dbg !268
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.7, ptr noundef %10, ptr noundef %call11.i) #7, !dbg !269
  br label %io_write_buf.exit, !dbg !269

if.end13.i:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %buf.addr.0.i35, i64 %call.i, !dbg !270
    #dbg_value(ptr %add.ptr.i, !239, !DIExpression(), !247)
  %sub.i = sub i64 %size.addr.0.i36, %call.i, !dbg !271
    #dbg_value(i64 %sub.i, !240, !DIExpression(), !247)
  br label %cleanup.i, !dbg !265

cleanup.i:                                        ; preds = %if.end13.i, %if.then4.i
  %buf.addr.1.i = phi ptr [ %add.ptr.i, %if.end13.i ], [ %buf.addr.0.i35, %if.then4.i ]
  %size.addr.1.i = phi i64 [ %sub.i, %if.end13.i ], [ %size.addr.0.i36, %if.then4.i ]
    #dbg_value(i64 %size.addr.1.i, !240, !DIExpression(), !247)
    #dbg_value(ptr %buf.addr.1.i, !239, !DIExpression(), !247)
  %cmp.not.not.not.i.not = icmp eq i64 %size.addr.1.i, 0, !dbg !272
  br i1 %cmp.not.not.not.i.not, label %io_write_buf.exit, label %while.body.i, !dbg !250

io_write_buf.exit:                                ; preds = %cleanup.i, %if.then.i, %if.then4.i, %if.then9.i
    #dbg_value(i8 poison, !199, !DIExpression(), !214)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zero) #7, !dbg !273
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %io_write_buf.exit, %land.lhs.true2, %land.lhs.true, %entry
    #dbg_value(i8 poison, !199, !DIExpression(), !214)
  call void @signals_block() #7, !dbg !274
    #dbg_value(ptr %pair, !275, !DIExpression(), !281)
    #dbg_value(i8 poison, !280, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !281)
  %dest_fd.i27 = getelementptr inbounds i8, ptr %pair, i64 20, !dbg !284
  %11 = load i32, ptr %dest_fd.i27, align 4, !dbg !284
  switch i32 %11, label %if.end.i [
    i32 -1, label %io_close_dest.exit.thread
    i32 1, label %io_close_dest.exit.thread
  ], !dbg !286

if.end.i:                                         ; preds = %if.end11
  %12 = load ptr, ptr @spec_fd, align 8, !dbg !287
  %call.i28 = call i32 @spec_mem_close(ptr noundef %12, i32 noundef 3, i32 noundef %11) #7, !dbg !287
  %tobool.not.i29.not = icmp eq i32 %call.i28, 0, !dbg !287
  %dest_name9.i = getelementptr inbounds i8, ptr %pair, i64 8, !dbg !281
  %13 = load ptr, ptr %dest_name9.i, align 8, !dbg !281
  br i1 %tobool.not.i29.not, label %io_close_dest.exit.thread.sink.split, label %14, !dbg !289

14:                                               ; preds = %if.end.i
  %call5.i = tail call ptr @__errno_location() #8, !dbg !290
  %15 = load i32, ptr %call5.i, align 4, !dbg !290
  %call6.i = call ptr @strerror(i32 noundef %15) #7, !dbg !292
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.6, ptr noundef %13, ptr noundef %call6.i) #7, !dbg !293
  %16 = load ptr, ptr %dest_name9.i, align 8, !dbg !294
  br label %io_close_dest.exit.thread.sink.split, !dbg !295

io_close_dest.exit.thread.sink.split:             ; preds = %if.end.i, %14
  %.sink = phi ptr [ %16, %14 ], [ %13, %if.end.i ]
  call void @free(ptr noundef %.sink) #7, !dbg !281
  br label %io_close_dest.exit.thread, !dbg !296

io_close_dest.exit.thread:                        ; preds = %io_close_dest.exit.thread.sink.split, %if.end11, %if.end11
    #dbg_value(i8 poison, !199, !DIExpression(), !214)
  %17 = getelementptr i8, ptr %pair, i64 16, !dbg !296
  %pair.val = load i32, ptr %17, align 8, !dbg !296
    #dbg_value(ptr undef, !297, !DIExpression(), !301)
    #dbg_value(i8 poison, !300, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !301)
  %18 = load ptr, ptr @spec_fd, align 8, !dbg !303
  %call.i31 = call i32 @spec_mem_close(ptr noundef %18, i32 noundef 3, i32 noundef %pair.val) #7, !dbg !303
  call void @signals_unblock() #7, !dbg !304
  ret void, !dbg !305
}

declare !dbg !306 i64 @spec_mem_lseek(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !322 void @message_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !326 ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !330 ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @io_read(ptr nocapture noundef %pair, ptr noundef %buf_union, i64 noundef %size) local_unnamed_addr #0 !dbg !335 {
entry:
    #dbg_value(ptr %pair, !359, !DIExpression(), !367)
    #dbg_value(ptr %buf_union, !360, !DIExpression(), !367)
    #dbg_value(i64 %size, !361, !DIExpression(), !367)
    #dbg_value(ptr %buf_union, !362, !DIExpression(), !367)
    #dbg_value(i64 %size, !364, !DIExpression(), !367)
  %cmp.not40 = icmp eq i64 %size, 0, !dbg !368
  br i1 %cmp.not40, label %while.end, label %while.body.lr.ph, !dbg !369

while.body.lr.ph:                                 ; preds = %entry
  %src_fd = getelementptr inbounds i8, ptr %pair, i64 16
  br label %while.body, !dbg !369

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %left.042 = phi i64 [ %size, %while.body.lr.ph ], [ %left.1, %cleanup ]
  %buf.041 = phi ptr [ %buf_union, %while.body.lr.ph ], [ %buf.1, %cleanup ]
    #dbg_value(i64 %left.042, !364, !DIExpression(), !367)
    #dbg_value(ptr %buf.041, !362, !DIExpression(), !367)
  %0 = load ptr, ptr @spec_fd, align 8, !dbg !370
  %1 = load i32, ptr %src_fd, align 8, !dbg !370
  %call = tail call i64 @spec_mem_read(ptr noundef %0, i32 noundef 3, i32 noundef %1, ptr noundef %buf.041, i64 noundef %left.042) #7, !dbg !370
    #dbg_value(i64 %call, !365, !DIExpression(), !371)
  switch i64 %call, label %if.end13 [
    i64 0, label %cleanup.thread31
    i64 -1, label %if.then3
  ], !dbg !372

cleanup.thread31:                                 ; preds = %while.body
  %src_eof = getelementptr inbounds i8, ptr %pair, i64 24, !dbg !373
  store i8 1, ptr %src_eof, align 8, !dbg !376
    #dbg_value(i64 %left.042, !364, !DIExpression(), !367)
    #dbg_value(ptr poison, !362, !DIExpression(), !367)
  br label %while.end

if.then3:                                         ; preds = %while.body
  %call4 = tail call ptr @__errno_location() #8, !dbg !377
  %2 = load i32, ptr %call4, align 4, !dbg !377
  %cmp5 = icmp eq i32 %2, 4, !dbg !381
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !382

if.then6:                                         ; preds = %if.then3
  %3 = load i32, ptr @user_abort, align 4, !dbg !383
  %tobool.not = icmp eq i32 %3, 0, !dbg !383
  br i1 %tobool.not, label %cleanup, label %cleanup15, !dbg !386, !llvm.loop !387

if.end9:                                          ; preds = %if.then3
  %4 = load ptr, ptr %pair, align 8, !dbg !389
  %call11 = tail call ptr @strerror(i32 noundef %2) #7, !dbg !390
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.1, ptr noundef %4, ptr noundef %call11) #7, !dbg !391
  %src_eof12 = getelementptr inbounds i8, ptr %pair, i64 24, !dbg !392
  store i8 1, ptr %src_eof12, align 8, !dbg !393
  br label %cleanup15, !dbg !394

if.end13:                                         ; preds = %while.body
  %add.ptr = getelementptr inbounds i8, ptr %buf.041, i64 %call, !dbg !395
    #dbg_value(ptr %add.ptr, !362, !DIExpression(), !367)
  %sub = sub i64 %left.042, %call, !dbg !396
    #dbg_value(i64 %sub, !364, !DIExpression(), !367)
  br label %cleanup, !dbg !388

cleanup:                                          ; preds = %if.then6, %if.end13
  %buf.1 = phi ptr [ %add.ptr, %if.end13 ], [ %buf.041, %if.then6 ], !dbg !367
  %left.1 = phi i64 [ %sub, %if.end13 ], [ %left.042, %if.then6 ], !dbg !367
    #dbg_value(i64 %left.1, !364, !DIExpression(), !367)
    #dbg_value(ptr %buf.1, !362, !DIExpression(), !367)
  %cmp.not = icmp eq i64 %left.1, 0, !dbg !368
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !369

while.end:                                        ; preds = %cleanup, %entry, %cleanup.thread31
  %left.038 = phi i64 [ %left.042, %cleanup.thread31 ], [ 0, %entry ], [ 0, %cleanup ]
    #dbg_value(i64 %left.038, !364, !DIExpression(), !367)
  %sub14 = sub i64 %size, %left.038, !dbg !397
  br label %cleanup15, !dbg !398

cleanup15:                                        ; preds = %if.then6, %if.end9, %while.end
  %retval.2 = phi i64 [ %sub14, %while.end ], [ -1, %if.end9 ], [ -1, %if.then6 ]
  ret i64 %retval.2, !dbg !399
}

declare !dbg !400 i64 @spec_mem_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @io_pread(ptr nocapture noundef %pair, ptr noundef %buf, i64 noundef %size, i64 noundef %pos) local_unnamed_addr #0 !dbg !403 {
entry:
    #dbg_value(ptr %pair, !407, !DIExpression(), !413)
    #dbg_value(ptr %buf, !408, !DIExpression(), !413)
    #dbg_value(i64 %size, !409, !DIExpression(), !413)
    #dbg_value(i64 %pos, !410, !DIExpression(), !413)
  %0 = load ptr, ptr @spec_fd, align 8, !dbg !414
  %src_fd = getelementptr inbounds i8, ptr %pair, i64 16, !dbg !414
  %1 = load i32, ptr %src_fd, align 8, !dbg !414
  %call = tail call i64 @spec_mem_lseek(ptr noundef %0, i32 noundef 3, i32 noundef %1, i64 noundef %pos, i32 noundef 0) #7, !dbg !414
  %cmp.not = icmp eq i64 %call, %pos, !dbg !416
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !417

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pair, align 8, !dbg !418
  %call1 = tail call ptr @__errno_location() #8, !dbg !420
  %3 = load i32, ptr %call1, align 4, !dbg !420
  %call2 = tail call ptr @strerror(i32 noundef %3) #7, !dbg !421
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.2, ptr noundef %2, ptr noundef %call2) #7, !dbg !422
  br label %return, !dbg !423

if.end:                                           ; preds = %entry
    #dbg_value(ptr %pair, !359, !DIExpression(), !424)
    #dbg_value(ptr %buf, !360, !DIExpression(), !424)
    #dbg_value(i64 %size, !361, !DIExpression(), !424)
    #dbg_value(ptr %buf, !362, !DIExpression(), !424)
    #dbg_value(i64 %size, !364, !DIExpression(), !424)
  %cmp.not40.i = icmp eq i64 %size, 0, !dbg !426
  br i1 %cmp.not40.i, label %io_read.exit, label %while.body.i, !dbg !427

while.body.i:                                     ; preds = %if.end, %cleanup.i
  %left.042.i = phi i64 [ %left.1.i, %cleanup.i ], [ %size, %if.end ]
  %buf.041.i = phi ptr [ %buf.1.i, %cleanup.i ], [ %buf, %if.end ]
    #dbg_value(i64 %left.042.i, !364, !DIExpression(), !424)
    #dbg_value(ptr %buf.041.i, !362, !DIExpression(), !424)
  %4 = load ptr, ptr @spec_fd, align 8, !dbg !428
  %5 = load i32, ptr %src_fd, align 8, !dbg !428
  %call.i = tail call i64 @spec_mem_read(ptr noundef %4, i32 noundef 3, i32 noundef %5, ptr noundef %buf.041.i, i64 noundef %left.042.i) #7, !dbg !428
    #dbg_value(i64 %call.i, !365, !DIExpression(), !429)
  switch i64 %call.i, label %if.end13.i [
    i64 0, label %cleanup.thread31.i
    i64 -1, label %if.then3.i
  ], !dbg !430

cleanup.thread31.i:                               ; preds = %while.body.i
  %src_eof.i = getelementptr inbounds i8, ptr %pair, i64 24, !dbg !431
  store i8 1, ptr %src_eof.i, align 8, !dbg !432
    #dbg_value(i64 %left.042.i, !364, !DIExpression(), !424)
    #dbg_value(ptr poison, !362, !DIExpression(), !424)
  br label %io_read.exit

if.then3.i:                                       ; preds = %while.body.i
  %call4.i = tail call ptr @__errno_location() #8, !dbg !433
  %6 = load i32, ptr %call4.i, align 4, !dbg !433
  %cmp5.i = icmp eq i32 %6, 4, !dbg !434
  br i1 %cmp5.i, label %if.then6.i, label %if.end9.i, !dbg !435

if.then6.i:                                       ; preds = %if.then3.i
  %7 = load i32, ptr @user_abort, align 4, !dbg !436
  %tobool.not.i = icmp eq i32 %7, 0, !dbg !436
  br i1 %tobool.not.i, label %cleanup.i, label %return, !dbg !437, !llvm.loop !438

if.end9.i:                                        ; preds = %if.then3.i
  %8 = load ptr, ptr %pair, align 8, !dbg !440
  %call11.i = tail call ptr @strerror(i32 noundef %6) #7, !dbg !441
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.1, ptr noundef %8, ptr noundef %call11.i) #7, !dbg !442
  %src_eof12.i = getelementptr inbounds i8, ptr %pair, i64 24, !dbg !443
  store i8 1, ptr %src_eof12.i, align 8, !dbg !444
  br label %return, !dbg !445

if.end13.i:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %buf.041.i, i64 %call.i, !dbg !446
    #dbg_value(ptr %add.ptr.i, !362, !DIExpression(), !424)
  %sub.i = sub i64 %left.042.i, %call.i, !dbg !447
    #dbg_value(i64 %sub.i, !364, !DIExpression(), !424)
  br label %cleanup.i, !dbg !439

cleanup.i:                                        ; preds = %if.end13.i, %if.then6.i
  %buf.1.i = phi ptr [ %add.ptr.i, %if.end13.i ], [ %buf.041.i, %if.then6.i ], !dbg !424
  %left.1.i = phi i64 [ %sub.i, %if.end13.i ], [ %left.042.i, %if.then6.i ], !dbg !424
    #dbg_value(i64 %left.1.i, !364, !DIExpression(), !424)
    #dbg_value(ptr %buf.1.i, !362, !DIExpression(), !424)
  %cmp.not.i = icmp eq i64 %left.1.i, 0, !dbg !426
  br i1 %cmp.not.i, label %io_read.exit, label %while.body.i, !dbg !427

io_read.exit:                                     ; preds = %cleanup.i, %if.end, %cleanup.thread31.i
  %left.038.i = phi i64 [ %left.042.i, %cleanup.thread31.i ], [ 0, %if.end ], [ 0, %cleanup.i ]
    #dbg_value(i64 %left.038.i, !364, !DIExpression(), !424)
  %sub14.i = sub i64 %size, %left.038.i, !dbg !448
    #dbg_value(i64 %sub14.i, !411, !DIExpression(), !413)
  %cmp4 = icmp eq i64 %sub14.i, -1, !dbg !449
  br i1 %cmp4, label %return, label %if.end6, !dbg !451

if.end6:                                          ; preds = %io_read.exit
  %cmp7.not = icmp eq i64 %left.038.i, 0, !dbg !452
  br i1 %cmp7.not, label %return, label %if.then8, !dbg !454

if.then8:                                         ; preds = %if.end6
  %9 = load ptr, ptr %pair, align 8, !dbg !455
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.3, ptr noundef %9) #7, !dbg !457
  br label %return, !dbg !458

return:                                           ; preds = %if.then6.i, %if.end9.i, %if.then8, %io_read.exit, %if.end6, %if.then
  %retval.1 = phi i1 [ true, %if.then ], [ true, %if.then8 ], [ true, %io_read.exit ], [ false, %if.end6 ], [ true, %if.end9.i ], [ true, %if.then6.i ], !dbg !413
  ret i1 %retval.1, !dbg !459
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @io_write(ptr nocapture noundef %pair, ptr noundef %buf, i64 noundef %size) local_unnamed_addr #0 !dbg !460 {
entry:
    #dbg_value(ptr %pair, !466, !DIExpression(), !469)
    #dbg_value(ptr %buf, !467, !DIExpression(), !469)
    #dbg_value(i64 %size, !468, !DIExpression(), !469)
  %dest_try_sparse = getelementptr inbounds i8, ptr %pair, i64 25, !dbg !470
  %0 = load i8, ptr %dest_try_sparse, align 1, !dbg !470, !range !122, !noundef !123
  %loadedv = trunc nuw i8 %0 to i1, !dbg !470
  br i1 %loadedv, label %if.then, label %if.end19, !dbg !472

if.then:                                          ; preds = %entry
  switch i64 %size, label %if.end6 [
    i64 8192, label %for.body.i.preheader
    i64 0, label %return
  ], !dbg !473

for.body.i.preheader:                             ; preds = %if.then
    #dbg_value(i64 0, !475, !DIExpression(), !482)
  %1 = load i64, ptr %buf, align 8, !dbg !487
  %cmp1.not.i32 = icmp eq i64 %1, 0, !dbg !490
  br i1 %cmp1.not.i32, label %for.cond.i, label %if.end6, !dbg !491

for.cond.i:                                       ; preds = %for.body.i.preheader, %for.body.i.3
  %i.04.i33 = phi i64 [ %inc.i.3, %for.body.i.3 ], [ 0, %for.body.i.preheader ]
    #dbg_value(i64 %i.04.i33, !475, !DIExpression(), !482)
  %inc.i = or disjoint i64 %i.04.i33, 1, !dbg !492
    #dbg_value(i64 %inc.i, !475, !DIExpression(), !482)
    #dbg_value(i64 %inc.i, !475, !DIExpression(), !482)
  %arrayidx.i = getelementptr inbounds [1024 x i64], ptr %buf, i64 0, i64 %inc.i, !dbg !487
  %2 = load i64, ptr %arrayidx.i, align 8, !dbg !487
  %cmp1.not.i = icmp eq i64 %2, 0, !dbg !490
    #dbg_value(i64 %inc.i, !475, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !482)
  br i1 %cmp1.not.i, label %for.cond.i.1, label %is_sparse.exit, !dbg !491, !llvm.loop !493

for.cond.i.1:                                     ; preds = %for.cond.i
    #dbg_value(i64 %inc.i, !475, !DIExpression(), !482)
  %inc.i.1 = or disjoint i64 %i.04.i33, 2, !dbg !492
    #dbg_value(i64 %inc.i.1, !475, !DIExpression(), !482)
    #dbg_value(i64 %inc.i.1, !475, !DIExpression(), !482)
  %arrayidx.i.1 = getelementptr inbounds [1024 x i64], ptr %buf, i64 0, i64 %inc.i.1, !dbg !487
  %3 = load i64, ptr %arrayidx.i.1, align 8, !dbg !487
  %cmp1.not.i.1 = icmp eq i64 %3, 0, !dbg !490
    #dbg_value(i64 %inc.i.1, !475, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !482)
  br i1 %cmp1.not.i.1, label %for.cond.i.2, label %is_sparse.exit, !dbg !491, !llvm.loop !493

for.cond.i.2:                                     ; preds = %for.cond.i.1
    #dbg_value(i64 %inc.i.1, !475, !DIExpression(), !482)
  %inc.i.2 = or disjoint i64 %i.04.i33, 3, !dbg !492
    #dbg_value(i64 %inc.i.2, !475, !DIExpression(), !482)
    #dbg_value(i64 %inc.i.2, !475, !DIExpression(), !482)
  %arrayidx.i.2 = getelementptr inbounds [1024 x i64], ptr %buf, i64 0, i64 %inc.i.2, !dbg !487
  %4 = load i64, ptr %arrayidx.i.2, align 8, !dbg !487
  %cmp1.not.i.2 = icmp eq i64 %4, 0, !dbg !490
    #dbg_value(i64 %inc.i.2, !475, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !482)
  br i1 %cmp1.not.i.2, label %for.cond.i.3, label %is_sparse.exit, !dbg !491, !llvm.loop !493

for.cond.i.3:                                     ; preds = %for.cond.i.2
    #dbg_value(i64 %inc.i.2, !475, !DIExpression(), !482)
  %inc.i.3 = add nuw nsw i64 %i.04.i33, 4, !dbg !492
    #dbg_value(i64 %inc.i.3, !475, !DIExpression(), !482)
  %exitcond.i.3 = icmp eq i64 %inc.i.3, 1024, !dbg !496
  br i1 %exitcond.i.3, label %if.then2, label %for.body.i.3, !dbg !494, !llvm.loop !493

for.body.i.3:                                     ; preds = %for.cond.i.3
    #dbg_value(i64 %inc.i.3, !475, !DIExpression(), !482)
  %arrayidx.i.3 = getelementptr inbounds [1024 x i64], ptr %buf, i64 0, i64 %inc.i.3, !dbg !487
  %5 = load i64, ptr %arrayidx.i.3, align 8, !dbg !487
  %cmp1.not.i.3 = icmp eq i64 %5, 0, !dbg !490
    #dbg_value(i64 %inc.i.3, !475, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !482)
  br i1 %cmp1.not.i.3, label %for.cond.i, label %is_sparse.exit, !dbg !491, !llvm.loop !493

is_sparse.exit:                                   ; preds = %for.body.i.3, %for.cond.i.2, %for.cond.i.1, %for.cond.i
  %i.04.i33.lcssa43 = phi i64 [ %i.04.i33, %for.cond.i ], [ %inc.i, %for.cond.i.1 ], [ %inc.i.1, %for.cond.i.2 ], [ %inc.i.2, %for.body.i.3 ]
  %cmp.i.le = icmp ugt i64 %i.04.i33.lcssa43, 1022
  br i1 %cmp.i.le, label %if.then2, label %if.end6, !dbg !497

if.then2:                                         ; preds = %for.cond.i.3, %is_sparse.exit
  %dest_pending_sparse = getelementptr inbounds i8, ptr %pair, i64 32, !dbg !498
  %6 = load i64, ptr %dest_pending_sparse, align 8, !dbg !500
  %add = add i64 %6, 8192, !dbg !500
  store i64 %add, ptr %dest_pending_sparse, align 8, !dbg !500
  br label %return, !dbg !501

if.end6:                                          ; preds = %for.body.i.preheader, %if.then, %is_sparse.exit
  %dest_pending_sparse7 = getelementptr inbounds i8, ptr %pair, i64 32, !dbg !502
  %7 = load i64, ptr %dest_pending_sparse7, align 8, !dbg !502
  %cmp8 = icmp sgt i64 %7, 0, !dbg !504
  br i1 %cmp8, label %if.then9, label %if.end19, !dbg !505

if.then9:                                         ; preds = %if.end6
  %8 = load ptr, ptr @spec_fd, align 8, !dbg !506
  %dest_fd = getelementptr inbounds i8, ptr %pair, i64 20, !dbg !506
  %9 = load i32, ptr %dest_fd, align 4, !dbg !506
  %call11 = tail call i64 @spec_mem_lseek(ptr noundef %8, i32 noundef 3, i32 noundef %9, i64 noundef %7, i32 noundef 1) #7, !dbg !506
  %cmp12 = icmp eq i64 %call11, -1, !dbg !509
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !510

if.then13:                                        ; preds = %if.then9
  %dest_name = getelementptr inbounds i8, ptr %pair, i64 8, !dbg !511
  %10 = load ptr, ptr %dest_name, align 8, !dbg !511
  %call14 = tail call ptr @__errno_location() #8, !dbg !513
  %11 = load i32, ptr %call14, align 4, !dbg !513
  %call15 = tail call ptr @strerror(i32 noundef %11) #7, !dbg !514
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str, ptr noundef %10, ptr noundef %call15) #7, !dbg !515
  br label %return, !dbg !516

if.end16:                                         ; preds = %if.then9
  store i64 0, ptr %dest_pending_sparse7, align 8, !dbg !517
  br label %if.end19, !dbg !518

if.end19:                                         ; preds = %if.end6, %if.end16, %entry
    #dbg_value(ptr %pair, !233, !DIExpression(), !519)
    #dbg_value(ptr %buf, !239, !DIExpression(), !519)
    #dbg_value(i64 %size, !240, !DIExpression(), !519)
  %dest_fd.i = getelementptr inbounds i8, ptr %pair, i64 20
  %cmp.not.not.not.i.not35 = icmp eq i64 %size, 0, !dbg !521
  br i1 %cmp.not.not.not.i.not35, label %return, label %while.body.i, !dbg !522

while.body.i:                                     ; preds = %if.end19, %cleanup.i
  %size.addr.0.i37 = phi i64 [ %size.addr.1.i, %cleanup.i ], [ %size, %if.end19 ]
  %buf.addr.0.i36 = phi ptr [ %buf.addr.1.i, %cleanup.i ], [ %buf, %if.end19 ]
    #dbg_value(i64 %size.addr.0.i37, !240, !DIExpression(), !519)
    #dbg_value(ptr %buf.addr.0.i36, !239, !DIExpression(), !519)
  %12 = load ptr, ptr @spec_fd, align 8, !dbg !523
  %13 = load i32, ptr %dest_fd.i, align 4, !dbg !523
  %call.i = tail call i64 @spec_mem_write(ptr noundef %12, i32 noundef 3, i32 noundef %13, ptr noundef %buf.addr.0.i36, i64 noundef %size.addr.0.i37) #7, !dbg !523
    #dbg_value(i64 %call.i, !241, !DIExpression(), !524)
  %cmp1.i = icmp eq i64 %call.i, -1, !dbg !525
  br i1 %cmp1.i, label %if.then.i, label %if.end13.i, !dbg !526

if.then.i:                                        ; preds = %while.body.i
  %call2.i = tail call ptr @__errno_location() #8, !dbg !527
  %14 = load i32, ptr %call2.i, align 4, !dbg !527
  switch i32 %14, label %if.then9.i [
    i32 4, label %if.then4.i
    i32 32, label %return
  ], !dbg !528

if.then4.i:                                       ; preds = %if.then.i
  %15 = load i32, ptr @user_abort, align 4, !dbg !529
  %tobool.not.i = icmp eq i32 %15, 0, !dbg !529
  br i1 %tobool.not.i, label %cleanup.i, label %return, !dbg !530, !llvm.loop !531

if.then9.i:                                       ; preds = %if.then.i
  %dest_name.i = getelementptr inbounds i8, ptr %pair, i64 8, !dbg !533
  %16 = load ptr, ptr %dest_name.i, align 8, !dbg !533
  %call11.i = tail call ptr @strerror(i32 noundef %14) #7, !dbg !534
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.7, ptr noundef %16, ptr noundef %call11.i) #7, !dbg !535
  br label %return, !dbg !535

if.end13.i:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %buf.addr.0.i36, i64 %call.i, !dbg !536
    #dbg_value(ptr %add.ptr.i, !239, !DIExpression(), !519)
  %sub.i = sub i64 %size.addr.0.i37, %call.i, !dbg !537
    #dbg_value(i64 %sub.i, !240, !DIExpression(), !519)
  br label %cleanup.i, !dbg !532

cleanup.i:                                        ; preds = %if.end13.i, %if.then4.i
  %buf.addr.1.i = phi ptr [ %add.ptr.i, %if.end13.i ], [ %buf.addr.0.i36, %if.then4.i ]
  %size.addr.1.i = phi i64 [ %sub.i, %if.end13.i ], [ %size.addr.0.i37, %if.then4.i ]
    #dbg_value(i64 %size.addr.1.i, !240, !DIExpression(), !519)
    #dbg_value(ptr %buf.addr.1.i, !239, !DIExpression(), !519)
  %cmp.not.not.not.i.not = icmp eq i64 %size.addr.1.i, 0, !dbg !521
  br i1 %cmp.not.not.not.i.not, label %return, label %while.body.i, !dbg !522

return:                                           ; preds = %cleanup.i, %if.then.i, %if.then4.i, %if.end19, %if.then9.i, %if.then, %if.then13, %if.then2
  %retval.0 = phi i1 [ false, %if.then2 ], [ true, %if.then13 ], [ false, %if.then ], [ true, %if.then9.i ], [ false, %if.end19 ], [ false, %cleanup.i ], [ true, %if.then.i ], [ true, %if.then4.i ], !dbg !469
  ret i1 %retval.0, !dbg !538
}

declare !dbg !539 i32 @spec_mem_open(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !542 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

declare !dbg !546 i32 @spec_mem_close(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !549 i64 @spec_mem_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!29}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pair", scope: !2, file: !3, line: 535, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "io_open_src", scope: !3, file: !3, line: 528, type: !4, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !83)
!3 = !DIFile(filename: "xz/file_io.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "26a91f1c86306ef56fcbfd09c6826594")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !12}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "file_pair", file: !8, line: 66, baseType: !9)
!8 = !DIFile(filename: "xz/file_io.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "4b45406630bbddcbf05b6d0a795f1a7c")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 31, size: 320, elements: !10)
!10 = !{!11, !15, !17, !19, !20, !22, !23}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "src_name", scope: !9, file: !8, line: 34, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "dest_name", scope: !9, file: !8, line: 38, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "src_fd", scope: !9, file: !8, line: 41, baseType: !18, size: 32, offset: 128)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "dest_fd", scope: !9, file: !8, line: 44, baseType: !18, size: 32, offset: 160)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "src_eof", scope: !9, file: !8, line: 47, baseType: !21, size: 8, offset: 192)
!21 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "dest_try_sparse", scope: !9, file: !8, line: 51, baseType: !21, size: 8, offset: 200)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "dest_pending_sparse", scope: !9, file: !8, line: 56, baseType: !24, size: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !25, line: 56, baseType: !26)
!25 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !27, line: 152, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!28 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!29 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !38, globals: !45, splitDebugInlining: false, nameTableKind: None)
!30 = !{!31}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "exit_status_type", file: !32, line: 14, baseType: !33, size: 32, elements: !34)
!32 = !DIFile(filename: "xz/main.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "f54f82fff34a105635379e91892f4bd0")
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "E_SUCCESS", value: 0)
!36 = !DIEnumerator(name: "E_ERROR", value: 1)
!37 = !DIEnumerator(name: "E_WARNING", value: 2)
!38 = !{!39, !16, !42, !43}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 18, baseType: !41)
!40 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!41 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !{!0, !46, !51, !56, !61, !66, !71, !73, !78}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 803, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 472, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 59)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !3, line: 864, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 152, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 19)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !3, line: 887, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 248, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 31)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !3, line: 897, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 216, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 27)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !3, line: 440, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 56, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 7)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !3, line: 608, type: !53, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !3, line: 763, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 32)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !3, line: 947, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 20)
!83 = !{!84, !85}
!84 = !DILocalVariable(name: "src_name", arg: 1, scope: !2, file: !3, line: 528, type: !12)
!85 = !DILocalVariable(name: "error", scope: !2, file: !3, line: 550, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!87 = !{i32 7, !"Dwarf Version", i32 5}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{i32 1, !"wchar_size", i32 4}
!90 = !{i32 8, !"PIC Level", i32 2}
!91 = !{i32 7, !"PIE Level", i32 2}
!92 = !{i32 7, !"uwtable", i32 2}
!93 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!94 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!95 = distinct !DISubprogram(name: "io_init", scope: !3, file: !3, line: 59, type: !96, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29)
!96 = !DISubroutineType(types: !97)
!97 = !{null}
!98 = !DILocation(line: 65, column: 2, scope: !95)
!99 = !DILocation(line: 82, column: 2, scope: !95)
!100 = !DISubprogram(name: "tuklib_open_stdxxx", scope: !101, file: !101, line: 20, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!101 = !DIFile(filename: "common/tuklib_open_stdxxx.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "17f0a285271ff1d01e768d40baa688ca")
!102 = !DISubroutineType(types: !103)
!103 = !{null, !18}
!104 = distinct !DISubprogram(name: "io_no_sparse", scope: !3, file: !3, line: 87, type: !96, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29)
!105 = !DILocation(line: 92, column: 2, scope: !104)
!106 = !DILocation(line: 0, scope: !2)
!107 = !DILocation(line: 530, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !2, file: !3, line: 530, column: 6)
!109 = !DILocation(line: 530, column: 6, scope: !2)
!110 = !DILocation(line: 537, column: 9, scope: !2)
!111 = !DILocation(line: 549, column: 2, scope: !2)
!112 = !DILocalVariable(name: "pair", arg: 1, scope: !113, file: !3, line: 300, type: !6)
!113 = distinct !DISubprogram(name: "io_open_src_real", scope: !3, file: !3, line: 300, type: !114, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{!21, !6}
!116 = !{!112, !117, !118}
!117 = !DILocalVariable(name: "reg_files_only", scope: !113, file: !3, line: 320, type: !86)
!118 = !DILocalVariable(name: "flags", scope: !113, file: !3, line: 323, type: !18)
!119 = !DILocation(line: 0, scope: !113, inlinedAt: !120)
!120 = distinct !DILocation(line: 550, column: 21, scope: !2)
!121 = !DILocation(line: 320, column: 31, scope: !113, inlinedAt: !120)
!122 = !{i8 0, i8 2}
!123 = !{}
!124 = !DILocation(line: 365, column: 6, scope: !113, inlinedAt: !120)
!125 = !DILocation(line: 366, column: 3, scope: !126, inlinedAt: !120)
!126 = distinct !DILexicalBlock(scope: !113, file: !3, line: 365, column: 6)
!127 = !DILocation(line: 371, column: 2, scope: !113, inlinedAt: !120)
!128 = !DILocation(line: 372, column: 18, scope: !129, inlinedAt: !120)
!129 = distinct !DILexicalBlock(scope: !113, file: !3, line: 371, column: 5)
!130 = !DILocation(line: 372, column: 16, scope: !129, inlinedAt: !120)
!131 = !DILocation(line: 373, column: 24, scope: !113, inlinedAt: !120)
!132 = !DILocation(line: 373, column: 30, scope: !113, inlinedAt: !120)
!133 = !DILocation(line: 373, column: 33, scope: !113, inlinedAt: !120)
!134 = !DILocation(line: 373, column: 39, scope: !113, inlinedAt: !120)
!135 = !DILocation(line: 373, column: 48, scope: !113, inlinedAt: !120)
!136 = distinct !{!136, !127, !137}
!137 = !DILocation(line: 373, column: 62, scope: !113, inlinedAt: !120)
!138 = !DILocation(line: 375, column: 6, scope: !113, inlinedAt: !120)
!139 = !DILocation(line: 376, column: 3, scope: !140, inlinedAt: !120)
!140 = distinct !DILexicalBlock(scope: !113, file: !3, line: 375, column: 6)
!141 = !DILocation(line: 378, column: 12, scope: !142, inlinedAt: !120)
!142 = distinct !DILexicalBlock(scope: !113, file: !3, line: 378, column: 6)
!143 = !DILocation(line: 378, column: 19, scope: !142, inlinedAt: !120)
!144 = !DILocation(line: 378, column: 6, scope: !113, inlinedAt: !120)
!145 = !DILocation(line: 380, column: 7, scope: !146, inlinedAt: !120)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 380, column: 7)
!147 = distinct !DILexicalBlock(scope: !142, file: !3, line: 378, column: 26)
!148 = !DILocation(line: 380, column: 13, scope: !146, inlinedAt: !120)
!149 = !DILocation(line: 380, column: 7, scope: !147, inlinedAt: !120)
!150 = !DILocation(line: 440, column: 34, scope: !147, inlinedAt: !120)
!151 = !DILocation(line: 441, column: 6, scope: !147, inlinedAt: !120)
!152 = !DILocation(line: 440, column: 4, scope: !147, inlinedAt: !120)
!153 = !DILocation(line: 443, column: 3, scope: !147, inlinedAt: !120)
!154 = !DILocation(line: 551, column: 2, scope: !2)
!155 = !DILocation(line: 554, column: 1, scope: !2)
!156 = !DISubprogram(name: "is_empty_filename", scope: !157, file: !157, line: 109, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!157 = !DIFile(filename: "xz/util.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "36136e1fc433f9fd7b2b728f8484a043")
!158 = !DISubroutineType(types: !159)
!159 = !{!21, !12}
!160 = !DISubprogram(name: "signals_block", scope: !161, file: !161, line: 3, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DIFile(filename: "xz/signals.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "9e441aa48dc54d4f9b3691cef1f4c974")
!162 = !DISubprogram(name: "signals_unblock", scope: !161, file: !161, line: 4, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = distinct !DISubprogram(name: "io_open_dest", scope: !3, file: !3, line: 720, type: !114, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !164)
!164 = !{!165, !166}
!165 = !DILocalVariable(name: "pair", arg: 1, scope: !163, file: !3, line: 720, type: !6)
!166 = !DILocalVariable(name: "ret", scope: !163, file: !3, line: 723, type: !86)
!167 = !DILocation(line: 0, scope: !163)
!168 = !DILocation(line: 722, column: 2, scope: !163)
!169 = !DILocalVariable(name: "pair", arg: 1, scope: !170, file: !3, line: 595, type: !6)
!170 = distinct !DISubprogram(name: "io_open_dest_real", scope: !3, file: !3, line: 595, type: !114, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !171)
!171 = !{!169, !172}
!172 = !DILocalVariable(name: "flags", scope: !170, file: !3, line: 628, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!174 = !DILocation(line: 0, scope: !170, inlinedAt: !175)
!175 = distinct !DILocation(line: 723, column: 19, scope: !163)
!176 = !DILocation(line: 608, column: 9, scope: !170, inlinedAt: !175)
!177 = !DILocation(line: 608, column: 19, scope: !170, inlinedAt: !175)
!178 = !DILocation(line: 630, column: 19, scope: !170, inlinedAt: !175)
!179 = !DILocation(line: 630, column: 9, scope: !170, inlinedAt: !175)
!180 = !DILocation(line: 630, column: 17, scope: !170, inlinedAt: !175)
!181 = !DILocation(line: 632, column: 21, scope: !182, inlinedAt: !175)
!182 = distinct !DILexicalBlock(scope: !170, file: !3, line: 632, column: 7)
!183 = !DILocation(line: 632, column: 7, scope: !170, inlinedAt: !175)
!184 = !DILocation(line: 633, column: 34, scope: !185, inlinedAt: !175)
!185 = distinct !DILexicalBlock(scope: !182, file: !3, line: 632, column: 28)
!186 = !DILocation(line: 634, column: 15, scope: !185, inlinedAt: !175)
!187 = !DILocation(line: 634, column: 6, scope: !185, inlinedAt: !175)
!188 = !DILocation(line: 633, column: 4, scope: !185, inlinedAt: !175)
!189 = !DILocation(line: 635, column: 15, scope: !185, inlinedAt: !175)
!190 = !DILocation(line: 635, column: 4, scope: !185, inlinedAt: !175)
!191 = !DILocation(line: 636, column: 4, scope: !185, inlinedAt: !175)
!192 = !DILocation(line: 724, column: 2, scope: !163)
!193 = !DILocation(line: 725, column: 2, scope: !163)
!194 = distinct !DISubprogram(name: "io_close", scope: !3, file: !3, line: 789, type: !195, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !6, !21}
!197 = !{!198, !199, !200}
!198 = !DILocalVariable(name: "pair", arg: 1, scope: !194, file: !3, line: 789, type: !6)
!199 = !DILocalVariable(name: "success", arg: 2, scope: !194, file: !3, line: 789, type: !21)
!200 = !DILocalVariable(name: "zero", scope: !201, file: !3, line: 808, type: !205)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 807, column: 10)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 801, column: 7)
!203 = distinct !DILexicalBlock(scope: !204, file: !3, line: 793, column: 38)
!204 = distinct !DILexicalBlock(scope: !194, file: !3, line: 792, column: 6)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 8, elements: !210)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !208, line: 24, baseType: !209)
!208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !27, line: 38, baseType: !44)
!210 = !{!211}
!211 = !DISubrange(count: 1)
!212 = distinct !DIAssignID()
!213 = !DILocation(line: 0, scope: !201)
!214 = !DILocation(line: 0, scope: !194)
!215 = !DILocation(line: 792, column: 14, scope: !204)
!216 = !DILocation(line: 792, column: 23, scope: !204)
!217 = !DILocation(line: 793, column: 4, scope: !204)
!218 = !DILocation(line: 793, column: 13, scope: !204)
!219 = !DILocation(line: 793, column: 33, scope: !204)
!220 = !DILocation(line: 792, column: 6, scope: !194)
!221 = !DILocation(line: 801, column: 7, scope: !202)
!222 = !DILocation(line: 802, column: 15, scope: !202)
!223 = !DILocation(line: 801, column: 7, scope: !203)
!224 = !DILocation(line: 805, column: 12, scope: !225)
!225 = distinct !DILexicalBlock(scope: !202, file: !3, line: 802, column: 22)
!226 = !DILocation(line: 805, column: 32, scope: !225)
!227 = !DILocation(line: 805, column: 23, scope: !225)
!228 = !DILocation(line: 803, column: 4, scope: !225)
!229 = !DILocation(line: 807, column: 3, scope: !225)
!230 = !DILocation(line: 808, column: 4, scope: !201)
!231 = !DILocation(line: 808, column: 18, scope: !201)
!232 = distinct !DIAssignID()
!233 = !DILocalVariable(name: "pair", arg: 1, scope: !234, file: !3, line: 920, type: !6)
!234 = distinct !DISubprogram(name: "io_write_buf", scope: !3, file: !3, line: 920, type: !235, scopeLine: 921, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !238)
!235 = !DISubroutineType(types: !236)
!236 = !{!21, !6, !237, !39}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!238 = !{!233, !239, !240, !241}
!239 = !DILocalVariable(name: "buf", arg: 2, scope: !234, file: !3, line: 920, type: !237)
!240 = !DILocalVariable(name: "size", arg: 3, scope: !234, file: !3, line: 920, type: !39)
!241 = !DILocalVariable(name: "amount", scope: !242, file: !3, line: 925, type: !243)
!242 = distinct !DILexicalBlock(scope: !234, file: !3, line: 924, column: 19)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !245, line: 220, baseType: !246)
!245 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !27, line: 194, baseType: !28)
!247 = !DILocation(line: 0, scope: !234, inlinedAt: !248)
!248 = distinct !DILocation(line: 809, column: 8, scope: !249)
!249 = distinct !DILexicalBlock(scope: !201, file: !3, line: 809, column: 8)
!250 = !DILocation(line: 924, column: 2, scope: !234, inlinedAt: !248)
!251 = !DILocation(line: 925, column: 26, scope: !242, inlinedAt: !248)
!252 = !DILocation(line: 0, scope: !242, inlinedAt: !248)
!253 = !DILocation(line: 926, column: 14, scope: !254, inlinedAt: !248)
!254 = distinct !DILexicalBlock(scope: !242, file: !3, line: 926, column: 7)
!255 = !DILocation(line: 926, column: 7, scope: !242, inlinedAt: !248)
!256 = !DILocation(line: 927, column: 8, scope: !257, inlinedAt: !248)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 927, column: 8)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 926, column: 21)
!259 = !DILocation(line: 927, column: 8, scope: !258, inlinedAt: !248)
!260 = !DILocation(line: 928, column: 9, scope: !261, inlinedAt: !248)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 928, column: 9)
!262 = distinct !DILexicalBlock(scope: !257, file: !3, line: 927, column: 24)
!263 = !DILocation(line: 0, scope: !262, inlinedAt: !248)
!264 = distinct !{!264, !250, !265}
!265 = !DILocation(line: 955, column: 2, scope: !234, inlinedAt: !248)
!266 = !DILocation(line: 948, column: 12, scope: !267, inlinedAt: !248)
!267 = distinct !DILexicalBlock(scope: !258, file: !3, line: 946, column: 8)
!268 = !DILocation(line: 948, column: 23, scope: !267, inlinedAt: !248)
!269 = !DILocation(line: 947, column: 5, scope: !267, inlinedAt: !248)
!270 = !DILocation(line: 953, column: 7, scope: !242, inlinedAt: !248)
!271 = !DILocation(line: 954, column: 8, scope: !242, inlinedAt: !248)
!272 = !DILocation(line: 924, column: 14, scope: !234, inlinedAt: !248)
!273 = !DILocation(line: 811, column: 3, scope: !202)
!274 = !DILocation(line: 814, column: 2, scope: !194)
!275 = !DILocalVariable(name: "pair", arg: 1, scope: !276, file: !3, line: 737, type: !6)
!276 = distinct !DISubprogram(name: "io_close_dest", scope: !3, file: !3, line: 737, type: !277, scopeLine: 738, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{!21, !6, !21}
!279 = !{!275, !280}
!280 = !DILocalVariable(name: "success", arg: 2, scope: !276, file: !3, line: 737, type: !21)
!281 = !DILocation(line: 0, scope: !276, inlinedAt: !282)
!282 = distinct !DILocation(line: 825, column: 6, scope: !283)
!283 = distinct !DILexicalBlock(scope: !194, file: !3, line: 825, column: 6)
!284 = !DILocation(line: 759, column: 12, scope: !285, inlinedAt: !282)
!285 = distinct !DILexicalBlock(scope: !276, file: !3, line: 759, column: 6)
!286 = !DILocation(line: 759, column: 26, scope: !285, inlinedAt: !282)
!287 = !DILocation(line: 762, column: 6, scope: !288, inlinedAt: !282)
!288 = distinct !DILexicalBlock(scope: !276, file: !3, line: 762, column: 6)
!289 = !DILocation(line: 762, column: 6, scope: !276, inlinedAt: !282)
!290 = !DILocation(line: 764, column: 31, scope: !291, inlinedAt: !282)
!291 = distinct !DILexicalBlock(scope: !288, file: !3, line: 762, column: 28)
!292 = !DILocation(line: 764, column: 22, scope: !291, inlinedAt: !282)
!293 = !DILocation(line: 763, column: 3, scope: !291, inlinedAt: !282)
!294 = !DILocation(line: 771, column: 14, scope: !291, inlinedAt: !282)
!295 = !DILocation(line: 825, column: 6, scope: !194)
!296 = !DILocation(line: 831, column: 2, scope: !194)
!297 = !DILocalVariable(name: "pair", arg: 1, scope: !298, file: !3, line: 563, type: !6)
!298 = distinct !DISubprogram(name: "io_close_src", scope: !3, file: !3, line: 563, type: !195, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !299)
!299 = !{!297, !300}
!300 = !DILocalVariable(name: "success", arg: 2, scope: !298, file: !3, line: 563, type: !21)
!301 = !DILocation(line: 0, scope: !298, inlinedAt: !302)
!302 = distinct !DILocation(line: 831, column: 2, scope: !194)
!303 = !DILocation(line: 566, column: 15, scope: !298, inlinedAt: !302)
!304 = !DILocation(line: 833, column: 2, scope: !194)
!305 = !DILocation(line: 835, column: 2, scope: !194)
!306 = !DISubprogram(name: "spec_mem_lseek", scope: !307, file: !307, line: 55, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DIFile(filename: "spec_mem_io/spec_mem_io.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "20f82235716911ab040d2b344ceb3e0d")
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !313, !33, !18, !310, !18}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !311, line: 27, baseType: !312)
!311 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !27, line: 44, baseType: !28)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "spec_fd_t", file: !307, line: 40, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !307, line: 34, size: 320, elements: !316)
!316 = !{!317, !318, !319, !320, !321}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !315, file: !307, line: 35, baseType: !310, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !315, file: !307, line: 36, baseType: !310, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !315, file: !307, line: 37, baseType: !310, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !315, file: !307, line: 38, baseType: !18, size: 32, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !315, file: !307, line: 39, baseType: !43, size: 64, offset: 256)
!322 = !DISubprogram(name: "message_error", scope: !323, file: !323, line: 63, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = !DIFile(filename: "xz/message.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "46ce4fae4ea23be71658f9b2e1a5aef3")
!324 = !DISubroutineType(types: !325)
!325 = !{null, !12, null}
!326 = !DISubprogram(name: "strerror", scope: !327, file: !327, line: 419, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!328 = !DISubroutineType(types: !329)
!329 = !{!16, !18}
!330 = !DISubprogram(name: "__errno_location", scope: !331, file: !331, line: 37, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!331 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!332 = !DISubroutineType(types: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!335 = distinct !DISubprogram(name: "io_read", scope: !3, file: !3, line: 840, type: !336, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !358)
!336 = !DISubroutineType(types: !337)
!337 = !{!39, !6, !338, !39}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_buf", file: !8, line: 28, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !8, line: 24, size: 65536, elements: !341)
!341 = !{!342, !346, !352}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !340, file: !8, line: 25, baseType: !343, size: 65536)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 65536, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 8192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !340, file: !8, line: 26, baseType: !347, size: 65536)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 65536, elements: !350)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !208, line: 26, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !27, line: 42, baseType: !33)
!350 = !{!351}
!351 = !DISubrange(count: 2048)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !340, file: !8, line: 27, baseType: !353, size: 65536)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 65536, elements: !356)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !208, line: 27, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !27, line: 45, baseType: !41)
!356 = !{!357}
!357 = !DISubrange(count: 1024)
!358 = !{!359, !360, !361, !362, !364, !365}
!359 = !DILocalVariable(name: "pair", arg: 1, scope: !335, file: !3, line: 840, type: !6)
!360 = !DILocalVariable(name: "buf_union", arg: 2, scope: !335, file: !3, line: 840, type: !338)
!361 = !DILocalVariable(name: "size", arg: 3, scope: !335, file: !3, line: 840, type: !39)
!362 = !DILocalVariable(name: "buf", scope: !335, file: !3, line: 845, type: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!364 = !DILocalVariable(name: "left", scope: !335, file: !3, line: 846, type: !39)
!365 = !DILocalVariable(name: "amount", scope: !366, file: !3, line: 849, type: !243)
!366 = distinct !DILexicalBlock(scope: !335, file: !3, line: 848, column: 19)
!367 = !DILocation(line: 0, scope: !335)
!368 = !DILocation(line: 848, column: 14, scope: !335)
!369 = !DILocation(line: 848, column: 2, scope: !335)
!370 = !DILocation(line: 849, column: 26, scope: !366)
!371 = !DILocation(line: 0, scope: !366)
!372 = !DILocation(line: 851, column: 7, scope: !366)
!373 = !DILocation(line: 852, column: 10, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 851, column: 20)
!375 = distinct !DILexicalBlock(scope: !366, file: !3, line: 851, column: 7)
!376 = !DILocation(line: 852, column: 18, scope: !374)
!377 = !DILocation(line: 857, column: 8, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !3, line: 857, column: 8)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 856, column: 21)
!380 = distinct !DILexicalBlock(scope: !366, file: !3, line: 856, column: 7)
!381 = !DILocation(line: 857, column: 14, scope: !378)
!382 = !DILocation(line: 857, column: 8, scope: !379)
!383 = !DILocation(line: 858, column: 9, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 858, column: 9)
!385 = distinct !DILexicalBlock(scope: !378, file: !3, line: 857, column: 24)
!386 = !DILocation(line: 0, scope: !385)
!387 = distinct !{!387, !369, !388}
!388 = !DILocation(line: 875, column: 2, scope: !335)
!389 = !DILocation(line: 865, column: 12, scope: !379)
!390 = !DILocation(line: 865, column: 22, scope: !379)
!391 = !DILocation(line: 864, column: 4, scope: !379)
!392 = !DILocation(line: 868, column: 10, scope: !379)
!393 = !DILocation(line: 868, column: 18, scope: !379)
!394 = !DILocation(line: 870, column: 4, scope: !379)
!395 = !DILocation(line: 873, column: 7, scope: !366)
!396 = !DILocation(line: 874, column: 8, scope: !366)
!397 = !DILocation(line: 877, column: 14, scope: !335)
!398 = !DILocation(line: 877, column: 2, scope: !335)
!399 = !DILocation(line: 878, column: 1, scope: !335)
!400 = !DISubprogram(name: "spec_mem_read", scope: !307, file: !307, line: 52, type: !401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!401 = !DISubroutineType(types: !402)
!402 = !{!310, !313, !33, !18, !43, !310}
!403 = distinct !DISubprogram(name: "io_pread", scope: !3, file: !3, line: 882, type: !404, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!21, !6, !338, !39, !24}
!406 = !{!407, !408, !409, !410, !411}
!407 = !DILocalVariable(name: "pair", arg: 1, scope: !403, file: !3, line: 882, type: !6)
!408 = !DILocalVariable(name: "buf", arg: 2, scope: !403, file: !3, line: 882, type: !338)
!409 = !DILocalVariable(name: "size", arg: 3, scope: !403, file: !3, line: 882, type: !39)
!410 = !DILocalVariable(name: "pos", arg: 4, scope: !403, file: !3, line: 882, type: !24)
!411 = !DILocalVariable(name: "amount", scope: !403, file: !3, line: 892, type: !412)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!413 = !DILocation(line: 0, scope: !403)
!414 = !DILocation(line: 886, column: 6, scope: !415)
!415 = distinct !DILexicalBlock(scope: !403, file: !3, line: 886, column: 6)
!416 = !DILocation(line: 886, column: 41, scope: !415)
!417 = !DILocation(line: 886, column: 6, scope: !403)
!418 = !DILocation(line: 888, column: 11, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !3, line: 886, column: 49)
!420 = !DILocation(line: 888, column: 30, scope: !419)
!421 = !DILocation(line: 888, column: 21, scope: !419)
!422 = !DILocation(line: 887, column: 3, scope: !419)
!423 = !DILocation(line: 889, column: 3, scope: !419)
!424 = !DILocation(line: 0, scope: !335, inlinedAt: !425)
!425 = distinct !DILocation(line: 892, column: 24, scope: !403)
!426 = !DILocation(line: 848, column: 14, scope: !335, inlinedAt: !425)
!427 = !DILocation(line: 848, column: 2, scope: !335, inlinedAt: !425)
!428 = !DILocation(line: 849, column: 26, scope: !366, inlinedAt: !425)
!429 = !DILocation(line: 0, scope: !366, inlinedAt: !425)
!430 = !DILocation(line: 851, column: 7, scope: !366, inlinedAt: !425)
!431 = !DILocation(line: 852, column: 10, scope: !374, inlinedAt: !425)
!432 = !DILocation(line: 852, column: 18, scope: !374, inlinedAt: !425)
!433 = !DILocation(line: 857, column: 8, scope: !378, inlinedAt: !425)
!434 = !DILocation(line: 857, column: 14, scope: !378, inlinedAt: !425)
!435 = !DILocation(line: 857, column: 8, scope: !379, inlinedAt: !425)
!436 = !DILocation(line: 858, column: 9, scope: !384, inlinedAt: !425)
!437 = !DILocation(line: 0, scope: !385, inlinedAt: !425)
!438 = distinct !{!438, !427, !439}
!439 = !DILocation(line: 875, column: 2, scope: !335, inlinedAt: !425)
!440 = !DILocation(line: 865, column: 12, scope: !379, inlinedAt: !425)
!441 = !DILocation(line: 865, column: 22, scope: !379, inlinedAt: !425)
!442 = !DILocation(line: 864, column: 4, scope: !379, inlinedAt: !425)
!443 = !DILocation(line: 868, column: 10, scope: !379, inlinedAt: !425)
!444 = !DILocation(line: 868, column: 18, scope: !379, inlinedAt: !425)
!445 = !DILocation(line: 870, column: 4, scope: !379, inlinedAt: !425)
!446 = !DILocation(line: 873, column: 7, scope: !366, inlinedAt: !425)
!447 = !DILocation(line: 874, column: 8, scope: !366, inlinedAt: !425)
!448 = !DILocation(line: 877, column: 14, scope: !335, inlinedAt: !425)
!449 = !DILocation(line: 893, column: 13, scope: !450)
!450 = distinct !DILexicalBlock(scope: !403, file: !3, line: 893, column: 6)
!451 = !DILocation(line: 893, column: 6, scope: !403)
!452 = !DILocation(line: 896, column: 13, scope: !453)
!453 = distinct !DILexicalBlock(scope: !403, file: !3, line: 896, column: 6)
!454 = !DILocation(line: 896, column: 6, scope: !403)
!455 = !DILocation(line: 898, column: 11, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !3, line: 896, column: 22)
!457 = !DILocation(line: 897, column: 3, scope: !456)
!458 = !DILocation(line: 899, column: 3, scope: !456)
!459 = !DILocation(line: 903, column: 1, scope: !403)
!460 = distinct !DISubprogram(name: "io_write", scope: !3, file: !3, line: 962, type: !461, scopeLine: 963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !465)
!461 = !DISubroutineType(types: !462)
!462 = !{!21, !6, !463, !39}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!465 = !{!466, !467, !468}
!466 = !DILocalVariable(name: "pair", arg: 1, scope: !460, file: !3, line: 962, type: !6)
!467 = !DILocalVariable(name: "buf", arg: 2, scope: !460, file: !3, line: 962, type: !463)
!468 = !DILocalVariable(name: "size", arg: 3, scope: !460, file: !3, line: 962, type: !39)
!469 = !DILocation(line: 0, scope: !460)
!470 = !DILocation(line: 966, column: 12, scope: !471)
!471 = distinct !DILexicalBlock(scope: !460, file: !3, line: 966, column: 6)
!472 = !DILocation(line: 966, column: 6, scope: !460)
!473 = !DILocation(line: 975, column: 7, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !3, line: 966, column: 29)
!475 = !DILocalVariable(name: "i", scope: !476, file: !3, line: 911, type: !39)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 911, column: 2)
!477 = distinct !DISubprogram(name: "is_sparse", scope: !3, file: !3, line: 907, type: !478, scopeLine: 908, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{!21, !463}
!480 = !{!481, !475}
!481 = !DILocalVariable(name: "buf", arg: 1, scope: !477, file: !3, line: 907, type: !463)
!482 = !DILocation(line: 0, scope: !476, inlinedAt: !483)
!483 = distinct !DILocation(line: 976, column: 8, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 976, column: 8)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 975, column: 31)
!486 = distinct !DILexicalBlock(scope: !474, file: !3, line: 975, column: 7)
!487 = !DILocation(line: 912, column: 7, scope: !488, inlinedAt: !483)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 912, column: 7)
!489 = distinct !DILexicalBlock(scope: !476, file: !3, line: 911, column: 2)
!490 = !DILocation(line: 912, column: 19, scope: !488, inlinedAt: !483)
!491 = !DILocation(line: 912, column: 7, scope: !489, inlinedAt: !483)
!492 = !DILocation(line: 911, column: 47, scope: !489, inlinedAt: !483)
!493 = distinct !{!493, !494, !495}
!494 = !DILocation(line: 911, column: 2, scope: !476, inlinedAt: !483)
!495 = !DILocation(line: 913, column: 11, scope: !476, inlinedAt: !483)
!496 = !DILocation(line: 911, column: 23, scope: !489, inlinedAt: !483)
!497 = !DILocation(line: 976, column: 8, scope: !485)
!498 = !DILocation(line: 977, column: 11, scope: !499)
!499 = distinct !DILexicalBlock(scope: !484, file: !3, line: 976, column: 24)
!500 = !DILocation(line: 977, column: 31, scope: !499)
!501 = !DILocation(line: 978, column: 5, scope: !499)
!502 = !DILocation(line: 986, column: 13, scope: !503)
!503 = distinct !DILexicalBlock(scope: !474, file: !3, line: 986, column: 7)
!504 = !DILocation(line: 986, column: 33, scope: !503)
!505 = !DILocation(line: 986, column: 7, scope: !474)
!506 = !DILocation(line: 987, column: 8, scope: !507)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 987, column: 8)
!508 = distinct !DILexicalBlock(scope: !503, file: !3, line: 986, column: 38)
!509 = !DILocation(line: 988, column: 16, scope: !507)
!510 = !DILocation(line: 987, column: 8, scope: !508)
!511 = !DILocation(line: 991, column: 26, scope: !512)
!512 = distinct !DILexicalBlock(scope: !507, file: !3, line: 988, column: 23)
!513 = !DILocation(line: 992, column: 16, scope: !512)
!514 = !DILocation(line: 992, column: 7, scope: !512)
!515 = !DILocation(line: 989, column: 5, scope: !512)
!516 = !DILocation(line: 993, column: 5, scope: !512)
!517 = !DILocation(line: 996, column: 30, scope: !508)
!518 = !DILocation(line: 997, column: 3, scope: !508)
!519 = !DILocation(line: 0, scope: !234, inlinedAt: !520)
!520 = distinct !DILocation(line: 1000, column: 9, scope: !460)
!521 = !DILocation(line: 924, column: 14, scope: !234, inlinedAt: !520)
!522 = !DILocation(line: 924, column: 2, scope: !234, inlinedAt: !520)
!523 = !DILocation(line: 925, column: 26, scope: !242, inlinedAt: !520)
!524 = !DILocation(line: 0, scope: !242, inlinedAt: !520)
!525 = !DILocation(line: 926, column: 14, scope: !254, inlinedAt: !520)
!526 = !DILocation(line: 926, column: 7, scope: !242, inlinedAt: !520)
!527 = !DILocation(line: 927, column: 8, scope: !257, inlinedAt: !520)
!528 = !DILocation(line: 927, column: 8, scope: !258, inlinedAt: !520)
!529 = !DILocation(line: 928, column: 9, scope: !261, inlinedAt: !520)
!530 = !DILocation(line: 0, scope: !262, inlinedAt: !520)
!531 = distinct !{!531, !522, !532}
!532 = !DILocation(line: 955, column: 2, scope: !234, inlinedAt: !520)
!533 = !DILocation(line: 948, column: 12, scope: !267, inlinedAt: !520)
!534 = !DILocation(line: 948, column: 23, scope: !267, inlinedAt: !520)
!535 = !DILocation(line: 947, column: 5, scope: !267, inlinedAt: !520)
!536 = !DILocation(line: 953, column: 7, scope: !242, inlinedAt: !520)
!537 = !DILocation(line: 954, column: 8, scope: !242, inlinedAt: !520)
!538 = !DILocation(line: 1001, column: 1, scope: !460)
!539 = !DISubprogram(name: "spec_mem_open", scope: !307, file: !307, line: 50, type: !540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!540 = !DISubroutineType(types: !541)
!541 = !{!18, !313, !33, !16, !18}
!542 = !DISubprogram(name: "free", scope: !543, file: !543, line: 555, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!543 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!544 = !DISubroutineType(types: !545)
!545 = !{null, !42}
!546 = !DISubprogram(name: "spec_mem_close", scope: !307, file: !307, line: 64, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!547 = !DISubroutineType(types: !548)
!548 = !{!18, !313, !33, !18}
!549 = !DISubprogram(name: "spec_mem_write", scope: !307, file: !307, line: 56, type: !401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
