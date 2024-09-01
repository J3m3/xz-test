; ModuleID = 'liblzma/lz/lz_encoder.c'
source_filename = "liblzma/lz/lz_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_lz_options = type { i64, i64, i64, i64, i64, i32, i32, ptr, i32 }

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, 21474836692) i64 @lzma_lz_encoder_memusage(ptr nocapture noundef readonly %lz_options) local_unnamed_addr #0 {
entry:
  %mf = alloca %struct.lzma_mf_s, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %mf) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %mf, i8 0, i64 120, i1 false)
  %call = call fastcc zeroext i1 @lz_encoder_prepare(ptr noundef nonnull %mf, ptr noundef null, ptr noundef %lz_options)
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %hash_size_sum = getelementptr inbounds i8, ptr %mf, i64 108
  %0 = load i32, ptr %hash_size_sum, align 4
  %sons_count = getelementptr inbounds i8, ptr %mf, i64 112
  %1 = load i32, ptr %sons_count, align 8
  %add = add i32 %1, %0
  %conv = zext i32 %add to i64
  %mul = shl nuw nsw i64 %conv, 2
  %size = getelementptr inbounds i8, ptr %mf, i64 8
  %2 = load i32, ptr %size, align 8
  %conv1 = zext i32 %2 to i64
  %add2 = add nuw nsw i64 %conv1, 216
  %add3 = add nuw nsw i64 %add2, %mul
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %add3, %if.end ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %mf) #7
  ret i64 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @lz_encoder_prepare(ptr nocapture noundef %mf, ptr noundef %allocator, ptr nocapture noundef readonly %lz_options) unnamed_addr #0 {
entry:
  %dict_size = getelementptr inbounds i8, ptr %lz_options, i64 8
  %0 = load i64, ptr %dict_size, align 8
  %1 = add i64 %0, -1610612737
  %or.cond = icmp ult i64 %1, -1610608641
  br i1 %or.cond, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %entry
  %nice_len = getelementptr inbounds i8, ptr %lz_options, i64 32
  %2 = load i64, ptr %nice_len, align 8
  %match_len_max = getelementptr inbounds i8, ptr %lz_options, i64 24
  %3 = load i64, ptr %match_len_max, align 8
  %cmp4 = icmp ugt i64 %2, %3
  br i1 %cmp4, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false3
  %4 = load i64, ptr %lz_options, align 8
  %add = add i64 %4, %0
  %conv = trunc i64 %add to i32
  %keep_size_before = getelementptr inbounds i8, ptr %mf, i64 12
  store i32 %conv, ptr %keep_size_before, align 4
  %after_size = getelementptr inbounds i8, ptr %lz_options, i64 16
  %5 = load i64, ptr %after_size, align 8
  %6 = load i64, ptr %match_len_max, align 8
  %add7 = add i64 %6, %5
  %conv8 = trunc i64 %add7 to i32
  %keep_size_after = getelementptr inbounds i8, ptr %mf, i64 16
  store i32 %conv8, ptr %keep_size_after, align 8
  %7 = load i64, ptr %dict_size, align 8
  %div225 = lshr i64 %7, 1
  %conv10 = trunc i64 %div225 to i32
  %cmp11 = icmp ugt i32 %conv10, 1073741824
  %div14226 = zext i1 %cmp11 to i32
  %spec.select = lshr i32 %conv10, %div14226
  %8 = load i64, ptr %lz_options, align 8
  %9 = load i64, ptr %match_len_max, align 8
  %add18 = add i64 %9, %8
  %10 = load i64, ptr %after_size, align 8
  %add20 = add i64 %add18, %10
  %div21227 = lshr i64 %add20, 1
  %11 = trunc i64 %div21227 to i32
  %size = getelementptr inbounds i8, ptr %mf, i64 8
  %12 = load i32, ptr %size, align 8
  %13 = add i32 %conv, 524288
  %conv25 = add i32 %13, %conv8
  %add27 = add i32 %conv25, %spec.select
  %add29 = add i32 %add27, %11
  store i32 %add29, ptr %size, align 8
  %14 = load ptr, ptr %mf, align 8
  %cmp31.not = icmp eq ptr %14, null
  %cmp34.not = icmp eq i32 %12, %add29
  %or.cond230 = select i1 %cmp31.not, i1 true, i1 %cmp34.not
  br i1 %or.cond230, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.end
  tail call void @lzma_free(ptr noundef nonnull %14, ptr noundef %allocator) #7
  store ptr null, ptr %mf, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end
  %15 = load i64, ptr %match_len_max, align 8
  %conv41 = trunc i64 %15 to i32
  %match_len_max42 = getelementptr inbounds i8, ptr %mf, i64 100
  store i32 %conv41, ptr %match_len_max42, align 4
  %16 = load i64, ptr %nice_len, align 8
  %conv44 = trunc i64 %16 to i32
  %nice_len45 = getelementptr inbounds i8, ptr %mf, i64 96
  store i32 %conv44, ptr %nice_len45, align 8
  %17 = load i64, ptr %dict_size, align 8
  %18 = trunc i64 %17 to i32
  %conv48 = add i32 %18, 1
  %cyclic_size = getelementptr inbounds i8, ptr %mf, i64 84
  store i32 %conv48, ptr %cyclic_size, align 4
  %match_finder = getelementptr inbounds i8, ptr %lz_options, i64 40
  %19 = load i32, ptr %match_finder, align 8
  switch i32 %19, label %return [
    i32 3, label %sw.epilog
    i32 4, label %sw.bb49
    i32 18, label %sw.bb52
    i32 19, label %sw.bb55
    i32 20, label %sw.bb58
  ]

sw.bb49:                                          ; preds = %if.end39
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end39
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end39
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end39
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end39, %sw.bb58, %sw.bb55, %sw.bb52, %sw.bb49
  %lzma_mf_bt4_find.sink = phi ptr [ @lzma_mf_bt4_find, %sw.bb58 ], [ @lzma_mf_bt3_find, %sw.bb55 ], [ @lzma_mf_bt2_find, %sw.bb52 ], [ @lzma_mf_hc4_find, %sw.bb49 ], [ @lzma_mf_hc3_find, %if.end39 ]
  %lzma_mf_bt4_skip.sink = phi ptr [ @lzma_mf_bt4_skip, %sw.bb58 ], [ @lzma_mf_bt3_skip, %sw.bb55 ], [ @lzma_mf_bt2_skip, %sw.bb52 ], [ @lzma_mf_hc4_skip, %sw.bb49 ], [ @lzma_mf_hc3_skip, %if.end39 ]
  %find59 = getelementptr inbounds i8, ptr %mf, i64 48
  store ptr %lzma_mf_bt4_find.sink, ptr %find59, align 8
  %skip60 = getelementptr inbounds i8, ptr %mf, i64 56
  store ptr %lzma_mf_bt4_skip.sink, ptr %skip60, align 8
  %20 = load i32, ptr %match_finder, align 8
  %and = and i32 %20, 15
  %cmp63 = icmp ugt i32 %and, %conv44
  br i1 %cmp63, label %return, label %if.end66

if.end66:                                         ; preds = %sw.epilog
  %and68 = and i32 %20, 16
  %cmp69.not = icmp eq i32 %and68, 0
  %cmp71 = icmp eq i32 %and, 2
  br i1 %cmp71, label %if.end94, label %if.else

if.else:                                          ; preds = %if.end66
  %21 = load i64, ptr %dict_size, align 8
  %22 = trunc i64 %21 to i32
  %conv75 = add i32 %22, -1
  %shr = lshr i32 %conv75, 1
  %or = or i32 %shr, %conv75
  %shr76 = lshr i32 %or, 2
  %or77 = or i32 %shr76, %or
  %shr78 = lshr i32 %or77, 4
  %or79 = or i32 %shr78, %or77
  %23 = lshr i32 %or79, 9
  %24 = lshr i32 %or79, 1
  %shr82 = or i32 %24, %23
  %or83 = or i32 %shr82, 65535
  %cmp84 = icmp ugt i32 %or83, 16777216
  br i1 %cmp84, label %if.then86, label %if.end94

if.then86:                                        ; preds = %if.else
  %cmp87 = icmp eq i32 %and, 3
  %shr91 = lshr i32 %or83, 1
  %spec.select232 = select i1 %cmp87, i32 16777215, i32 %shr91
  br label %if.end94

if.end94:                                         ; preds = %if.then86, %if.end66, %if.else
  %hs.0 = phi i32 [ %or83, %if.else ], [ 65535, %if.end66 ], [ %spec.select232, %if.then86 ]
  %hash_mask = getelementptr inbounds i8, ptr %mf, i64 88
  store i32 %hs.0, ptr %hash_mask, align 8
  %cmp95 = icmp ugt i32 %and, 2
  %spec.select231.v = select i1 %cmp95, i32 1025, i32 1
  %spec.select231 = add nuw nsw i32 %hs.0, %spec.select231.v
  %cmp100 = icmp ugt i32 %and, 3
  %add103 = add nuw nsw i32 %spec.select231, 65536
  %hs.2 = select i1 %cmp100, i32 %add103, i32 %spec.select231
  %hash_size_sum = getelementptr inbounds i8, ptr %mf, i64 108
  %25 = load i32, ptr %hash_size_sum, align 4
  %sons_count = getelementptr inbounds i8, ptr %mf, i64 112
  %26 = load i32, ptr %sons_count, align 8
  %add105 = add i32 %26, %25
  store i32 %hs.2, ptr %hash_size_sum, align 4
  %27 = lshr exact i32 %and68, 4
  %storemerge = shl i32 %conv48, %27
  store i32 %storemerge, ptr %sons_count, align 8
  %add114 = add i32 %hs.2, %storemerge
  %cmp115.not = icmp eq i32 %add105, %add114
  br i1 %cmp115.not, label %if.end119, label %if.then117

if.then117:                                       ; preds = %if.end94
  %hash = getelementptr inbounds i8, ptr %mf, i64 64
  %28 = load ptr, ptr %hash, align 8
  tail call void @lzma_free(ptr noundef %28, ptr noundef %allocator) #7
  store ptr null, ptr %hash, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end94
  %depth = getelementptr inbounds i8, ptr %lz_options, i64 44
  %29 = load i32, ptr %depth, align 4
  %depth120 = getelementptr inbounds i8, ptr %mf, i64 92
  store i32 %29, ptr %depth120, align 4
  %cmp122 = icmp eq i32 %29, 0
  br i1 %cmp122, label %if.then124, label %return

if.then124:                                       ; preds = %if.end119
  %30 = load i32, ptr %nice_len45, align 8
  %. = select i1 %cmp69.not, i32 2, i32 1
  %.234 = select i1 %cmp69.not, i32 4, i32 16
  %div133228 = lshr i32 %30, %.
  %add134 = add nuw i32 %div133228, %.234
  store i32 %add134, ptr %depth120, align 4
  br label %return

return:                                           ; preds = %if.then124, %if.end39, %if.end119, %sw.epilog, %entry, %lor.lhs.false3
  %retval.2 = phi i1 [ true, %lor.lhs.false3 ], [ true, %entry ], [ true, %if.end39 ], [ false, %if.end119 ], [ true, %sw.epilog ], [ false, %if.then124 ]
  ret i1 %retval.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lz_encoder_init(ptr nocapture noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr nocapture noundef readonly %lz_init) local_unnamed_addr #0 {
entry:
  %lz_options = alloca %struct.lzma_lz_options, align 8
  %0 = load ptr, ptr %next, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %allocator) #7
  store ptr %call, ptr %next, align 8
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds i8, ptr %next, i64 24
  store ptr @lz_encode, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %next, i64 32
  store ptr @lz_encoder_end, ptr %end, align 8
  %update = getelementptr inbounds i8, ptr %next, i64 56
  store ptr @lz_encoder_update, ptr %update, align 8
  store ptr null, ptr %call, align 8
  %1 = load ptr, ptr %next, align 8
  %code9 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr null, ptr %code9, align 8
  %2 = load ptr, ptr %next, align 8
  %end12 = getelementptr inbounds i8, ptr %2, i64 16
  store ptr null, ptr %end12, align 8
  %3 = load ptr, ptr %next, align 8
  %mf = getelementptr inbounds i8, ptr %3, i64 32
  store ptr null, ptr %mf, align 8
  %4 = load ptr, ptr %next, align 8
  %hash = getelementptr inbounds i8, ptr %4, i64 96
  store ptr null, ptr %hash, align 8
  %5 = load ptr, ptr %next, align 8
  %hash_size_sum = getelementptr inbounds i8, ptr %5, i64 140
  store i32 0, ptr %hash_size_sum, align 4
  %6 = load ptr, ptr %next, align 8
  %sons_count = getelementptr inbounds i8, ptr %6, i64 144
  store i32 0, ptr %sons_count, align 8
  %7 = load ptr, ptr %next, align 8
  %next21 = getelementptr inbounds i8, ptr %7, i64 152
  store ptr null, ptr %next21, align 8
  %.compoundliteral.sroa.2.0.next21.sroa_idx = getelementptr inbounds i8, ptr %7, i64 160
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next21.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.next21.sroa_idx = getelementptr inbounds i8, ptr %7, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next21.sroa_idx, i8 0, i64 48, i1 false)
  %.pre = load ptr, ptr %next, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end, %entry
  %8 = phi ptr [ %.pre, %if.end ], [ %0, %entry ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %lz_options) #7
  %options = getelementptr inbounds i8, ptr %filters, i64 16
  %9 = load ptr, ptr %options, align 8
  %call29 = call i32 %lz_init(ptr noundef %8, ptr noundef %allocator, ptr noundef %9, ptr noundef nonnull %lz_options) #7
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %do.end, label %cleanup46

do.end:                                           ; preds = %if.end26
  %10 = load ptr, ptr %next, align 8
  %mf34 = getelementptr inbounds i8, ptr %10, i64 32
  %call35 = call fastcc zeroext i1 @lz_encoder_prepare(ptr noundef nonnull %mf34, ptr noundef %allocator, ptr noundef nonnull %lz_options)
  br i1 %call35, label %cleanup46, label %if.end37

if.end37:                                         ; preds = %do.end
  %11 = load ptr, ptr %next, align 8
  %mf39 = getelementptr inbounds i8, ptr %11, i64 32
  %12 = load ptr, ptr %mf39, align 8
  %cmp.i = icmp eq ptr %12, null
  br i1 %cmp.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %if.end37
  %size.i = getelementptr inbounds i8, ptr %11, i64 40
  %13 = load i32, ptr %size.i, align 8
  %conv.i = zext i32 %13 to i64
  %call.i = call ptr @lzma_alloc(i64 noundef %conv.i, ptr noundef %allocator) #7
  store ptr %call.i, ptr %mf39, align 8
  %cmp3.i = icmp eq ptr %call.i, null
  br i1 %cmp3.i, label %cleanup46, label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i, %if.end37
  %cyclic_size.i = getelementptr inbounds i8, ptr %11, i64 116
  %14 = load i32, ptr %cyclic_size.i, align 4
  %offset.i = getelementptr inbounds i8, ptr %11, i64 52
  store i32 %14, ptr %offset.i, align 4
  %read_pos.i = getelementptr inbounds i8, ptr %11, i64 56
  %write_pos.i = getelementptr inbounds i8, ptr %11, i64 68
  %hash_size_sum.i = getelementptr inbounds i8, ptr %11, i64 140
  %hash.i = getelementptr inbounds i8, ptr %11, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %read_pos.i, i8 0, i64 20, i1 false)
  %15 = load ptr, ptr %hash.i, align 8
  %cmp8.i = icmp eq ptr %15, null
  br i1 %cmp8.i, label %if.then10.i, label %if.end18.i

if.then10.i:                                      ; preds = %if.end6.i
  %16 = load i32, ptr %hash_size_sum.i, align 4
  %sons_count.i = getelementptr inbounds i8, ptr %11, i64 144
  %17 = load i32, ptr %sons_count.i, align 8
  %add.i = add i32 %17, %16
  %conv7.i = zext i32 %add.i to i64
  %mul.i = shl nuw nsw i64 %conv7.i, 2
  %call11.i = call ptr @lzma_alloc(i64 noundef %mul.i, ptr noundef %allocator) #7
  store ptr %call11.i, ptr %hash.i, align 8
  %cmp14.i = icmp eq ptr %call11.i, null
  br i1 %cmp14.i, label %cleanup46, label %if.end18.i

if.end18.i:                                       ; preds = %if.then10.i, %if.end6.i
  %18 = phi ptr [ %call11.i, %if.then10.i ], [ %15, %if.end6.i ]
  %19 = load i32, ptr %hash_size_sum.i, align 4
  %idx.ext.i = zext i32 %19 to i64
  %add.ptr.i = getelementptr inbounds i32, ptr %18, i64 %idx.ext.i
  %son.i = getelementptr inbounds i8, ptr %11, i64 104
  store ptr %add.ptr.i, ptr %son.i, align 8
  %cyclic_pos.i = getelementptr inbounds i8, ptr %11, i64 112
  store i32 0, ptr %cyclic_pos.i, align 8
  %mul24.i = shl nuw nsw i64 %idx.ext.i, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %18, i8 0, i64 %mul24.i, i1 false)
  %preset_dict.i = getelementptr inbounds i8, ptr %lz_options, i64 48
  %20 = load ptr, ptr %preset_dict.i, align 8
  %cmp25.not.i = icmp eq ptr %20, null
  br i1 %cmp25.not.i, label %if.end42, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end18.i
  %preset_dict_size.i = getelementptr inbounds i8, ptr %lz_options, i64 56
  %21 = load i32, ptr %preset_dict_size.i, align 8
  %cmp27.not.i = icmp eq i32 %21, 0
  br i1 %cmp27.not.i, label %if.end42, label %if.then29.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  %size31.i = getelementptr inbounds i8, ptr %11, i64 40
  %22 = load i32, ptr %size31.i, align 8
  %..i = call i32 @llvm.umin.i32(i32 %21, i32 %22)
  store i32 %..i, ptr %write_pos.i, align 4
  %23 = load ptr, ptr %mf39, align 8
  %idx.ext40.i = zext i32 %21 to i64
  %add.ptr41.i = getelementptr inbounds i8, ptr %20, i64 %idx.ext40.i
  %idx.ext43.i = zext i32 %..i to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext43.i
  %add.ptr44.i = getelementptr inbounds i8, ptr %add.ptr41.i, i64 %idx.neg.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr nonnull align 1 %add.ptr44.i, i64 %idx.ext43.i, i1 false)
  %action.i = getelementptr inbounds i8, ptr %11, i64 136
  store i32 1, ptr %action.i, align 8
  %skip.i = getelementptr inbounds i8, ptr %11, i64 88
  %24 = load ptr, ptr %skip.i, align 8
  %25 = load i32, ptr %write_pos.i, align 4
  call void %24(ptr noundef nonnull %mf39, i32 noundef %25) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then29.i, %land.lhs.true.i, %if.end18.i
  %action49.i = getelementptr inbounds i8, ptr %11, i64 136
  store i32 0, ptr %action49.i, align 8
  %26 = load ptr, ptr %next, align 8
  %next44 = getelementptr inbounds i8, ptr %26, i64 152
  %add.ptr = getelementptr inbounds i8, ptr %filters, i64 24
  %call45 = call i32 @lzma_next_filter_init(ptr noundef nonnull %next44, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #7
  br label %cleanup46

cleanup46:                                        ; preds = %if.then10.i, %if.then.i, %do.end, %if.end26, %if.end42
  %retval.1 = phi i32 [ %call45, %if.end42 ], [ %call29, %if.end26 ], [ 8, %do.end ], [ 5, %if.then.i ], [ 5, %if.then10.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %lz_options) #7
  br label %return

return:                                           ; preds = %if.then, %cleanup46
  %retval.2 = phi i32 [ %retval.1, %cleanup46 ], [ 5, %if.then ]
  ret i32 %retval.2
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @lz_encode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 {
entry:
  %write_pos.i = alloca i64, align 8
  %cmp2 = icmp ne i32 %action, 0
  %mf = getelementptr inbounds i8, ptr %pcoder, i64 32
  %action3 = getelementptr inbounds i8, ptr %pcoder, i64 136
  %read_pos = getelementptr inbounds i8, ptr %pcoder, i64 56
  %read_limit = getelementptr inbounds i8, ptr %pcoder, i64 64
  %size.i = getelementptr inbounds i8, ptr %pcoder, i64 40
  %keep_size_after.i = getelementptr inbounds i8, ptr %pcoder, i64 48
  %keep_size_before.i.i = getelementptr inbounds i8, ptr %pcoder, i64 44
  %write_pos.i.i = getelementptr inbounds i8, ptr %pcoder, i64 68
  %offset.i.i = getelementptr inbounds i8, ptr %pcoder, i64 52
  %code.i = getelementptr inbounds i8, ptr %pcoder, i64 176
  %next.i = getelementptr inbounds i8, ptr %pcoder, i64 152
  %cmp13.not.i = icmp eq i32 %action, 0
  %pending.i = getelementptr inbounds i8, ptr %pcoder, i64 72
  %skip.i = getelementptr inbounds i8, ptr %pcoder, i64 88
  %code = getelementptr inbounds i8, ptr %pcoder, i64 8
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %0 = load i64, ptr %out_pos, align 8
  %cmp = icmp ult i64 %0, %out_size
  br i1 %cmp, label %land.rhs, label %cleanup23

land.rhs:                                         ; preds = %while.cond
  %1 = load i64, ptr %in_pos, align 8
  %cmp1 = icmp ult i64 %1, %in_size
  %2 = or i1 %cmp2, %cmp1
  br i1 %2, label %while.body, label %cleanup23

while.body:                                       ; preds = %land.rhs
  %3 = load i32, ptr %action3, align 8
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %while.body
  %4 = load i32, ptr %read_pos, align 8
  %5 = load i32, ptr %read_limit, align 8
  %cmp7.not = icmp ult i32 %4, %5
  br i1 %cmp7.not, label %if.end10, label %do.body

do.body:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr %size.i, align 8
  %7 = load i32, ptr %keep_size_after.i, align 8
  %sub.i = sub i32 %6, %7
  %cmp.not.i = icmp ult i32 %4, %sub.i
  br i1 %cmp.not.i, label %entry.if.end_crit_edge.i, label %if.then.i

entry.if.end_crit_edge.i:                         ; preds = %do.body
  %.pre.i = load i32, ptr %write_pos.i.i, align 4
  br label %if.end.i

if.then.i:                                        ; preds = %do.body
  %8 = load i32, ptr %keep_size_before.i.i, align 4
  %sub.i.i = sub i32 %4, %8
  %and.i.i = and i32 %sub.i.i, -16
  %9 = load i32, ptr %write_pos.i.i, align 4
  %sub1.i.i = sub i32 %9, %and.i.i
  %conv.i.i = zext i32 %sub1.i.i to i64
  %10 = load ptr, ptr %mf, align 8
  %idx.ext.i.i = zext i32 %and.i.i to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %add.ptr.i.i, i64 %conv.i.i, i1 false)
  %11 = load i32, ptr %offset.i.i, align 4
  %add.i.i = add i32 %11, %and.i.i
  store i32 %add.i.i, ptr %offset.i.i, align 4
  %12 = load i32, ptr %read_pos, align 8
  %sub4.i.i = sub i32 %12, %and.i.i
  store i32 %sub4.i.i, ptr %read_pos, align 8
  %13 = load i32, ptr %read_limit, align 8
  %sub5.i.i = sub i32 %13, %and.i.i
  store i32 %sub5.i.i, ptr %read_limit, align 8
  %14 = load i32, ptr %write_pos.i.i, align 4
  %sub7.i.i = sub i32 %14, %and.i.i
  store i32 %sub7.i.i, ptr %write_pos.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end_crit_edge.i
  %15 = phi i32 [ %.pre.i, %entry.if.end_crit_edge.i ], [ %sub7.i.i, %if.then.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %write_pos.i) #7
  %conv.i = zext i32 %15 to i64
  store i64 %conv.i, ptr %write_pos.i, align 8
  %16 = load ptr, ptr %code.i, align 8
  %cmp6.i = icmp eq ptr %16, null
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i
  %17 = load ptr, ptr %mf, align 8
  %18 = load i32, ptr %size.i, align 8
  %conv12.i = zext i32 %18 to i64
  %call.i = call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %17, ptr noundef nonnull %write_pos.i, i64 noundef %conv12.i) #7
  br i1 %cmp13.not.i, label %if.end27.thread.i, label %land.rhs.i

if.end27.thread.i:                                ; preds = %if.then8.i
  %19 = load i64, ptr %write_pos.i, align 8
  %conv28121.i = trunc i64 %19 to i32
  store i32 %conv28121.i, ptr %write_pos.i.i, align 4
  br label %if.else39.i

land.rhs.i:                                       ; preds = %if.then8.i
  %20 = load i64, ptr %in_pos, align 8
  %cmp15.i = icmp eq i64 %20, %in_size
  %21 = zext i1 %cmp15.i to i32
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end.i
  %22 = load ptr, ptr %next.i, align 8
  %23 = load ptr, ptr %mf, align 8
  %24 = load i32, ptr %size.i, align 8
  %conv25.i = zext i32 %24 to i64
  %call26.i = call i32 %16(ptr noundef %22, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %23, ptr noundef nonnull %write_pos.i, i64 noundef %conv25.i, i32 noundef %action) #7
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %land.rhs.i
  %ret.0.i = phi i32 [ %call26.i, %if.else.i ], [ %21, %land.rhs.i ]
  %25 = load i64, ptr %write_pos.i, align 8
  %conv28.i = trunc i64 %25 to i32
  store i32 %conv28.i, ptr %write_pos.i.i, align 4
  %cmp31.i = icmp eq i32 %ret.0.i, 1
  br i1 %cmp31.i, label %if.then33.i, label %if.else39.i

if.then33.i:                                      ; preds = %if.end27.i
  store i32 %action, ptr %action3, align 8
  br label %if.end55.sink.split.i

if.else39.i:                                      ; preds = %if.end27.i, %if.end27.thread.i
  %conv28124.i = phi i32 [ %conv28121.i, %if.end27.thread.i ], [ %conv28.i, %if.end27.i ]
  %ret.0123.i = phi i32 [ 0, %if.end27.thread.i ], [ %ret.0.i, %if.end27.i ]
  %26 = load i32, ptr %keep_size_after.i, align 8
  %cmp44.i = icmp ult i32 %26, %conv28124.i
  br i1 %cmp44.i, label %if.then46.i, label %if.end55.i

if.then46.i:                                      ; preds = %if.else39.i
  %sub51.i = sub i32 %conv28124.i, %26
  br label %if.end55.sink.split.i

if.end55.sink.split.i:                            ; preds = %if.then46.i, %if.then33.i
  %sub51.sink.i = phi i32 [ %sub51.i, %if.then46.i ], [ %conv28.i, %if.then33.i ]
  %ret.1.ph.i = phi i32 [ %ret.0123.i, %if.then46.i ], [ 0, %if.then33.i ]
  store i32 %sub51.sink.i, ptr %read_limit, align 8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end55.sink.split.i, %if.else39.i
  %ret.1.i = phi i32 [ %ret.0123.i, %if.else39.i ], [ %ret.1.ph.i, %if.end55.sink.split.i ]
  %27 = load i32, ptr %pending.i, align 8
  %cmp57.not.i = icmp eq i32 %27, 0
  br i1 %cmp57.not.i, label %fill_window.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end55.i
  %28 = load i32, ptr %read_pos, align 8
  %29 = load i32, ptr %read_limit, align 8
  %cmp63.i = icmp ult i32 %28, %29
  br i1 %cmp63.i, label %if.then65.i, label %fill_window.exit

if.then65.i:                                      ; preds = %land.lhs.true.i
  store i32 0, ptr %pending.i, align 8
  %sub75.i = sub i32 %28, %27
  store i32 %sub75.i, ptr %read_pos, align 8
  %30 = load ptr, ptr %skip.i, align 8
  call void %30(ptr noundef nonnull %mf, i32 noundef %27) #7
  br label %fill_window.exit

fill_window.exit:                                 ; preds = %if.end55.i, %land.lhs.true.i, %if.then65.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %write_pos.i) #7
  %cmp8.not = icmp eq i32 %ret.1.i, 0
  br i1 %cmp8.not, label %if.end10, label %cleanup23

if.end10:                                         ; preds = %fill_window.exit, %land.lhs.true, %while.body
  %31 = load ptr, ptr %code, align 8
  %32 = load ptr, ptr %pcoder, align 8
  %call14 = call i32 %31(ptr noundef %32, ptr noundef nonnull %mf, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #7
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %while.cond, label %cleanup20.thread

cleanup20.thread:                                 ; preds = %if.end10
  store i32 0, ptr %action3, align 8
  br label %cleanup23

cleanup23:                                        ; preds = %land.rhs, %while.cond, %fill_window.exit, %cleanup20.thread
  %retval.4 = phi i32 [ %call14, %cleanup20.thread ], [ 0, %land.rhs ], [ 0, %while.cond ], [ %ret.1.i, %fill_window.exit ]
  ret i32 %retval.4
}

; Function Attrs: nounwind uwtable
define internal void @lz_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  %next = getelementptr inbounds i8, ptr %pcoder, i64 152
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #7
  %mf = getelementptr inbounds i8, ptr %pcoder, i64 32
  %hash = getelementptr inbounds i8, ptr %pcoder, i64 96
  %0 = load ptr, ptr %hash, align 8
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #7
  %1 = load ptr, ptr %mf, align 8
  tail call void @lzma_free(ptr noundef %1, ptr noundef %allocator) #7
  %end = getelementptr inbounds i8, ptr %pcoder, i64 16
  %2 = load ptr, ptr %end, align 8
  %cmp.not = icmp eq ptr %2, null
  %3 = load ptr, ptr %pcoder, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void %2(ptr noundef %3, ptr noundef %allocator) #7
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @lzma_free(ptr noundef %3, ptr noundef %allocator) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @lzma_free(ptr noundef nonnull %pcoder, ptr noundef %allocator) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @lz_encoder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr nocapture readnone %filters_null, ptr noundef %reversed_filters) #0 {
entry:
  %options_update = getelementptr inbounds i8, ptr %pcoder, i64 24
  %0 = load ptr, ptr %options_update, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %cleanup9, label %do.body

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %pcoder, align 8
  %call = tail call i32 %0(ptr noundef %1, ptr noundef %reversed_filters) #7
  %cmp5.not = icmp eq i32 %call, 0
  br i1 %cmp5.not, label %do.end, label %cleanup9

do.end:                                           ; preds = %do.body
  %next = getelementptr inbounds i8, ptr %pcoder, i64 152
  %add.ptr = getelementptr inbounds i8, ptr %reversed_filters, i64 16
  %call8 = tail call i32 @lzma_next_filter_update(ptr noundef nonnull %next, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #7
  br label %cleanup9

cleanup9:                                         ; preds = %entry, %do.body, %do.end
  %retval.1 = phi i32 [ %call8, %do.end ], [ %call, %do.body ], [ 11, %entry ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 0, 2) i8 @lzma_mf_is_supported(i32 noundef %mf) local_unnamed_addr #5 {
entry:
  %0 = add i32 %mf, -3
  %narrow = icmp ult i32 %0, 2
  %1 = and i32 %mf, -2
  %2 = icmp eq i32 %1, 18
  %narrow22 = or i1 %2, %narrow
  %cmp10 = icmp eq i32 %mf, 20
  %narrow23 = or i1 %cmp10, %narrow22
  %conv = zext i1 %narrow23 to i8
  ret i8 %conv
}

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @lzma_mf_hc3_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_hc3_skip(ptr noundef, i32 noundef) #3

declare i32 @lzma_mf_hc4_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_hc4_skip(ptr noundef, i32 noundef) #3

declare i32 @lzma_mf_bt2_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_bt2_skip(ptr noundef, i32 noundef) #3

declare i32 @lzma_mf_bt3_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_bt3_skip(ptr noundef, i32 noundef) #3

declare i32 @lzma_mf_bt4_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_bt4_skip(ptr noundef, i32 noundef) #3

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
