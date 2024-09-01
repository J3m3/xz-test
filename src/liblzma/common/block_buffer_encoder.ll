; ModuleID = 'liblzma/common/block_buffer_encoder.c'
source_filename = "liblzma/common/block_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, -9222949824389710820) i64 @lzma_block_buffer_bound(i64 noundef %uncompressed_size) local_unnamed_addr #0 {
entry:
  %cmp.i = icmp ugt i64 %uncompressed_size, 9223372036854774716
  br i1 %cmp.i, label %select.unfold, label %if.end.i

if.end.i:                                         ; preds = %entry
  %sub.i = add nuw i64 %uncompressed_size, 65535
  %div11.i = lshr i64 %sub.i, 16
  %mul.i = mul nuw nsw i64 %div11.i, 3
  %sub2.i = sub nuw nsw i64 9223372036854774715, %mul.i
  %cmp3.i = icmp ult i64 %sub2.i, %uncompressed_size
  br i1 %cmp3.i, label %select.unfold, label %lzma2_bound.exit

lzma2_bound.exit:                                 ; preds = %if.end.i
  %add6.i = add nuw nsw i64 %uncompressed_size, 4
  %add = add nuw i64 %add6.i, %mul.i
  %and = and i64 %add, -4
  %add1 = add nuw i64 %and, 92
  br label %select.unfold

select.unfold:                                    ; preds = %if.end.i, %entry, %lzma2_bound.exit
  %0 = phi i64 [ %add1, %lzma2_bound.exit ], [ 0, %entry ], [ 0, %if.end.i ]
  ret i64 %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_buffer_encode(ptr noundef %block, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #2 {
entry:
  %check50 = alloca %struct.lzma_check_state, align 8
  %cmp = icmp eq ptr %block, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp eq ptr %in, null
  %cmp2 = icmp ne i64 %in_size, 0
  %or.cond = and i1 %cmp1, %cmp2
  %cmp4 = icmp eq ptr %out, null
  %or.cond60 = or i1 %or.cond, %cmp4
  %cmp6 = icmp eq ptr %out_pos, null
  %or.cond61 = or i1 %or.cond60, %cmp6
  br i1 %or.cond61, label %return, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %0 = load i64, ptr %out_pos, align 8
  %cmp8 = icmp ugt i64 %0, %out_size
  br i1 %cmp8, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false7
  %1 = load i32, ptr %block, align 8
  %cmp9.not = icmp eq i32 %1, 0
  br i1 %cmp9.not, label %if.end11, label %return

if.end11:                                         ; preds = %if.end
  %check = getelementptr inbounds i8, ptr %block, i64 8
  %2 = load i32, ptr %check, align 8
  %cmp12 = icmp ugt i32 %2, 15
  br i1 %cmp12, label %return, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end11
  %filters = getelementptr inbounds i8, ptr %block, i64 32
  %3 = load ptr, ptr %filters, align 8
  %cmp14 = icmp eq ptr %3, null
  br i1 %cmp14, label %return, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false13
  %call = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %2) #7
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %return, label %if.end19

if.end19:                                         ; preds = %if.end16
  %4 = load i64, ptr %out_pos, align 8
  %sub = sub i64 %out_size, %4
  %and = and i64 %sub, 3
  %sub20 = sub i64 %out_size, %and
  %5 = load i32, ptr %check, align 8
  %call22 = tail call i32 @lzma_check_size(i32 noundef %5) #7
  %conv = zext i32 %call22 to i64
  %6 = load i64, ptr %out_pos, align 8
  %sub23 = sub i64 %sub20, %6
  %cmp24.not = icmp ugt i64 %sub23, %conv
  br i1 %cmp24.not, label %if.end27, label %return

if.end27:                                         ; preds = %if.end19
  %sub28 = sub i64 %sub20, %conv
  %call29 = tail call fastcc i32 @block_encode_normal(ptr noundef nonnull %block, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %sub28)
  switch i32 %call29, label %return [
    i32 0, label %if.end42
    i32 10, label %do.body
  ]

do.body:                                          ; preds = %if.end27
  %call37 = tail call fastcc i32 @block_encode_uncompressed(ptr noundef nonnull %block, ptr noundef %in, i64 noundef %in_size, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %sub28)
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %if.end42, label %return

if.end42:                                         ; preds = %if.end27, %do.body
  %compressed_size = getelementptr inbounds i8, ptr %block, i64 16
  %7 = load i64, ptr %compressed_size, align 8
  %and43107 = and i64 %7, 3
  %tobool44.not108 = icmp eq i64 %and43107, 0
  br i1 %tobool44.not108, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %for.body.1, %for.body.2, %for.body.3, %if.end42
  %cmp47.not = icmp eq i32 %call22, 0
  br i1 %cmp47.not, label %return, label %if.then49

for.body:                                         ; preds = %if.end42
  %8 = load i64, ptr %out_pos, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %out_pos, align 8
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %8
  store i8 0, ptr %arrayidx, align 1
  %inc45 = add i64 %7, 1
  %and43 = and i64 %inc45, 3
  %tobool44.not = icmp eq i64 %and43, 0
  br i1 %tobool44.not, label %for.cond.cleanup, label %for.body.1

for.body.1:                                       ; preds = %for.body
  %9 = load i64, ptr %out_pos, align 8
  %inc.1 = add i64 %9, 1
  store i64 %inc.1, ptr %out_pos, align 8
  %arrayidx.1 = getelementptr inbounds i8, ptr %out, i64 %9
  store i8 0, ptr %arrayidx.1, align 1
  %10 = and i64 %7, 3
  %tobool44.not.1 = icmp eq i64 %10, 2
  br i1 %tobool44.not.1, label %for.cond.cleanup, label %for.body.2

for.body.2:                                       ; preds = %for.body.1
  %11 = load i64, ptr %out_pos, align 8
  %inc.2 = add i64 %11, 1
  store i64 %inc.2, ptr %out_pos, align 8
  %arrayidx.2 = getelementptr inbounds i8, ptr %out, i64 %11
  store i8 0, ptr %arrayidx.2, align 1
  %inc45.2 = add i64 %7, 3
  %and43.2 = and i64 %inc45.2, 3
  %tobool44.not.2 = icmp eq i64 %and43.2, 0
  br i1 %tobool44.not.2, label %for.cond.cleanup, label %for.body.3

for.body.3:                                       ; preds = %for.body.2
  %12 = load i64, ptr %out_pos, align 8
  %inc.3 = add i64 %12, 1
  store i64 %inc.3, ptr %out_pos, align 8
  %arrayidx.3 = getelementptr inbounds i8, ptr %out, i64 %12
  store i8 0, ptr %arrayidx.3, align 1
  br label %for.cond.cleanup

if.then49:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %check50) #7
  %13 = load i32, ptr %check, align 8
  call void @lzma_check_init(ptr noundef nonnull %check50, i32 noundef %13) #7
  %14 = load i32, ptr %check, align 8
  call void @lzma_check_update(ptr noundef nonnull %check50, i32 noundef %14, ptr noundef %in, i64 noundef %in_size) #7
  %15 = load i32, ptr %check, align 8
  call void @lzma_check_finish(ptr noundef nonnull %check50, i32 noundef %15) #7
  %raw_check = getelementptr inbounds i8, ptr %block, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %raw_check, ptr nonnull align 8 %check50, i64 %conv, i1 false)
  %16 = load i64, ptr %out_pos, align 8
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr nonnull align 8 %check50, i64 %conv, i1 false)
  %17 = load i64, ptr %out_pos, align 8
  %add = add i64 %17, %conv
  store i64 %add, ptr %out_pos, align 8
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %check50) #7
  br label %return

return:                                           ; preds = %if.end19, %for.cond.cleanup, %if.then49, %if.end27, %do.body, %if.end16, %if.end11, %lor.lhs.false13, %if.end, %entry, %lor.lhs.false7, %lor.lhs.false
  %retval.3 = phi i32 [ 11, %lor.lhs.false ], [ 11, %lor.lhs.false7 ], [ 11, %entry ], [ 8, %if.end ], [ 11, %lor.lhs.false13 ], [ 11, %if.end11 ], [ 3, %if.end16 ], [ 10, %if.end19 ], [ %call37, %do.body ], [ %call29, %if.end27 ], [ 0, %if.then49 ], [ 0, %for.cond.cleanup ]
  ret i32 %retval.3
}

declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #3

declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @block_encode_normal(ptr noundef %block, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) unnamed_addr #2 {
entry:
  %raw_encoder = alloca %struct.lzma_next_coder_s, align 8
  %in_pos = alloca i64, align 8
  %cmp.i = icmp ugt i64 %in_size, 9223372036854774716
  br i1 %cmp.i, label %lzma2_bound.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %entry
  %sub.i = add nuw i64 %in_size, 65535
  %div11.i = lshr i64 %sub.i, 16
  %mul.i = mul nuw nsw i64 %div11.i, 3
  %sub2.i = sub nuw nsw i64 9223372036854774715, %mul.i
  %cmp3.i = icmp ult i64 %sub2.i, %in_size
  br i1 %cmp3.i, label %lzma2_bound.exit.thread, label %if.end

lzma2_bound.exit.thread:                          ; preds = %entry, %if.end.i
  %compressed_size86 = getelementptr inbounds i8, ptr %block, i64 16
  store i64 0, ptr %compressed_size86, align 8
  br label %return

if.end:                                           ; preds = %if.end.i
  %add1.i = add nuw nsw i64 %in_size, 1
  %add6.i = add nuw i64 %add1.i, %mul.i
  %compressed_size = getelementptr inbounds i8, ptr %block, i64 16
  store i64 %add6.i, ptr %compressed_size, align 8
  %uncompressed_size = getelementptr inbounds i8, ptr %block, i64 24
  store i64 %in_size, ptr %uncompressed_size, align 8
  %call2 = tail call i32 @lzma_block_header_size(ptr noundef %block) #7
  %cmp3.not.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not.not, label %do.end, label %return

do.end:                                           ; preds = %if.end
  %0 = load i64, ptr %out_pos, align 8
  %sub = sub i64 %out_size, %0
  %header_size = getelementptr inbounds i8, ptr %block, i64 4
  %1 = load i32, ptr %header_size, align 4
  %conv = zext i32 %1 to i64
  %cmp6.not = icmp ugt i64 %sub, %conv
  br i1 %cmp6.not, label %if.end9, label %return

if.end9:                                          ; preds = %do.end
  %add = add i64 %0, %conv
  store i64 %add, ptr %out_pos, align 8
  %2 = load i64, ptr %compressed_size, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %raw_encoder) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %raw_encoder, i8 0, i64 64, i1 false)
  %3 = getelementptr inbounds i8, ptr %raw_encoder, i64 8
  store i64 -1, ptr %3, align 8
  %filters = getelementptr inbounds i8, ptr %block, i64 32
  %4 = load ptr, ptr %filters, align 8
  %call20 = call i32 @lzma_raw_encoder_init(ptr noundef nonnull %raw_encoder, ptr noundef %allocator, ptr noundef %4) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end9
  %sub12 = sub i64 %out_size, %add
  %cmp14 = icmp ugt i64 %sub12, %2
  %add18 = add i64 %2, %add
  %spec.select = select i1 %cmp14, i64 %add18, i64 %out_size
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_pos) #7
  store i64 0, ptr %in_pos, align 8
  %code = getelementptr inbounds i8, ptr %raw_encoder, i64 24
  %5 = load ptr, ptr %code, align 8
  %6 = load ptr, ptr %raw_encoder, align 8
  %call24 = call i32 %5(ptr noundef %6, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %spec.select, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_pos) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end9
  %ret.0 = phi i32 [ %call24, %if.then23 ], [ %call20, %if.end9 ]
  call void @lzma_next_end(ptr noundef nonnull %raw_encoder, ptr noundef %allocator) #7
  switch i32 %ret.0, label %if.then46 [
    i32 1, label %if.then28
    i32 0, label %select.unfold89
  ]

if.then28:                                        ; preds = %if.end25
  %7 = load i64, ptr %out_pos, align 8
  %8 = load i32, ptr %header_size, align 4
  %conv30 = zext i32 %8 to i64
  %9 = add i64 %0, %conv30
  %sub32 = sub i64 %7, %9
  store i64 %sub32, ptr %compressed_size, align 8
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %0
  %call34 = call i32 @lzma_block_header_encode(ptr noundef nonnull %block, ptr noundef %add.ptr) #7
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end47, label %if.then46

select.unfold89:                                  ; preds = %if.end25
  br label %if.then46

if.then46:                                        ; preds = %if.end25, %if.then28, %select.unfold89
  %ret.1.ph = phi i32 [ 10, %select.unfold89 ], [ 11, %if.then28 ], [ %ret.0, %if.end25 ]
  store i64 %0, ptr %out_pos, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then28, %if.then46
  %ret.193 = phi i32 [ %ret.1.ph, %if.then46 ], [ 0, %if.then28 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %raw_encoder) #7
  br label %return

return:                                           ; preds = %lzma2_bound.exit.thread, %if.end, %do.end, %if.end47
  %retval.1 = phi i32 [ %call2, %if.end ], [ %ret.193, %if.end47 ], [ 10, %do.end ], [ 9, %lzma2_bound.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @block_encode_uncompressed(ptr noundef %block, ptr nocapture noundef readonly %in, i64 noundef %in_size, ptr noundef %out, ptr nocapture noundef %out_pos, i64 noundef %out_size) unnamed_addr #2 {
entry:
  %lzma2 = alloca %struct.lzma_options_lzma, align 8
  %filters = alloca [2 x %struct.lzma_filter], align 16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %lzma2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %lzma2, i8 0, i64 112, i1 false)
  store i32 4096, ptr %lzma2, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %filters) #7
  store i64 33, ptr %filters, align 16
  %options = getelementptr inbounds i8, ptr %filters, i64 8
  store ptr %lzma2, ptr %options, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %filters, i64 16
  store i64 -1, ptr %arrayidx2, align 16
  %filters4 = getelementptr inbounds i8, ptr %block, i64 32
  %0 = load ptr, ptr %filters4, align 8
  store ptr %filters, ptr %filters4, align 8
  %call = call i32 @lzma_block_header_size(ptr noundef %block) #7
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr %0, ptr %filters4, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %out_pos, align 8
  %sub = sub i64 %out_size, %1
  %header_size = getelementptr inbounds i8, ptr %block, i64 4
  %2 = load i32, ptr %header_size, align 4
  %conv = zext i32 %2 to i64
  %compressed_size = getelementptr inbounds i8, ptr %block, i64 16
  %3 = load i64, ptr %compressed_size, align 8
  %add = add i64 %3, %conv
  %cmp7 = icmp ult i64 %sub, %add
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  store ptr %0, ptr %filters4, align 8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %1
  %call12 = call i32 @lzma_block_header_encode(ptr noundef nonnull %block, ptr noundef %add.ptr) #7
  %cmp13.not = icmp eq i32 %call12, 0
  store ptr %0, ptr %filters4, align 8
  br i1 %cmp13.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.end11
  %4 = load i32, ptr %header_size, align 4
  %conv20 = zext i32 %4 to i64
  %5 = load i64, ptr %out_pos, align 8
  %add21 = add i64 %5, %conv20
  %cmp2281.not = icmp eq i64 %in_size, 0
  br i1 %cmp2281.not, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end17
  %inc.peel = add i64 %add21, 1
  store i64 %inc.peel, ptr %out_pos, align 8
  %arrayidx24.peel = getelementptr inbounds i8, ptr %out, i64 %add21
  store i8 1, ptr %arrayidx24.peel, align 1
  %cond.peel = call i64 @llvm.umin.i64(i64 %in_size, i64 65536)
  %sub29.peel = add nsw i64 %cond.peel, -1
  %shr.peel = lshr i64 %sub29.peel, 8
  %conv30.peel = trunc i64 %shr.peel to i8
  %6 = load i64, ptr %out_pos, align 8
  %inc31.peel = add i64 %6, 1
  store i64 %inc31.peel, ptr %out_pos, align 8
  %arrayidx32.peel = getelementptr inbounds i8, ptr %out, i64 %6
  store i8 %conv30.peel, ptr %arrayidx32.peel, align 1
  %conv34.peel = trunc i64 %sub29.peel to i8
  %7 = load i64, ptr %out_pos, align 8
  %inc35.peel = add i64 %7, 1
  store i64 %inc35.peel, ptr %out_pos, align 8
  %arrayidx36.peel = getelementptr inbounds i8, ptr %out, i64 %7
  store i8 %conv34.peel, ptr %arrayidx36.peel, align 1
  %8 = load i64, ptr %out_pos, align 8
  %add.ptr37.peel = getelementptr inbounds i8, ptr %out, i64 %8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr37.peel, ptr align 1 %in, i64 %cond.peel, i1 false)
  %9 = load i64, ptr %out_pos, align 8
  %add40.peel = add i64 %9, %cond.peel
  %cmp22.peel = icmp ugt i64 %in_size, 65536
  br i1 %cmp22.peel, label %while.body, label %while.end

while.body:                                       ; preds = %while.body.preheader, %while.body
  %in_pos.083 = phi i64 [ %add39, %while.body ], [ %cond.peel, %while.body.preheader ]
  %storemerge82 = phi i64 [ %add40, %while.body ], [ %add40.peel, %while.body.preheader ]
  %inc = add i64 %storemerge82, 1
  store i64 %inc, ptr %out_pos, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %out, i64 %storemerge82
  store i8 2, ptr %arrayidx24, align 1
  %sub25 = sub i64 %in_size, %in_pos.083
  %cond = call i64 @llvm.umin.i64(i64 %sub25, i64 65536)
  %sub29 = add nsw i64 %cond, -1
  %shr = lshr i64 %sub29, 8
  %conv30 = trunc i64 %shr to i8
  %10 = load i64, ptr %out_pos, align 8
  %inc31 = add i64 %10, 1
  store i64 %inc31, ptr %out_pos, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %out, i64 %10
  store i8 %conv30, ptr %arrayidx32, align 1
  %conv34 = trunc i64 %sub29 to i8
  %11 = load i64, ptr %out_pos, align 8
  %inc35 = add i64 %11, 1
  store i64 %inc35, ptr %out_pos, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %out, i64 %11
  store i8 %conv34, ptr %arrayidx36, align 1
  %12 = load i64, ptr %out_pos, align 8
  %add.ptr37 = getelementptr inbounds i8, ptr %out, i64 %12
  %add.ptr38 = getelementptr inbounds i8, ptr %in, i64 %in_pos.083
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr37, ptr align 1 %add.ptr38, i64 %cond, i1 false)
  %add39 = add i64 %cond, %in_pos.083
  %13 = load i64, ptr %out_pos, align 8
  %add40 = add i64 %13, %cond
  store i64 %add40, ptr %out_pos, align 8
  %cmp22 = icmp ult i64 %add39, %in_size
  br i1 %cmp22, label %while.body, label %while.end, !llvm.loop !5

while.end:                                        ; preds = %while.body, %while.body.preheader, %if.end17
  %storemerge.lcssa = phi i64 [ %add21, %if.end17 ], [ %add40.peel, %while.body.preheader ], [ %add40, %while.body ]
  %inc41 = add i64 %storemerge.lcssa, 1
  store i64 %inc41, ptr %out_pos, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %out, i64 %storemerge.lcssa
  store i8 0, ptr %arrayidx42, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %while.end, %if.then9, %if.then
  %retval.0 = phi i32 [ 11, %if.then ], [ 10, %if.then9 ], [ 0, %while.end ], [ 11, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %filters) #7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %lzma2) #7
  ret i32 %retval.0
}

declare void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @lzma_block_header_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @lzma_raw_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @lzma_block_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.peeled.count", i32 1}
