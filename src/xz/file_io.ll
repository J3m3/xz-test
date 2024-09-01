; ModuleID = 'xz/file_io.c'
source_filename = "xz/file_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_pair = type { ptr, ptr, i32, i32, i8, i8, i64 }

@io_open_src.pair = internal global %struct.file_pair zeroinitializer, align 8
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [59 x i8] c"%s: Seeking failed when trying to create a sparse file: %s\00", align 1
@user_abort = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: Read error: %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: Error seeking the file: %s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: Unexpected end of file\00", align 1
@opt_stdout = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"(benchmark output)\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: Closing the file failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%s: Write error: %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @io_init() local_unnamed_addr #0 {
entry:
  tail call void @tuklib_open_stdxxx(i32 noundef 1) #7
  ret void
}

declare void @tuklib_open_stdxxx(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @io_no_sparse() local_unnamed_addr #2 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @io_open_src(ptr noundef %src_name) local_unnamed_addr #0 {
entry:
  %call = tail call zeroext i1 @is_empty_filename(ptr noundef %src_name) #7
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  store ptr %src_name, ptr @io_open_src.pair, align 8
  store ptr null, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 8), align 8
  store i32 -1, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 16), align 8
  store i32 -1, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 20), align 4
  store i8 0, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 24), align 8
  store i8 0, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 25), align 1
  store i64 0, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 32), align 8
  tail call void @signals_block() #7
  %0 = load i8, ptr @opt_stdout, align 1, !range !5, !noundef !6
  %loadedv.i = trunc nuw i8 %0 to i1
  br i1 %loadedv.i, label %if.then.i, label %do.body.i.preheader

if.then.i:                                        ; preds = %if.end
  tail call void @signals_unblock() #7
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i, %if.end
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.preheader, %land.lhs.true.i
  %1 = load ptr, ptr @spec_fd, align 8
  %2 = load ptr, ptr @io_open_src.pair, align 8
  %call.i = tail call i32 @spec_mem_open(ptr noundef %1, i32 noundef 3, ptr noundef %2, i32 noundef 256) #7
  store i32 %call.i, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 16), align 8
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call3.i = tail call ptr @__errno_location() #8
  %3 = load i32, ptr %call3.i, align 4
  %cmp4.i = icmp eq i32 %3, 4
  %4 = load i32, ptr @user_abort, align 4
  %tobool.not.i = icmp eq i32 %4, 0
  %or.cond.i = select i1 %cmp4.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %do.body.i, label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i, %do.body.i
  br i1 %loadedv.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %do.end.i
  tail call void @signals_block() #7
  %.pre.i = load i32, ptr getelementptr inbounds (i8, ptr @io_open_src.pair, i64 16), align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %do.end.i
  %5 = phi i32 [ %.pre.i, %if.then7.i ], [ %call.i, %do.end.i ]
  %cmp10.i = icmp eq i32 %5, -1
  br i1 %cmp10.i, label %if.then11.i, label %io_open_src_real.exit

if.then11.i:                                      ; preds = %if.end8.i
  %call12.i = tail call ptr @__errno_location() #8
  %6 = load i32, ptr %call12.i, align 4
  %cmp13.i = icmp eq i32 %6, 4
  br i1 %cmp13.i, label %io_open_src_real.exit, label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i
  %7 = load ptr, ptr @io_open_src.pair, align 8
  %call18.i = tail call ptr @strerror(i32 noundef %6) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.4, ptr noundef %7, ptr noundef %call18.i) #7
  br label %io_open_src_real.exit

io_open_src_real.exit:                            ; preds = %if.end8.i, %if.then11.i, %if.end15.i
  %cond = phi ptr [ @io_open_src.pair, %if.end8.i ], [ null, %if.then11.i ], [ null, %if.end15.i ]
  tail call void @signals_unblock() #7
  br label %return

return:                                           ; preds = %entry, %io_open_src_real.exit
  %retval.0 = phi ptr [ %cond, %io_open_src_real.exit ], [ null, %entry ]
  ret ptr %retval.0
}

declare zeroext i1 @is_empty_filename(ptr noundef) local_unnamed_addr #1

declare void @signals_block() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @signals_unblock() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @io_open_dest(ptr nocapture noundef %pair) local_unnamed_addr #0 {
entry:
  tail call void @signals_block() #7
  %dest_name.i = getelementptr inbounds i8, ptr %pair, i64 8
  store ptr @.str.5, ptr %dest_name.i, align 8
  %0 = load ptr, ptr @spec_fd, align 8
  %call.i = tail call i32 @spec_mem_open(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 0) #7
  %dest_fd.i = getelementptr inbounds i8, ptr %pair, i64 20
  store i32 %call.i, ptr %dest_fd.i, align 4
  %cmp4.i = icmp eq i32 %call.i, -1
  br i1 %cmp4.i, label %if.then5.i, label %io_open_dest_real.exit

if.then5.i:                                       ; preds = %entry
  %1 = load ptr, ptr %dest_name.i, align 8
  %call7.i = tail call ptr @__errno_location() #8
  %2 = load i32, ptr %call7.i, align 4
  %call8.i = tail call ptr @strerror(i32 noundef %2) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %call8.i) #7
  %3 = load ptr, ptr %dest_name.i, align 8
  tail call void @free(ptr noundef %3) #7
  br label %io_open_dest_real.exit

io_open_dest_real.exit:                           ; preds = %entry, %if.then5.i
  tail call void @signals_unblock() #7
  ret i1 %cmp4.i
}

; Function Attrs: nounwind uwtable
define dso_local void @io_close(ptr nocapture noundef readonly %pair, i1 noundef zeroext %success) local_unnamed_addr #0 {
entry:
  %zero = alloca [1 x i8], align 1
  br i1 %success, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %entry
  %dest_try_sparse = getelementptr inbounds i8, ptr %pair, i64 25
  %0 = load i8, ptr %dest_try_sparse, align 1, !range !5, !noundef !6
  %loadedv1 = trunc nuw i8 %0 to i1
  br i1 %loadedv1, label %land.lhs.true2, label %if.end11

land.lhs.true2:                                   ; preds = %land.lhs.true
  %dest_pending_sparse = getelementptr inbounds i8, ptr %pair, i64 32
  %1 = load i64, ptr %dest_pending_sparse, align 8
  %cmp = icmp sgt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %land.lhs.true2
  %2 = load ptr, ptr @spec_fd, align 8
  %dest_fd = getelementptr inbounds i8, ptr %pair, i64 20
  %3 = load i32, ptr %dest_fd, align 4
  %sub = add nsw i64 %1, -1
  %call = tail call i64 @spec_mem_lseek(ptr noundef %2, i32 noundef 3, i32 noundef %3, i64 noundef %sub, i32 noundef 1) #7
  %cmp4 = icmp eq i64 %call, -1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %dest_name = getelementptr inbounds i8, ptr %pair, i64 8
  %4 = load ptr, ptr %dest_name, align 8
  %call6 = tail call ptr @__errno_location() #8
  %5 = load i32, ptr %call6, align 4
  %call7 = tail call ptr @strerror(i32 noundef %5) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str, ptr noundef %4, ptr noundef %call7) #7
  br label %if.end11

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zero) #7
  store i8 0, ptr %zero, align 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.else, %cleanup.i
  %size.addr.0.i36 = phi i64 [ 1, %if.else ], [ %size.addr.1.i, %cleanup.i ]
  %buf.addr.0.i35 = phi ptr [ %zero, %if.else ], [ %buf.addr.1.i, %cleanup.i ]
  %6 = load ptr, ptr @spec_fd, align 8
  %7 = load i32, ptr %dest_fd, align 4
  %call.i = call i64 @spec_mem_write(ptr noundef %6, i32 noundef 3, i32 noundef %7, ptr noundef %buf.addr.0.i35, i64 noundef %size.addr.0.i36) #7
  %cmp1.i = icmp eq i64 %call.i, -1
  br i1 %cmp1.i, label %if.then.i, label %if.end13.i

if.then.i:                                        ; preds = %while.body.i
  %call2.i = tail call ptr @__errno_location() #8
  %8 = load i32, ptr %call2.i, align 4
  switch i32 %8, label %if.then9.i [
    i32 4, label %if.then4.i
    i32 32, label %io_write_buf.exit
  ]

if.then4.i:                                       ; preds = %if.then.i
  %9 = load i32, ptr @user_abort, align 4
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %cleanup.i, label %io_write_buf.exit

if.then9.i:                                       ; preds = %if.then.i
  %dest_name.i = getelementptr inbounds i8, ptr %pair, i64 8
  %10 = load ptr, ptr %dest_name.i, align 8
  %call11.i = call ptr @strerror(i32 noundef %8) #7
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.7, ptr noundef %10, ptr noundef %call11.i) #7
  br label %io_write_buf.exit

if.end13.i:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %buf.addr.0.i35, i64 %call.i
  %sub.i = sub i64 %size.addr.0.i36, %call.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end13.i, %if.then4.i
  %buf.addr.1.i = phi ptr [ %add.ptr.i, %if.end13.i ], [ %buf.addr.0.i35, %if.then4.i ]
  %size.addr.1.i = phi i64 [ %sub.i, %if.end13.i ], [ %size.addr.0.i36, %if.then4.i ]
  %cmp.not.not.not.i.not = icmp eq i64 %size.addr.1.i, 0
  br i1 %cmp.not.not.not.i.not, label %io_write_buf.exit, label %while.body.i

io_write_buf.exit:                                ; preds = %cleanup.i, %if.then.i, %if.then4.i, %if.then9.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zero) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %io_write_buf.exit, %land.lhs.true2, %land.lhs.true, %entry
  call void @signals_block() #7
  %dest_fd.i27 = getelementptr inbounds i8, ptr %pair, i64 20
  %11 = load i32, ptr %dest_fd.i27, align 4
  switch i32 %11, label %if.end.i [
    i32 -1, label %io_close_dest.exit.thread
    i32 1, label %io_close_dest.exit.thread
  ]

if.end.i:                                         ; preds = %if.end11
  %12 = load ptr, ptr @spec_fd, align 8
  %call.i28 = call i32 @spec_mem_close(ptr noundef %12, i32 noundef 3, i32 noundef %11) #7
  %tobool.not.i29.not = icmp eq i32 %call.i28, 0
  %dest_name9.i = getelementptr inbounds i8, ptr %pair, i64 8
  %13 = load ptr, ptr %dest_name9.i, align 8
  br i1 %tobool.not.i29.not, label %io_close_dest.exit.thread.sink.split, label %14

14:                                               ; preds = %if.end.i
  %call5.i = tail call ptr @__errno_location() #8
  %15 = load i32, ptr %call5.i, align 4
  %call6.i = call ptr @strerror(i32 noundef %15) #7
  call void (ptr, ...) @message_error(ptr noundef nonnull @.str.6, ptr noundef %13, ptr noundef %call6.i) #7
  %16 = load ptr, ptr %dest_name9.i, align 8
  br label %io_close_dest.exit.thread.sink.split

io_close_dest.exit.thread.sink.split:             ; preds = %if.end.i, %14
  %.sink = phi ptr [ %16, %14 ], [ %13, %if.end.i ]
  call void @free(ptr noundef %.sink) #7
  br label %io_close_dest.exit.thread

io_close_dest.exit.thread:                        ; preds = %io_close_dest.exit.thread.sink.split, %if.end11, %if.end11
  %17 = getelementptr i8, ptr %pair, i64 16
  %pair.val = load i32, ptr %17, align 8
  %18 = load ptr, ptr @spec_fd, align 8
  %call.i31 = call i32 @spec_mem_close(ptr noundef %18, i32 noundef 3, i32 noundef %pair.val) #7
  call void @signals_unblock() #7
  ret void
}

declare i64 @spec_mem_lseek(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @message_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @io_read(ptr nocapture noundef %pair, ptr noundef %buf_union, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %cmp.not40 = icmp eq i64 %size, 0
  br i1 %cmp.not40, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %src_fd = getelementptr inbounds i8, ptr %pair, i64 16
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %left.042 = phi i64 [ %size, %while.body.lr.ph ], [ %left.1, %cleanup ]
  %buf.041 = phi ptr [ %buf_union, %while.body.lr.ph ], [ %buf.1, %cleanup ]
  %0 = load ptr, ptr @spec_fd, align 8
  %1 = load i32, ptr %src_fd, align 8
  %call = tail call i64 @spec_mem_read(ptr noundef %0, i32 noundef 3, i32 noundef %1, ptr noundef %buf.041, i64 noundef %left.042) #7
  switch i64 %call, label %if.end13 [
    i64 0, label %cleanup.thread31
    i64 -1, label %if.then3
  ]

cleanup.thread31:                                 ; preds = %while.body
  %src_eof = getelementptr inbounds i8, ptr %pair, i64 24
  store i8 1, ptr %src_eof, align 8
  br label %while.end

if.then3:                                         ; preds = %while.body
  %call4 = tail call ptr @__errno_location() #8
  %2 = load i32, ptr %call4, align 4
  %cmp5 = icmp eq i32 %2, 4
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then3
  %3 = load i32, ptr @user_abort, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cleanup, label %cleanup15

if.end9:                                          ; preds = %if.then3
  %4 = load ptr, ptr %pair, align 8
  %call11 = tail call ptr @strerror(i32 noundef %2) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.1, ptr noundef %4, ptr noundef %call11) #7
  %src_eof12 = getelementptr inbounds i8, ptr %pair, i64 24
  store i8 1, ptr %src_eof12, align 8
  br label %cleanup15

if.end13:                                         ; preds = %while.body
  %add.ptr = getelementptr inbounds i8, ptr %buf.041, i64 %call
  %sub = sub i64 %left.042, %call
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end13
  %buf.1 = phi ptr [ %add.ptr, %if.end13 ], [ %buf.041, %if.then6 ]
  %left.1 = phi i64 [ %sub, %if.end13 ], [ %left.042, %if.then6 ]
  %cmp.not = icmp eq i64 %left.1, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %entry, %cleanup.thread31
  %left.038 = phi i64 [ %left.042, %cleanup.thread31 ], [ 0, %entry ], [ 0, %cleanup ]
  %sub14 = sub i64 %size, %left.038
  br label %cleanup15

cleanup15:                                        ; preds = %if.then6, %if.end9, %while.end
  %retval.2 = phi i64 [ %sub14, %while.end ], [ -1, %if.end9 ], [ -1, %if.then6 ]
  ret i64 %retval.2
}

declare i64 @spec_mem_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @io_pread(ptr nocapture noundef %pair, ptr noundef %buf, i64 noundef %size, i64 noundef %pos) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @spec_fd, align 8
  %src_fd = getelementptr inbounds i8, ptr %pair, i64 16
  %1 = load i32, ptr %src_fd, align 8
  %call = tail call i64 @spec_mem_lseek(ptr noundef %0, i32 noundef 3, i32 noundef %1, i64 noundef %pos, i32 noundef 0) #7
  %cmp.not = icmp eq i64 %call, %pos
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pair, align 8
  %call1 = tail call ptr @__errno_location() #8
  %3 = load i32, ptr %call1, align 4
  %call2 = tail call ptr @strerror(i32 noundef %3) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.2, ptr noundef %2, ptr noundef %call2) #7
  br label %return

if.end:                                           ; preds = %entry
  %cmp.not40.i = icmp eq i64 %size, 0
  br i1 %cmp.not40.i, label %io_read.exit, label %while.body.i

while.body.i:                                     ; preds = %if.end, %cleanup.i
  %left.042.i = phi i64 [ %left.1.i, %cleanup.i ], [ %size, %if.end ]
  %buf.041.i = phi ptr [ %buf.1.i, %cleanup.i ], [ %buf, %if.end ]
  %4 = load ptr, ptr @spec_fd, align 8
  %5 = load i32, ptr %src_fd, align 8
  %call.i = tail call i64 @spec_mem_read(ptr noundef %4, i32 noundef 3, i32 noundef %5, ptr noundef %buf.041.i, i64 noundef %left.042.i) #7
  switch i64 %call.i, label %if.end13.i [
    i64 0, label %cleanup.thread31.i
    i64 -1, label %if.then3.i
  ]

cleanup.thread31.i:                               ; preds = %while.body.i
  %src_eof.i = getelementptr inbounds i8, ptr %pair, i64 24
  store i8 1, ptr %src_eof.i, align 8
  br label %io_read.exit

if.then3.i:                                       ; preds = %while.body.i
  %call4.i = tail call ptr @__errno_location() #8
  %6 = load i32, ptr %call4.i, align 4
  %cmp5.i = icmp eq i32 %6, 4
  br i1 %cmp5.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.then3.i
  %7 = load i32, ptr @user_abort, align 4
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %cleanup.i, label %return

if.end9.i:                                        ; preds = %if.then3.i
  %8 = load ptr, ptr %pair, align 8
  %call11.i = tail call ptr @strerror(i32 noundef %6) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.1, ptr noundef %8, ptr noundef %call11.i) #7
  %src_eof12.i = getelementptr inbounds i8, ptr %pair, i64 24
  store i8 1, ptr %src_eof12.i, align 8
  br label %return

if.end13.i:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %buf.041.i, i64 %call.i
  %sub.i = sub i64 %left.042.i, %call.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end13.i, %if.then6.i
  %buf.1.i = phi ptr [ %add.ptr.i, %if.end13.i ], [ %buf.041.i, %if.then6.i ]
  %left.1.i = phi i64 [ %sub.i, %if.end13.i ], [ %left.042.i, %if.then6.i ]
  %cmp.not.i = icmp eq i64 %left.1.i, 0
  br i1 %cmp.not.i, label %io_read.exit, label %while.body.i

io_read.exit:                                     ; preds = %cleanup.i, %if.end, %cleanup.thread31.i
  %left.038.i = phi i64 [ %left.042.i, %cleanup.thread31.i ], [ 0, %if.end ], [ 0, %cleanup.i ]
  %sub14.i = sub i64 %size, %left.038.i
  %cmp4 = icmp eq i64 %sub14.i, -1
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %io_read.exit
  %cmp7.not = icmp eq i64 %left.038.i, 0
  br i1 %cmp7.not, label %return, label %if.then8

if.then8:                                         ; preds = %if.end6
  %9 = load ptr, ptr %pair, align 8
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.3, ptr noundef %9) #7
  br label %return

return:                                           ; preds = %if.then6.i, %if.end9.i, %if.then8, %io_read.exit, %if.end6, %if.then
  %retval.1 = phi i1 [ true, %if.then ], [ true, %if.then8 ], [ true, %io_read.exit ], [ false, %if.end6 ], [ true, %if.end9.i ], [ true, %if.then6.i ]
  ret i1 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @io_write(ptr nocapture noundef %pair, ptr noundef %buf, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %dest_try_sparse = getelementptr inbounds i8, ptr %pair, i64 25
  %0 = load i8, ptr %dest_try_sparse, align 1, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %0 to i1
  br i1 %loadedv, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  switch i64 %size, label %if.end6 [
    i64 8192, label %for.body.i.preheader
    i64 0, label %return
  ]

for.body.i.preheader:                             ; preds = %if.then
  %1 = load i64, ptr %buf, align 8
  %cmp1.not.i32 = icmp eq i64 %1, 0
  br i1 %cmp1.not.i32, label %for.cond.i, label %if.end6

for.cond.i:                                       ; preds = %for.body.i.preheader, %for.body.i.3
  %i.04.i33 = phi i64 [ %inc.i.3, %for.body.i.3 ], [ 0, %for.body.i.preheader ]
  %inc.i = or disjoint i64 %i.04.i33, 1
  %arrayidx.i = getelementptr inbounds [1024 x i64], ptr %buf, i64 0, i64 %inc.i
  %2 = load i64, ptr %arrayidx.i, align 8
  %cmp1.not.i = icmp eq i64 %2, 0
  br i1 %cmp1.not.i, label %for.cond.i.1, label %is_sparse.exit

for.cond.i.1:                                     ; preds = %for.cond.i
  %inc.i.1 = or disjoint i64 %i.04.i33, 2
  %arrayidx.i.1 = getelementptr inbounds [1024 x i64], ptr %buf, i64 0, i64 %inc.i.1
  %3 = load i64, ptr %arrayidx.i.1, align 8
  %cmp1.not.i.1 = icmp eq i64 %3, 0
  br i1 %cmp1.not.i.1, label %for.cond.i.2, label %is_sparse.exit

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %inc.i.2 = or disjoint i64 %i.04.i33, 3
  %arrayidx.i.2 = getelementptr inbounds [1024 x i64], ptr %buf, i64 0, i64 %inc.i.2
  %4 = load i64, ptr %arrayidx.i.2, align 8
  %cmp1.not.i.2 = icmp eq i64 %4, 0
  br i1 %cmp1.not.i.2, label %for.cond.i.3, label %is_sparse.exit

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %inc.i.3 = add nuw nsw i64 %i.04.i33, 4
  %exitcond.i.3 = icmp eq i64 %inc.i.3, 1024
  br i1 %exitcond.i.3, label %if.then2, label %for.body.i.3

for.body.i.3:                                     ; preds = %for.cond.i.3
  %arrayidx.i.3 = getelementptr inbounds [1024 x i64], ptr %buf, i64 0, i64 %inc.i.3
  %5 = load i64, ptr %arrayidx.i.3, align 8
  %cmp1.not.i.3 = icmp eq i64 %5, 0
  br i1 %cmp1.not.i.3, label %for.cond.i, label %is_sparse.exit

is_sparse.exit:                                   ; preds = %for.body.i.3, %for.cond.i.2, %for.cond.i.1, %for.cond.i
  %i.04.i33.lcssa43 = phi i64 [ %i.04.i33, %for.cond.i ], [ %inc.i, %for.cond.i.1 ], [ %inc.i.1, %for.cond.i.2 ], [ %inc.i.2, %for.body.i.3 ]
  %cmp.i.le = icmp ugt i64 %i.04.i33.lcssa43, 1022
  br i1 %cmp.i.le, label %if.then2, label %if.end6

if.then2:                                         ; preds = %for.cond.i.3, %is_sparse.exit
  %dest_pending_sparse = getelementptr inbounds i8, ptr %pair, i64 32
  %6 = load i64, ptr %dest_pending_sparse, align 8
  %add = add i64 %6, 8192
  store i64 %add, ptr %dest_pending_sparse, align 8
  br label %return

if.end6:                                          ; preds = %for.body.i.preheader, %if.then, %is_sparse.exit
  %dest_pending_sparse7 = getelementptr inbounds i8, ptr %pair, i64 32
  %7 = load i64, ptr %dest_pending_sparse7, align 8
  %cmp8 = icmp sgt i64 %7, 0
  br i1 %cmp8, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.end6
  %8 = load ptr, ptr @spec_fd, align 8
  %dest_fd = getelementptr inbounds i8, ptr %pair, i64 20
  %9 = load i32, ptr %dest_fd, align 4
  %call11 = tail call i64 @spec_mem_lseek(ptr noundef %8, i32 noundef 3, i32 noundef %9, i64 noundef %7, i32 noundef 1) #7
  %cmp12 = icmp eq i64 %call11, -1
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then9
  %dest_name = getelementptr inbounds i8, ptr %pair, i64 8
  %10 = load ptr, ptr %dest_name, align 8
  %call14 = tail call ptr @__errno_location() #8
  %11 = load i32, ptr %call14, align 4
  %call15 = tail call ptr @strerror(i32 noundef %11) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str, ptr noundef %10, ptr noundef %call15) #7
  br label %return

if.end16:                                         ; preds = %if.then9
  store i64 0, ptr %dest_pending_sparse7, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end6, %if.end16, %entry
  %dest_fd.i = getelementptr inbounds i8, ptr %pair, i64 20
  %cmp.not.not.not.i.not35 = icmp eq i64 %size, 0
  br i1 %cmp.not.not.not.i.not35, label %return, label %while.body.i

while.body.i:                                     ; preds = %if.end19, %cleanup.i
  %size.addr.0.i37 = phi i64 [ %size.addr.1.i, %cleanup.i ], [ %size, %if.end19 ]
  %buf.addr.0.i36 = phi ptr [ %buf.addr.1.i, %cleanup.i ], [ %buf, %if.end19 ]
  %12 = load ptr, ptr @spec_fd, align 8
  %13 = load i32, ptr %dest_fd.i, align 4
  %call.i = tail call i64 @spec_mem_write(ptr noundef %12, i32 noundef 3, i32 noundef %13, ptr noundef %buf.addr.0.i36, i64 noundef %size.addr.0.i37) #7
  %cmp1.i = icmp eq i64 %call.i, -1
  br i1 %cmp1.i, label %if.then.i, label %if.end13.i

if.then.i:                                        ; preds = %while.body.i
  %call2.i = tail call ptr @__errno_location() #8
  %14 = load i32, ptr %call2.i, align 4
  switch i32 %14, label %if.then9.i [
    i32 4, label %if.then4.i
    i32 32, label %return
  ]

if.then4.i:                                       ; preds = %if.then.i
  %15 = load i32, ptr @user_abort, align 4
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %cleanup.i, label %return

if.then9.i:                                       ; preds = %if.then.i
  %dest_name.i = getelementptr inbounds i8, ptr %pair, i64 8
  %16 = load ptr, ptr %dest_name.i, align 8
  %call11.i = tail call ptr @strerror(i32 noundef %14) #7
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.7, ptr noundef %16, ptr noundef %call11.i) #7
  br label %return

if.end13.i:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %buf.addr.0.i36, i64 %call.i
  %sub.i = sub i64 %size.addr.0.i37, %call.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end13.i, %if.then4.i
  %buf.addr.1.i = phi ptr [ %add.ptr.i, %if.end13.i ], [ %buf.addr.0.i36, %if.then4.i ]
  %size.addr.1.i = phi i64 [ %sub.i, %if.end13.i ], [ %size.addr.0.i37, %if.then4.i ]
  %cmp.not.not.not.i.not = icmp eq i64 %size.addr.1.i, 0
  br i1 %cmp.not.not.not.i.not, label %return, label %while.body.i

return:                                           ; preds = %cleanup.i, %if.then.i, %if.then4.i, %if.end19, %if.then9.i, %if.then, %if.then13, %if.then2
  %retval.0 = phi i1 [ false, %if.then2 ], [ true, %if.then13 ], [ false, %if.then ], [ true, %if.then9.i ], [ false, %if.end19 ], [ false, %cleanup.i ], [ true, %if.then.i ], [ true, %if.then4.i ]
  ret i1 %retval.0
}

declare i32 @spec_mem_open(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

declare i32 @spec_mem_close(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @spec_mem_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{i8 0, i8 2}
!6 = !{}
