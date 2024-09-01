; ModuleID = 'liblzma/common/index.c'
source_filename = "liblzma/common/index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_record = type { i64, i64 }
%struct.index_cat_info = type { i64, i64, i64, i32, ptr }

; Function Attrs: nounwind uwtable
define dso_local ptr @lzma_index_init(ptr noundef %allocator) local_unnamed_addr #0 {
entry:
  %call.i = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %allocator) #12
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %cleanup5, label %if.end

if.end:                                           ; preds = %entry
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %call.i, i8 0, i64 28, i1 false)
  %uncompressed_size.i = getelementptr inbounds i8, ptr %call.i, i64 32
  %prealloc.i = getelementptr inbounds i8, ptr %call.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %uncompressed_size.i, i8 0, i64 32, i1 false)
  store i64 512, ptr %prealloc.i, align 8
  %checks.i = getelementptr inbounds i8, ptr %call.i, i64 72
  store i32 0, ptr %checks.i, align 8
  %call.i12 = tail call ptr @lzma_alloc(i64 noundef 168, ptr noundef %allocator) #12
  %cmp.i = icmp eq ptr %call.i12, null
  br i1 %cmp.i, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @lzma_free(ptr noundef nonnull %call.i, ptr noundef %allocator) #12
  br label %cleanup5

if.end4:                                          ; preds = %if.end
  %number.i = getelementptr inbounds i8, ptr %call.i12, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %call.i12, i8 0, i64 40, i1 false)
  store i32 1, ptr %number.i, align 8
  %block_number_base7.i = getelementptr inbounds i8, ptr %call.i12, i64 48
  %record_count.i = getelementptr inbounds i8, ptr %call.i12, i64 88
  %stream_flags.i = getelementptr inbounds i8, ptr %call.i12, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %record_count.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %block_number_base7.i, i8 0, i64 36, i1 false)
  store i32 -1, ptr %stream_flags.i, align 8
  %stream_padding.i = getelementptr inbounds i8, ptr %call.i12, i64 160
  store i64 0, ptr %stream_padding.i, align 8
  tail call fastcc void @index_tree_append(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i12)
  br label %cleanup5

cleanup5:                                         ; preds = %entry, %if.then3, %if.end4
  %retval.1 = phi ptr [ null, %if.then3 ], [ %call.i, %if.end4 ], [ null, %entry ]
  ret ptr %retval.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @index_tree_append(ptr nocapture noundef %tree, ptr noundef %node) unnamed_addr #3 {
entry:
  %rightmost = getelementptr inbounds i8, ptr %tree, i64 16
  %0 = load ptr, ptr %rightmost, align 8
  %parent = getelementptr inbounds i8, ptr %node, i64 16
  store ptr %0, ptr %parent, align 8
  %left = getelementptr inbounds i8, ptr %node, i64 24
  %count = getelementptr inbounds i8, ptr %tree, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %left, i8 0, i64 16, i1 false)
  %1 = load i32, ptr %count, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %count, align 8
  %2 = load ptr, ptr %tree, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr %node, ptr %tree, align 8
  %leftmost = getelementptr inbounds i8, ptr %tree, i64 8
  store ptr %node, ptr %leftmost, align 8
  store ptr %node, ptr %rightmost, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %rightmost, align 8
  %right4 = getelementptr inbounds i8, ptr %3, i64 32
  store ptr %node, ptr %right4, align 8
  store ptr %node, ptr %rightmost, align 8
  %4 = load i32, ptr %count, align 8
  %cmp.i = icmp ult i32 %4, 65536
  %shl.i = shl nuw i32 %4, 16
  %spec.select.i = select i1 %cmp.i, i32 %shl.i, i32 %4
  %spec.select34.i = select i1 %cmp.i, i32 15, i32 31
  %cmp2.i = icmp ult i32 %spec.select.i, 16777216
  %shl4.i = shl nuw i32 %spec.select.i, 8
  %sub.i = add nsw i32 %spec.select34.i, -8
  %n.addr.1.i = select i1 %cmp2.i, i32 %shl4.i, i32 %spec.select.i
  %i.1.i = select i1 %cmp2.i, i32 %sub.i, i32 %spec.select34.i
  %cmp7.i = icmp ult i32 %n.addr.1.i, 268435456
  %shl9.i = shl nuw i32 %n.addr.1.i, 4
  %sub10.i = add nsw i32 %i.1.i, -4
  %n.addr.2.i = select i1 %cmp7.i, i32 %shl9.i, i32 %n.addr.1.i
  %i.2.i = select i1 %cmp7.i, i32 %sub10.i, i32 %i.1.i
  %cmp13.i = icmp ult i32 %n.addr.2.i, 1073741824
  %shl15.i = shl nuw i32 %n.addr.2.i, 2
  %sub16.i = add nsw i32 %i.2.i, -2
  %n.addr.3.i = select i1 %cmp13.i, i32 %shl15.i, i32 %n.addr.2.i
  %i.3.i = select i1 %cmp13.i, i32 %sub16.i, i32 %i.2.i
  %cmp1935.i = icmp sgt i32 %n.addr.3.i, -1
  %dec.i = sext i1 %cmp1935.i to i32
  %i.4.i = add nsw i32 %i.3.i, %dec.i
  %shl = shl nuw i32 1, %i.4.i
  %cmp8.not = icmp eq i32 %4, %shl
  br i1 %cmp8.not, label %return, label %if.then9

if.then9:                                         ; preds = %if.end
  %and.i = and i32 %4, 65535
  %cmp.i71 = icmp eq i32 %and.i, 0
  %shr.i = lshr exact i32 %4, 16
  %spec.select.i72 = select i1 %cmp.i71, i32 %shr.i, i32 %4
  %spec.select34.i73 = select i1 %cmp.i71, i32 16, i32 0
  %and1.i = and i32 %spec.select.i72, 255
  %cmp2.i74 = icmp eq i32 %and1.i, 0
  %shr4.i = lshr exact i32 %spec.select.i72, 8
  %add.i = or disjoint i32 %spec.select34.i73, 8
  %n.addr.1.i75 = select i1 %cmp2.i74, i32 %shr4.i, i32 %spec.select.i72
  %i.1.i76 = select i1 %cmp2.i74, i32 %add.i, i32 %spec.select34.i73
  %and6.i = and i32 %n.addr.1.i75, 15
  %cmp7.i77 = icmp eq i32 %and6.i, 0
  %shr9.i = lshr exact i32 %n.addr.1.i75, 4
  %add10.i = or disjoint i32 %i.1.i76, 4
  %n.addr.2.i78 = select i1 %cmp7.i77, i32 %shr9.i, i32 %n.addr.1.i75
  %i.2.i79 = select i1 %cmp7.i77, i32 %add10.i, i32 %i.1.i76
  %and12.i = and i32 %n.addr.2.i78, 3
  %cmp13.i80 = icmp eq i32 %and12.i, 0
  %shr15.i = lshr exact i32 %n.addr.2.i78, 2
  %add16.i = or disjoint i32 %i.2.i79, 2
  %n.addr.3.i81 = select i1 %cmp13.i80, i32 %shr15.i, i32 %n.addr.2.i78
  %i.3.i82 = select i1 %cmp13.i80, i32 %add16.i, i32 %i.2.i79
  %and18.i = and i32 %n.addr.3.i81, 1
  %5 = xor i32 %and18.i, 1
  %i.4.i83 = add i32 %i.3.i82, 2
  %add = add i32 %i.4.i83, %5
  %6 = add i32 %i.3.i82, %5
  %7 = add i32 %6, 1
  %xtraiter = and i32 %add, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %do.body.prol.loopexit, label %do.body.prol

do.body.prol:                                     ; preds = %if.then9, %do.body.prol
  %up.0.prol = phi i32 [ %dec.prol, %do.body.prol ], [ %add, %if.then9 ]
  %node.addr.0.prol = phi ptr [ %8, %do.body.prol ], [ %node, %if.then9 ]
  %prol.iter = phi i32 [ %prol.iter.next, %do.body.prol ], [ 0, %if.then9 ]
  %parent12.prol = getelementptr inbounds i8, ptr %node.addr.0.prol, i64 16
  %8 = load ptr, ptr %parent12.prol, align 8
  %dec.prol = add i32 %up.0.prol, -1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %do.body.prol.loopexit, label %do.body.prol, !llvm.loop !5

do.body.prol.loopexit:                            ; preds = %do.body.prol, %if.then9
  %.lcssa.unr = phi ptr [ poison, %if.then9 ], [ %8, %do.body.prol ]
  %up.0.unr = phi i32 [ %add, %if.then9 ], [ %dec.prol, %do.body.prol ]
  %node.addr.0.unr = phi ptr [ %node, %if.then9 ], [ %8, %do.body.prol ]
  %9 = icmp ult i32 %7, 7
  br i1 %9, label %do.end, label %do.body

do.body:                                          ; preds = %do.body.prol.loopexit, %do.body
  %up.0 = phi i32 [ %dec.7, %do.body ], [ %up.0.unr, %do.body.prol.loopexit ]
  %node.addr.0 = phi ptr [ %17, %do.body ], [ %node.addr.0.unr, %do.body.prol.loopexit ]
  %parent12 = getelementptr inbounds i8, ptr %node.addr.0, i64 16
  %10 = load ptr, ptr %parent12, align 8
  %parent12.1 = getelementptr inbounds i8, ptr %10, i64 16
  %11 = load ptr, ptr %parent12.1, align 8
  %parent12.2 = getelementptr inbounds i8, ptr %11, i64 16
  %12 = load ptr, ptr %parent12.2, align 8
  %parent12.3 = getelementptr inbounds i8, ptr %12, i64 16
  %13 = load ptr, ptr %parent12.3, align 8
  %parent12.4 = getelementptr inbounds i8, ptr %13, i64 16
  %14 = load ptr, ptr %parent12.4, align 8
  %parent12.5 = getelementptr inbounds i8, ptr %14, i64 16
  %15 = load ptr, ptr %parent12.5, align 8
  %parent12.6 = getelementptr inbounds i8, ptr %15, i64 16
  %16 = load ptr, ptr %parent12.6, align 8
  %parent12.7 = getelementptr inbounds i8, ptr %16, i64 16
  %17 = load ptr, ptr %parent12.7, align 8
  %dec.7 = add i32 %up.0, -8
  %cmp13.not.7 = icmp eq i32 %dec.7, 0
  br i1 %cmp13.not.7, label %do.end, label %do.body

do.end:                                           ; preds = %do.body, %do.body.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %do.body.prol.loopexit ], [ %17, %do.body ]
  %right14 = getelementptr inbounds i8, ptr %.lcssa, i64 32
  %18 = load ptr, ptr %right14, align 8
  %parent15 = getelementptr inbounds i8, ptr %.lcssa, i64 16
  %19 = load ptr, ptr %parent15, align 8
  %cmp16 = icmp eq ptr %19, null
  %right20 = getelementptr inbounds i8, ptr %19, i64 32
  %right20.sink = select i1 %cmp16, ptr %tree, ptr %right20
  store ptr %18, ptr %right20.sink, align 8
  %20 = load ptr, ptr %parent15, align 8
  %parent23 = getelementptr inbounds i8, ptr %18, i64 16
  store ptr %20, ptr %parent23, align 8
  %left24 = getelementptr inbounds i8, ptr %18, i64 24
  %21 = load ptr, ptr %left24, align 8
  store ptr %21, ptr %right14, align 8
  %cmp27.not = icmp eq ptr %21, null
  br i1 %cmp27.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %do.end
  %parent30 = getelementptr inbounds i8, ptr %21, i64 16
  store ptr %.lcssa, ptr %parent30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %do.end
  store ptr %.lcssa, ptr %left24, align 8
  store ptr %18, ptr %parent15, align 8
  br label %return

return:                                           ; preds = %if.end, %if.end31, %if.then
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @lzma_index_end(ptr noundef %i, ptr noundef %allocator) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq ptr %i, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %i.val = load ptr, ptr %i, align 8
  %cmp.not.i = icmp eq ptr %i.val, null
  br i1 %cmp.not.i, label %index_tree_end.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %i.val, ptr noundef %allocator, ptr noundef nonnull @index_stream_end)
  br label %index_tree_end.exit

index_tree_end.exit:                              ; preds = %if.then, %if.then.i
  tail call void @lzma_free(ptr noundef nonnull %i, ptr noundef %allocator) #12
  br label %if.end

if.end:                                           ; preds = %index_tree_end.exit, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @index_stream_end(ptr nocapture noundef readonly %node, ptr noundef %allocator) #0 {
entry:
  %groups = getelementptr inbounds i8, ptr %node, i64 56
  %groups.val = load ptr, ptr %groups, align 8
  %cmp.not.i = icmp eq ptr %groups.val, null
  br i1 %cmp.not.i, label %index_tree_end.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %groups.val, ptr noundef %allocator, ptr noundef null)
  br label %index_tree_end.exit

index_tree_end.exit:                              ; preds = %entry, %if.then.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_prealloc(ptr nocapture noundef writeonly %i, i64 noundef %records) local_unnamed_addr #4 {
entry:
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %records, i64 1152921504606846971)
  %prealloc = getelementptr inbounds i8, ptr %i, i64 64
  store i64 %spec.store.select, ptr %prealloc, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @lzma_index_memusage(i64 noundef %streams, i64 noundef %blocks) local_unnamed_addr #5 {
entry:
  %sub = add i64 %blocks, 511
  %div31 = lshr i64 %sub, 9
  %mul = mul i64 %streams, 296
  %mul1 = mul i64 %div31, 8288
  %0 = add i64 %streams, -4294967296
  %1 = icmp ult i64 %0, -4294967295
  %2 = icmp ugt i64 %blocks, 1139567201464682496
  %or.cond23 = or i1 %1, %2
  %sub10 = sub nuw nsw i64 -113, %mul
  %cmp11 = icmp ult i64 %sub10, %mul1
  %or.cond = select i1 %or.cond23, i1 true, i1 %cmp11
  %add12 = add nuw nsw i64 %mul, 112
  %add13 = add i64 %add12, %mul1
  %retval.0 = select i1 %or.cond, i64 -1, i64 %add13
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_memused(ptr nocapture noundef readonly %i) local_unnamed_addr #6 {
entry:
  %count = getelementptr inbounds i8, ptr %i, i64 24
  %0 = load i32, ptr %count, align 8
  %conv = zext i32 %0 to i64
  %record_count = getelementptr inbounds i8, ptr %i, i64 48
  %1 = load i64, ptr %record_count, align 8
  %sub.i = add i64 %1, 511
  %div31.i = lshr i64 %sub.i, 9
  %mul.i = mul nuw nsw i64 %conv, 296
  %mul1.i = mul i64 %div31.i, 8288
  %2 = icmp eq i32 %0, 0
  %3 = icmp ugt i64 %1, 1139567201464682496
  %or.cond23.i = or i1 %2, %3
  %sub10.i = sub nuw nsw i64 -113, %mul.i
  %cmp11.i = icmp ult i64 %sub10.i, %mul1.i
  %or.cond.i = select i1 %or.cond23.i, i1 true, i1 %cmp11.i
  %add12.i = add nuw nsw i64 %mul.i, 112
  %add13.i = add i64 %add12.i, %mul1.i
  %retval.0.i = select i1 %or.cond.i, i64 -1, i64 %add13.i
  ret i64 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_block_count(ptr nocapture noundef readonly %i) local_unnamed_addr #6 {
entry:
  %record_count = getelementptr inbounds i8, ptr %i, i64 48
  %0 = load i64, ptr %record_count, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967296) i64 @lzma_index_stream_count(ptr nocapture noundef readonly %i) local_unnamed_addr #6 {
entry:
  %count = getelementptr inbounds i8, ptr %i, i64 24
  %0 = load i32, ptr %count, align 8
  %conv = zext i32 %0 to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, -3) i64 @lzma_index_size(ptr nocapture noundef readonly %i) local_unnamed_addr #0 {
entry:
  %record_count = getelementptr inbounds i8, ptr %i, i64 48
  %0 = load i64, ptr %record_count, align 8
  %index_list_size = getelementptr inbounds i8, ptr %i, i64 56
  %1 = load i64, ptr %index_list_size, align 8
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef %0) #12
  %add.i.i = add i32 %call.i.i, 1
  %conv.i.i = zext i32 %add.i.i to i64
  %add2.i.i = add i64 %1, 7
  %add.i2.i = add i64 %add2.i.i, %conv.i.i
  %and.i.i = and i64 %add.i2.i, -4
  ret i64 %and.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_total_size(ptr nocapture noundef readonly %i) local_unnamed_addr #6 {
entry:
  %total_size = getelementptr inbounds i8, ptr %i, i64 40
  %0 = load i64, ptr %total_size, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_index_stream_size(ptr nocapture noundef readonly %i) local_unnamed_addr #0 {
entry:
  %total_size = getelementptr inbounds i8, ptr %i, i64 40
  %0 = load i64, ptr %total_size, align 8
  %record_count = getelementptr inbounds i8, ptr %i, i64 48
  %1 = load i64, ptr %record_count, align 8
  %index_list_size = getelementptr inbounds i8, ptr %i, i64 56
  %2 = load i64, ptr %index_list_size, align 8
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef %1) #12
  %add.i.i = add i32 %call.i.i, 1
  %conv.i.i = zext i32 %add.i.i to i64
  %add2.i.i = add i64 %2, 7
  %add.i2.i = add i64 %add2.i.i, %conv.i.i
  %and.i.i = and i64 %add.i2.i, -4
  %add1 = add i64 %0, 24
  %add2 = add i64 %add1, %and.i.i
  ret i64 %add2
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @lzma_index_file_size(ptr nocapture noundef readonly %i) local_unnamed_addr #0 {
entry:
  %rightmost = getelementptr inbounds i8, ptr %i, i64 16
  %0 = load ptr, ptr %rightmost, align 8
  %rightmost1 = getelementptr inbounds i8, ptr %0, i64 72
  %1 = load ptr, ptr %rightmost1, align 8
  %compressed_base = getelementptr inbounds i8, ptr %0, i64 8
  %2 = load i64, ptr %compressed_base, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %records = getelementptr inbounds i8, ptr %1, i64 64
  %last = getelementptr inbounds i8, ptr %1, i64 56
  %3 = load i64, ptr %last, align 8
  %unpadded_sum = getelementptr inbounds [0 x %struct.index_record], ptr %records, i64 0, i64 %3, i32 1
  %4 = load i64, ptr %unpadded_sum, align 8
  %5 = add i64 %4, 3
  %6 = and i64 %5, -4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %6, %cond.false ], [ 0, %entry ]
  %stream_padding = getelementptr inbounds i8, ptr %0, i64 160
  %7 = load i64, ptr %stream_padding, align 8
  %add.i = add i64 %2, 24
  %add1.i = add i64 %add.i, %cond
  %add2.i = add i64 %add1.i, %7
  %cmp.i = icmp slt i64 %add2.i, 0
  br i1 %cmp.i, label %index_file_size.exit, label %if.end.i

if.end.i:                                         ; preds = %cond.end
  %index_list_size = getelementptr inbounds i8, ptr %0, i64 96
  %8 = load i64, ptr %index_list_size, align 8
  %record_count = getelementptr inbounds i8, ptr %0, i64 88
  %9 = load i64, ptr %record_count, align 8
  %call.i.i.i = tail call i32 @lzma_vli_size(i64 noundef %9) #12
  %add.i.i.i = add i32 %call.i.i.i, 1
  %conv.i.i.i = zext i32 %add.i.i.i to i64
  %add2.i.i.i = add i64 %8, 7
  %add.i2.i.i = add i64 %add2.i.i.i, %conv.i.i.i
  %and.i.i.i = and i64 %add.i2.i.i, -4
  %add4.i = add i64 %and.i.i.i, %add2.i
  %.add4.i = tail call i64 @llvm.smax.i64(i64 %add4.i, i64 -1)
  br label %index_file_size.exit

index_file_size.exit:                             ; preds = %cond.end, %if.end.i
  %retval.0.i = phi i64 [ -1, %cond.end ], [ %.add4.i, %if.end.i ]
  ret i64 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_index_uncompressed_size(ptr nocapture noundef readonly %i) local_unnamed_addr #6 {
entry:
  %uncompressed_size = getelementptr inbounds i8, ptr %i, i64 32
  %0 = load i64, ptr %uncompressed_size, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_index_checks(ptr nocapture noundef readonly %i) local_unnamed_addr #7 {
entry:
  %checks1 = getelementptr inbounds i8, ptr %i, i64 72
  %0 = load i32, ptr %checks1, align 8
  %rightmost = getelementptr inbounds i8, ptr %i, i64 16
  %1 = load ptr, ptr %rightmost, align 8
  %stream_flags = getelementptr inbounds i8, ptr %1, i64 104
  %2 = load i32, ptr %stream_flags, align 8
  %cmp.not = icmp eq i32 %2, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %check = getelementptr inbounds i8, ptr %1, i64 120
  %3 = load i32, ptr %check, align 8
  %shl = shl nuw i32 1, %3
  %or = or i32 %shl, %0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %checks.0 = phi i32 [ %or, %if.then ], [ %0, %entry ]
  ret i32 %checks.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4) i32 @lzma_index_padding_size(ptr nocapture noundef readonly %i) local_unnamed_addr #0 {
entry:
  %record_count = getelementptr inbounds i8, ptr %i, i64 48
  %0 = load i64, ptr %record_count, align 8
  %index_list_size = getelementptr inbounds i8, ptr %i, i64 56
  %1 = load i64, ptr %index_list_size, align 8
  %call.i = tail call i32 @lzma_vli_size(i64 noundef %0) #12
  %2 = trunc i64 %1 to i32
  %3 = add i32 %call.i, %2
  %4 = sub i32 3, %3
  %conv = and i32 %4, 3
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_stream_flags(ptr noundef readonly %i, ptr noundef %stream_flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %i, null
  %cmp1 = icmp eq ptr %stream_flags, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %do.body

do.body:                                          ; preds = %entry
  %call = tail call i32 @lzma_stream_flags_compare(ptr noundef nonnull %stream_flags, ptr noundef nonnull %stream_flags) #12
  %cmp2.not.not = icmp eq i32 %call, 0
  br i1 %cmp2.not.not, label %do.end, label %return

do.end:                                           ; preds = %do.body
  %rightmost = getelementptr inbounds i8, ptr %i, i64 16
  %0 = load ptr, ptr %rightmost, align 8
  %stream_flags5 = getelementptr inbounds i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags5, ptr noundef nonnull align 8 dereferenceable(56) %stream_flags, i64 56, i1 false)
  br label %return

return:                                           ; preds = %do.body, %entry, %do.end
  %retval.1 = phi i32 [ %call, %do.body ], [ 0, %do.end ], [ 11, %entry ]
  ret i32 %retval.1
}

declare i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_index_stream_padding(ptr noundef readonly %i, i64 noundef %stream_padding) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne ptr %i, null
  %0 = and i64 %stream_padding, -9223372036854775805
  %1 = icmp eq i64 %0, 0
  %or.cond20 = and i1 %cmp, %1
  br i1 %or.cond20, label %if.end, label %return

if.end:                                           ; preds = %entry
  %rightmost = getelementptr inbounds i8, ptr %i, i64 16
  %2 = load ptr, ptr %rightmost, align 8
  %stream_padding4 = getelementptr inbounds i8, ptr %2, i64 160
  %3 = load i64, ptr %stream_padding4, align 8
  store i64 0, ptr %stream_padding4, align 8
  %4 = load ptr, ptr %rightmost, align 8
  %rightmost1.i = getelementptr inbounds i8, ptr %4, i64 72
  %5 = load ptr, ptr %rightmost1.i, align 8
  %compressed_base.i = getelementptr inbounds i8, ptr %4, i64 8
  %6 = load i64, ptr %compressed_base.i, align 8
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %cond.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %if.end
  %records.i = getelementptr inbounds i8, ptr %5, i64 64
  %last.i = getelementptr inbounds i8, ptr %5, i64 56
  %7 = load i64, ptr %last.i, align 8
  %unpadded_sum.i = getelementptr inbounds [0 x %struct.index_record], ptr %records.i, i64 0, i64 %7, i32 1
  %8 = load i64, ptr %unpadded_sum.i, align 8
  %9 = add i64 %8, 3
  %10 = and i64 %9, -4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end
  %cond.i = phi i64 [ %10, %cond.false.i ], [ 0, %if.end ]
  %stream_padding.i = getelementptr inbounds i8, ptr %4, i64 160
  %11 = load i64, ptr %stream_padding.i, align 8
  %add.i.i = add i64 %6, 24
  %add1.i.i = add i64 %add.i.i, %cond.i
  %add2.i.i = add i64 %add1.i.i, %11
  %cmp.i.i = icmp slt i64 %add2.i.i, 0
  br i1 %cmp.i.i, label %lzma_index_file_size.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.end.i
  %index_list_size.i = getelementptr inbounds i8, ptr %4, i64 96
  %12 = load i64, ptr %index_list_size.i, align 8
  %record_count.i = getelementptr inbounds i8, ptr %4, i64 88
  %13 = load i64, ptr %record_count.i, align 8
  %call.i.i.i.i = tail call i32 @lzma_vli_size(i64 noundef %13) #12
  %add.i.i.i.i = add i32 %call.i.i.i.i, 1
  %conv.i.i.i.i = zext i32 %add.i.i.i.i to i64
  %add2.i.i.i.i = add i64 %12, 7
  %add.i2.i.i.i = add i64 %add2.i.i.i.i, %conv.i.i.i.i
  %and.i.i.i.i = and i64 %add.i2.i.i.i, -4
  %add4.i.i = add i64 %and.i.i.i.i, %add2.i.i
  %.add4.i.i = tail call i64 @llvm.smax.i64(i64 %add4.i.i, i64 -1)
  br label %lzma_index_file_size.exit

lzma_index_file_size.exit:                        ; preds = %cond.end.i, %if.end.i.i
  %retval.0.i.i = phi i64 [ -1, %cond.end.i ], [ %.add4.i.i, %if.end.i.i ]
  %add = add i64 %retval.0.i.i, %stream_padding
  %cmp6 = icmp slt i64 %add, 0
  %.stream_padding = select i1 %cmp6, i64 %3, i64 %stream_padding
  %. = select i1 %cmp6, i32 9, i32 0
  store i64 %.stream_padding, ptr %stream_padding4, align 8
  br label %return

return:                                           ; preds = %entry, %lzma_index_file_size.exit
  %retval.1 = phi i32 [ %., %lzma_index_file_size.exit ], [ 11, %entry ]
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_index_append(ptr noundef %i, ptr noundef %allocator, i64 noundef %unpadded_size, i64 noundef %uncompressed_size) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %i, null
  %0 = add i64 %unpadded_size, -9223372036854775805
  %1 = icmp ult i64 %0, -9223372036854775800
  %or.cond92 = or i1 %cmp, %1
  %cmp5 = icmp slt i64 %uncompressed_size, 0
  %or.cond93 = or i1 %cmp5, %or.cond92
  br i1 %or.cond93, label %return, label %if.end

if.end:                                           ; preds = %entry
  %rightmost = getelementptr inbounds i8, ptr %i, i64 16
  %2 = load ptr, ptr %rightmost, align 8
  %groups = getelementptr inbounds i8, ptr %2, i64 56
  %rightmost6 = getelementptr inbounds i8, ptr %2, i64 72
  %3 = load ptr, ptr %rightmost6, align 8
  %cmp7 = icmp eq ptr %3, null
  br i1 %cmp7, label %cond.end14, label %cond.false10

cond.false10:                                     ; preds = %if.end
  %records = getelementptr inbounds i8, ptr %3, i64 64
  %last = getelementptr inbounds i8, ptr %3, i64 56
  %4 = load i64, ptr %last, align 8
  %unpadded_sum = getelementptr inbounds [0 x %struct.index_record], ptr %records, i64 0, i64 %4, i32 1
  %5 = load i64, ptr %unpadded_sum, align 8
  %add.i = add i64 %5, 3
  %and.i = and i64 %add.i, -4
  %arrayidx13 = getelementptr inbounds [0 x %struct.index_record], ptr %records, i64 0, i64 %4
  %6 = load i64, ptr %arrayidx13, align 8
  br label %cond.end14

cond.end14:                                       ; preds = %if.end, %cond.false10
  %cond152 = phi i64 [ %and.i, %cond.false10 ], [ 0, %if.end ]
  %cond15 = phi i64 [ %6, %cond.false10 ], [ 0, %if.end ]
  %call16 = tail call i32 @lzma_vli_size(i64 noundef %unpadded_size) #12
  %call17 = tail call i32 @lzma_vli_size(i64 noundef %uncompressed_size) #12
  %add = add i32 %call17, %call16
  %compressed_base18 = getelementptr inbounds i8, ptr %2, i64 8
  %7 = load i64, ptr %compressed_base18, align 8
  %add19 = add i64 %cond152, %unpadded_size
  %record_count = getelementptr inbounds i8, ptr %2, i64 88
  %conv = zext i32 %add to i64
  %stream_padding = getelementptr inbounds i8, ptr %2, i64 160
  %8 = load i64, ptr %stream_padding, align 8
  %add.i.i = add i64 %add19, 3
  %and.i.i = and i64 %add.i.i, -4
  %add.i146 = add i64 %and.i.i, 24
  %add1.i = add i64 %add.i146, %7
  %add2.i = add i64 %add1.i, %8
  %cmp.i = icmp slt i64 %add2.i, 0
  br i1 %cmp.i, label %return, label %index_file_size.exit

index_file_size.exit:                             ; preds = %cond.end14
  %index_list_size = getelementptr inbounds i8, ptr %2, i64 96
  %9 = load i64, ptr %index_list_size, align 8
  %10 = load i64, ptr %record_count, align 8
  %add20 = add i64 %10, 1
  %call.i.i.i = tail call i32 @lzma_vli_size(i64 noundef %add20) #12
  %add.i.i.i = add i32 %call.i.i.i, 1
  %conv.i.i.i = zext i32 %add.i.i.i to i64
  %add21 = add nuw nsw i64 %conv, 7
  %add2.i.i.i = add i64 %add21, %9
  %add.i2.i.i = add i64 %add2.i.i.i, %conv.i.i.i
  %and.i.i.i = and i64 %add.i2.i.i, -4
  %add4.i = add i64 %and.i.i.i, %add2.i
  %cmp23 = icmp slt i64 %add4.i, 0
  br i1 %cmp23, label %return, label %if.end26

if.end26:                                         ; preds = %index_file_size.exit
  %record_count27 = getelementptr inbounds i8, ptr %i, i64 48
  %11 = load i64, ptr %record_count27, align 8
  %add28 = add i64 %11, 1
  %index_list_size29 = getelementptr inbounds i8, ptr %i, i64 56
  %12 = load i64, ptr %index_list_size29, align 8
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef %add28) #12
  %add.i.i147 = add i32 %call.i.i, 1
  %conv.i.i = zext i32 %add.i.i147 to i64
  %add2.i.i = add i64 %add21, %12
  %add.i2.i = add i64 %add2.i.i, %conv.i.i
  %and.i.i148 = and i64 %add.i2.i, -4
  %cmp33 = icmp ugt i64 %and.i.i148, 17179869184
  br i1 %cmp33, label %return, label %if.end36

if.end36:                                         ; preds = %if.end26
  br i1 %cmp7, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end36
  %last39 = getelementptr inbounds i8, ptr %3, i64 56
  %13 = load i64, ptr %last39, align 8
  %add40 = add i64 %13, 1
  %allocated = getelementptr inbounds i8, ptr %3, i64 48
  %14 = load i64, ptr %allocated, align 8
  %cmp41 = icmp ult i64 %add40, %14
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %land.lhs.true
  store i64 %add40, ptr %last39, align 8
  br label %if.end63

if.else:                                          ; preds = %land.lhs.true, %if.end36
  %prealloc = getelementptr inbounds i8, ptr %i, i64 64
  %15 = load i64, ptr %prealloc, align 8
  %mul = shl i64 %15, 4
  %add45 = add i64 %mul, 64
  %call46 = tail call ptr @lzma_alloc(i64 noundef %add45, ptr noundef %allocator) #12
  %cmp47 = icmp eq ptr %call46, null
  br i1 %cmp47, label %return, label %if.end50

if.end50:                                         ; preds = %if.else
  %last51 = getelementptr inbounds i8, ptr %call46, i64 56
  store i64 0, ptr %last51, align 8
  %16 = load i64, ptr %prealloc, align 8
  %allocated53 = getelementptr inbounds i8, ptr %call46, i64 48
  store i64 %16, ptr %allocated53, align 8
  store i64 512, ptr %prealloc, align 8
  store i64 %cond15, ptr %call46, align 8
  %compressed_base58 = getelementptr inbounds i8, ptr %call46, i64 8
  store i64 %cond152, ptr %compressed_base58, align 8
  %17 = load i64, ptr %record_count, align 8
  %add60 = add i64 %17, 1
  %number_base = getelementptr inbounds i8, ptr %call46, i64 40
  store i64 %add60, ptr %number_base, align 8
  tail call fastcc void @index_tree_append(ptr noundef nonnull %groups, ptr noundef nonnull %call46)
  %.pre = load i64, ptr %last51, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.end50, %if.then43
  %18 = phi i64 [ %add40, %if.then43 ], [ %.pre, %if.end50 ]
  %g.0 = phi ptr [ %3, %if.then43 ], [ %call46, %if.end50 ]
  %add64 = add i64 %cond15, %uncompressed_size
  %records65 = getelementptr inbounds i8, ptr %g.0, i64 64
  %arrayidx67 = getelementptr inbounds [0 x %struct.index_record], ptr %records65, i64 0, i64 %18
  store i64 %add64, ptr %arrayidx67, align 8
  %unpadded_sum73 = getelementptr inbounds [0 x %struct.index_record], ptr %records65, i64 0, i64 %18, i32 1
  store i64 %add19, ptr %unpadded_sum73, align 8
  %19 = load <2 x i64>, ptr %record_count, align 8
  %20 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %conv, i64 1
  %21 = add <2 x i64> %19, %20
  store <2 x i64> %21, ptr %record_count, align 8
  %add.i149 = add nuw nsw i64 %unpadded_size, 3
  %and.i150 = and i64 %add.i149, 9223372036854775804
  %total_size = getelementptr inbounds i8, ptr %i, i64 40
  %uncompressed_size81 = getelementptr inbounds i8, ptr %i, i64 32
  %22 = load i64, ptr %uncompressed_size81, align 8
  %add82 = add i64 %22, %uncompressed_size
  store i64 %add82, ptr %uncompressed_size81, align 8
  %23 = load <2 x i64>, ptr %total_size, align 8
  %24 = insertelement <2 x i64> <i64 poison, i64 1>, i64 %and.i150, i64 0
  %25 = add <2 x i64> %23, %24
  store <2 x i64> %25, ptr %total_size, align 8
  %26 = load i64, ptr %index_list_size29, align 8
  %add87 = add i64 %26, %conv
  store i64 %add87, ptr %index_list_size29, align 8
  br label %return

return:                                           ; preds = %cond.end14, %if.end63, %index_file_size.exit, %if.end26, %if.else, %entry
  %retval.1 = phi i32 [ 11, %entry ], [ 0, %if.end63 ], [ 9, %index_file_size.exit ], [ 9, %if.end26 ], [ 5, %if.else ], [ 9, %cond.end14 ]
  ret i32 %retval.1
}

declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 10) i32 @lzma_index_cat(ptr noalias noundef %dest, ptr noalias noundef %src, ptr noundef %allocator) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.index_cat_info, align 8
  %rightmost.i = getelementptr inbounds i8, ptr %dest, i64 16
  %0 = load ptr, ptr %rightmost.i, align 8
  %rightmost1.i = getelementptr inbounds i8, ptr %0, i64 72
  %1 = load ptr, ptr %rightmost1.i, align 8
  %compressed_base.i = getelementptr inbounds i8, ptr %0, i64 8
  %2 = load i64, ptr %compressed_base.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %cond.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %entry
  %records.i = getelementptr inbounds i8, ptr %1, i64 64
  %last.i = getelementptr inbounds i8, ptr %1, i64 56
  %3 = load i64, ptr %last.i, align 8
  %unpadded_sum.i = getelementptr inbounds [0 x %struct.index_record], ptr %records.i, i64 0, i64 %3, i32 1
  %4 = load i64, ptr %unpadded_sum.i, align 8
  %5 = add i64 %4, 3
  %6 = and i64 %5, -4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %entry
  %cond.i = phi i64 [ %6, %cond.false.i ], [ 0, %entry ]
  %stream_padding.i = getelementptr inbounds i8, ptr %0, i64 160
  %7 = load i64, ptr %stream_padding.i, align 8
  %add.i.i = add i64 %2, 24
  %add1.i.i = add i64 %add.i.i, %cond.i
  %add2.i.i = add i64 %add1.i.i, %7
  %cmp.i.i = icmp slt i64 %add2.i.i, 0
  br i1 %cmp.i.i, label %lzma_index_file_size.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.end.i
  %index_list_size.i = getelementptr inbounds i8, ptr %0, i64 96
  %8 = load i64, ptr %index_list_size.i, align 8
  %record_count.i = getelementptr inbounds i8, ptr %0, i64 88
  %9 = load i64, ptr %record_count.i, align 8
  %call.i.i.i.i = tail call i32 @lzma_vli_size(i64 noundef %9) #12
  %add.i.i.i.i = add i32 %call.i.i.i.i, 1
  %conv.i.i.i.i = zext i32 %add.i.i.i.i to i64
  %add2.i.i.i.i = add i64 %8, 7
  %add.i2.i.i.i = add i64 %add2.i.i.i.i, %conv.i.i.i.i
  %and.i.i.i.i = and i64 %add.i2.i.i.i, -4
  %add4.i.i = add i64 %and.i.i.i.i, %add2.i.i
  %.add4.i.i = tail call i64 @llvm.smax.i64(i64 %add4.i.i, i64 -1)
  br label %lzma_index_file_size.exit

lzma_index_file_size.exit:                        ; preds = %cond.end.i, %if.end.i.i
  %retval.0.i.i = phi i64 [ -1, %cond.end.i ], [ %.add4.i.i, %if.end.i.i ]
  %rightmost.i155 = getelementptr inbounds i8, ptr %src, i64 16
  %10 = load ptr, ptr %rightmost.i155, align 8
  %rightmost1.i156 = getelementptr inbounds i8, ptr %10, i64 72
  %11 = load ptr, ptr %rightmost1.i156, align 8
  %compressed_base.i157 = getelementptr inbounds i8, ptr %10, i64 8
  %12 = load i64, ptr %compressed_base.i157, align 8
  %cmp.i158 = icmp eq ptr %11, null
  br i1 %cmp.i158, label %cond.end.i163, label %cond.false.i159

cond.false.i159:                                  ; preds = %lzma_index_file_size.exit
  %records.i160 = getelementptr inbounds i8, ptr %11, i64 64
  %last.i161 = getelementptr inbounds i8, ptr %11, i64 56
  %13 = load i64, ptr %last.i161, align 8
  %unpadded_sum.i162 = getelementptr inbounds [0 x %struct.index_record], ptr %records.i160, i64 0, i64 %13, i32 1
  %14 = load i64, ptr %unpadded_sum.i162, align 8
  %15 = add i64 %14, 3
  %16 = and i64 %15, -4
  br label %cond.end.i163

cond.end.i163:                                    ; preds = %cond.false.i159, %lzma_index_file_size.exit
  %cond.i164 = phi i64 [ %16, %cond.false.i159 ], [ 0, %lzma_index_file_size.exit ]
  %stream_padding.i165 = getelementptr inbounds i8, ptr %10, i64 160
  %17 = load i64, ptr %stream_padding.i165, align 8
  %add.i.i166 = add i64 %12, 24
  %add1.i.i167 = add i64 %add.i.i166, %cond.i164
  %add2.i.i168 = add i64 %add1.i.i167, %17
  %cmp.i.i169 = icmp slt i64 %add2.i.i168, 0
  br i1 %cmp.i.i169, label %lzma_index_file_size.exit182, label %if.end.i.i170

if.end.i.i170:                                    ; preds = %cond.end.i163
  %index_list_size.i171 = getelementptr inbounds i8, ptr %10, i64 96
  %18 = load i64, ptr %index_list_size.i171, align 8
  %record_count.i172 = getelementptr inbounds i8, ptr %10, i64 88
  %19 = load i64, ptr %record_count.i172, align 8
  %call.i.i.i.i173 = tail call i32 @lzma_vli_size(i64 noundef %19) #12
  %add.i.i.i.i174 = add i32 %call.i.i.i.i173, 1
  %conv.i.i.i.i175 = zext i32 %add.i.i.i.i174 to i64
  %add2.i.i.i.i176 = add i64 %18, 7
  %add.i2.i.i.i177 = add i64 %add2.i.i.i.i176, %conv.i.i.i.i175
  %and.i.i.i.i178 = and i64 %add.i2.i.i.i177, -4
  %add4.i.i179 = add i64 %and.i.i.i.i178, %add2.i.i168
  %.add4.i.i180 = tail call i64 @llvm.smax.i64(i64 %add4.i.i179, i64 -1)
  br label %lzma_index_file_size.exit182

lzma_index_file_size.exit182:                     ; preds = %cond.end.i163, %if.end.i.i170
  %retval.0.i.i181 = phi i64 [ -1, %cond.end.i163 ], [ %.add4.i.i180, %if.end.i.i170 ]
  %add = add i64 %retval.0.i.i181, %retval.0.i.i
  %cmp = icmp slt i64 %add, 0
  br i1 %cmp, label %cleanup94, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lzma_index_file_size.exit182
  %uncompressed_size = getelementptr inbounds i8, ptr %dest, i64 32
  %20 = load i64, ptr %uncompressed_size, align 8
  %uncompressed_size2 = getelementptr inbounds i8, ptr %src, i64 32
  %21 = load i64, ptr %uncompressed_size2, align 8
  %add3 = add i64 %21, %20
  %cmp4 = icmp slt i64 %add3, 0
  br i1 %cmp4, label %cleanup94, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %record_count = getelementptr inbounds i8, ptr %dest, i64 48
  %22 = load i64, ptr %record_count, align 8
  %index_list_size = getelementptr inbounds i8, ptr %dest, i64 56
  %23 = load i64, ptr %index_list_size, align 8
  %call.i = tail call i32 @lzma_vli_size(i64 noundef %22) #12
  %add.i = add i32 %call.i, 1
  %conv.i = zext i32 %add.i to i64
  %record_count6 = getelementptr inbounds i8, ptr %src, i64 48
  %24 = load <2 x i64>, ptr %record_count6, align 8
  %25 = extractelement <2 x i64> %24, i64 0
  %call.i183 = tail call i32 @lzma_vli_size(i64 noundef %25) #12
  %add.i184 = add i32 %call.i183, 1
  %conv.i185 = zext i32 %add.i184 to i64
  %add1.i = add i64 %23, 11
  %add2.i = add i64 %add1.i, %conv.i
  %26 = extractelement <2 x i64> %24, i64 1
  %add9 = add i64 %add2.i, %26
  %add.i188 = add i64 %add9, %conv.i185
  %and.i = and i64 %add.i188, -4
  %cmp11 = icmp ult i64 %and.i, 17179869185
  br i1 %cmp11, label %cleanup.cont, label %cleanup94

cleanup.cont:                                     ; preds = %if.end
  %groups = getelementptr inbounds i8, ptr %0, i64 56
  %27 = load ptr, ptr %rightmost1.i, align 8
  %cmp16.not = icmp eq ptr %27, null
  br i1 %cmp16.not, label %cleanup.cont71, label %land.lhs.true

land.lhs.true:                                    ; preds = %cleanup.cont
  %last = getelementptr inbounds i8, ptr %27, i64 56
  %28 = load i64, ptr %last, align 8
  %add17 = add i64 %28, 1
  %allocated = getelementptr inbounds i8, ptr %27, i64 48
  %29 = load i64, ptr %allocated, align 8
  %cmp18 = icmp ult i64 %add17, %29
  br i1 %cmp18, label %if.then19, label %cleanup.cont71

if.then19:                                        ; preds = %land.lhs.true
  %mul = shl i64 %add17, 4
  %add22 = add i64 %mul, 64
  %call23 = tail call ptr @lzma_alloc(i64 noundef %add22, ptr noundef %allocator) #12
  %cmp24.not = icmp eq ptr %call23, null
  br i1 %cmp24.not, label %cleanup94, label %if.end26

if.end26:                                         ; preds = %if.then19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %call23, ptr noundef nonnull align 8 dereferenceable(40) %27, i64 40, i1 false)
  %30 = load i64, ptr %last, align 8
  %add29 = add i64 %30, 1
  %allocated30 = getelementptr inbounds i8, ptr %call23, i64 48
  store i64 %add29, ptr %allocated30, align 8
  %31 = load i64, ptr %last, align 8
  %last32 = getelementptr inbounds i8, ptr %call23, i64 56
  store i64 %31, ptr %last32, align 8
  %number_base = getelementptr inbounds i8, ptr %27, i64 40
  %32 = load i64, ptr %number_base, align 8
  %number_base33 = getelementptr inbounds i8, ptr %call23, i64 40
  store i64 %32, ptr %number_base33, align 8
  %records = getelementptr inbounds i8, ptr %call23, i64 64
  %records34 = getelementptr inbounds i8, ptr %27, i64 64
  %mul37 = shl i64 %add29, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %records, ptr nonnull align 8 %records34, i64 %mul37, i1 false)
  %parent = getelementptr inbounds i8, ptr %27, i64 16
  %33 = load ptr, ptr %parent, align 8
  %cmp39.not = icmp eq ptr %33, null
  br i1 %cmp39.not, label %if.end44, label %if.then40

if.then40:                                        ; preds = %if.end26
  %right = getelementptr inbounds i8, ptr %33, i64 32
  store ptr %call23, ptr %right, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end26
  %leftmost = getelementptr inbounds i8, ptr %0, i64 64
  %34 = load ptr, ptr %leftmost, align 8
  %cmp47 = icmp eq ptr %34, %27
  br i1 %cmp47, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.end44
  store ptr %call23, ptr %leftmost, align 8
  store ptr %call23, ptr %groups, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.end44
  %35 = load ptr, ptr %rightmost1.i, align 8
  %cmp58 = icmp eq ptr %35, %27
  br i1 %cmp58, label %if.then59, label %cleanup68.thread192

if.then59:                                        ; preds = %if.end54
  store ptr %call23, ptr %rightmost1.i, align 8
  br label %cleanup68.thread192

cleanup68.thread192:                              ; preds = %if.end54, %if.then59
  tail call void @lzma_free(ptr noundef nonnull %27, ptr noundef %allocator) #12
  br label %cleanup.cont71

cleanup.cont71:                                   ; preds = %cleanup.cont, %land.lhs.true, %cleanup68.thread192
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #12
  store i64 %20, ptr %info, align 8
  %file_size = getelementptr inbounds i8, ptr %info, i64 8
  store i64 %retval.0.i.i, ptr %file_size, align 8
  %block_number_add = getelementptr inbounds i8, ptr %info, i64 16
  store i64 %22, ptr %block_number_add, align 8
  %stream_number_add = getelementptr inbounds i8, ptr %info, i64 24
  %count = getelementptr inbounds i8, ptr %dest, i64 24
  %36 = load i32, ptr %count, align 8
  store i32 %36, ptr %stream_number_add, align 8
  %streams76 = getelementptr inbounds i8, ptr %info, i64 32
  store ptr %dest, ptr %streams76, align 8
  %37 = load ptr, ptr %src, align 8
  call fastcc void @index_cat_helper(ptr noundef nonnull %info, ptr noundef %37)
  %38 = load i64, ptr %uncompressed_size, align 8
  %add82 = add i64 %38, %21
  store i64 %add82, ptr %uncompressed_size, align 8
  %total_size = getelementptr inbounds i8, ptr %src, i64 40
  %39 = load i64, ptr %total_size, align 8
  %total_size83 = getelementptr inbounds i8, ptr %dest, i64 40
  %40 = load i64, ptr %total_size83, align 8
  %add84 = add i64 %40, %39
  store i64 %add84, ptr %total_size83, align 8
  %41 = load <2 x i64>, ptr %record_count, align 8
  %42 = add <2 x i64> %41, %24
  store <2 x i64> %42, ptr %record_count, align 8
  %checks1.i = getelementptr inbounds i8, ptr %dest, i64 72
  %43 = load i32, ptr %checks1.i, align 8
  %44 = load ptr, ptr %rightmost.i, align 8
  %stream_flags.i = getelementptr inbounds i8, ptr %44, i64 104
  %45 = load i32, ptr %stream_flags.i, align 8
  %cmp.not.i = icmp eq i32 %45, -1
  br i1 %cmp.not.i, label %lzma_index_checks.exit, label %if.then.i

if.then.i:                                        ; preds = %cleanup.cont71
  %check.i = getelementptr inbounds i8, ptr %44, i64 120
  %46 = load i32, ptr %check.i, align 8
  %shl.i = shl nuw i32 1, %46
  %or.i = or i32 %shl.i, %43
  br label %lzma_index_checks.exit

lzma_index_checks.exit:                           ; preds = %cleanup.cont71, %if.then.i
  %checks.0.i = phi i32 [ %or.i, %if.then.i ], [ %43, %cleanup.cont71 ]
  %checks = getelementptr inbounds i8, ptr %src, i64 72
  %47 = load i32, ptr %checks, align 8
  %or = or i32 %47, %checks.0.i
  store i32 %or, ptr %checks1.i, align 8
  tail call void @lzma_free(ptr noundef nonnull %src, ptr noundef %allocator) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #12
  br label %cleanup94

cleanup94:                                        ; preds = %if.then19, %lzma_index_file_size.exit182, %lor.lhs.false, %if.end, %lzma_index_checks.exit
  %retval.4 = phi i32 [ 0, %lzma_index_checks.exit ], [ 9, %if.end ], [ 9, %lor.lhs.false ], [ 9, %lzma_index_file_size.exit182 ], [ 5, %if.then19 ]
  ret i32 %retval.4
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @index_cat_helper(ptr nocapture noundef readonly %info, ptr noundef %this) unnamed_addr #9 {
entry:
  %file_size = getelementptr inbounds i8, ptr %info, i64 8
  %stream_number_add = getelementptr inbounds i8, ptr %info, i64 24
  %block_number_add = getelementptr inbounds i8, ptr %info, i64 16
  %streams = getelementptr inbounds i8, ptr %info, i64 32
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.end, %entry
  %this.tr = phi ptr [ %this, %entry ], [ %1, %if.end ]
  %left1 = getelementptr inbounds i8, ptr %this.tr, i64 24
  %0 = load ptr, ptr %left1, align 8
  %right3 = getelementptr inbounds i8, ptr %this.tr, i64 32
  %1 = load ptr, ptr %right3, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %tailrecurse
  tail call fastcc void @index_cat_helper(ptr noundef %info, ptr noundef nonnull %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %tailrecurse
  %2 = load i64, ptr %info, align 8
  %3 = load i64, ptr %this.tr, align 8
  %add = add i64 %3, %2
  store i64 %add, ptr %this.tr, align 8
  %4 = load i64, ptr %file_size, align 8
  %compressed_base = getelementptr inbounds i8, ptr %this.tr, i64 8
  %5 = load i64, ptr %compressed_base, align 8
  %add6 = add i64 %5, %4
  store i64 %add6, ptr %compressed_base, align 8
  %6 = load i32, ptr %stream_number_add, align 8
  %number = getelementptr inbounds i8, ptr %this.tr, i64 40
  %7 = load i32, ptr %number, align 8
  %add7 = add i32 %7, %6
  store i32 %add7, ptr %number, align 8
  %8 = load i64, ptr %block_number_add, align 8
  %block_number_base = getelementptr inbounds i8, ptr %this.tr, i64 48
  %9 = load i64, ptr %block_number_base, align 8
  %add8 = add i64 %9, %8
  store i64 %add8, ptr %block_number_base, align 8
  %10 = load ptr, ptr %streams, align 8
  tail call fastcc void @index_tree_append(ptr noundef %10, ptr noundef nonnull %this.tr)
  %cmp10.not = icmp eq ptr %1, null
  br i1 %cmp10.not, label %if.end12, label %tailrecurse

if.end12:                                         ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lzma_index_dup(ptr nocapture noundef readonly %src, ptr noundef %allocator) local_unnamed_addr #0 {
entry:
  %call.i = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %allocator) #12
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %cleanup14, label %if.end

if.end:                                           ; preds = %entry
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %call.i, i8 0, i64 28, i1 false)
  %uncompressed_size.i = getelementptr inbounds i8, ptr %call.i, i64 32
  %prealloc.i = getelementptr inbounds i8, ptr %call.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %uncompressed_size.i, i8 0, i64 32, i1 false)
  store i64 512, ptr %prealloc.i, align 8
  %checks.i = getelementptr inbounds i8, ptr %call.i, i64 72
  store i32 0, ptr %checks.i, align 8
  %uncompressed_size = getelementptr inbounds i8, ptr %src, i64 32
  %0 = load i64, ptr %uncompressed_size, align 8
  store i64 %0, ptr %uncompressed_size.i, align 8
  %total_size = getelementptr inbounds i8, ptr %src, i64 40
  %1 = load i64, ptr %total_size, align 8
  %total_size2 = getelementptr inbounds i8, ptr %call.i, i64 40
  store i64 %1, ptr %total_size2, align 8
  %record_count = getelementptr inbounds i8, ptr %src, i64 48
  %2 = load i64, ptr %record_count, align 8
  %record_count3 = getelementptr inbounds i8, ptr %call.i, i64 48
  store i64 %2, ptr %record_count3, align 8
  %index_list_size = getelementptr inbounds i8, ptr %src, i64 56
  %3 = load i64, ptr %index_list_size, align 8
  %index_list_size4 = getelementptr inbounds i8, ptr %call.i, i64 56
  store i64 %3, ptr %index_list_size4, align 8
  %leftmost = getelementptr inbounds i8, ptr %src, i64 8
  %4 = load ptr, ptr %leftmost, align 8
  %record_count.i58 = getelementptr inbounds i8, ptr %4, i64 88
  %5 = load i64, ptr %record_count.i58, align 8
  %cmp.i59 = icmp ugt i64 %5, 1152921504606846971
  br i1 %cmp.i59, label %if.then.i32, label %if.end.i

if.end.i:                                         ; preds = %if.end, %do.cond
  %record_count.i61 = phi ptr [ %record_count.i, %do.cond ], [ %record_count.i58, %if.end ]
  %srcstream.060 = phi ptr [ %srcstream.1, %do.cond ], [ %4, %if.end ]
  %6 = load <2 x i64>, ptr %srcstream.060, align 8
  %number.i = getelementptr inbounds i8, ptr %srcstream.060, i64 40
  %7 = load i32, ptr %number.i, align 8
  %block_number_base.i = getelementptr inbounds i8, ptr %srcstream.060, i64 48
  %8 = load i64, ptr %block_number_base.i, align 8
  %call.i.i = tail call ptr @lzma_alloc(i64 noundef 168, ptr noundef %allocator) #12
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.then.i32, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  store <2 x i64> %6, ptr %call.i.i, align 8
  %parent.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 16
  %number.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %parent.i.i, i8 0, i64 24, i1 false)
  store i32 %7, ptr %number.i.i, align 8
  %block_number_base7.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 48
  store i64 %8, ptr %block_number_base7.i.i, align 8
  %groups.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %groups.i.i, i8 0, i64 28, i1 false)
  %record_count.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 88
  %stream_flags.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %record_count.i.i, i8 0, i64 16, i1 false)
  store i32 -1, ptr %stream_flags.i.i, align 8
  %stream_padding.i.i = getelementptr inbounds i8, ptr %call.i.i, i64 160
  store i64 0, ptr %stream_padding.i.i, align 8
  %leftmost.i = getelementptr inbounds i8, ptr %srcstream.060, i64 64
  %9 = load ptr, ptr %leftmost.i, align 8
  %cmp4.i = icmp eq ptr %9, null
  br i1 %cmp4.i, label %if.end8, label %if.end7.i

if.end7.i:                                        ; preds = %lor.lhs.false.i
  %10 = load i64, ptr %record_count.i61, align 8
  store i64 %10, ptr %record_count.i.i, align 8
  %index_list_size.i = getelementptr inbounds i8, ptr %srcstream.060, i64 96
  %11 = load i64, ptr %index_list_size.i, align 8
  %index_list_size10.i = getelementptr inbounds i8, ptr %call.i.i, i64 96
  store i64 %11, ptr %index_list_size10.i, align 8
  %stream_flags11.i = getelementptr inbounds i8, ptr %srcstream.060, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %stream_flags.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %stream_flags11.i, i64 56, i1 false)
  %stream_padding.i = getelementptr inbounds i8, ptr %srcstream.060, i64 160
  %12 = load i64, ptr %stream_padding.i, align 8
  store i64 %12, ptr %stream_padding.i.i, align 8
  %13 = load i64, ptr %record_count.i61, align 8
  %mul.i = shl i64 %13, 4
  %add.i = add i64 %mul.i, 64
  %call14.i = tail call ptr @lzma_alloc(i64 noundef %add.i, ptr noundef %allocator) #12
  %cmp15.i = icmp eq ptr %call14.i, null
  br i1 %cmp15.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %if.end7.i
  %groups.val.i.i = load ptr, ptr %groups.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %groups.val.i.i, null
  br i1 %cmp.not.i.i.i, label %if.then.i32, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then17.i
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %groups.val.i.i, ptr noundef %allocator, ptr noundef null)
  br label %if.then.i32

if.end18.i:                                       ; preds = %if.end7.i
  %number_base.i = getelementptr inbounds i8, ptr %call14.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %call14.i, i8 0, i64 16, i1 false)
  store i64 1, ptr %number_base.i, align 8
  %14 = load i64, ptr %record_count.i61, align 8
  %allocated.i = getelementptr inbounds i8, ptr %call14.i, i64 48
  store i64 %14, ptr %allocated.i, align 8
  %sub.i = add i64 %14, -1
  %last.i = getelementptr inbounds i8, ptr %call14.i, i64 56
  store i64 %sub.i, ptr %last.i, align 8
  %15 = load ptr, ptr %leftmost.i, align 8
  %records.i = getelementptr inbounds i8, ptr %call14.i, i64 64
  br label %do.body.i

do.body.i.backedge:                               ; preds = %while.cond.i.i, %land.rhs.i.i
  %srcg.0.i.be = phi ptr [ %20, %land.rhs.i.i ], [ %node.addr.0.i.i, %while.cond.i.i ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %if.end18.i
  %srcg.0.i = phi ptr [ %15, %if.end18.i ], [ %srcg.0.i.be, %do.body.i.backedge ]
  %i.0.i = phi i64 [ 0, %if.end18.i ], [ %add34.i, %do.body.i.backedge ]
  %add.ptr.i = getelementptr inbounds %struct.index_record, ptr %records.i, i64 %i.0.i
  %records27.i = getelementptr inbounds i8, ptr %srcg.0.i, i64 64
  %last29.i = getelementptr inbounds i8, ptr %srcg.0.i, i64 56
  %16 = load i64, ptr %last29.i, align 8
  %add30.i = shl i64 %16, 4
  %mul31.i = add i64 %add30.i, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %add.ptr.i, ptr nonnull align 8 %records27.i, i64 %mul31.i, i1 false)
  %17 = load i64, ptr %last29.i, align 8
  %add33.i = add i64 %i.0.i, 1
  %add34.i = add i64 %add33.i, %17
  %right.i.i = getelementptr inbounds i8, ptr %srcg.0.i, i64 32
  %18 = load ptr, ptr %right.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %18, null
  br i1 %cmp.not.i.i, label %while.cond4.i.i, label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.body.i, %while.cond.i.i
  %node.addr.0.i.i = phi ptr [ %19, %while.cond.i.i ], [ %18, %do.body.i ]
  %left.i.i = getelementptr inbounds i8, ptr %node.addr.0.i.i, i64 24
  %19 = load ptr, ptr %left.i.i, align 8
  %cmp2.not.i.i = icmp eq ptr %19, null
  br i1 %cmp2.not.i.i, label %do.body.i.backedge, label %while.cond.i.i

while.cond4.i.i:                                  ; preds = %do.body.i, %land.rhs.i.i
  %node.addr.1.i.i = phi ptr [ %20, %land.rhs.i.i ], [ %srcg.0.i, %do.body.i ]
  %parent.i78.i = getelementptr inbounds i8, ptr %node.addr.1.i.i, i64 16
  %20 = load ptr, ptr %parent.i78.i, align 8
  %cmp5.not.i.i = icmp eq ptr %20, null
  br i1 %cmp5.not.i.i, label %index_dup_stream.exit, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.cond4.i.i
  %right7.i.i = getelementptr inbounds i8, ptr %20, i64 32
  %21 = load ptr, ptr %right7.i.i, align 8
  %cmp8.i.i = icmp eq ptr %21, %node.addr.1.i.i
  br i1 %cmp8.i.i, label %while.cond4.i.i, label %do.body.i.backedge

index_dup_stream.exit:                            ; preds = %while.cond4.i.i
  tail call fastcc void @index_tree_append(ptr noundef nonnull %groups.i.i, ptr noundef nonnull %call14.i)
  br label %if.end8

if.then.i32:                                      ; preds = %do.cond, %if.end.i, %if.end, %if.then.i.i.i, %if.then17.i
  %i.val.i = load ptr, ptr %call.i, align 8
  %cmp.not.i.i33 = icmp eq ptr %i.val.i, null
  br i1 %cmp.not.i.i33, label %cleanup.thread, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i32
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %i.val.i, ptr noundef %allocator, ptr noundef nonnull @index_stream_end)
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i.i, %if.then.i32
  tail call void @lzma_free(ptr noundef nonnull %call.i, ptr noundef %allocator) #12
  br label %cleanup14

if.end8:                                          ; preds = %index_dup_stream.exit, %lor.lhs.false.i
  tail call fastcc void @index_tree_append(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i.i)
  %right.i = getelementptr inbounds i8, ptr %srcstream.060, i64 32
  %22 = load ptr, ptr %right.i, align 8
  %cmp.not.i35 = icmp eq ptr %22, null
  br i1 %cmp.not.i35, label %while.cond4.i, label %while.cond.i

while.cond.i:                                     ; preds = %if.end8, %while.cond.i
  %node.addr.0.i = phi ptr [ %23, %while.cond.i ], [ %22, %if.end8 ]
  %left.i = getelementptr inbounds i8, ptr %node.addr.0.i, i64 24
  %23 = load ptr, ptr %left.i, align 8
  %cmp2.not.i = icmp eq ptr %23, null
  br i1 %cmp2.not.i, label %do.cond, label %while.cond.i

while.cond4.i:                                    ; preds = %if.end8, %land.rhs.i
  %node.addr.1.i = phi ptr [ %24, %land.rhs.i ], [ %srcstream.060, %if.end8 ]
  %parent.i = getelementptr inbounds i8, ptr %node.addr.1.i, i64 16
  %24 = load ptr, ptr %parent.i, align 8
  %cmp5.not.i = icmp eq ptr %24, null
  br i1 %cmp5.not.i, label %cleanup14, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond4.i
  %right7.i = getelementptr inbounds i8, ptr %24, i64 32
  %25 = load ptr, ptr %right7.i, align 8
  %cmp8.i = icmp eq ptr %25, %node.addr.1.i
  br i1 %cmp8.i, label %while.cond4.i, label %do.cond

do.cond:                                          ; preds = %while.cond.i, %land.rhs.i
  %srcstream.1 = phi ptr [ %24, %land.rhs.i ], [ %node.addr.0.i, %while.cond.i ]
  %record_count.i = getelementptr inbounds i8, ptr %srcstream.1, i64 88
  %26 = load i64, ptr %record_count.i, align 8
  %cmp.i = icmp ugt i64 %26, 1152921504606846971
  br i1 %cmp.i, label %if.then.i32, label %if.end.i

cleanup14:                                        ; preds = %while.cond4.i, %entry, %cleanup.thread
  %retval.3 = phi ptr [ null, %cleanup.thread ], [ null, %entry ], [ %call.i, %while.cond4.i ]
  ret ptr %retval.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_iter_init(ptr nocapture noundef writeonly %iter, ptr noundef %i) local_unnamed_addr #4 {
entry:
  %internal = getelementptr inbounds i8, ptr %iter, i64 256
  store ptr %i, ptr %internal, align 8
  %arrayidx.i = getelementptr inbounds i8, ptr %iter, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @lzma_index_iter_rewind(ptr nocapture noundef writeonly %iter) local_unnamed_addr #4 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %iter, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_index_iter_next(ptr nocapture noundef %iter, i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %mode, 3
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %iter, i64 256
  %0 = load ptr, ptr %internal, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %iter, i64 264
  %1 = load ptr, ptr %arrayidx2, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %iter, i64 280
  %2 = load i64, ptr %arrayidx4, align 8
  %cmp5.not = icmp eq i32 %mode, 1
  br i1 %cmp5.not, label %if.end15, label %if.then6

if.then6:                                         ; preds = %if.end
  %arrayidx8 = getelementptr inbounds i8, ptr %iter, i64 288
  %3 = load i64, ptr %arrayidx8, align 8
  switch i64 %3, label %if.end15 [
    i64 0, label %sw.bb
    i64 1, label %sw.bb11
    i64 2, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.then6
  %arrayidx10 = getelementptr inbounds i8, ptr %iter, i64 272
  br label %if.end15.sink.split

sw.bb11:                                          ; preds = %if.then6
  %arrayidx13 = getelementptr inbounds i8, ptr %iter, i64 272
  %4 = load ptr, ptr %arrayidx13, align 8
  %right.i = getelementptr inbounds i8, ptr %4, i64 32
  %5 = load ptr, ptr %right.i, align 8
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %while.cond4.i, label %while.cond.i

while.cond.i:                                     ; preds = %sw.bb11, %while.cond.i
  %node.addr.0.i = phi ptr [ %6, %while.cond.i ], [ %5, %sw.bb11 ]
  %left.i = getelementptr inbounds i8, ptr %node.addr.0.i, i64 24
  %6 = load ptr, ptr %left.i, align 8
  %cmp2.not.i = icmp eq ptr %6, null
  br i1 %cmp2.not.i, label %if.end15, label %while.cond.i

while.cond4.i:                                    ; preds = %sw.bb11, %land.rhs.i
  %node.addr.1.i = phi ptr [ %7, %land.rhs.i ], [ %4, %sw.bb11 ]
  %parent.i = getelementptr inbounds i8, ptr %node.addr.1.i, i64 16
  %7 = load ptr, ptr %parent.i, align 8
  %cmp5.not.i = icmp eq ptr %7, null
  br i1 %cmp5.not.i, label %if.end15, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond4.i
  %right7.i = getelementptr inbounds i8, ptr %7, i64 32
  %8 = load ptr, ptr %right7.i, align 8
  %cmp8.i = icmp eq ptr %8, %node.addr.1.i
  br i1 %cmp8.i, label %while.cond4.i, label %if.end15

sw.bb14:                                          ; preds = %if.then6
  %leftmost = getelementptr inbounds i8, ptr %1, i64 64
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %sw.bb14, %sw.bb
  %arrayidx10.sink = phi ptr [ %arrayidx10, %sw.bb ], [ %leftmost, %sw.bb14 ]
  %9 = load ptr, ptr %arrayidx10.sink, align 8
  br label %if.end15

if.end15:                                         ; preds = %while.cond.i, %land.rhs.i, %while.cond4.i, %if.end15.sink.split, %if.then6, %if.end
  %group.0 = phi ptr [ null, %if.then6 ], [ null, %if.end ], [ %9, %if.end15.sink.split ], [ null, %while.cond4.i ], [ %7, %land.rhs.i ], [ %node.addr.0.i, %while.cond.i ]
  %cmp47 = icmp ugt i32 %mode, 1
  %leftmost18 = getelementptr inbounds i8, ptr %0, i64 8
  %cmp56 = icmp eq i32 %mode, 3
  br label %again

again:                                            ; preds = %again.backedge, %if.end15
  %stream.0 = phi ptr [ %1, %if.end15 ], [ %stream.4, %again.backedge ]
  %group.1 = phi ptr [ %group.0, %if.end15 ], [ %group.3, %again.backedge ]
  %record.0 = phi i64 [ %2, %if.end15 ], [ %record.1, %again.backedge ]
  %cmp16 = icmp eq ptr %stream.0, null
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %again
  %10 = load ptr, ptr %leftmost18, align 8
  %leftmost22184 = getelementptr inbounds i8, ptr %10, i64 64
  %11 = load ptr, ptr %leftmost22184, align 8
  br i1 %cmp47, label %while.cond.preheader, label %if.end76

while.cond.preheader:                             ; preds = %if.then17
  %cmp23185 = icmp eq ptr %11, null
  br i1 %cmp23185, label %while.body, label %if.end55

while.body:                                       ; preds = %while.cond.preheader, %index_tree_next.exit137
  %stream.1186 = phi ptr [ %retval.0.i129, %index_tree_next.exit137 ], [ %10, %while.cond.preheader ]
  %right.i123 = getelementptr inbounds i8, ptr %stream.1186, i64 32
  %12 = load ptr, ptr %right.i123, align 8
  %cmp.not.i124 = icmp eq ptr %12, null
  br i1 %cmp.not.i124, label %while.cond4.i130, label %while.cond.i125

while.cond.i125:                                  ; preds = %while.body, %while.cond.i125
  %node.addr.0.i126 = phi ptr [ %13, %while.cond.i125 ], [ %12, %while.body ]
  %left.i127 = getelementptr inbounds i8, ptr %node.addr.0.i126, i64 24
  %13 = load ptr, ptr %left.i127, align 8
  %cmp2.not.i128 = icmp eq ptr %13, null
  br i1 %cmp2.not.i128, label %index_tree_next.exit137, label %while.cond.i125

while.cond4.i130:                                 ; preds = %while.body, %land.rhs.i134
  %node.addr.1.i131 = phi ptr [ %14, %land.rhs.i134 ], [ %stream.1186, %while.body ]
  %parent.i132 = getelementptr inbounds i8, ptr %node.addr.1.i131, i64 16
  %14 = load ptr, ptr %parent.i132, align 8
  %cmp5.not.i133 = icmp eq ptr %14, null
  br i1 %cmp5.not.i133, label %return, label %land.rhs.i134

land.rhs.i134:                                    ; preds = %while.cond4.i130
  %right7.i135 = getelementptr inbounds i8, ptr %14, i64 32
  %15 = load ptr, ptr %right7.i135, align 8
  %cmp8.i136 = icmp eq ptr %15, %node.addr.1.i131
  br i1 %cmp8.i136, label %while.cond4.i130, label %index_tree_next.exit137

index_tree_next.exit137:                          ; preds = %while.cond.i125, %land.rhs.i134
  %retval.0.i129 = phi ptr [ %14, %land.rhs.i134 ], [ %node.addr.0.i126, %while.cond.i125 ]
  %leftmost22 = getelementptr inbounds i8, ptr %retval.0.i129, i64 64
  %16 = load ptr, ptr %leftmost22, align 8
  %cmp23 = icmp eq ptr %16, null
  br i1 %cmp23, label %while.body, label %if.end55

if.else:                                          ; preds = %again
  %cmp31.not = icmp eq ptr %group.1, null
  br i1 %cmp31.not, label %if.end39, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %last = getelementptr inbounds i8, ptr %group.1, i64 56
  %17 = load i64, ptr %last, align 8
  %cmp32 = icmp ult i64 %record.0, %17
  br i1 %cmp32, label %if.then33, label %if.then36

if.then33:                                        ; preds = %land.lhs.true
  %inc = add nuw i64 %record.0, 1
  br label %if.end55

if.then36:                                        ; preds = %land.lhs.true
  %right.i138 = getelementptr inbounds i8, ptr %group.1, i64 32
  %18 = load ptr, ptr %right.i138, align 8
  %cmp.not.i139 = icmp eq ptr %18, null
  br i1 %cmp.not.i139, label %while.cond4.i145, label %while.cond.i140

while.cond.i140:                                  ; preds = %if.then36, %while.cond.i140
  %node.addr.0.i141 = phi ptr [ %19, %while.cond.i140 ], [ %18, %if.then36 ]
  %left.i142 = getelementptr inbounds i8, ptr %node.addr.0.i141, i64 24
  %19 = load ptr, ptr %left.i142, align 8
  %cmp2.not.i143 = icmp eq ptr %19, null
  br i1 %cmp2.not.i143, label %if.end55, label %while.cond.i140

while.cond4.i145:                                 ; preds = %if.then36, %land.rhs.i149
  %node.addr.1.i146 = phi ptr [ %20, %land.rhs.i149 ], [ %group.1, %if.then36 ]
  %parent.i147 = getelementptr inbounds i8, ptr %node.addr.1.i146, i64 16
  %20 = load ptr, ptr %parent.i147, align 8
  %cmp5.not.i148 = icmp eq ptr %20, null
  br i1 %cmp5.not.i148, label %if.end39, label %land.rhs.i149

land.rhs.i149:                                    ; preds = %while.cond4.i145
  %right7.i150 = getelementptr inbounds i8, ptr %20, i64 32
  %21 = load ptr, ptr %right7.i150, align 8
  %cmp8.i151 = icmp eq ptr %21, %node.addr.1.i146
  br i1 %cmp8.i151, label %while.cond4.i145, label %if.end55

if.end39:                                         ; preds = %while.cond4.i145, %if.else
  br i1 %cmp47, label %do.body.us, label %if.end39.split

do.body.us:                                       ; preds = %if.end39, %do.cond.us
  %stream.3.us = phi ptr [ %retval.0.i159.ph.us, %do.cond.us ], [ %stream.0, %if.end39 ]
  %right.i153.us = getelementptr inbounds i8, ptr %stream.3.us, i64 32
  %22 = load ptr, ptr %right.i153.us, align 8
  %cmp.not.i154.us = icmp eq ptr %22, null
  br i1 %cmp.not.i154.us, label %while.cond4.i160.us, label %while.cond.i155.us

while.cond.i155.us:                               ; preds = %do.body.us, %while.cond.i155.us
  %node.addr.0.i156.us = phi ptr [ %23, %while.cond.i155.us ], [ %22, %do.body.us ]
  %left.i157.us = getelementptr inbounds i8, ptr %node.addr.0.i156.us, i64 24
  %23 = load ptr, ptr %left.i157.us, align 8
  %cmp2.not.i158.us = icmp eq ptr %23, null
  br i1 %cmp2.not.i158.us, label %do.cond.us, label %while.cond.i155.us

while.cond4.i160.us:                              ; preds = %do.body.us, %land.rhs.i164.us
  %node.addr.1.i161.us = phi ptr [ %24, %land.rhs.i164.us ], [ %stream.3.us, %do.body.us ]
  %parent.i162.us = getelementptr inbounds i8, ptr %node.addr.1.i161.us, i64 16
  %24 = load ptr, ptr %parent.i162.us, align 8
  %cmp5.not.i163.us = icmp eq ptr %24, null
  br i1 %cmp5.not.i163.us, label %return, label %land.rhs.i164.us

land.rhs.i164.us:                                 ; preds = %while.cond4.i160.us
  %right7.i165.us = getelementptr inbounds i8, ptr %24, i64 32
  %25 = load ptr, ptr %right7.i165.us, align 8
  %cmp8.i166.us = icmp eq ptr %25, %node.addr.1.i161.us
  br i1 %cmp8.i166.us, label %while.cond4.i160.us, label %do.cond.us

do.cond.us:                                       ; preds = %while.cond.i155.us, %land.rhs.i164.us
  %retval.0.i159.ph.us = phi ptr [ %24, %land.rhs.i164.us ], [ %node.addr.0.i156.us, %while.cond.i155.us ]
  %leftmost49.us = getelementptr inbounds i8, ptr %retval.0.i159.ph.us, i64 64
  %26 = load ptr, ptr %leftmost49.us, align 8
  %cmp50.us = icmp eq ptr %26, null
  br i1 %cmp50.us, label %do.body.us, label %do.end

if.end39.split:                                   ; preds = %if.end39
  %right.i153 = getelementptr inbounds i8, ptr %stream.0, i64 32
  %27 = load ptr, ptr %right.i153, align 8
  %cmp.not.i154 = icmp eq ptr %27, null
  br i1 %cmp.not.i154, label %while.cond4.i160, label %while.cond.i155

while.cond.i155:                                  ; preds = %if.end39.split, %while.cond.i155
  %node.addr.0.i156 = phi ptr [ %28, %while.cond.i155 ], [ %27, %if.end39.split ]
  %left.i157 = getelementptr inbounds i8, ptr %node.addr.0.i156, i64 24
  %28 = load ptr, ptr %left.i157, align 8
  %cmp2.not.i158 = icmp eq ptr %28, null
  br i1 %cmp2.not.i158, label %do.end, label %while.cond.i155

while.cond4.i160:                                 ; preds = %if.end39.split, %land.rhs.i164
  %node.addr.1.i161 = phi ptr [ %29, %land.rhs.i164 ], [ %stream.0, %if.end39.split ]
  %parent.i162 = getelementptr inbounds i8, ptr %node.addr.1.i161, i64 16
  %29 = load ptr, ptr %parent.i162, align 8
  %cmp5.not.i163 = icmp eq ptr %29, null
  br i1 %cmp5.not.i163, label %return, label %land.rhs.i164

land.rhs.i164:                                    ; preds = %while.cond4.i160
  %right7.i165 = getelementptr inbounds i8, ptr %29, i64 32
  %30 = load ptr, ptr %right7.i165, align 8
  %cmp8.i166 = icmp eq ptr %30, %node.addr.1.i161
  br i1 %cmp8.i166, label %while.cond4.i160, label %do.end

do.end:                                           ; preds = %while.cond.i155, %land.rhs.i164, %do.cond.us
  %.us-phi = phi ptr [ %retval.0.i159.ph.us, %do.cond.us ], [ %29, %land.rhs.i164 ], [ %node.addr.0.i156, %while.cond.i155 ]
  %leftmost52 = getelementptr inbounds i8, ptr %.us-phi, i64 64
  %31 = load ptr, ptr %leftmost52, align 8
  br label %if.end55

if.end55:                                         ; preds = %while.cond.i140, %land.rhs.i149, %index_tree_next.exit137, %while.cond.preheader, %if.then33, %do.end
  %stream.4 = phi ptr [ %stream.0, %if.then33 ], [ %.us-phi, %do.end ], [ %10, %while.cond.preheader ], [ %retval.0.i129, %index_tree_next.exit137 ], [ %stream.0, %land.rhs.i149 ], [ %stream.0, %while.cond.i140 ]
  %group.3 = phi ptr [ %group.1, %if.then33 ], [ %31, %do.end ], [ %11, %while.cond.preheader ], [ %16, %index_tree_next.exit137 ], [ %20, %land.rhs.i149 ], [ %node.addr.0.i141, %while.cond.i140 ]
  %record.1 = phi i64 [ %inc, %if.then33 ], [ 0, %do.end ], [ 0, %while.cond.preheader ], [ 0, %index_tree_next.exit137 ], [ 0, %land.rhs.i149 ], [ 0, %while.cond.i140 ]
  br i1 %cmp56, label %if.then57, label %if.end76

if.then57:                                        ; preds = %if.end55
  %cmp58 = icmp eq i64 %record.1, 0
  br i1 %cmp58, label %if.then59, label %if.else65

if.then59:                                        ; preds = %if.then57
  %32 = load i64, ptr %group.3, align 8
  %records = getelementptr inbounds i8, ptr %group.3, i64 64
  %33 = load i64, ptr %records, align 8
  %cmp62 = icmp eq i64 %32, %33
  br i1 %cmp62, label %again.backedge, label %if.end76

again.backedge:                                   ; preds = %if.then59, %if.else65
  br label %again

if.else65:                                        ; preds = %if.then57
  %records66 = getelementptr inbounds i8, ptr %group.3, i64 64
  %sub = add i64 %record.1, -1
  %arrayidx67 = getelementptr inbounds [0 x %struct.index_record], ptr %records66, i64 0, i64 %sub
  %34 = load i64, ptr %arrayidx67, align 8
  %arrayidx70 = getelementptr inbounds [0 x %struct.index_record], ptr %records66, i64 0, i64 %record.1
  %35 = load i64, ptr %arrayidx70, align 8
  %cmp72 = icmp eq i64 %34, %35
  br i1 %cmp72, label %again.backedge, label %if.end76

if.end76:                                         ; preds = %if.then59, %if.else65, %if.end55, %if.then17
  %group.3203 = phi ptr [ %11, %if.then17 ], [ %group.3, %if.end55 ], [ %group.3, %if.else65 ], [ %group.3, %if.then59 ]
  %stream.4202 = phi ptr [ %10, %if.then17 ], [ %stream.4, %if.end55 ], [ %stream.4, %if.else65 ], [ %stream.4, %if.then59 ]
  %record.1.lcssa = phi i64 [ 0, %if.then17 ], [ %record.1, %if.end55 ], [ %record.1, %if.else65 ], [ 0, %if.then59 ]
  store ptr %stream.4202, ptr %arrayidx2, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %iter, i64 272
  store ptr %group.3203, ptr %arrayidx80, align 8
  store i64 %record.1.lcssa, ptr %arrayidx4, align 8
  tail call fastcc void @iter_set_info(ptr noundef %iter)
  br label %return

return:                                           ; preds = %while.cond4.i160, %while.cond4.i160.us, %while.cond4.i130, %if.end76, %entry
  %retval.1 = phi i8 [ 1, %entry ], [ 0, %if.end76 ], [ 1, %while.cond4.i130 ], [ 1, %while.cond4.i160.us ], [ 1, %while.cond4.i160 ]
  ret i8 %retval.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @iter_set_info(ptr nocapture noundef %iter) unnamed_addr #0 {
entry:
  %arrayidx2 = getelementptr inbounds i8, ptr %iter, i64 264
  %0 = load ptr, ptr %arrayidx2, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %iter, i64 272
  %1 = load ptr, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %iter, i64 280
  %2 = load i64, ptr %arrayidx6, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx8 = getelementptr inbounds i8, ptr %iter, i64 288
  store i64 2, ptr %arrayidx8, align 8
  br label %if.end32

if.else:                                          ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %iter, i64 256
  %3 = load ptr, ptr %internal, align 8
  %rightmost = getelementptr inbounds i8, ptr %3, i64 16
  %4 = load ptr, ptr %rightmost, align 8
  %cmp9.not = icmp eq ptr %4, %0
  br i1 %cmp9.not, label %lor.lhs.false, label %if.then13

lor.lhs.false:                                    ; preds = %if.else
  %rightmost10 = getelementptr inbounds i8, ptr %0, i64 72
  %5 = load ptr, ptr %rightmost10, align 8
  %cmp12.not = icmp eq ptr %5, %1
  br i1 %cmp12.not, label %if.else16, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false, %if.else
  %arrayidx15 = getelementptr inbounds i8, ptr %iter, i64 288
  store i64 0, ptr %arrayidx15, align 8
  br label %if.end32

if.else16:                                        ; preds = %lor.lhs.false
  %leftmost = getelementptr inbounds i8, ptr %0, i64 64
  %6 = load ptr, ptr %leftmost, align 8
  %cmp19.not = icmp eq ptr %6, %1
  %arrayidx28 = getelementptr inbounds i8, ptr %iter, i64 288
  br i1 %cmp19.not, label %if.else26, label %if.then20

if.then20:                                        ; preds = %if.else16
  store i64 1, ptr %arrayidx28, align 8
  %parent = getelementptr inbounds i8, ptr %1, i64 16
  %7 = load ptr, ptr %parent, align 8
  store ptr %7, ptr %arrayidx4, align 8
  br label %if.end32

if.else26:                                        ; preds = %if.else16
  store i64 2, ptr %arrayidx28, align 8
  store ptr null, ptr %arrayidx4, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then13, %if.else26, %if.then20, %if.then
  %number = getelementptr inbounds i8, ptr %0, i64 40
  %8 = load i32, ptr %number, align 8
  %conv = zext i32 %8 to i64
  %number34 = getelementptr inbounds i8, ptr %iter, i64 32
  store i64 %conv, ptr %number34, align 8
  %record_count = getelementptr inbounds i8, ptr %0, i64 88
  %9 = load i64, ptr %record_count, align 8
  %block_count = getelementptr inbounds i8, ptr %iter, i64 40
  store i64 %9, ptr %block_count, align 8
  %compressed_base = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load i64, ptr %compressed_base, align 8
  %compressed_offset = getelementptr inbounds i8, ptr %iter, i64 48
  store i64 %10, ptr %compressed_offset, align 8
  %11 = load i64, ptr %0, align 8
  %uncompressed_offset = getelementptr inbounds i8, ptr %iter, i64 56
  store i64 %11, ptr %uncompressed_offset, align 8
  %stream_flags = getelementptr inbounds i8, ptr %0, i64 104
  %12 = load i32, ptr %stream_flags, align 8
  %cmp40 = icmp eq i32 %12, -1
  %cond = select i1 %cmp40, ptr null, ptr %stream_flags
  store ptr %cond, ptr %iter, align 8
  %stream_padding = getelementptr inbounds i8, ptr %0, i64 160
  %13 = load i64, ptr %stream_padding, align 8
  %padding = getelementptr inbounds i8, ptr %iter, i64 80
  store i64 %13, ptr %padding, align 8
  %rightmost46 = getelementptr inbounds i8, ptr %0, i64 72
  %14 = load ptr, ptr %rightmost46, align 8
  %cmp47 = icmp eq ptr %14, null
  br i1 %cmp47, label %if.then49, label %if.else52

if.then49:                                        ; preds = %if.end32
  %call.i.i = tail call i32 @lzma_vli_size(i64 noundef 0) #12
  %add.i.i = add i32 %call.i.i, 1
  %conv.i.i = zext i32 %add.i.i to i64
  %add.i2.i = add nuw nsw i64 %conv.i.i, 7
  %and.i.i = and i64 %add.i2.i, 8589934588
  %add = add nuw nsw i64 %and.i.i, 24
  %compressed_size = getelementptr inbounds i8, ptr %iter, i64 64
  store i64 %add, ptr %compressed_size, align 8
  br label %if.end68

if.else52:                                        ; preds = %if.end32
  %15 = load i64, ptr %record_count, align 8
  %index_list_size = getelementptr inbounds i8, ptr %0, i64 96
  %16 = load i64, ptr %index_list_size, align 8
  %call.i.i213 = tail call i32 @lzma_vli_size(i64 noundef %15) #12
  %add.i.i214 = add i32 %call.i.i213, 1
  %conv.i.i215 = zext i32 %add.i.i214 to i64
  %add2.i.i = add i64 %16, 7
  %add.i2.i216 = add i64 %add2.i.i, %conv.i.i215
  %and.i.i217 = and i64 %add.i2.i216, -4
  %add57 = add i64 %and.i.i217, 24
  %records = getelementptr inbounds i8, ptr %14, i64 64
  %last = getelementptr inbounds i8, ptr %14, i64 56
  %17 = load i64, ptr %last, align 8
  %unpadded_sum = getelementptr inbounds [0 x %struct.index_record], ptr %records, i64 0, i64 %17, i32 1
  %18 = load i64, ptr %unpadded_sum, align 8
  %add.i = add i64 %18, 3
  %and.i = and i64 %add.i, -4
  %add60 = add i64 %add57, %and.i
  %compressed_size62 = getelementptr inbounds i8, ptr %iter, i64 64
  store i64 %add60, ptr %compressed_size62, align 8
  %19 = load i64, ptr %last, align 8
  %arrayidx65 = getelementptr inbounds [0 x %struct.index_record], ptr %records, i64 0, i64 %19
  %20 = load i64, ptr %arrayidx65, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.else52, %if.then49
  %.sink = phi i64 [ 0, %if.then49 ], [ %20, %if.else52 ]
  %21 = getelementptr inbounds i8, ptr %iter, i64 72
  store i64 %.sink, ptr %21, align 8
  br i1 %cmp, label %if.end137, label %if.then71

if.then71:                                        ; preds = %if.end68
  %number_base = getelementptr inbounds i8, ptr %1, i64 40
  %22 = load i64, ptr %number_base, align 8
  %add72 = add i64 %22, %2
  %block = getelementptr inbounds i8, ptr %iter, i64 120
  %number_in_stream = getelementptr inbounds i8, ptr %iter, i64 144
  store i64 %add72, ptr %number_in_stream, align 8
  %block_number_base = getelementptr inbounds i8, ptr %0, i64 48
  %23 = load i64, ptr %block_number_base, align 8
  %add75 = add i64 %23, %add72
  store i64 %add75, ptr %block, align 8
  %cmp77 = icmp eq i64 %2, 0
  br i1 %cmp77, label %cond.true79, label %cond.false82

cond.true79:                                      ; preds = %if.then71
  %compressed_base81 = getelementptr inbounds i8, ptr %1, i64 8
  %24 = load i64, ptr %compressed_base81, align 8
  br label %cond.end87

cond.false82:                                     ; preds = %if.then71
  %records83 = getelementptr inbounds i8, ptr %1, i64 64
  %sub = add i64 %2, -1
  %unpadded_sum85 = getelementptr inbounds [0 x %struct.index_record], ptr %records83, i64 0, i64 %sub, i32 1
  %25 = load i64, ptr %unpadded_sum85, align 8
  %add.i218 = add i64 %25, 3
  %and.i219 = and i64 %add.i218, -4
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false82, %cond.true79
  %sub97.pre-phi = phi i64 [ %sub, %cond.false82 ], [ -1, %cond.true79 ]
  %cond88 = phi i64 [ %and.i219, %cond.false82 ], [ %24, %cond.true79 ]
  %compressed_stream_offset = getelementptr inbounds i8, ptr %iter, i64 152
  store i64 %cond88, ptr %compressed_stream_offset, align 8
  %records96 = getelementptr inbounds i8, ptr %1, i64 64
  %arrayidx98 = getelementptr inbounds [0 x %struct.index_record], ptr %records96, i64 0, i64 %sub97.pre-phi
  %cond101.in = select i1 %cmp77, ptr %1, ptr %arrayidx98
  %cond101 = load i64, ptr %cond101.in, align 8
  %uncompressed_stream_offset = getelementptr inbounds i8, ptr %iter, i64 160
  store i64 %cond101, ptr %uncompressed_stream_offset, align 8
  %arrayidx104 = getelementptr inbounds [0 x %struct.index_record], ptr %records96, i64 0, i64 %2
  %26 = load i64, ptr %arrayidx104, align 8
  %sub108 = sub i64 %26, %cond101
  %uncompressed_size110 = getelementptr inbounds i8, ptr %iter, i64 168
  store i64 %sub108, ptr %uncompressed_size110, align 8
  %unpadded_sum113 = getelementptr inbounds i8, ptr %arrayidx104, i64 8
  %27 = load i64, ptr %unpadded_sum113, align 8
  %sub116 = sub i64 %27, %cond88
  %unpadded_size = getelementptr inbounds i8, ptr %iter, i64 176
  store i64 %sub116, ptr %unpadded_size, align 8
  %add.i220 = add i64 %sub116, 3
  %and.i221 = and i64 %add.i220, -4
  %total_size = getelementptr inbounds i8, ptr %iter, i64 184
  store i64 %and.i221, ptr %total_size, align 8
  %add124 = add i64 %cond88, 12
  store i64 %add124, ptr %compressed_stream_offset, align 8
  %28 = load i64, ptr %compressed_offset, align 8
  %add129 = add i64 %28, %add124
  %compressed_file_offset = getelementptr inbounds i8, ptr %iter, i64 128
  store i64 %add129, ptr %compressed_file_offset, align 8
  %29 = load i64, ptr %uncompressed_offset, align 8
  %add135 = add i64 %29, %cond101
  %uncompressed_file_offset = getelementptr inbounds i8, ptr %iter, i64 136
  store i64 %add135, ptr %uncompressed_file_offset, align 8
  br label %if.end137

if.end137:                                        ; preds = %cond.end87, %if.end68
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_index_iter_locate(ptr nocapture noundef %iter, i64 noundef %target) local_unnamed_addr #0 {
entry:
  %internal = getelementptr inbounds i8, ptr %iter, i64 256
  %0 = load ptr, ptr %internal, align 8
  %uncompressed_size = getelementptr inbounds i8, ptr %0, i64 32
  %1 = load i64, ptr %uncompressed_size, align 8
  %cmp.not = icmp ugt i64 %1, %target
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %node.06.i = load ptr, ptr %0, align 8
  %cmp.not7.i = icmp eq ptr %node.06.i, null
  br i1 %cmp.not7.i, label %index_tree_locate.exit, label %while.body.i

while.body.i:                                     ; preds = %if.end, %while.body.i
  %node.09.i = phi ptr [ %node.0.i, %while.body.i ], [ %node.06.i, %if.end ]
  %result.08.i = phi ptr [ %result.1.i, %while.body.i ], [ null, %if.end ]
  %2 = load i64, ptr %node.09.i, align 8
  %cmp1.i = icmp ugt i64 %2, %target
  %result.1.i = select i1 %cmp1.i, ptr %result.08.i, ptr %node.09.i
  %node.1.in.v.i = select i1 %cmp1.i, i64 24, i64 32
  %node.1.in.i = getelementptr inbounds i8, ptr %node.09.i, i64 %node.1.in.v.i
  %node.0.i = load ptr, ptr %node.1.in.i, align 8
  %cmp.not.i = icmp eq ptr %node.0.i, null
  br i1 %cmp.not.i, label %index_tree_locate.exit, label %while.body.i

index_tree_locate.exit:                           ; preds = %while.body.i, %if.end
  %result.0.lcssa.i = phi ptr [ null, %if.end ], [ %result.1.i, %while.body.i ]
  %3 = load i64, ptr %result.0.lcssa.i, align 8
  %sub = sub i64 %target, %3
  %groups = getelementptr inbounds i8, ptr %result.0.lcssa.i, i64 56
  %node.06.i35 = load ptr, ptr %groups, align 8
  %cmp.not7.i36 = icmp eq ptr %node.06.i35, null
  br i1 %cmp.not7.i36, label %index_tree_locate.exit47, label %while.body.i37

while.body.i37:                                   ; preds = %index_tree_locate.exit, %while.body.i37
  %node.09.i38 = phi ptr [ %node.0.i44, %while.body.i37 ], [ %node.06.i35, %index_tree_locate.exit ]
  %result.08.i39 = phi ptr [ %result.1.i41, %while.body.i37 ], [ null, %index_tree_locate.exit ]
  %4 = load i64, ptr %node.09.i38, align 8
  %cmp1.i40 = icmp ugt i64 %4, %sub
  %result.1.i41 = select i1 %cmp1.i40, ptr %result.08.i39, ptr %node.09.i38
  %node.1.in.v.i42 = select i1 %cmp1.i40, i64 24, i64 32
  %node.1.in.i43 = getelementptr inbounds i8, ptr %node.09.i38, i64 %node.1.in.v.i42
  %node.0.i44 = load ptr, ptr %node.1.in.i43, align 8
  %cmp.not.i45 = icmp eq ptr %node.0.i44, null
  br i1 %cmp.not.i45, label %index_tree_locate.exit47, label %while.body.i37

index_tree_locate.exit47:                         ; preds = %while.body.i37, %index_tree_locate.exit
  %result.0.lcssa.i46 = phi ptr [ null, %index_tree_locate.exit ], [ %result.1.i41, %while.body.i37 ]
  %last = getelementptr inbounds i8, ptr %result.0.lcssa.i46, i64 56
  %5 = load i64, ptr %last, align 8
  %cmp248.not = icmp eq i64 %5, 0
  br i1 %cmp248.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %index_tree_locate.exit47
  %records = getelementptr inbounds i8, ptr %result.0.lcssa.i46, i64 64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %right.050 = phi i64 [ %5, %while.body.lr.ph ], [ %right.1, %while.body ]
  %left.049 = phi i64 [ 0, %while.body.lr.ph ], [ %left.1, %while.body ]
  %sub3 = sub i64 %right.050, %left.049
  %div34 = lshr i64 %sub3, 1
  %add = add i64 %div34, %left.049
  %arrayidx4 = getelementptr inbounds [0 x %struct.index_record], ptr %records, i64 0, i64 %add
  %6 = load i64, ptr %arrayidx4, align 8
  %cmp5.not = icmp ugt i64 %6, %sub
  %add7 = add i64 %add, 1
  %left.1 = select i1 %cmp5.not, i64 %left.049, i64 %add7
  %right.1 = select i1 %cmp5.not, i64 %add, i64 %right.050
  %cmp2 = icmp ult i64 %left.1, %right.1
  br i1 %cmp2, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %index_tree_locate.exit47
  %left.0.lcssa = phi i64 [ 0, %index_tree_locate.exit47 ], [ %left.1, %while.body ]
  %arrayidx10 = getelementptr inbounds i8, ptr %iter, i64 264
  store ptr %result.0.lcssa.i, ptr %arrayidx10, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %iter, i64 272
  store ptr %result.0.lcssa.i46, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %iter, i64 280
  store i64 %left.0.lcssa, ptr %arrayidx14, align 8
  tail call fastcc void @iter_set_info(ptr noundef %iter)
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i8 [ 0, %while.end ], [ 1, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @index_tree_node_end(ptr noundef %node, ptr noundef %allocator, ptr noundef %free_func) unnamed_addr #0 {
entry:
  %left = getelementptr inbounds i8, ptr %node, i64 24
  %0 = load ptr, ptr %left, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %0, ptr noundef %allocator, ptr noundef %free_func)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %right = getelementptr inbounds i8, ptr %node, i64 32
  %1 = load ptr, ptr %right, align 8
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call fastcc void @index_tree_node_end(ptr noundef nonnull %1, ptr noundef %allocator, ptr noundef %free_func)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %cmp6.not = icmp eq ptr %free_func, null
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  tail call void %free_func(ptr noundef nonnull %node, ptr noundef %allocator) #12, !callees !7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  tail call void @lzma_free(ptr noundef nonnull %node, ptr noundef %allocator) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{ptr @index_stream_end}
