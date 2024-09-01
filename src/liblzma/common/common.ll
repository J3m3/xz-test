; ModuleID = 'liblzma/common/common.c'
source_filename = "liblzma/common/common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"5.0.5benchmarkcpu2017\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @lzma_version_number() local_unnamed_addr #0 {
entry:
  ret i32 50000056
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @lzma_version_string() local_unnamed_addr #0 {
entry:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lzma_alloc(i64 noundef %size, ptr noundef readonly %allocator) local_unnamed_addr #1 {
entry:
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %size, i64 1)
  %cmp1.not = icmp eq ptr %allocator, null
  br i1 %cmp1.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %allocator, align 8
  %cmp2.not = icmp eq ptr %0, null
  br i1 %cmp2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %opaque = getelementptr inbounds i8, ptr %allocator, i64 16
  %1 = load ptr, ptr %opaque, align 8
  %call = tail call ptr %0(ptr noundef %1, i64 noundef 1, i64 noundef %spec.store.select) #9
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = tail call noalias ptr @malloc(i64 noundef %spec.store.select) #10
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %ptr.0 = phi ptr [ %call, %if.then3 ], [ %call5, %if.else ]
  ret ptr %ptr.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @lzma_free(ptr noundef %ptr, ptr noundef readonly %allocator) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq ptr %allocator, null
  br i1 %cmp.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %free = getelementptr inbounds i8, ptr %allocator, i64 8
  %0 = load ptr, ptr %free, align 8
  %cmp1.not = icmp eq ptr %0, null
  br i1 %cmp1.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %opaque = getelementptr inbounds i8, ptr %allocator, i64 16
  %1 = load ptr, ptr %opaque, align 8
  tail call void %0(ptr noundef %1, ptr noundef %ptr) #9
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  tail call void @free(ptr noundef %ptr) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @lzma_bufcpy(ptr noalias nocapture noundef readonly %in, ptr noalias nocapture noundef %in_pos, i64 noundef %in_size, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #5 {
entry:
  %0 = load i64, ptr %in_pos, align 8
  %sub = sub i64 %in_size, %0
  %1 = load i64, ptr %out_pos, align 8
  %sub1 = sub i64 %out_size, %1
  %cond = tail call i64 @llvm.umin.i64(i64 %sub, i64 %sub1)
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %1
  %add.ptr2 = getelementptr inbounds i8, ptr %in, i64 %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr2, i64 %cond, i1 false)
  %add = add i64 %cond, %0
  store i64 %add, ptr %in_pos, align 8
  %add3 = add i64 %cond, %1
  store i64 %add3, ptr %out_pos, align 8
  ret i64 %cond
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_next_filter_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #1 {
entry:
  %init = getelementptr inbounds i8, ptr %filters, i64 8
  %0 = load ptr, ptr %init, align 8
  %1 = ptrtoint ptr %0 to i64
  %init1 = getelementptr inbounds i8, ptr %next, i64 16
  %2 = load i64, ptr %init1, align 8
  %cmp.not = icmp eq i64 %2, %1
  %cmp.not.i = icmp eq i64 %2, 0
  %or.cond = or i1 %cmp.not, %cmp.not.i
  br i1 %or.cond, label %if.end, label %if.then.i

if.then.i:                                        ; preds = %entry
  %end.i = getelementptr inbounds i8, ptr %next, i64 32
  %3 = load ptr, ptr %end.i, align 8
  %cmp1.not.i = icmp eq ptr %3, null
  %4 = load ptr, ptr %next, align 8
  br i1 %cmp1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void %3(ptr noundef %4, ptr noundef %allocator) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  %cmp.not.i.i = icmp eq ptr %allocator, null
  br i1 %cmp.not.i.i, label %if.else.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i
  %free.i.i = getelementptr inbounds i8, ptr %allocator, i64 8
  %5 = load ptr, ptr %free.i.i, align 8
  %cmp1.not.i.i = icmp eq ptr %5, null
  br i1 %cmp1.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %opaque.i.i = getelementptr inbounds i8, ptr %allocator, i64 16
  %6 = load ptr, ptr %opaque.i.i, align 8
  tail call void %5(ptr noundef %6, ptr noundef %4) #9
  br label %if.end.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i, %if.else.i
  tail call void @free(ptr noundef %4) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %if.then.i.i, %if.then2.i
  store ptr null, ptr %next, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %next, i64 8
  store i64 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %init1, i8 0, i64 48, i1 false)
  %.pre = load ptr, ptr %init, align 8
  %.pre22 = ptrtoint ptr %.pre to i64
  br label %if.end

if.end:                                           ; preds = %if.end.i, %entry
  %.pre-phi = phi i64 [ %.pre22, %if.end.i ], [ %1, %entry ]
  store i64 %.pre-phi, ptr %init1, align 8
  %7 = load i64, ptr %filters, align 8
  %id6 = getelementptr inbounds i8, ptr %next, i64 8
  store i64 %7, ptr %id6, align 8
  %8 = load ptr, ptr %init, align 8
  %cmp9 = icmp eq ptr %8, null
  br i1 %cmp9, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  %call = tail call i32 %8(ptr noundef nonnull %next, ptr noundef %allocator, ptr noundef nonnull %filters) #9
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ 0, %if.end ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define dso_local void @lzma_next_end(ptr nocapture noundef %next, ptr noundef %allocator) local_unnamed_addr #1 {
entry:
  %init = getelementptr inbounds i8, ptr %next, i64 16
  %0 = load i64, ptr %init, align 8
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %end = getelementptr inbounds i8, ptr %next, i64 32
  %1 = load ptr, ptr %end, align 8
  %cmp1.not = icmp eq ptr %1, null
  %2 = load ptr, ptr %next, align 8
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void %1(ptr noundef %2, ptr noundef %allocator) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  %cmp.not.i = icmp eq ptr %allocator, null
  br i1 %cmp.not.i, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else
  %free.i = getelementptr inbounds i8, ptr %allocator, i64 8
  %3 = load ptr, ptr %free.i, align 8
  %cmp1.not.i = icmp eq ptr %3, null
  br i1 %cmp1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %opaque.i = getelementptr inbounds i8, ptr %allocator, i64 16
  %4 = load ptr, ptr %opaque.i, align 8
  tail call void %3(ptr noundef %4, ptr noundef %2) #9
  br label %if.end

if.else.i:                                        ; preds = %land.lhs.true.i, %if.else
  tail call void @free(ptr noundef %2) #9
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %if.then2
  store ptr null, ptr %next, align 8
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %next, i64 8
  store i64 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %init, i8 0, i64 48, i1 false)
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_next_filter_update(ptr nocapture noundef readonly %next, ptr noundef %allocator, ptr noundef %reversed_filters) local_unnamed_addr #1 {
entry:
  %0 = load i64, ptr %reversed_filters, align 8
  %id1 = getelementptr inbounds i8, ptr %next, i64 8
  %1 = load i64, ptr %id1, align 8
  %cmp.not = icmp eq i64 %0, %1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i64 %0, -1
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %update = getelementptr inbounds i8, ptr %next, i64 56
  %2 = load ptr, ptr %update, align 8
  %3 = load ptr, ptr %next, align 8
  %call = tail call i32 %2(ptr noundef %3, ptr noundef %allocator, ptr noundef null, ptr noundef nonnull %reversed_filters) #9
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ %call, %if.end6 ], [ 11, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_strm_init(ptr noundef %strm) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %cmp1 = icmp eq ptr %0, null
  br i1 %cmp1, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.end
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %1 = load ptr, ptr %allocator, align 8
  %cmp1.not.i = icmp eq ptr %1, null
  br i1 %cmp1.not.i, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then2
  %2 = load ptr, ptr %1, align 8
  %cmp2.not.i = icmp eq ptr %2, null
  br i1 %cmp2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  %opaque.i = getelementptr inbounds i8, ptr %1, i64 16
  %3 = load ptr, ptr %opaque.i, align 8
  %call.i = tail call ptr %2(ptr noundef %3, i64 noundef 1, i64 noundef 88) #9
  br label %lzma_alloc.exit

if.else.i:                                        ; preds = %land.lhs.true.i, %if.then2
  %call5.i = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #10
  br label %lzma_alloc.exit

lzma_alloc.exit:                                  ; preds = %if.then3.i, %if.else.i
  %ptr.0.i = phi ptr [ %call.i, %if.then3.i ], [ %call5.i, %if.else.i ]
  store ptr %ptr.0.i, ptr %internal, align 8
  %cmp5 = icmp eq ptr %ptr.0.i, null
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %lzma_alloc.exit
  store ptr null, ptr %ptr.0.i, align 8
  %.compoundliteral.sroa.2.0.next.sroa_idx = getelementptr inbounds i8, ptr %ptr.0.i, i64 8
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.next.sroa_idx = getelementptr inbounds i8, ptr %ptr.0.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next.sroa_idx, i8 0, i64 48, i1 false)
  %.pre = load ptr, ptr %internal, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end
  %4 = phi ptr [ %.pre, %if.end7 ], [ %0, %if.end ]
  %supported_actions = getelementptr inbounds i8, ptr %4, i64 80
  store i8 0, ptr %supported_actions, align 8
  %5 = load ptr, ptr %internal, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %5, i64 81
  store i8 0, ptr %arrayidx13, align 1
  %6 = load ptr, ptr %internal, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %6, i64 82
  store i8 0, ptr %arrayidx16, align 2
  %7 = load ptr, ptr %internal, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %7, i64 83
  store i8 0, ptr %arrayidx19, align 1
  %8 = load ptr, ptr %internal, align 8
  %sequence = getelementptr inbounds i8, ptr %8, i64 64
  store i32 0, ptr %sequence, align 8
  %9 = load ptr, ptr %internal, align 8
  %allow_buf_error = getelementptr inbounds i8, ptr %9, i64 84
  store i8 0, ptr %allow_buf_error, align 4
  %total_in = getelementptr inbounds i8, ptr %strm, i64 16
  store i64 0, ptr %total_in, align 8
  %total_out = getelementptr inbounds i8, ptr %strm, i64 40
  store i64 0, ptr %total_out, align 8
  br label %return

return:                                           ; preds = %lzma_alloc.exit, %entry, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 11, %entry ], [ 5, %lzma_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @lzma_code(ptr nocapture noundef %strm, i32 noundef %action) local_unnamed_addr #1 {
entry:
  %in_pos = alloca i64, align 8
  %out_pos = alloca i64, align 8
  %0 = load ptr, ptr %strm, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %avail_in = getelementptr inbounds i8, ptr %strm, i64 8
  %1 = load i64, ptr %avail_in, align 8
  %cmp1.not = icmp eq i64 %1, 0
  br i1 %cmp1.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %next_out = getelementptr inbounds i8, ptr %strm, i64 24
  %2 = load ptr, ptr %next_out, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %land.lhs.true3, label %lor.lhs.false5

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %avail_out = getelementptr inbounds i8, ptr %strm, i64 32
  %3 = load i64, ptr %avail_out, align 8
  %cmp4.not = icmp eq i64 %3, 0
  br i1 %cmp4.not, label %lor.lhs.false5, label %return

lor.lhs.false5:                                   ; preds = %land.lhs.true3, %lor.lhs.false
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %4 = load ptr, ptr %internal, align 8
  %cmp6 = icmp eq ptr %4, null
  br i1 %cmp6, label %return, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %code = getelementptr inbounds i8, ptr %4, i64 24
  %5 = load ptr, ptr %code, align 8
  %cmp9 = icmp eq ptr %5, null
  %cmp11 = icmp ugt i32 %action, 3
  %or.cond = or i1 %cmp11, %cmp9
  br i1 %or.cond, label %return, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %supported_actions = getelementptr inbounds i8, ptr %4, i64 80
  %idxprom = zext nneg i32 %action to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr %supported_actions, i64 0, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %6 to i1
  br i1 %loadedv, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false12
  %reserved_ptr1 = getelementptr inbounds i8, ptr %strm, i64 64
  %7 = load ptr, ptr %reserved_ptr1, align 8
  %cmp14.not = icmp eq ptr %7, null
  br i1 %cmp14.not, label %lor.lhs.false15, label %return

lor.lhs.false15:                                  ; preds = %if.end
  %reserved_ptr2 = getelementptr inbounds i8, ptr %strm, i64 72
  %8 = load ptr, ptr %reserved_ptr2, align 8
  %cmp16.not = icmp eq ptr %8, null
  br i1 %cmp16.not, label %lor.lhs.false17, label %return

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %reserved_ptr3 = getelementptr inbounds i8, ptr %strm, i64 80
  %9 = load ptr, ptr %reserved_ptr3, align 8
  %cmp18.not = icmp eq ptr %9, null
  br i1 %cmp18.not, label %lor.lhs.false19, label %return

lor.lhs.false19:                                  ; preds = %lor.lhs.false17
  %reserved_ptr4 = getelementptr inbounds i8, ptr %strm, i64 88
  %10 = load ptr, ptr %reserved_ptr4, align 8
  %cmp20.not = icmp eq ptr %10, null
  br i1 %cmp20.not, label %lor.lhs.false21, label %return

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %reserved_int1 = getelementptr inbounds i8, ptr %strm, i64 96
  %11 = load i64, ptr %reserved_int1, align 8
  %cmp22.not = icmp eq i64 %11, 0
  br i1 %cmp22.not, label %lor.lhs.false23, label %return

lor.lhs.false23:                                  ; preds = %lor.lhs.false21
  %reserved_int2 = getelementptr inbounds i8, ptr %strm, i64 104
  %12 = load i64, ptr %reserved_int2, align 8
  %cmp24.not = icmp eq i64 %12, 0
  br i1 %cmp24.not, label %lor.lhs.false25, label %return

lor.lhs.false25:                                  ; preds = %lor.lhs.false23
  %reserved_int3 = getelementptr inbounds i8, ptr %strm, i64 112
  %13 = load i64, ptr %reserved_int3, align 8
  %cmp26.not = icmp eq i64 %13, 0
  br i1 %cmp26.not, label %lor.lhs.false27, label %return

lor.lhs.false27:                                  ; preds = %lor.lhs.false25
  %reserved_int4 = getelementptr inbounds i8, ptr %strm, i64 120
  %14 = load i64, ptr %reserved_int4, align 8
  %cmp28.not = icmp eq i64 %14, 0
  br i1 %cmp28.not, label %lor.lhs.false29, label %return

lor.lhs.false29:                                  ; preds = %lor.lhs.false27
  %reserved_enum1 = getelementptr inbounds i8, ptr %strm, i64 128
  %15 = load i32, ptr %reserved_enum1, align 8
  %cmp30.not = icmp eq i32 %15, 0
  br i1 %cmp30.not, label %lor.lhs.false31, label %return

lor.lhs.false31:                                  ; preds = %lor.lhs.false29
  %reserved_enum2 = getelementptr inbounds i8, ptr %strm, i64 132
  %16 = load i32, ptr %reserved_enum2, align 4
  %cmp32.not = icmp eq i32 %16, 0
  br i1 %cmp32.not, label %if.end34, label %return

if.end34:                                         ; preds = %lor.lhs.false31
  %sequence = getelementptr inbounds i8, ptr %4, i64 64
  %17 = load i32, ptr %sequence, align 8
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb45
    i32 2, label %sw.bb54
    i32 3, label %sw.bb63
    i32 4, label %return
  ]

sw.bb:                                            ; preds = %if.end34
  %action.off = add nsw i32 %action, -1
  %switch191 = icmp ult i32 %action.off, 3
  br i1 %switch191, label %sw.epilog74.sink.split, label %sw.epilog74

sw.bb45:                                          ; preds = %if.end34
  %cmp46.not = icmp eq i32 %action, 1
  br i1 %cmp46.not, label %lor.lhs.false47, label %return

lor.lhs.false47:                                  ; preds = %sw.bb45
  %avail_in49 = getelementptr inbounds i8, ptr %4, i64 72
  %18 = load i64, ptr %avail_in49, align 8
  %avail_in50 = getelementptr inbounds i8, ptr %strm, i64 8
  %19 = load i64, ptr %avail_in50, align 8
  %cmp51.not = icmp eq i64 %18, %19
  br i1 %cmp51.not, label %sw.epilog74, label %return

sw.bb54:                                          ; preds = %if.end34
  %cmp55.not = icmp eq i32 %action, 2
  br i1 %cmp55.not, label %lor.lhs.false56, label %return

lor.lhs.false56:                                  ; preds = %sw.bb54
  %avail_in58 = getelementptr inbounds i8, ptr %4, i64 72
  %20 = load i64, ptr %avail_in58, align 8
  %avail_in59 = getelementptr inbounds i8, ptr %strm, i64 8
  %21 = load i64, ptr %avail_in59, align 8
  %cmp60.not = icmp eq i64 %20, %21
  br i1 %cmp60.not, label %sw.epilog74, label %return

sw.bb63:                                          ; preds = %if.end34
  %cmp64.not = icmp eq i32 %action, 3
  br i1 %cmp64.not, label %lor.lhs.false65, label %return

lor.lhs.false65:                                  ; preds = %sw.bb63
  %avail_in67 = getelementptr inbounds i8, ptr %4, i64 72
  %22 = load i64, ptr %avail_in67, align 8
  %avail_in68 = getelementptr inbounds i8, ptr %strm, i64 8
  %23 = load i64, ptr %avail_in68, align 8
  %cmp69.not = icmp eq i64 %22, %23
  br i1 %cmp69.not, label %sw.epilog74, label %return

sw.default:                                       ; preds = %if.end34
  br label %return

sw.epilog74.sink.split:                           ; preds = %sw.bb
  store i32 %action, ptr %sequence, align 8
  br label %sw.epilog74

sw.epilog74:                                      ; preds = %sw.bb, %sw.epilog74.sink.split, %lor.lhs.false65, %lor.lhs.false56, %lor.lhs.false47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_pos) #9
  store i64 0, ptr %in_pos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_pos) #9
  store i64 0, ptr %out_pos, align 8
  %24 = load ptr, ptr %internal, align 8
  %code77 = getelementptr inbounds i8, ptr %24, i64 24
  %25 = load ptr, ptr %code77, align 8
  %26 = load ptr, ptr %24, align 8
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %27 = load ptr, ptr %allocator, align 8
  %28 = load ptr, ptr %strm, align 8
  %avail_in81 = getelementptr inbounds i8, ptr %strm, i64 8
  %29 = load i64, ptr %avail_in81, align 8
  %30 = load ptr, ptr %next_out, align 8
  %avail_out83 = getelementptr inbounds i8, ptr %strm, i64 32
  %31 = load i64, ptr %avail_out83, align 8
  %call = call i32 %25(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef nonnull %in_pos, i64 noundef %29, ptr noundef %30, ptr noundef nonnull %out_pos, i64 noundef %31, i32 noundef %action) #9
  %32 = load i64, ptr %in_pos, align 8
  %33 = load ptr, ptr %strm, align 8
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %32
  store ptr %add.ptr, ptr %strm, align 8
  %34 = load i64, ptr %avail_in81, align 8
  %sub = sub i64 %34, %32
  store i64 %sub, ptr %avail_in81, align 8
  %total_in = getelementptr inbounds i8, ptr %strm, i64 16
  %35 = load i64, ptr %total_in, align 8
  %add = add i64 %35, %32
  store i64 %add, ptr %total_in, align 8
  %36 = load i64, ptr %out_pos, align 8
  %37 = load ptr, ptr %next_out, align 8
  %add.ptr87 = getelementptr inbounds i8, ptr %37, i64 %36
  store ptr %add.ptr87, ptr %next_out, align 8
  %38 = load i64, ptr %avail_out83, align 8
  %sub89 = sub i64 %38, %36
  store i64 %sub89, ptr %avail_out83, align 8
  %total_out = getelementptr inbounds i8, ptr %strm, i64 40
  %39 = load i64, ptr %total_out, align 8
  %add90 = add i64 %39, %36
  store i64 %add90, ptr %total_out, align 8
  %40 = load ptr, ptr %internal, align 8
  %avail_in93 = getelementptr inbounds i8, ptr %40, i64 72
  store i64 %sub, ptr %avail_in93, align 8
  switch i32 %call, label %sw.default127 [
    i32 0, label %sw.bb94
    i32 1, label %sw.bb109
    i32 2, label %sw.bb124
    i32 3, label %sw.bb124
    i32 4, label %sw.bb124
    i32 6, label %sw.bb124
  ]

sw.bb94:                                          ; preds = %sw.epilog74
  %cmp95 = icmp eq i64 %36, 0
  %cmp97 = icmp eq i64 %32, 0
  %or.cond131 = select i1 %cmp95, i1 %cmp97, i1 false
  %41 = load ptr, ptr %internal, align 8
  %allow_buf_error = getelementptr inbounds i8, ptr %41, i64 84
  br i1 %or.cond131, label %if.then98, label %if.else105

if.then98:                                        ; preds = %sw.bb94
  %42 = load i8, ptr %allow_buf_error, align 4, !range !5, !noundef !6
  %loadedv100 = trunc nuw i8 %42 to i1
  br i1 %loadedv100, label %sw.epilog130, label %if.else

if.else:                                          ; preds = %if.then98
  store i8 1, ptr %allow_buf_error, align 4
  br label %sw.epilog130

if.else105:                                       ; preds = %sw.bb94
  store i8 0, ptr %allow_buf_error, align 4
  br label %sw.epilog130

sw.bb109:                                         ; preds = %sw.epilog74
  %43 = load ptr, ptr %internal, align 8
  %sequence111 = getelementptr inbounds i8, ptr %43, i64 64
  %44 = load i32, ptr %sequence111, align 8
  %.off = add i32 %44, -1
  %switch = icmp ult i32 %.off, 2
  %. = select i1 %switch, i32 0, i32 4
  store i32 %., ptr %sequence111, align 8
  br label %sw.bb124

sw.bb124:                                         ; preds = %sw.bb109, %sw.epilog74, %sw.epilog74, %sw.epilog74, %sw.epilog74
  %45 = load ptr, ptr %internal, align 8
  %allow_buf_error126 = getelementptr inbounds i8, ptr %45, i64 84
  store i8 0, ptr %allow_buf_error126, align 4
  br label %sw.epilog130

sw.default127:                                    ; preds = %sw.epilog74
  %46 = load ptr, ptr %internal, align 8
  %sequence129 = getelementptr inbounds i8, ptr %46, i64 64
  store i32 5, ptr %sequence129, align 8
  br label %sw.epilog130

sw.epilog130:                                     ; preds = %if.then98, %if.else105, %if.else, %sw.default127, %sw.bb124
  %ret.0 = phi i32 [ %call, %sw.default127 ], [ %call, %sw.bb124 ], [ 0, %if.else ], [ 0, %if.else105 ], [ 10, %if.then98 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_pos) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_pos) #9
  br label %return

return:                                           ; preds = %if.end34, %sw.bb63, %lor.lhs.false65, %sw.bb54, %lor.lhs.false56, %sw.bb45, %lor.lhs.false47, %if.end, %lor.lhs.false15, %lor.lhs.false17, %lor.lhs.false19, %lor.lhs.false21, %lor.lhs.false23, %lor.lhs.false25, %lor.lhs.false27, %lor.lhs.false29, %lor.lhs.false31, %land.lhs.true, %land.lhs.true3, %lor.lhs.false5, %lor.lhs.false7, %lor.lhs.false12, %sw.epilog130, %sw.default
  %retval.0 = phi i32 [ 11, %sw.default ], [ %ret.0, %sw.epilog130 ], [ 11, %lor.lhs.false12 ], [ 11, %lor.lhs.false7 ], [ 11, %lor.lhs.false5 ], [ 11, %land.lhs.true3 ], [ 11, %land.lhs.true ], [ 8, %lor.lhs.false31 ], [ 8, %lor.lhs.false29 ], [ 8, %lor.lhs.false27 ], [ 8, %lor.lhs.false25 ], [ 8, %lor.lhs.false23 ], [ 8, %lor.lhs.false21 ], [ 8, %lor.lhs.false19 ], [ 8, %lor.lhs.false17 ], [ 8, %lor.lhs.false15 ], [ 8, %if.end ], [ 11, %lor.lhs.false47 ], [ 11, %sw.bb45 ], [ 11, %lor.lhs.false56 ], [ 11, %sw.bb54 ], [ 11, %lor.lhs.false65 ], [ 11, %sw.bb63 ], [ 1, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @lzma_end(ptr noundef %strm) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq ptr %strm, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %cmp1.not = icmp eq ptr %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48
  %1 = load ptr, ptr %allocator, align 8
  %init.i = getelementptr inbounds i8, ptr %0, i64 16
  %2 = load i64, ptr %init.i, align 8
  %cmp.not.i = icmp eq i64 %2, 0
  br i1 %cmp.not.i, label %lzma_next_end.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %end.i = getelementptr inbounds i8, ptr %0, i64 32
  %3 = load ptr, ptr %end.i, align 8
  %cmp1.not.i = icmp eq ptr %3, null
  %4 = load ptr, ptr %0, align 8
  br i1 %cmp1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void %3(ptr noundef %4, ptr noundef %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  %cmp.not.i.i = icmp eq ptr %1, null
  br i1 %cmp.not.i.i, label %if.else.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i
  %free.i.i = getelementptr inbounds i8, ptr %1, i64 8
  %5 = load ptr, ptr %free.i.i, align 8
  %cmp1.not.i.i = icmp eq ptr %5, null
  br i1 %cmp1.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %opaque.i.i = getelementptr inbounds i8, ptr %1, i64 16
  %6 = load ptr, ptr %opaque.i.i, align 8
  tail call void %5(ptr noundef %6, ptr noundef %4) #9
  br label %if.end.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i, %if.else.i
  tail call void @free(ptr noundef %4) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %if.then.i.i, %if.then2.i
  store ptr null, ptr %0, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %0, i64 8
  store i64 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %init.i, i8 0, i64 48, i1 false)
  %.pr = load ptr, ptr %allocator, align 8
  %.pre = load ptr, ptr %internal, align 8
  br label %lzma_next_end.exit

lzma_next_end.exit:                               ; preds = %if.then, %if.end.i
  %7 = phi ptr [ %0, %if.then ], [ %.pre, %if.end.i ]
  %8 = phi ptr [ %1, %if.then ], [ %.pr, %if.end.i ]
  %cmp.not.i12 = icmp eq ptr %8, null
  br i1 %cmp.not.i12, label %if.else.i16, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lzma_next_end.exit
  %free.i = getelementptr inbounds i8, ptr %8, i64 8
  %9 = load ptr, ptr %free.i, align 8
  %cmp1.not.i13 = icmp eq ptr %9, null
  br i1 %cmp1.not.i13, label %if.else.i16, label %if.then.i14

if.then.i14:                                      ; preds = %land.lhs.true.i
  %opaque.i = getelementptr inbounds i8, ptr %8, i64 16
  %10 = load ptr, ptr %opaque.i, align 8
  tail call void %9(ptr noundef %10, ptr noundef %7) #9
  br label %lzma_free.exit

if.else.i16:                                      ; preds = %land.lhs.true.i, %lzma_next_end.exit
  tail call void @free(ptr noundef %7) #9
  br label %lzma_free.exit

lzma_free.exit:                                   ; preds = %if.then.i14, %if.else.i16
  store ptr null, ptr %internal, align 8
  br label %if.end

if.end:                                           ; preds = %lzma_free.exit, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_get_check(ptr nocapture noundef readonly %strm) local_unnamed_addr #1 {
entry:
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %get_check = getelementptr inbounds i8, ptr %0, i64 40
  %1 = load ptr, ptr %get_check, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %0, align 8
  %call = tail call i32 %1(ptr noundef %2) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_memusage(ptr noundef readonly %strm) local_unnamed_addr #1 {
entry:
  %memusage = alloca i64, align 8
  %old_memlimit = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %memusage) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_memlimit) #9
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %cmp1 = icmp eq ptr %0, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %memconfig = getelementptr inbounds i8, ptr %0, i64 48
  %1 = load ptr, ptr %memconfig, align 8
  %cmp4 = icmp eq ptr %1, null
  br i1 %cmp4, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %2 = load ptr, ptr %0, align 8
  %call = call i32 %1(ptr noundef %2, ptr noundef nonnull %memusage, ptr noundef nonnull %old_memlimit, i64 noundef 0) #9
  %cmp11.not = icmp eq i32 %call, 0
  %3 = load i64, ptr %memusage, align 8
  %spec.select = select i1 %cmp11.not, i64 %3, i64 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false5, %entry, %lor.lhs.false, %lor.lhs.false2
  %retval.0 = phi i64 [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_memlimit) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %memusage) #9
  ret i64 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_memlimit_get(ptr noundef readonly %strm) local_unnamed_addr #1 {
entry:
  %old_memlimit = alloca i64, align 8
  %memusage = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_memlimit) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %memusage) #9
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %cmp1 = icmp eq ptr %0, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %memconfig = getelementptr inbounds i8, ptr %0, i64 48
  %1 = load ptr, ptr %memconfig, align 8
  %cmp4 = icmp eq ptr %1, null
  br i1 %cmp4, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %2 = load ptr, ptr %0, align 8
  %call = call i32 %1(ptr noundef %2, ptr noundef nonnull %memusage, ptr noundef nonnull %old_memlimit, i64 noundef 0) #9
  %cmp11.not = icmp eq i32 %call, 0
  %3 = load i64, ptr %old_memlimit, align 8
  %spec.select = select i1 %cmp11.not, i64 %3, i64 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false5, %entry, %lor.lhs.false, %lor.lhs.false2
  %retval.0 = phi i64 [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %memusage) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_memlimit) #9
  ret i64 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_memlimit_set(ptr noundef readonly %strm, i64 noundef %new_memlimit) local_unnamed_addr #1 {
entry:
  %old_memlimit = alloca i64, align 8
  %memusage = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_memlimit) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %memusage) #9
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56
  %0 = load ptr, ptr %internal, align 8
  %cmp1 = icmp eq ptr %0, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %memconfig = getelementptr inbounds i8, ptr %0, i64 48
  %1 = load ptr, ptr %memconfig, align 8
  %cmp4 = icmp eq ptr %1, null
  br i1 %cmp4, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %2 = add i64 %new_memlimit, -1
  %or.cond = icmp ult i64 %2, 32767
  br i1 %or.cond, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %3 = load ptr, ptr %0, align 8
  %call = call i32 %1(ptr noundef %3, ptr noundef nonnull %memusage, ptr noundef nonnull %old_memlimit, i64 noundef %new_memlimit) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %lor.lhs.false2, %if.end8
  %retval.0 = phi i32 [ %call, %if.end8 ], [ 11, %lor.lhs.false2 ], [ 11, %lor.lhs.false ], [ 11, %entry ], [ 6, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %memusage) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_memlimit) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{i8 0, i8 2}
!6 = !{}
