; ModuleID = 'liblzma/common/common.c'
source_filename = "liblzma/common/common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"5.0.5benchmarkcpu2017\00", align 1, !dbg !0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @lzma_version_number() local_unnamed_addr #0 !dbg !150 {
entry:
  ret i32 50000056, !dbg !155
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @lzma_version_string() local_unnamed_addr #0 !dbg !156 {
entry:
  ret ptr @.str, !dbg !161
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lzma_alloc(i64 noundef %size, ptr noundef readonly %allocator) local_unnamed_addr #1 !dbg !162 {
entry:
    #dbg_value(i64 %size, !166, !DIExpression(), !169)
    #dbg_value(ptr %allocator, !167, !DIExpression(), !169)
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %size, i64 1), !dbg !170
    #dbg_value(i64 %spec.store.select, !166, !DIExpression(), !169)
  %cmp1.not = icmp eq ptr %allocator, null, !dbg !171
  br i1 %cmp1.not, label %if.else, label %land.lhs.true, !dbg !173

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %allocator, align 8, !dbg !174
  %cmp2.not = icmp eq ptr %0, null, !dbg !175
  br i1 %cmp2.not, label %if.else, label %if.then3, !dbg !176

if.then3:                                         ; preds = %land.lhs.true
  %opaque = getelementptr inbounds i8, ptr %allocator, i64 16, !dbg !177
  %1 = load ptr, ptr %opaque, align 8, !dbg !177
  %call = tail call ptr %0(ptr noundef %1, i64 noundef 1, i64 noundef %spec.store.select) #9, !dbg !178
    #dbg_value(ptr %call, !168, !DIExpression(), !169)
  br label %if.end6, !dbg !179

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = tail call noalias ptr @malloc(i64 noundef %spec.store.select) #10, !dbg !180
    #dbg_value(ptr %call5, !168, !DIExpression(), !169)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %ptr.0 = phi ptr [ %call, %if.then3 ], [ %call5, %if.else ], !dbg !181
    #dbg_value(ptr %ptr.0, !168, !DIExpression(), !169)
  ret ptr %ptr.0, !dbg !182
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !183 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @lzma_free(ptr noundef %ptr, ptr noundef readonly %allocator) local_unnamed_addr #1 !dbg !187 {
entry:
    #dbg_value(ptr %ptr, !191, !DIExpression(), !193)
    #dbg_value(ptr %allocator, !192, !DIExpression(), !193)
  %cmp.not = icmp eq ptr %allocator, null, !dbg !194
  br i1 %cmp.not, label %if.else, label %land.lhs.true, !dbg !196

land.lhs.true:                                    ; preds = %entry
  %free = getelementptr inbounds i8, ptr %allocator, i64 8, !dbg !197
  %0 = load ptr, ptr %free, align 8, !dbg !197
  %cmp1.not = icmp eq ptr %0, null, !dbg !198
  br i1 %cmp1.not, label %if.else, label %if.then, !dbg !199

if.then:                                          ; preds = %land.lhs.true
  %opaque = getelementptr inbounds i8, ptr %allocator, i64 16, !dbg !200
  %1 = load ptr, ptr %opaque, align 8, !dbg !200
  tail call void %0(ptr noundef %1, ptr noundef %ptr) #9, !dbg !201
  br label %if.end, !dbg !201

if.else:                                          ; preds = %land.lhs.true, %entry
  tail call void @free(ptr noundef %ptr) #9, !dbg !202
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !203
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !204 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @lzma_bufcpy(ptr noalias nocapture noundef readonly %in, ptr noalias nocapture noundef %in_pos, i64 noundef %in_size, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #5 !dbg !207 {
entry:
    #dbg_value(ptr %in, !211, !DIExpression(), !221)
    #dbg_value(ptr %in_pos, !212, !DIExpression(), !221)
    #dbg_value(i64 %in_size, !213, !DIExpression(), !221)
    #dbg_value(ptr %out, !214, !DIExpression(), !221)
    #dbg_value(ptr %out_pos, !215, !DIExpression(), !221)
    #dbg_value(i64 %out_size, !216, !DIExpression(), !221)
  %0 = load i64, ptr %in_pos, align 8, !dbg !222
  %sub = sub i64 %in_size, %0, !dbg !223
    #dbg_value(i64 %sub, !217, !DIExpression(), !221)
  %1 = load i64, ptr %out_pos, align 8, !dbg !224
  %sub1 = sub i64 %out_size, %1, !dbg !225
    #dbg_value(i64 %sub1, !219, !DIExpression(), !221)
  %cond = tail call i64 @llvm.umin.i64(i64 %sub, i64 %sub1), !dbg !226
    #dbg_value(i64 %cond, !220, !DIExpression(), !221)
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %1, !dbg !227
  %add.ptr2 = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !228
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr2, i64 %cond, i1 false), !dbg !229
  %add = add i64 %cond, %0, !dbg !230
  store i64 %add, ptr %in_pos, align 8, !dbg !230
  %add3 = add i64 %cond, %1, !dbg !231
  store i64 %add3, ptr %out_pos, align 8, !dbg !231
  ret i64 %cond, !dbg !232
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_next_filter_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #1 !dbg !233 {
entry:
    #dbg_value(ptr %next, !248, !DIExpression(), !251)
    #dbg_value(ptr %allocator, !249, !DIExpression(), !251)
    #dbg_value(ptr %filters, !250, !DIExpression(), !251)
  %init = getelementptr inbounds i8, ptr %filters, i64 8, !dbg !252
  %0 = load ptr, ptr %init, align 8, !dbg !252
  %1 = ptrtoint ptr %0 to i64, !dbg !252
  %init1 = getelementptr inbounds i8, ptr %next, i64 16, !dbg !252
  %2 = load i64, ptr %init1, align 8, !dbg !252
  %cmp.not = icmp eq i64 %2, %1, !dbg !252
    #dbg_value(ptr %next, !255, !DIExpression(), !261)
    #dbg_value(ptr %allocator, !260, !DIExpression(), !261)
  %cmp.not.i = icmp eq i64 %2, 0
  %or.cond = or i1 %cmp.not, %cmp.not.i, !dbg !263
  br i1 %or.cond, label %if.end, label %if.then.i, !dbg !263

if.then.i:                                        ; preds = %entry
  %end.i = getelementptr inbounds i8, ptr %next, i64 32, !dbg !264
  %3 = load ptr, ptr %end.i, align 8, !dbg !264
  %cmp1.not.i = icmp eq ptr %3, null, !dbg !268
  %4 = load ptr, ptr %next, align 8, !dbg !269
  br i1 %cmp1.not.i, label %if.else.i, label %if.then2.i, !dbg !270

if.then2.i:                                       ; preds = %if.then.i
  tail call void %3(ptr noundef %4, ptr noundef %allocator) #9, !dbg !271
  br label %if.end.i, !dbg !271

if.else.i:                                        ; preds = %if.then.i
    #dbg_value(ptr %4, !191, !DIExpression(), !272)
    #dbg_value(ptr %allocator, !192, !DIExpression(), !272)
  %cmp.not.i.i = icmp eq ptr %allocator, null, !dbg !274
  br i1 %cmp.not.i.i, label %if.else.i.i, label %land.lhs.true.i.i, !dbg !275

land.lhs.true.i.i:                                ; preds = %if.else.i
  %free.i.i = getelementptr inbounds i8, ptr %allocator, i64 8, !dbg !276
  %5 = load ptr, ptr %free.i.i, align 8, !dbg !276
  %cmp1.not.i.i = icmp eq ptr %5, null, !dbg !277
  br i1 %cmp1.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !278

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %opaque.i.i = getelementptr inbounds i8, ptr %allocator, i64 16, !dbg !279
  %6 = load ptr, ptr %opaque.i.i, align 8, !dbg !279
  tail call void %5(ptr noundef %6, ptr noundef %4) #9, !dbg !280
  br label %if.end.i, !dbg !280

if.else.i.i:                                      ; preds = %land.lhs.true.i.i, %if.else.i
  tail call void @free(ptr noundef %4) #9, !dbg !281
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %if.then.i.i, %if.then2.i
  store ptr null, ptr %next, align 8, !dbg !282
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %next, i64 8, !dbg !282
  store i64 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8, !dbg !282
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %init1, i8 0, i64 48, i1 false), !dbg !282
  %.pre = load ptr, ptr %init, align 8, !dbg !263
  %.pre22 = ptrtoint ptr %.pre to i64, !dbg !263
  br label %if.end, !dbg !283

if.end:                                           ; preds = %if.end.i, %entry
  %.pre-phi = phi i64 [ %.pre22, %if.end.i ], [ %1, %entry ], !dbg !263
  store i64 %.pre-phi, ptr %init1, align 8, !dbg !263
  %7 = load i64, ptr %filters, align 8, !dbg !284
  %id6 = getelementptr inbounds i8, ptr %next, i64 8, !dbg !285
  store i64 %7, ptr %id6, align 8, !dbg !286
  %8 = load ptr, ptr %init, align 8, !dbg !287
  %cmp9 = icmp eq ptr %8, null, !dbg !288
  br i1 %cmp9, label %cond.end, label %cond.false, !dbg !289

cond.false:                                       ; preds = %if.end
  %call = tail call i32 %8(ptr noundef nonnull %next, ptr noundef %allocator, ptr noundef nonnull %filters) #9, !dbg !290
  br label %cond.end, !dbg !289

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ 0, %if.end ], !dbg !289
  ret i32 %cond, !dbg !291
}

; Function Attrs: nounwind uwtable
define dso_local void @lzma_next_end(ptr nocapture noundef %next, ptr noundef %allocator) local_unnamed_addr #1 !dbg !256 {
entry:
    #dbg_value(ptr %next, !255, !DIExpression(), !292)
    #dbg_value(ptr %allocator, !260, !DIExpression(), !292)
  %init = getelementptr inbounds i8, ptr %next, i64 16, !dbg !293
  %0 = load i64, ptr %init, align 8, !dbg !293
  %cmp.not = icmp eq i64 %0, 0, !dbg !294
  br i1 %cmp.not, label %if.end8, label %if.then, !dbg !295

if.then:                                          ; preds = %entry
  %end = getelementptr inbounds i8, ptr %next, i64 32, !dbg !296
  %1 = load ptr, ptr %end, align 8, !dbg !296
  %cmp1.not = icmp eq ptr %1, null, !dbg !297
  %2 = load ptr, ptr %next, align 8, !dbg !298
  br i1 %cmp1.not, label %if.else, label %if.then2, !dbg !299

if.then2:                                         ; preds = %if.then
  tail call void %1(ptr noundef %2, ptr noundef %allocator) #9, !dbg !300
  br label %if.end, !dbg !300

if.else:                                          ; preds = %if.then
    #dbg_value(ptr %2, !191, !DIExpression(), !301)
    #dbg_value(ptr %allocator, !192, !DIExpression(), !301)
  %cmp.not.i = icmp eq ptr %allocator, null, !dbg !303
  br i1 %cmp.not.i, label %if.else.i, label %land.lhs.true.i, !dbg !304

land.lhs.true.i:                                  ; preds = %if.else
  %free.i = getelementptr inbounds i8, ptr %allocator, i64 8, !dbg !305
  %3 = load ptr, ptr %free.i, align 8, !dbg !305
  %cmp1.not.i = icmp eq ptr %3, null, !dbg !306
  br i1 %cmp1.not.i, label %if.else.i, label %if.then.i, !dbg !307

if.then.i:                                        ; preds = %land.lhs.true.i
  %opaque.i = getelementptr inbounds i8, ptr %allocator, i64 16, !dbg !308
  %4 = load ptr, ptr %opaque.i, align 8, !dbg !308
  tail call void %3(ptr noundef %4, ptr noundef %2) #9, !dbg !309
  br label %if.end, !dbg !309

if.else.i:                                        ; preds = %land.lhs.true.i, %if.else
  tail call void @free(ptr noundef %2) #9, !dbg !310
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %if.then2
  store ptr null, ptr %next, align 8, !dbg !311
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %next, i64 8, !dbg !311
  store i64 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 8, !dbg !311
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %init, i8 0, i64 48, i1 false), !dbg !311
  br label %if.end8, !dbg !312

if.end8:                                          ; preds = %if.end, %entry
  ret void, !dbg !313
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_next_filter_update(ptr nocapture noundef readonly %next, ptr noundef %allocator, ptr noundef %reversed_filters) local_unnamed_addr #1 !dbg !314 {
entry:
    #dbg_value(ptr %next, !318, !DIExpression(), !321)
    #dbg_value(ptr %allocator, !319, !DIExpression(), !321)
    #dbg_value(ptr %reversed_filters, !320, !DIExpression(), !321)
  %0 = load i64, ptr %reversed_filters, align 8, !dbg !322
  %id1 = getelementptr inbounds i8, ptr %next, i64 8, !dbg !324
  %1 = load i64, ptr %id1, align 8, !dbg !324
  %cmp.not = icmp eq i64 %0, %1, !dbg !325
  br i1 %cmp.not, label %if.end, label %return, !dbg !326

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i64 %0, -1, !dbg !327
  br i1 %cmp4, label %return, label %if.end6, !dbg !329

if.end6:                                          ; preds = %if.end
  %update = getelementptr inbounds i8, ptr %next, i64 56, !dbg !330
  %2 = load ptr, ptr %update, align 8, !dbg !330
  %3 = load ptr, ptr %next, align 8, !dbg !331
  %call = tail call i32 %2(ptr noundef %3, ptr noundef %allocator, ptr noundef null, ptr noundef nonnull %reversed_filters) #9, !dbg !332
  br label %return, !dbg !333

return:                                           ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ %call, %if.end6 ], [ 11, %entry ], [ 0, %if.end ], !dbg !321
  ret i32 %retval.0, !dbg !334
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @lzma_strm_init(ptr noundef %strm) local_unnamed_addr #1 !dbg !335 {
entry:
    #dbg_value(ptr %strm, !364, !DIExpression(), !365)
  %cmp = icmp eq ptr %strm, null, !dbg !366
  br i1 %cmp, label %return, label %if.end, !dbg !368

if.end:                                           ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !369
  %0 = load ptr, ptr %internal, align 8, !dbg !369
  %cmp1 = icmp eq ptr %0, null, !dbg !371
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !372

if.then2:                                         ; preds = %if.end
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !373
  %1 = load ptr, ptr %allocator, align 8, !dbg !373
    #dbg_value(ptr %1, !167, !DIExpression(), !375)
    #dbg_value(i64 88, !166, !DIExpression(), !375)
  %cmp1.not.i = icmp eq ptr %1, null, !dbg !377
  br i1 %cmp1.not.i, label %if.else.i, label %land.lhs.true.i, !dbg !378

land.lhs.true.i:                                  ; preds = %if.then2
  %2 = load ptr, ptr %1, align 8, !dbg !379
  %cmp2.not.i = icmp eq ptr %2, null, !dbg !380
  br i1 %cmp2.not.i, label %if.else.i, label %if.then3.i, !dbg !381

if.then3.i:                                       ; preds = %land.lhs.true.i
  %opaque.i = getelementptr inbounds i8, ptr %1, i64 16, !dbg !382
  %3 = load ptr, ptr %opaque.i, align 8, !dbg !382
  %call.i = tail call ptr %2(ptr noundef %3, i64 noundef 1, i64 noundef 88) #9, !dbg !383
    #dbg_value(ptr %call.i, !168, !DIExpression(), !375)
  br label %lzma_alloc.exit, !dbg !384

if.else.i:                                        ; preds = %land.lhs.true.i, %if.then2
  %call5.i = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #10, !dbg !385
    #dbg_value(ptr %call5.i, !168, !DIExpression(), !375)
  br label %lzma_alloc.exit

lzma_alloc.exit:                                  ; preds = %if.then3.i, %if.else.i
  %ptr.0.i = phi ptr [ %call.i, %if.then3.i ], [ %call5.i, %if.else.i ], !dbg !386
    #dbg_value(ptr %ptr.0.i, !168, !DIExpression(), !375)
  store ptr %ptr.0.i, ptr %internal, align 8, !dbg !387
  %cmp5 = icmp eq ptr %ptr.0.i, null, !dbg !388
  br i1 %cmp5, label %return, label %if.end7, !dbg !390

if.end7:                                          ; preds = %lzma_alloc.exit
  store ptr null, ptr %ptr.0.i, align 8, !dbg !391
  %.compoundliteral.sroa.2.0.next.sroa_idx = getelementptr inbounds i8, ptr %ptr.0.i, i64 8, !dbg !391
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next.sroa_idx, align 8, !dbg !391
  %.compoundliteral.sroa.3.0.next.sroa_idx = getelementptr inbounds i8, ptr %ptr.0.i, i64 16, !dbg !391
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next.sroa_idx, i8 0, i64 48, i1 false), !dbg !391
  %.pre = load ptr, ptr %internal, align 8, !dbg !392
  br label %if.end9, !dbg !393

if.end9:                                          ; preds = %if.end7, %if.end
  %4 = phi ptr [ %.pre, %if.end7 ], [ %0, %if.end ], !dbg !392
  %supported_actions = getelementptr inbounds i8, ptr %4, i64 80, !dbg !394
  store i8 0, ptr %supported_actions, align 8, !dbg !395
  %5 = load ptr, ptr %internal, align 8, !dbg !396
  %arrayidx13 = getelementptr inbounds i8, ptr %5, i64 81, !dbg !397
  store i8 0, ptr %arrayidx13, align 1, !dbg !398
  %6 = load ptr, ptr %internal, align 8, !dbg !399
  %arrayidx16 = getelementptr inbounds i8, ptr %6, i64 82, !dbg !400
  store i8 0, ptr %arrayidx16, align 2, !dbg !401
  %7 = load ptr, ptr %internal, align 8, !dbg !402
  %arrayidx19 = getelementptr inbounds i8, ptr %7, i64 83, !dbg !403
  store i8 0, ptr %arrayidx19, align 1, !dbg !404
  %8 = load ptr, ptr %internal, align 8, !dbg !405
  %sequence = getelementptr inbounds i8, ptr %8, i64 64, !dbg !406
  store i32 0, ptr %sequence, align 8, !dbg !407
  %9 = load ptr, ptr %internal, align 8, !dbg !408
  %allow_buf_error = getelementptr inbounds i8, ptr %9, i64 84, !dbg !409
  store i8 0, ptr %allow_buf_error, align 4, !dbg !410
  %total_in = getelementptr inbounds i8, ptr %strm, i64 16, !dbg !411
  store i64 0, ptr %total_in, align 8, !dbg !412
  %total_out = getelementptr inbounds i8, ptr %strm, i64 40, !dbg !413
  store i64 0, ptr %total_out, align 8, !dbg !414
  br label %return, !dbg !415

return:                                           ; preds = %lzma_alloc.exit, %entry, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 11, %entry ], [ 5, %lzma_alloc.exit ], !dbg !365
  ret i32 %retval.0, !dbg !416
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @lzma_code(ptr nocapture noundef %strm, i32 noundef %action) local_unnamed_addr #1 !dbg !417 {
entry:
  %in_pos = alloca i64, align 8, !DIAssignID !426
    #dbg_assign(i1 undef, !423, !DIExpression(), !426, ptr %in_pos, !DIExpression(), !427)
  %out_pos = alloca i64, align 8, !DIAssignID !428
    #dbg_assign(i1 undef, !424, !DIExpression(), !428, ptr %out_pos, !DIExpression(), !427)
    #dbg_value(ptr %strm, !421, !DIExpression(), !427)
    #dbg_value(i32 %action, !422, !DIExpression(), !427)
  %0 = load ptr, ptr %strm, align 8, !dbg !429
  %cmp = icmp eq ptr %0, null, !dbg !431
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !432

land.lhs.true:                                    ; preds = %entry
  %avail_in = getelementptr inbounds i8, ptr %strm, i64 8, !dbg !433
  %1 = load i64, ptr %avail_in, align 8, !dbg !433
  %cmp1.not = icmp eq i64 %1, 0, !dbg !434
  br i1 %cmp1.not, label %lor.lhs.false, label %return, !dbg !435

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %next_out = getelementptr inbounds i8, ptr %strm, i64 24, !dbg !436
  %2 = load ptr, ptr %next_out, align 8, !dbg !436
  %cmp2 = icmp eq ptr %2, null, !dbg !437
  br i1 %cmp2, label %land.lhs.true3, label %lor.lhs.false5, !dbg !438

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %avail_out = getelementptr inbounds i8, ptr %strm, i64 32, !dbg !439
  %3 = load i64, ptr %avail_out, align 8, !dbg !439
  %cmp4.not = icmp eq i64 %3, 0, !dbg !440
  br i1 %cmp4.not, label %lor.lhs.false5, label %return, !dbg !441

lor.lhs.false5:                                   ; preds = %land.lhs.true3, %lor.lhs.false
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !442
  %4 = load ptr, ptr %internal, align 8, !dbg !442
  %cmp6 = icmp eq ptr %4, null, !dbg !443
  br i1 %cmp6, label %return, label %lor.lhs.false7, !dbg !444

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %code = getelementptr inbounds i8, ptr %4, i64 24, !dbg !445
  %5 = load ptr, ptr %code, align 8, !dbg !445
  %cmp9 = icmp eq ptr %5, null, !dbg !446
  %cmp11 = icmp ugt i32 %action, 3
  %or.cond = or i1 %cmp11, %cmp9, !dbg !447
  br i1 %or.cond, label %return, label %lor.lhs.false12, !dbg !447

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %supported_actions = getelementptr inbounds i8, ptr %4, i64 80, !dbg !448
  %idxprom = zext nneg i32 %action to i64, !dbg !449
  %arrayidx = getelementptr inbounds [4 x i8], ptr %supported_actions, i64 0, i64 %idxprom, !dbg !449
  %6 = load i8, ptr %arrayidx, align 1, !dbg !449, !range !450, !noundef !451
  %loadedv = trunc nuw i8 %6 to i1, !dbg !449
  br i1 %loadedv, label %if.end, label %return, !dbg !452

if.end:                                           ; preds = %lor.lhs.false12
  %reserved_ptr1 = getelementptr inbounds i8, ptr %strm, i64 64, !dbg !453
  %7 = load ptr, ptr %reserved_ptr1, align 8, !dbg !453
  %cmp14.not = icmp eq ptr %7, null, !dbg !455
  br i1 %cmp14.not, label %lor.lhs.false15, label %return, !dbg !456

lor.lhs.false15:                                  ; preds = %if.end
  %reserved_ptr2 = getelementptr inbounds i8, ptr %strm, i64 72, !dbg !457
  %8 = load ptr, ptr %reserved_ptr2, align 8, !dbg !457
  %cmp16.not = icmp eq ptr %8, null, !dbg !458
  br i1 %cmp16.not, label %lor.lhs.false17, label %return, !dbg !459

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %reserved_ptr3 = getelementptr inbounds i8, ptr %strm, i64 80, !dbg !460
  %9 = load ptr, ptr %reserved_ptr3, align 8, !dbg !460
  %cmp18.not = icmp eq ptr %9, null, !dbg !461
  br i1 %cmp18.not, label %lor.lhs.false19, label %return, !dbg !462

lor.lhs.false19:                                  ; preds = %lor.lhs.false17
  %reserved_ptr4 = getelementptr inbounds i8, ptr %strm, i64 88, !dbg !463
  %10 = load ptr, ptr %reserved_ptr4, align 8, !dbg !463
  %cmp20.not = icmp eq ptr %10, null, !dbg !464
  br i1 %cmp20.not, label %lor.lhs.false21, label %return, !dbg !465

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %reserved_int1 = getelementptr inbounds i8, ptr %strm, i64 96, !dbg !466
  %11 = load i64, ptr %reserved_int1, align 8, !dbg !466
  %cmp22.not = icmp eq i64 %11, 0, !dbg !467
  br i1 %cmp22.not, label %lor.lhs.false23, label %return, !dbg !468

lor.lhs.false23:                                  ; preds = %lor.lhs.false21
  %reserved_int2 = getelementptr inbounds i8, ptr %strm, i64 104, !dbg !469
  %12 = load i64, ptr %reserved_int2, align 8, !dbg !469
  %cmp24.not = icmp eq i64 %12, 0, !dbg !470
  br i1 %cmp24.not, label %lor.lhs.false25, label %return, !dbg !471

lor.lhs.false25:                                  ; preds = %lor.lhs.false23
  %reserved_int3 = getelementptr inbounds i8, ptr %strm, i64 112, !dbg !472
  %13 = load i64, ptr %reserved_int3, align 8, !dbg !472
  %cmp26.not = icmp eq i64 %13, 0, !dbg !473
  br i1 %cmp26.not, label %lor.lhs.false27, label %return, !dbg !474

lor.lhs.false27:                                  ; preds = %lor.lhs.false25
  %reserved_int4 = getelementptr inbounds i8, ptr %strm, i64 120, !dbg !475
  %14 = load i64, ptr %reserved_int4, align 8, !dbg !475
  %cmp28.not = icmp eq i64 %14, 0, !dbg !476
  br i1 %cmp28.not, label %lor.lhs.false29, label %return, !dbg !477

lor.lhs.false29:                                  ; preds = %lor.lhs.false27
  %reserved_enum1 = getelementptr inbounds i8, ptr %strm, i64 128, !dbg !478
  %15 = load i32, ptr %reserved_enum1, align 8, !dbg !478
  %cmp30.not = icmp eq i32 %15, 0, !dbg !479
  br i1 %cmp30.not, label %lor.lhs.false31, label %return, !dbg !480

lor.lhs.false31:                                  ; preds = %lor.lhs.false29
  %reserved_enum2 = getelementptr inbounds i8, ptr %strm, i64 132, !dbg !481
  %16 = load i32, ptr %reserved_enum2, align 4, !dbg !481
  %cmp32.not = icmp eq i32 %16, 0, !dbg !482
  br i1 %cmp32.not, label %if.end34, label %return, !dbg !483

if.end34:                                         ; preds = %lor.lhs.false31
  %sequence = getelementptr inbounds i8, ptr %4, i64 64, !dbg !484
  %17 = load i32, ptr %sequence, align 8, !dbg !484
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb45
    i32 2, label %sw.bb54
    i32 3, label %sw.bb63
    i32 4, label %return
  ], !dbg !485

sw.bb:                                            ; preds = %if.end34
  %action.off = add nsw i32 %action, -1, !dbg !486
  %switch191 = icmp ult i32 %action.off, 3, !dbg !486
  br i1 %switch191, label %sw.epilog74.sink.split, label %sw.epilog74, !dbg !486

sw.bb45:                                          ; preds = %if.end34
  %cmp46.not = icmp eq i32 %action, 1, !dbg !488
  br i1 %cmp46.not, label %lor.lhs.false47, label %return, !dbg !490

lor.lhs.false47:                                  ; preds = %sw.bb45
  %avail_in49 = getelementptr inbounds i8, ptr %4, i64 72, !dbg !491
  %18 = load i64, ptr %avail_in49, align 8, !dbg !491
  %avail_in50 = getelementptr inbounds i8, ptr %strm, i64 8, !dbg !492
  %19 = load i64, ptr %avail_in50, align 8, !dbg !492
  %cmp51.not = icmp eq i64 %18, %19, !dbg !493
  br i1 %cmp51.not, label %sw.epilog74, label %return, !dbg !494

sw.bb54:                                          ; preds = %if.end34
  %cmp55.not = icmp eq i32 %action, 2, !dbg !495
  br i1 %cmp55.not, label %lor.lhs.false56, label %return, !dbg !497

lor.lhs.false56:                                  ; preds = %sw.bb54
  %avail_in58 = getelementptr inbounds i8, ptr %4, i64 72, !dbg !498
  %20 = load i64, ptr %avail_in58, align 8, !dbg !498
  %avail_in59 = getelementptr inbounds i8, ptr %strm, i64 8, !dbg !499
  %21 = load i64, ptr %avail_in59, align 8, !dbg !499
  %cmp60.not = icmp eq i64 %20, %21, !dbg !500
  br i1 %cmp60.not, label %sw.epilog74, label %return, !dbg !501

sw.bb63:                                          ; preds = %if.end34
  %cmp64.not = icmp eq i32 %action, 3, !dbg !502
  br i1 %cmp64.not, label %lor.lhs.false65, label %return, !dbg !504

lor.lhs.false65:                                  ; preds = %sw.bb63
  %avail_in67 = getelementptr inbounds i8, ptr %4, i64 72, !dbg !505
  %22 = load i64, ptr %avail_in67, align 8, !dbg !505
  %avail_in68 = getelementptr inbounds i8, ptr %strm, i64 8, !dbg !506
  %23 = load i64, ptr %avail_in68, align 8, !dbg !506
  %cmp69.not = icmp eq i64 %22, %23, !dbg !507
  br i1 %cmp69.not, label %sw.epilog74, label %return, !dbg !508

sw.default:                                       ; preds = %if.end34
  br label %return, !dbg !509

sw.epilog74.sink.split:                           ; preds = %sw.bb
  store i32 %action, ptr %sequence, align 8, !dbg !510
  br label %sw.epilog74, !dbg !512

sw.epilog74:                                      ; preds = %sw.bb, %sw.epilog74.sink.split, %lor.lhs.false65, %lor.lhs.false56, %lor.lhs.false47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_pos) #9, !dbg !512
  store i64 0, ptr %in_pos, align 8, !dbg !513, !DIAssignID !514
    #dbg_assign(i64 0, !423, !DIExpression(), !514, ptr %in_pos, !DIExpression(), !427)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_pos) #9, !dbg !515
  store i64 0, ptr %out_pos, align 8, !dbg !516, !DIAssignID !517
    #dbg_assign(i64 0, !424, !DIExpression(), !517, ptr %out_pos, !DIExpression(), !427)
  %24 = load ptr, ptr %internal, align 8, !dbg !518
  %code77 = getelementptr inbounds i8, ptr %24, i64 24, !dbg !519
  %25 = load ptr, ptr %code77, align 8, !dbg !519
  %26 = load ptr, ptr %24, align 8, !dbg !520
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !521
  %27 = load ptr, ptr %allocator, align 8, !dbg !521
  %28 = load ptr, ptr %strm, align 8, !dbg !522
  %avail_in81 = getelementptr inbounds i8, ptr %strm, i64 8, !dbg !523
  %29 = load i64, ptr %avail_in81, align 8, !dbg !523
  %30 = load ptr, ptr %next_out, align 8, !dbg !524
  %avail_out83 = getelementptr inbounds i8, ptr %strm, i64 32, !dbg !525
  %31 = load i64, ptr %avail_out83, align 8, !dbg !525
  %call = call i32 %25(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef nonnull %in_pos, i64 noundef %29, ptr noundef %30, ptr noundef nonnull %out_pos, i64 noundef %31, i32 noundef %action) #9, !dbg !526
    #dbg_value(i32 %call, !425, !DIExpression(), !427)
  %32 = load i64, ptr %in_pos, align 8, !dbg !527
  %33 = load ptr, ptr %strm, align 8, !dbg !528
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %32, !dbg !528
  store ptr %add.ptr, ptr %strm, align 8, !dbg !528
  %34 = load i64, ptr %avail_in81, align 8, !dbg !529
  %sub = sub i64 %34, %32, !dbg !529
  store i64 %sub, ptr %avail_in81, align 8, !dbg !529
  %total_in = getelementptr inbounds i8, ptr %strm, i64 16, !dbg !530
  %35 = load i64, ptr %total_in, align 8, !dbg !531
  %add = add i64 %35, %32, !dbg !531
  store i64 %add, ptr %total_in, align 8, !dbg !531
  %36 = load i64, ptr %out_pos, align 8, !dbg !532
  %37 = load ptr, ptr %next_out, align 8, !dbg !533
  %add.ptr87 = getelementptr inbounds i8, ptr %37, i64 %36, !dbg !533
  store ptr %add.ptr87, ptr %next_out, align 8, !dbg !533
  %38 = load i64, ptr %avail_out83, align 8, !dbg !534
  %sub89 = sub i64 %38, %36, !dbg !534
  store i64 %sub89, ptr %avail_out83, align 8, !dbg !534
  %total_out = getelementptr inbounds i8, ptr %strm, i64 40, !dbg !535
  %39 = load i64, ptr %total_out, align 8, !dbg !536
  %add90 = add i64 %39, %36, !dbg !536
  store i64 %add90, ptr %total_out, align 8, !dbg !536
  %40 = load ptr, ptr %internal, align 8, !dbg !537
  %avail_in93 = getelementptr inbounds i8, ptr %40, i64 72, !dbg !538
  store i64 %sub, ptr %avail_in93, align 8, !dbg !539
  switch i32 %call, label %sw.default127 [
    i32 0, label %sw.bb94
    i32 1, label %sw.bb109
    i32 2, label %sw.bb124
    i32 3, label %sw.bb124
    i32 4, label %sw.bb124
    i32 6, label %sw.bb124
  ], !dbg !540

sw.bb94:                                          ; preds = %sw.epilog74
  %cmp95 = icmp eq i64 %36, 0, !dbg !541
  %cmp97 = icmp eq i64 %32, 0
  %or.cond131 = select i1 %cmp95, i1 %cmp97, i1 false, !dbg !544
  %41 = load ptr, ptr %internal, align 8, !dbg !545
  %allow_buf_error = getelementptr inbounds i8, ptr %41, i64 84, !dbg !545
  br i1 %or.cond131, label %if.then98, label %if.else105, !dbg !544

if.then98:                                        ; preds = %sw.bb94
  %42 = load i8, ptr %allow_buf_error, align 4, !dbg !546, !range !450, !noundef !451
  %loadedv100 = trunc nuw i8 %42 to i1, !dbg !546
  br i1 %loadedv100, label %sw.epilog130, label %if.else, !dbg !549

if.else:                                          ; preds = %if.then98
  store i8 1, ptr %allow_buf_error, align 4, !dbg !550
  br label %sw.epilog130

if.else105:                                       ; preds = %sw.bb94
  store i8 0, ptr %allow_buf_error, align 4, !dbg !551
  br label %sw.epilog130

sw.bb109:                                         ; preds = %sw.epilog74
  %43 = load ptr, ptr %internal, align 8, !dbg !553
  %sequence111 = getelementptr inbounds i8, ptr %43, i64 64, !dbg !555
  %44 = load i32, ptr %sequence111, align 8, !dbg !555
  %.off = add i32 %44, -1, !dbg !556
  %switch = icmp ult i32 %.off, 2, !dbg !556
  %. = select i1 %switch, i32 0, i32 4
  store i32 %., ptr %sequence111, align 8, !dbg !557
  br label %sw.bb124, !dbg !558

sw.bb124:                                         ; preds = %sw.bb109, %sw.epilog74, %sw.epilog74, %sw.epilog74, %sw.epilog74
  %45 = load ptr, ptr %internal, align 8, !dbg !558
  %allow_buf_error126 = getelementptr inbounds i8, ptr %45, i64 84, !dbg !559
  store i8 0, ptr %allow_buf_error126, align 4, !dbg !560
  br label %sw.epilog130, !dbg !561

sw.default127:                                    ; preds = %sw.epilog74
  %46 = load ptr, ptr %internal, align 8, !dbg !562
  %sequence129 = getelementptr inbounds i8, ptr %46, i64 64, !dbg !563
  store i32 5, ptr %sequence129, align 8, !dbg !564
  br label %sw.epilog130, !dbg !565

sw.epilog130:                                     ; preds = %if.then98, %if.else105, %if.else, %sw.default127, %sw.bb124
  %ret.0 = phi i32 [ %call, %sw.default127 ], [ %call, %sw.bb124 ], [ 0, %if.else ], [ 0, %if.else105 ], [ 10, %if.then98 ], !dbg !427
    #dbg_value(i32 %ret.0, !425, !DIExpression(), !427)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_pos) #9, !dbg !566
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_pos) #9, !dbg !566
  br label %return

return:                                           ; preds = %if.end34, %sw.bb63, %lor.lhs.false65, %sw.bb54, %lor.lhs.false56, %sw.bb45, %lor.lhs.false47, %if.end, %lor.lhs.false15, %lor.lhs.false17, %lor.lhs.false19, %lor.lhs.false21, %lor.lhs.false23, %lor.lhs.false25, %lor.lhs.false27, %lor.lhs.false29, %lor.lhs.false31, %land.lhs.true, %land.lhs.true3, %lor.lhs.false5, %lor.lhs.false7, %lor.lhs.false12, %sw.epilog130, %sw.default
  %retval.0 = phi i32 [ 11, %sw.default ], [ %ret.0, %sw.epilog130 ], [ 11, %lor.lhs.false12 ], [ 11, %lor.lhs.false7 ], [ 11, %lor.lhs.false5 ], [ 11, %land.lhs.true3 ], [ 11, %land.lhs.true ], [ 8, %lor.lhs.false31 ], [ 8, %lor.lhs.false29 ], [ 8, %lor.lhs.false27 ], [ 8, %lor.lhs.false25 ], [ 8, %lor.lhs.false23 ], [ 8, %lor.lhs.false21 ], [ 8, %lor.lhs.false19 ], [ 8, %lor.lhs.false17 ], [ 8, %lor.lhs.false15 ], [ 8, %if.end ], [ 11, %lor.lhs.false47 ], [ 11, %sw.bb45 ], [ 11, %lor.lhs.false56 ], [ 11, %sw.bb54 ], [ 11, %lor.lhs.false65 ], [ 11, %sw.bb63 ], [ 1, %if.end34 ], !dbg !427
  ret i32 %retval.0, !dbg !566
}

; Function Attrs: nounwind uwtable
define dso_local void @lzma_end(ptr noundef %strm) local_unnamed_addr #1 !dbg !567 {
entry:
    #dbg_value(ptr %strm, !571, !DIExpression(), !572)
  %cmp.not = icmp eq ptr %strm, null, !dbg !573
  br i1 %cmp.not, label %if.end, label %land.lhs.true, !dbg !575

land.lhs.true:                                    ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !576
  %0 = load ptr, ptr %internal, align 8, !dbg !576
  %cmp1.not = icmp eq ptr %0, null, !dbg !577
  br i1 %cmp1.not, label %if.end, label %if.then, !dbg !578

if.then:                                          ; preds = %land.lhs.true
  %allocator = getelementptr inbounds i8, ptr %strm, i64 48, !dbg !579
  %1 = load ptr, ptr %allocator, align 8, !dbg !579
    #dbg_value(ptr %0, !255, !DIExpression(), !581)
    #dbg_value(ptr %1, !260, !DIExpression(), !581)
  %init.i = getelementptr inbounds i8, ptr %0, i64 16, !dbg !583
  %2 = load i64, ptr %init.i, align 8, !dbg !583
  %cmp.not.i = icmp eq i64 %2, 0, !dbg !584
  br i1 %cmp.not.i, label %lzma_next_end.exit, label %if.then.i, !dbg !585

if.then.i:                                        ; preds = %if.then
  %end.i = getelementptr inbounds i8, ptr %0, i64 32, !dbg !586
  %3 = load ptr, ptr %end.i, align 8, !dbg !586
  %cmp1.not.i = icmp eq ptr %3, null, !dbg !587
  %4 = load ptr, ptr %0, align 8, !dbg !588
  br i1 %cmp1.not.i, label %if.else.i, label %if.then2.i, !dbg !589

if.then2.i:                                       ; preds = %if.then.i
  tail call void %3(ptr noundef %4, ptr noundef %1) #9, !dbg !590
  br label %if.end.i, !dbg !590

if.else.i:                                        ; preds = %if.then.i
    #dbg_value(ptr %4, !191, !DIExpression(), !591)
    #dbg_value(ptr %1, !192, !DIExpression(), !591)
  %cmp.not.i.i = icmp eq ptr %1, null, !dbg !593
  br i1 %cmp.not.i.i, label %if.else.i.i, label %land.lhs.true.i.i, !dbg !594

land.lhs.true.i.i:                                ; preds = %if.else.i
  %free.i.i = getelementptr inbounds i8, ptr %1, i64 8, !dbg !595
  %5 = load ptr, ptr %free.i.i, align 8, !dbg !595
  %cmp1.not.i.i = icmp eq ptr %5, null, !dbg !596
  br i1 %cmp1.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !597

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %opaque.i.i = getelementptr inbounds i8, ptr %1, i64 16, !dbg !598
  %6 = load ptr, ptr %opaque.i.i, align 8, !dbg !598
  tail call void %5(ptr noundef %6, ptr noundef %4) #9, !dbg !599
  br label %if.end.i, !dbg !599

if.else.i.i:                                      ; preds = %land.lhs.true.i.i, %if.else.i
  tail call void @free(ptr noundef %4) #9, !dbg !600
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %if.then.i.i, %if.then2.i
  store ptr null, ptr %0, align 8, !dbg !601
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %0, i64 8, !dbg !601
  store i64 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8, !dbg !601
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %init.i, i8 0, i64 48, i1 false), !dbg !601
  %.pr = load ptr, ptr %allocator, align 8, !dbg !602
  %.pre = load ptr, ptr %internal, align 8, !dbg !603
  br label %lzma_next_end.exit, !dbg !604

lzma_next_end.exit:                               ; preds = %if.then, %if.end.i
  %7 = phi ptr [ %0, %if.then ], [ %.pre, %if.end.i ], !dbg !603
  %8 = phi ptr [ %1, %if.then ], [ %.pr, %if.end.i ], !dbg !602
    #dbg_value(ptr %7, !191, !DIExpression(), !605)
    #dbg_value(ptr %8, !192, !DIExpression(), !605)
  %cmp.not.i12 = icmp eq ptr %8, null, !dbg !607
  br i1 %cmp.not.i12, label %if.else.i16, label %land.lhs.true.i, !dbg !608

land.lhs.true.i:                                  ; preds = %lzma_next_end.exit
  %free.i = getelementptr inbounds i8, ptr %8, i64 8, !dbg !609
  %9 = load ptr, ptr %free.i, align 8, !dbg !609
  %cmp1.not.i13 = icmp eq ptr %9, null, !dbg !610
  br i1 %cmp1.not.i13, label %if.else.i16, label %if.then.i14, !dbg !611

if.then.i14:                                      ; preds = %land.lhs.true.i
  %opaque.i = getelementptr inbounds i8, ptr %8, i64 16, !dbg !612
  %10 = load ptr, ptr %opaque.i, align 8, !dbg !612
  tail call void %9(ptr noundef %10, ptr noundef %7) #9, !dbg !613
  br label %lzma_free.exit, !dbg !613

if.else.i16:                                      ; preds = %land.lhs.true.i, %lzma_next_end.exit
  tail call void @free(ptr noundef %7) #9, !dbg !614
  br label %lzma_free.exit

lzma_free.exit:                                   ; preds = %if.then.i14, %if.else.i16
  store ptr null, ptr %internal, align 8, !dbg !615
  br label %if.end, !dbg !616

if.end:                                           ; preds = %lzma_free.exit, %land.lhs.true, %entry
  ret void, !dbg !617
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_get_check(ptr nocapture noundef readonly %strm) local_unnamed_addr #1 !dbg !618 {
entry:
    #dbg_value(ptr %strm, !624, !DIExpression(), !625)
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !626
  %0 = load ptr, ptr %internal, align 8, !dbg !626
  %get_check = getelementptr inbounds i8, ptr %0, i64 40, !dbg !628
  %1 = load ptr, ptr %get_check, align 8, !dbg !628
  %cmp = icmp eq ptr %1, null, !dbg !629
  br i1 %cmp, label %return, label %if.end, !dbg !630

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %0, align 8, !dbg !631
  %call = tail call i32 %1(ptr noundef %2) #9, !dbg !632
  br label %return, !dbg !633

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ], !dbg !625
  ret i32 %retval.0, !dbg !634
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_memusage(ptr noundef readonly %strm) local_unnamed_addr #1 !dbg !635 {
entry:
  %memusage = alloca i64, align 8, !DIAssignID !642
    #dbg_assign(i1 undef, !640, !DIExpression(), !642, ptr %memusage, !DIExpression(), !643)
  %old_memlimit = alloca i64, align 8, !DIAssignID !644
    #dbg_assign(i1 undef, !641, !DIExpression(), !644, ptr %old_memlimit, !DIExpression(), !643)
    #dbg_value(ptr %strm, !639, !DIExpression(), !643)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %memusage) #9, !dbg !645
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_memlimit) #9, !dbg !646
  %cmp = icmp eq ptr %strm, null, !dbg !647
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !649

lor.lhs.false:                                    ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !650
  %0 = load ptr, ptr %internal, align 8, !dbg !650
  %cmp1 = icmp eq ptr %0, null, !dbg !651
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2, !dbg !652

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %memconfig = getelementptr inbounds i8, ptr %0, i64 48, !dbg !653
  %1 = load ptr, ptr %memconfig, align 8, !dbg !653
  %cmp4 = icmp eq ptr %1, null, !dbg !654
  br i1 %cmp4, label %cleanup, label %lor.lhs.false5, !dbg !655

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %2 = load ptr, ptr %0, align 8, !dbg !656
  %call = call i32 %1(ptr noundef %2, ptr noundef nonnull %memusage, ptr noundef nonnull %old_memlimit, i64 noundef 0) #9, !dbg !657
  %cmp11.not = icmp eq i32 %call, 0, !dbg !658
  %3 = load i64, ptr %memusage, align 8
  %spec.select = select i1 %cmp11.not, i64 %3, i64 0, !dbg !659
  br label %cleanup, !dbg !659

cleanup:                                          ; preds = %lor.lhs.false5, %entry, %lor.lhs.false, %lor.lhs.false2
  %retval.0 = phi i64 [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false5 ], !dbg !643
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_memlimit) #9, !dbg !660
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %memusage) #9, !dbg !660
  ret i64 %retval.0, !dbg !660
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_memlimit_get(ptr noundef readonly %strm) local_unnamed_addr #1 !dbg !661 {
entry:
  %old_memlimit = alloca i64, align 8, !DIAssignID !666
    #dbg_assign(i1 undef, !664, !DIExpression(), !666, ptr %old_memlimit, !DIExpression(), !667)
  %memusage = alloca i64, align 8, !DIAssignID !668
    #dbg_assign(i1 undef, !665, !DIExpression(), !668, ptr %memusage, !DIExpression(), !667)
    #dbg_value(ptr %strm, !663, !DIExpression(), !667)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_memlimit) #9, !dbg !669
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %memusage) #9, !dbg !670
  %cmp = icmp eq ptr %strm, null, !dbg !671
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !673

lor.lhs.false:                                    ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !674
  %0 = load ptr, ptr %internal, align 8, !dbg !674
  %cmp1 = icmp eq ptr %0, null, !dbg !675
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2, !dbg !676

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %memconfig = getelementptr inbounds i8, ptr %0, i64 48, !dbg !677
  %1 = load ptr, ptr %memconfig, align 8, !dbg !677
  %cmp4 = icmp eq ptr %1, null, !dbg !678
  br i1 %cmp4, label %cleanup, label %lor.lhs.false5, !dbg !679

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %2 = load ptr, ptr %0, align 8, !dbg !680
  %call = call i32 %1(ptr noundef %2, ptr noundef nonnull %memusage, ptr noundef nonnull %old_memlimit, i64 noundef 0) #9, !dbg !681
  %cmp11.not = icmp eq i32 %call, 0, !dbg !682
  %3 = load i64, ptr %old_memlimit, align 8
  %spec.select = select i1 %cmp11.not, i64 %3, i64 0, !dbg !683
  br label %cleanup, !dbg !683

cleanup:                                          ; preds = %lor.lhs.false5, %entry, %lor.lhs.false, %lor.lhs.false2
  %retval.0 = phi i64 [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false5 ], !dbg !667
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %memusage) #9, !dbg !684
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_memlimit) #9, !dbg !684
  ret i64 %retval.0, !dbg !684
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_memlimit_set(ptr noundef readonly %strm, i64 noundef %new_memlimit) local_unnamed_addr #1 !dbg !685 {
entry:
  %old_memlimit = alloca i64, align 8, !DIAssignID !693
    #dbg_assign(i1 undef, !691, !DIExpression(), !693, ptr %old_memlimit, !DIExpression(), !694)
  %memusage = alloca i64, align 8, !DIAssignID !695
    #dbg_assign(i1 undef, !692, !DIExpression(), !695, ptr %memusage, !DIExpression(), !694)
    #dbg_value(ptr %strm, !689, !DIExpression(), !694)
    #dbg_value(i64 %new_memlimit, !690, !DIExpression(), !694)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_memlimit) #9, !dbg !696
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %memusage) #9, !dbg !697
  %cmp = icmp eq ptr %strm, null, !dbg !698
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !700

lor.lhs.false:                                    ; preds = %entry
  %internal = getelementptr inbounds i8, ptr %strm, i64 56, !dbg !701
  %0 = load ptr, ptr %internal, align 8, !dbg !701
  %cmp1 = icmp eq ptr %0, null, !dbg !702
  br i1 %cmp1, label %cleanup, label %lor.lhs.false2, !dbg !703

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %memconfig = getelementptr inbounds i8, ptr %0, i64 48, !dbg !704
  %1 = load ptr, ptr %memconfig, align 8, !dbg !704
  %cmp4 = icmp eq ptr %1, null, !dbg !705
  br i1 %cmp4, label %cleanup, label %if.end, !dbg !706

if.end:                                           ; preds = %lor.lhs.false2
  %2 = add i64 %new_memlimit, -1, !dbg !707
  %or.cond = icmp ult i64 %2, 32767, !dbg !707
  br i1 %or.cond, label %cleanup, label %if.end8, !dbg !707

if.end8:                                          ; preds = %if.end
  %3 = load ptr, ptr %0, align 8, !dbg !709
  %call = call i32 %1(ptr noundef %3, ptr noundef nonnull %memusage, ptr noundef nonnull %old_memlimit, i64 noundef %new_memlimit) #9, !dbg !710
  br label %cleanup, !dbg !711

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %lor.lhs.false2, %if.end8
  %retval.0 = phi i32 [ %call, %if.end8 ], [ 11, %lor.lhs.false2 ], [ 11, %lor.lhs.false ], [ 11, %entry ], [ 6, %if.end ], !dbg !694
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %memusage) #9, !dbg !712
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_memlimit) #9, !dbg !712
  ret i32 %retval.0, !dbg !712
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

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "liblzma/common/common.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "4324f888732c15afaa7e948651790b3b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 22)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !140, globals: !141, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9, !25, !31, !38, !137}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 57, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!13 = !DIEnumerator(name: "LZMA_OK", value: 0)
!14 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!15 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!16 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!17 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!18 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!19 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!20 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!21 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!22 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!23 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!24 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 250, baseType: !11, size: 32, elements: !26)
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!28 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!29 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!30 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 27, baseType: !11, size: 32, elements: !33)
!32 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!33 = !{!34, !35, !36, !37}
!34 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!35 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!36 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!37 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !40, file: !39, line: 187, baseType: !11, size: 32, elements: !130)
!39 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !39, line: 179, size: 704, elements: !41)
!41 = !{!42, !122, !123, !124, !129}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !40, file: !39, line: 181, baseType: !43, size: 512)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !39, line: 80, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !39, line: 124, size: 512, elements: !45)
!45 = !{!46, !49, !57, !60, !93, !98, !105, !110}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !44, file: !39, line: 126, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !39, line: 78, baseType: null)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !44, file: !39, line: 130, baseType: !50, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !51, line: 63, baseType: !52)
!51 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !53, line: 27, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !55, line: 45, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !44, file: !39, line: 136, baseType: !58, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !59, line: 90, baseType: !56)
!59 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!60 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !44, file: !39, line: 139, baseType: !61, size: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !39, line: 94, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !47, !66, !82, !88, !75, !90, !88, !75, !92}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !10, line: 237, baseType: !9)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !10, line: 403, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 341, size: 192, elements: !69)
!69 = !{!70, !77, !81}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !68, file: !10, line: 376, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !74, !75, !75}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 18, baseType: !56)
!76 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !68, file: !10, line: 390, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !74, !74}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !68, file: !10, line: 401, baseType: !74, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !53, line: 24, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !55, line: 38, baseType: !87)
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !10, line: 322, baseType: !25)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !44, file: !39, line: 144, baseType: !94, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !39, line: 102, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !47, !66}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !44, file: !39, line: 148, baseType: !99, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !32, line: 55, baseType: !31)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !44, file: !39, line: 152, baseType: !106, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!65, !47, !109, !109, !52}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !44, file: !39, line: 157, baseType: !111, size: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!65, !47, !66, !114, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !117, line: 65, baseType: !118)
!117 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 43, size: 128, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !118, file: !117, line: 54, baseType: !50, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !118, file: !117, line: 63, baseType: !74, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !40, file: !39, line: 194, baseType: !38, size: 32, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !40, file: !39, line: 199, baseType: !75, size: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !40, file: !39, line: 202, baseType: !125, size: 32, offset: 640)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 32, elements: !127)
!126 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!127 = !{!128}
!128 = !DISubrange(count: 4)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !40, file: !39, line: 206, baseType: !126, size: 8, offset: 672)
!130 = !{!131, !132, !133, !134, !135, !136}
!131 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!132 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!133 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!134 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!135 = !DIEnumerator(name: "ISEQ_END", value: 4)
!136 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 44, baseType: !11, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!140 = !{!74, !58, !11}
!141 = !{!0}
!142 = !{i32 7, !"Dwarf Version", i32 5}
!143 = !{i32 2, !"Debug Info Version", i32 3}
!144 = !{i32 1, !"wchar_size", i32 4}
!145 = !{i32 8, !"PIC Level", i32 2}
!146 = !{i32 7, !"PIE Level", i32 2}
!147 = !{i32 7, !"uwtable", i32 2}
!148 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!149 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!150 = distinct !DISubprogram(name: "lzma_version_number", scope: !2, file: !2, line: 21, type: !151, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!151 = !DISubroutineType(types: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 26, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !55, line: 42, baseType: !11)
!155 = !DILocation(line: 23, column: 2, scope: !150)
!156 = distinct !DISubprogram(name: "lzma_version_string", scope: !2, file: !2, line: 28, type: !157, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!157 = !DISubroutineType(types: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!161 = !DILocation(line: 30, column: 2, scope: !156)
!162 = distinct !DISubprogram(name: "lzma_alloc", scope: !2, file: !2, line: 39, type: !163, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{!74, !75, !66}
!165 = !{!166, !167, !168}
!166 = !DILocalVariable(name: "size", arg: 1, scope: !162, file: !2, line: 39, type: !75)
!167 = !DILocalVariable(name: "allocator", arg: 2, scope: !162, file: !2, line: 39, type: !66)
!168 = !DILocalVariable(name: "ptr", scope: !162, file: !2, line: 45, type: !74)
!169 = !DILocation(line: 0, scope: !162)
!170 = !DILocation(line: 42, column: 6, scope: !162)
!171 = !DILocation(line: 47, column: 16, scope: !172)
!172 = distinct !DILexicalBlock(scope: !162, file: !2, line: 47, column: 6)
!173 = !DILocation(line: 47, column: 24, scope: !172)
!174 = !DILocation(line: 47, column: 38, scope: !172)
!175 = !DILocation(line: 47, column: 44, scope: !172)
!176 = !DILocation(line: 47, column: 6, scope: !162)
!177 = !DILocation(line: 48, column: 37, scope: !172)
!178 = !DILocation(line: 48, column: 9, scope: !172)
!179 = !DILocation(line: 48, column: 3, scope: !172)
!180 = !DILocation(line: 50, column: 9, scope: !172)
!181 = !DILocation(line: 0, scope: !172)
!182 = !DILocation(line: 52, column: 2, scope: !162)
!183 = !DISubprogram(name: "malloc", scope: !184, file: !184, line: 540, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!184 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!185 = !DISubroutineType(types: !186)
!186 = !{!74, !75}
!187 = distinct !DISubprogram(name: "lzma_free", scope: !2, file: !2, line: 57, type: !188, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !190)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !74, !66}
!190 = !{!191, !192}
!191 = !DILocalVariable(name: "ptr", arg: 1, scope: !187, file: !2, line: 57, type: !74)
!192 = !DILocalVariable(name: "allocator", arg: 2, scope: !187, file: !2, line: 57, type: !66)
!193 = !DILocation(line: 0, scope: !187)
!194 = !DILocation(line: 59, column: 16, scope: !195)
!195 = distinct !DILexicalBlock(scope: !187, file: !2, line: 59, column: 6)
!196 = !DILocation(line: 59, column: 24, scope: !195)
!197 = !DILocation(line: 59, column: 38, scope: !195)
!198 = !DILocation(line: 59, column: 43, scope: !195)
!199 = !DILocation(line: 59, column: 6, scope: !187)
!200 = !DILocation(line: 60, column: 30, scope: !195)
!201 = !DILocation(line: 60, column: 3, scope: !195)
!202 = !DILocation(line: 62, column: 3, scope: !195)
!203 = !DILocation(line: 64, column: 2, scope: !187)
!204 = !DISubprogram(name: "free", scope: !184, file: !184, line: 555, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !74}
!207 = distinct !DISubprogram(name: "lzma_bufcpy", scope: !2, file: !2, line: 73, type: !208, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !210)
!208 = !DISubroutineType(types: !209)
!209 = !{!75, !82, !88, !75, !90, !88, !75}
!210 = !{!211, !212, !213, !214, !215, !216, !217, !219, !220}
!211 = !DILocalVariable(name: "in", arg: 1, scope: !207, file: !2, line: 73, type: !82)
!212 = !DILocalVariable(name: "in_pos", arg: 2, scope: !207, file: !2, line: 73, type: !88)
!213 = !DILocalVariable(name: "in_size", arg: 3, scope: !207, file: !2, line: 74, type: !75)
!214 = !DILocalVariable(name: "out", arg: 4, scope: !207, file: !2, line: 74, type: !90)
!215 = !DILocalVariable(name: "out_pos", arg: 5, scope: !207, file: !2, line: 75, type: !88)
!216 = !DILocalVariable(name: "out_size", arg: 6, scope: !207, file: !2, line: 75, type: !75)
!217 = !DILocalVariable(name: "in_avail", scope: !207, file: !2, line: 77, type: !218)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!219 = !DILocalVariable(name: "out_avail", scope: !207, file: !2, line: 78, type: !218)
!220 = !DILocalVariable(name: "copy_size", scope: !207, file: !2, line: 79, type: !218)
!221 = !DILocation(line: 0, scope: !207)
!222 = !DILocation(line: 77, column: 36, scope: !207)
!223 = !DILocation(line: 77, column: 34, scope: !207)
!224 = !DILocation(line: 78, column: 38, scope: !207)
!225 = !DILocation(line: 78, column: 36, scope: !207)
!226 = !DILocation(line: 79, column: 27, scope: !207)
!227 = !DILocation(line: 81, column: 13, scope: !207)
!228 = !DILocation(line: 81, column: 28, scope: !207)
!229 = !DILocation(line: 81, column: 2, scope: !207)
!230 = !DILocation(line: 83, column: 10, scope: !207)
!231 = !DILocation(line: 84, column: 11, scope: !207)
!232 = !DILocation(line: 86, column: 2, scope: !207)
!233 = distinct !DISubprogram(name: "lzma_next_filter_init", scope: !2, file: !2, line: 91, type: !234, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !247)
!234 = !DISubroutineType(types: !235)
!235 = !{!65, !236, !66, !237}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !39, line: 82, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !39, line: 109, size: 192, elements: !241)
!241 = !{!242, !243, !246}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !240, file: !39, line: 112, baseType: !50, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !240, file: !39, line: 116, baseType: !244, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !39, line: 86, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !240, file: !39, line: 119, baseType: !74, size: 64, offset: 128)
!247 = !{!248, !249, !250}
!248 = !DILocalVariable(name: "next", arg: 1, scope: !233, file: !2, line: 91, type: !236)
!249 = !DILocalVariable(name: "allocator", arg: 2, scope: !233, file: !2, line: 91, type: !66)
!250 = !DILocalVariable(name: "filters", arg: 3, scope: !233, file: !2, line: 92, type: !237)
!251 = !DILocation(line: 0, scope: !233)
!252 = !DILocation(line: 94, column: 2, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !2, line: 94, column: 2)
!254 = distinct !DILexicalBlock(scope: !233, file: !2, line: 94, column: 2)
!255 = !DILocalVariable(name: "next", arg: 1, scope: !256, file: !2, line: 120, type: !236)
!256 = distinct !DISubprogram(name: "lzma_next_end", scope: !2, file: !2, line: 120, type: !257, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !236, !66}
!259 = !{!255, !260}
!260 = !DILocalVariable(name: "allocator", arg: 2, scope: !256, file: !2, line: 120, type: !66)
!261 = !DILocation(line: 0, scope: !256, inlinedAt: !262)
!262 = distinct !DILocation(line: 94, column: 2, scope: !253)
!263 = !DILocation(line: 94, column: 2, scope: !254)
!264 = !DILocation(line: 126, column: 13, scope: !265, inlinedAt: !262)
!265 = distinct !DILexicalBlock(scope: !266, file: !2, line: 126, column: 7)
!266 = distinct !DILexicalBlock(scope: !267, file: !2, line: 122, column: 39)
!267 = distinct !DILexicalBlock(scope: !256, file: !2, line: 122, column: 6)
!268 = !DILocation(line: 126, column: 17, scope: !265, inlinedAt: !262)
!269 = !DILocation(line: 0, scope: !265, inlinedAt: !262)
!270 = !DILocation(line: 126, column: 7, scope: !266, inlinedAt: !262)
!271 = !DILocation(line: 127, column: 4, scope: !265, inlinedAt: !262)
!272 = !DILocation(line: 0, scope: !187, inlinedAt: !273)
!273 = distinct !DILocation(line: 129, column: 4, scope: !265, inlinedAt: !262)
!274 = !DILocation(line: 59, column: 16, scope: !195, inlinedAt: !273)
!275 = !DILocation(line: 59, column: 24, scope: !195, inlinedAt: !273)
!276 = !DILocation(line: 59, column: 38, scope: !195, inlinedAt: !273)
!277 = !DILocation(line: 59, column: 43, scope: !195, inlinedAt: !273)
!278 = !DILocation(line: 59, column: 6, scope: !187, inlinedAt: !273)
!279 = !DILocation(line: 60, column: 30, scope: !195, inlinedAt: !273)
!280 = !DILocation(line: 60, column: 3, scope: !195, inlinedAt: !273)
!281 = !DILocation(line: 62, column: 3, scope: !195, inlinedAt: !273)
!282 = !DILocation(line: 133, column: 11, scope: !266, inlinedAt: !262)
!283 = !DILocation(line: 134, column: 2, scope: !266, inlinedAt: !262)
!284 = !DILocation(line: 95, column: 24, scope: !233)
!285 = !DILocation(line: 95, column: 8, scope: !233)
!286 = !DILocation(line: 95, column: 11, scope: !233)
!287 = !DILocation(line: 96, column: 20, scope: !233)
!288 = !DILocation(line: 96, column: 25, scope: !233)
!289 = !DILocation(line: 96, column: 9, scope: !233)
!290 = !DILocation(line: 97, column: 16, scope: !233)
!291 = !DILocation(line: 96, column: 2, scope: !233)
!292 = !DILocation(line: 0, scope: !256)
!293 = !DILocation(line: 122, column: 12, scope: !267)
!294 = !DILocation(line: 122, column: 17, scope: !267)
!295 = !DILocation(line: 122, column: 6, scope: !256)
!296 = !DILocation(line: 126, column: 13, scope: !265)
!297 = !DILocation(line: 126, column: 17, scope: !265)
!298 = !DILocation(line: 0, scope: !265)
!299 = !DILocation(line: 126, column: 7, scope: !266)
!300 = !DILocation(line: 127, column: 4, scope: !265)
!301 = !DILocation(line: 0, scope: !187, inlinedAt: !302)
!302 = distinct !DILocation(line: 129, column: 4, scope: !265)
!303 = !DILocation(line: 59, column: 16, scope: !195, inlinedAt: !302)
!304 = !DILocation(line: 59, column: 24, scope: !195, inlinedAt: !302)
!305 = !DILocation(line: 59, column: 38, scope: !195, inlinedAt: !302)
!306 = !DILocation(line: 59, column: 43, scope: !195, inlinedAt: !302)
!307 = !DILocation(line: 59, column: 6, scope: !187, inlinedAt: !302)
!308 = !DILocation(line: 60, column: 30, scope: !195, inlinedAt: !302)
!309 = !DILocation(line: 60, column: 3, scope: !195, inlinedAt: !302)
!310 = !DILocation(line: 62, column: 3, scope: !195, inlinedAt: !302)
!311 = !DILocation(line: 133, column: 11, scope: !266)
!312 = !DILocation(line: 134, column: 2, scope: !266)
!313 = !DILocation(line: 136, column: 2, scope: !256)
!314 = distinct !DISubprogram(name: "lzma_next_filter_update", scope: !2, file: !2, line: 102, type: !315, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !317)
!315 = !DISubroutineType(types: !316)
!316 = !{!65, !236, !66, !114}
!317 = !{!318, !319, !320}
!318 = !DILocalVariable(name: "next", arg: 1, scope: !314, file: !2, line: 102, type: !236)
!319 = !DILocalVariable(name: "allocator", arg: 2, scope: !314, file: !2, line: 102, type: !66)
!320 = !DILocalVariable(name: "reversed_filters", arg: 3, scope: !314, file: !2, line: 103, type: !114)
!321 = !DILocation(line: 0, scope: !314)
!322 = !DILocation(line: 108, column: 26, scope: !323)
!323 = distinct !DILexicalBlock(scope: !314, file: !2, line: 108, column: 6)
!324 = !DILocation(line: 108, column: 38, scope: !323)
!325 = !DILocation(line: 108, column: 29, scope: !323)
!326 = !DILocation(line: 108, column: 6, scope: !314)
!327 = !DILocation(line: 111, column: 29, scope: !328)
!328 = distinct !DILexicalBlock(scope: !314, file: !2, line: 111, column: 6)
!329 = !DILocation(line: 111, column: 6, scope: !314)
!330 = !DILocation(line: 115, column: 15, scope: !314)
!331 = !DILocation(line: 115, column: 28, scope: !314)
!332 = !DILocation(line: 115, column: 9, scope: !314)
!333 = !DILocation(line: 115, column: 2, scope: !314)
!334 = !DILocation(line: 116, column: 1, scope: !314)
!335 = distinct !DISubprogram(name: "lzma_strm_init", scope: !2, file: !2, line: 145, type: !336, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !363)
!336 = !DISubroutineType(types: !337)
!337 = !{!65, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !10, line: 490, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 453, size: 1088, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !352, !353, !354, !355, !356, !357, !358, !359, !360, !362}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !340, file: !10, line: 454, baseType: !83, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !340, file: !10, line: 455, baseType: !75, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !340, file: !10, line: 456, baseType: !52, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !340, file: !10, line: 458, baseType: !91, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !340, file: !10, line: 459, baseType: !75, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !340, file: !10, line: 460, baseType: !52, size: 64, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !340, file: !10, line: 468, baseType: !66, size: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !340, file: !10, line: 471, baseType: !350, size: 64, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !10, line: 411, baseType: !40)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !340, file: !10, line: 479, baseType: !74, size: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !340, file: !10, line: 480, baseType: !74, size: 64, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !340, file: !10, line: 481, baseType: !74, size: 64, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !340, file: !10, line: 482, baseType: !74, size: 64, offset: 704)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !340, file: !10, line: 483, baseType: !52, size: 64, offset: 768)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !340, file: !10, line: 484, baseType: !52, size: 64, offset: 832)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !340, file: !10, line: 485, baseType: !75, size: 64, offset: 896)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !340, file: !10, line: 486, baseType: !75, size: 64, offset: 960)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !340, file: !10, line: 487, baseType: !361, size: 32, offset: 1024)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !10, line: 46, baseType: !137)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !340, file: !10, line: 488, baseType: !361, size: 32, offset: 1056)
!363 = !{!364}
!364 = !DILocalVariable(name: "strm", arg: 1, scope: !335, file: !2, line: 145, type: !338)
!365 = !DILocation(line: 0, scope: !335)
!366 = !DILocation(line: 147, column: 11, scope: !367)
!367 = distinct !DILexicalBlock(scope: !335, file: !2, line: 147, column: 6)
!368 = !DILocation(line: 147, column: 6, scope: !335)
!369 = !DILocation(line: 150, column: 12, scope: !370)
!370 = distinct !DILexicalBlock(scope: !335, file: !2, line: 150, column: 6)
!371 = !DILocation(line: 150, column: 21, scope: !370)
!372 = !DILocation(line: 150, column: 6, scope: !335)
!373 = !DILocation(line: 152, column: 11, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !2, line: 150, column: 30)
!375 = !DILocation(line: 0, scope: !162, inlinedAt: !376)
!376 = distinct !DILocation(line: 151, column: 20, scope: !374)
!377 = !DILocation(line: 47, column: 16, scope: !172, inlinedAt: !376)
!378 = !DILocation(line: 47, column: 24, scope: !172, inlinedAt: !376)
!379 = !DILocation(line: 47, column: 38, scope: !172, inlinedAt: !376)
!380 = !DILocation(line: 47, column: 44, scope: !172, inlinedAt: !376)
!381 = !DILocation(line: 47, column: 6, scope: !162, inlinedAt: !376)
!382 = !DILocation(line: 48, column: 37, scope: !172, inlinedAt: !376)
!383 = !DILocation(line: 48, column: 9, scope: !172, inlinedAt: !376)
!384 = !DILocation(line: 48, column: 3, scope: !172, inlinedAt: !376)
!385 = !DILocation(line: 50, column: 9, scope: !172, inlinedAt: !376)
!386 = !DILocation(line: 0, scope: !172, inlinedAt: !376)
!387 = !DILocation(line: 151, column: 18, scope: !374)
!388 = !DILocation(line: 153, column: 22, scope: !389)
!389 = distinct !DILexicalBlock(scope: !374, file: !2, line: 153, column: 7)
!390 = !DILocation(line: 153, column: 7, scope: !374)
!391 = !DILocation(line: 156, column: 26, scope: !374)
!392 = !DILocation(line: 159, column: 8, scope: !335)
!393 = !DILocation(line: 157, column: 2, scope: !374)
!394 = !DILocation(line: 159, column: 18, scope: !335)
!395 = !DILocation(line: 159, column: 46, scope: !335)
!396 = !DILocation(line: 160, column: 8, scope: !335)
!397 = !DILocation(line: 160, column: 2, scope: !335)
!398 = !DILocation(line: 160, column: 53, scope: !335)
!399 = !DILocation(line: 161, column: 8, scope: !335)
!400 = !DILocation(line: 161, column: 2, scope: !335)
!401 = !DILocation(line: 161, column: 53, scope: !335)
!402 = !DILocation(line: 162, column: 8, scope: !335)
!403 = !DILocation(line: 162, column: 2, scope: !335)
!404 = !DILocation(line: 162, column: 49, scope: !335)
!405 = !DILocation(line: 163, column: 8, scope: !335)
!406 = !DILocation(line: 163, column: 18, scope: !335)
!407 = !DILocation(line: 163, column: 27, scope: !335)
!408 = !DILocation(line: 164, column: 8, scope: !335)
!409 = !DILocation(line: 164, column: 18, scope: !335)
!410 = !DILocation(line: 164, column: 34, scope: !335)
!411 = !DILocation(line: 166, column: 8, scope: !335)
!412 = !DILocation(line: 166, column: 17, scope: !335)
!413 = !DILocation(line: 167, column: 8, scope: !335)
!414 = !DILocation(line: 167, column: 18, scope: !335)
!415 = !DILocation(line: 169, column: 2, scope: !335)
!416 = !DILocation(line: 170, column: 1, scope: !335)
!417 = distinct !DISubprogram(name: "lzma_code", scope: !2, file: !2, line: 174, type: !418, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{!65, !338, !92}
!420 = !{!421, !422, !423, !424, !425}
!421 = !DILocalVariable(name: "strm", arg: 1, scope: !417, file: !2, line: 174, type: !338)
!422 = !DILocalVariable(name: "action", arg: 2, scope: !417, file: !2, line: 174, type: !92)
!423 = !DILocalVariable(name: "in_pos", scope: !417, file: !2, line: 251, type: !75)
!424 = !DILocalVariable(name: "out_pos", scope: !417, file: !2, line: 252, type: !75)
!425 = !DILocalVariable(name: "ret", scope: !417, file: !2, line: 253, type: !65)
!426 = distinct !DIAssignID()
!427 = !DILocation(line: 0, scope: !417)
!428 = distinct !DIAssignID()
!429 = !DILocation(line: 177, column: 13, scope: !430)
!430 = distinct !DILexicalBlock(scope: !417, file: !2, line: 177, column: 6)
!431 = !DILocation(line: 177, column: 21, scope: !430)
!432 = !DILocation(line: 177, column: 29, scope: !430)
!433 = !DILocation(line: 177, column: 38, scope: !430)
!434 = !DILocation(line: 177, column: 47, scope: !430)
!435 = !DILocation(line: 178, column: 4, scope: !430)
!436 = !DILocation(line: 178, column: 14, scope: !430)
!437 = !DILocation(line: 178, column: 23, scope: !430)
!438 = !DILocation(line: 178, column: 31, scope: !430)
!439 = !DILocation(line: 178, column: 40, scope: !430)
!440 = !DILocation(line: 178, column: 50, scope: !430)
!441 = !DILocation(line: 179, column: 4, scope: !430)
!442 = !DILocation(line: 179, column: 13, scope: !430)
!443 = !DILocation(line: 179, column: 22, scope: !430)
!444 = !DILocation(line: 180, column: 4, scope: !430)
!445 = !DILocation(line: 180, column: 28, scope: !430)
!446 = !DILocation(line: 180, column: 33, scope: !430)
!447 = !DILocation(line: 181, column: 4, scope: !430)
!448 = !DILocation(line: 182, column: 24, scope: !430)
!449 = !DILocation(line: 182, column: 8, scope: !430)
!450 = !{i8 0, i8 2}
!451 = !{}
!452 = !DILocation(line: 177, column: 6, scope: !417)
!453 = !DILocation(line: 187, column: 12, scope: !454)
!454 = distinct !DILexicalBlock(scope: !417, file: !2, line: 187, column: 6)
!455 = !DILocation(line: 187, column: 26, scope: !454)
!456 = !DILocation(line: 188, column: 4, scope: !454)
!457 = !DILocation(line: 188, column: 13, scope: !454)
!458 = !DILocation(line: 188, column: 27, scope: !454)
!459 = !DILocation(line: 189, column: 4, scope: !454)
!460 = !DILocation(line: 189, column: 13, scope: !454)
!461 = !DILocation(line: 189, column: 27, scope: !454)
!462 = !DILocation(line: 190, column: 4, scope: !454)
!463 = !DILocation(line: 190, column: 13, scope: !454)
!464 = !DILocation(line: 190, column: 27, scope: !454)
!465 = !DILocation(line: 191, column: 4, scope: !454)
!466 = !DILocation(line: 191, column: 13, scope: !454)
!467 = !DILocation(line: 191, column: 27, scope: !454)
!468 = !DILocation(line: 192, column: 4, scope: !454)
!469 = !DILocation(line: 192, column: 13, scope: !454)
!470 = !DILocation(line: 192, column: 27, scope: !454)
!471 = !DILocation(line: 193, column: 4, scope: !454)
!472 = !DILocation(line: 193, column: 13, scope: !454)
!473 = !DILocation(line: 193, column: 27, scope: !454)
!474 = !DILocation(line: 194, column: 4, scope: !454)
!475 = !DILocation(line: 194, column: 13, scope: !454)
!476 = !DILocation(line: 194, column: 27, scope: !454)
!477 = !DILocation(line: 195, column: 4, scope: !454)
!478 = !DILocation(line: 195, column: 13, scope: !454)
!479 = !DILocation(line: 195, column: 28, scope: !454)
!480 = !DILocation(line: 196, column: 4, scope: !454)
!481 = !DILocation(line: 196, column: 13, scope: !454)
!482 = !DILocation(line: 196, column: 28, scope: !454)
!483 = !DILocation(line: 187, column: 6, scope: !417)
!484 = !DILocation(line: 199, column: 26, scope: !417)
!485 = !DILocation(line: 199, column: 2, scope: !417)
!486 = !DILocation(line: 201, column: 3, scope: !487)
!487 = distinct !DILexicalBlock(scope: !417, file: !2, line: 199, column: 36)
!488 = !DILocation(line: 223, column: 14, scope: !489)
!489 = distinct !DILexicalBlock(scope: !487, file: !2, line: 223, column: 7)
!490 = !DILocation(line: 224, column: 5, scope: !489)
!491 = !DILocation(line: 224, column: 24, scope: !489)
!492 = !DILocation(line: 224, column: 42, scope: !489)
!493 = !DILocation(line: 224, column: 33, scope: !489)
!494 = !DILocation(line: 223, column: 7, scope: !487)
!495 = !DILocation(line: 230, column: 14, scope: !496)
!496 = distinct !DILexicalBlock(scope: !487, file: !2, line: 230, column: 7)
!497 = !DILocation(line: 231, column: 5, scope: !496)
!498 = !DILocation(line: 231, column: 24, scope: !496)
!499 = !DILocation(line: 231, column: 42, scope: !496)
!500 = !DILocation(line: 231, column: 33, scope: !496)
!501 = !DILocation(line: 230, column: 7, scope: !487)
!502 = !DILocation(line: 237, column: 14, scope: !503)
!503 = distinct !DILexicalBlock(scope: !487, file: !2, line: 237, column: 7)
!504 = !DILocation(line: 238, column: 5, scope: !503)
!505 = !DILocation(line: 238, column: 24, scope: !503)
!506 = !DILocation(line: 238, column: 42, scope: !503)
!507 = !DILocation(line: 238, column: 33, scope: !503)
!508 = !DILocation(line: 237, column: 7, scope: !487)
!509 = !DILocation(line: 248, column: 3, scope: !487)
!510 = !DILocation(line: 0, scope: !511)
!511 = distinct !DILexicalBlock(scope: !487, file: !2, line: 201, column: 19)
!512 = !DILocation(line: 251, column: 2, scope: !417)
!513 = !DILocation(line: 251, column: 9, scope: !417)
!514 = distinct !DIAssignID()
!515 = !DILocation(line: 252, column: 2, scope: !417)
!516 = !DILocation(line: 252, column: 9, scope: !417)
!517 = distinct !DIAssignID()
!518 = !DILocation(line: 253, column: 23, scope: !417)
!519 = !DILocation(line: 253, column: 38, scope: !417)
!520 = !DILocation(line: 254, column: 25, scope: !417)
!521 = !DILocation(line: 254, column: 38, scope: !417)
!522 = !DILocation(line: 255, column: 10, scope: !417)
!523 = !DILocation(line: 255, column: 34, scope: !417)
!524 = !DILocation(line: 256, column: 10, scope: !417)
!525 = !DILocation(line: 256, column: 36, scope: !417)
!526 = !DILocation(line: 253, column: 17, scope: !417)
!527 = !DILocation(line: 258, column: 19, scope: !417)
!528 = !DILocation(line: 258, column: 16, scope: !417)
!529 = !DILocation(line: 259, column: 17, scope: !417)
!530 = !DILocation(line: 260, column: 8, scope: !417)
!531 = !DILocation(line: 260, column: 17, scope: !417)
!532 = !DILocation(line: 262, column: 20, scope: !417)
!533 = !DILocation(line: 262, column: 17, scope: !417)
!534 = !DILocation(line: 263, column: 18, scope: !417)
!535 = !DILocation(line: 264, column: 8, scope: !417)
!536 = !DILocation(line: 264, column: 18, scope: !417)
!537 = !DILocation(line: 266, column: 8, scope: !417)
!538 = !DILocation(line: 266, column: 18, scope: !417)
!539 = !DILocation(line: 266, column: 27, scope: !417)
!540 = !DILocation(line: 268, column: 2, scope: !417)
!541 = !DILocation(line: 274, column: 15, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !2, line: 274, column: 7)
!543 = distinct !DILexicalBlock(scope: !417, file: !2, line: 268, column: 15)
!544 = !DILocation(line: 274, column: 20, scope: !542)
!545 = !DILocation(line: 0, scope: !542)
!546 = !DILocation(line: 275, column: 24, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 275, column: 8)
!548 = distinct !DILexicalBlock(scope: !542, file: !2, line: 274, column: 36)
!549 = !DILocation(line: 275, column: 8, scope: !548)
!550 = !DILocation(line: 278, column: 37, scope: !547)
!551 = !DILocation(line: 280, column: 36, scope: !552)
!552 = distinct !DILexicalBlock(scope: !542, file: !2, line: 279, column: 10)
!553 = !DILocation(line: 285, column: 13, scope: !554)
!554 = distinct !DILexicalBlock(scope: !543, file: !2, line: 285, column: 7)
!555 = !DILocation(line: 285, column: 23, scope: !554)
!556 = !DILocation(line: 286, column: 5, scope: !554)
!557 = !DILocation(line: 0, scope: !554)
!558 = !DILocation(line: 299, column: 9, scope: !543)
!559 = !DILocation(line: 299, column: 19, scope: !543)
!560 = !DILocation(line: 299, column: 35, scope: !543)
!561 = !DILocation(line: 300, column: 3, scope: !543)
!562 = !DILocation(line: 305, column: 9, scope: !543)
!563 = !DILocation(line: 305, column: 19, scope: !543)
!564 = !DILocation(line: 305, column: 28, scope: !543)
!565 = !DILocation(line: 306, column: 3, scope: !543)
!566 = !DILocation(line: 310, column: 1, scope: !417)
!567 = distinct !DISubprogram(name: "lzma_end", scope: !2, file: !2, line: 314, type: !568, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !570)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !338}
!570 = !{!571}
!571 = !DILocalVariable(name: "strm", arg: 1, scope: !567, file: !2, line: 314, type: !338)
!572 = !DILocation(line: 0, scope: !567)
!573 = !DILocation(line: 316, column: 11, scope: !574)
!574 = distinct !DILexicalBlock(scope: !567, file: !2, line: 316, column: 6)
!575 = !DILocation(line: 316, column: 19, scope: !574)
!576 = !DILocation(line: 316, column: 28, scope: !574)
!577 = !DILocation(line: 316, column: 37, scope: !574)
!578 = !DILocation(line: 316, column: 6, scope: !567)
!579 = !DILocation(line: 317, column: 46, scope: !580)
!580 = distinct !DILexicalBlock(scope: !574, file: !2, line: 316, column: 46)
!581 = !DILocation(line: 0, scope: !256, inlinedAt: !582)
!582 = distinct !DILocation(line: 317, column: 3, scope: !580)
!583 = !DILocation(line: 122, column: 12, scope: !267, inlinedAt: !582)
!584 = !DILocation(line: 122, column: 17, scope: !267, inlinedAt: !582)
!585 = !DILocation(line: 122, column: 6, scope: !256, inlinedAt: !582)
!586 = !DILocation(line: 126, column: 13, scope: !265, inlinedAt: !582)
!587 = !DILocation(line: 126, column: 17, scope: !265, inlinedAt: !582)
!588 = !DILocation(line: 0, scope: !265, inlinedAt: !582)
!589 = !DILocation(line: 126, column: 7, scope: !266, inlinedAt: !582)
!590 = !DILocation(line: 127, column: 4, scope: !265, inlinedAt: !582)
!591 = !DILocation(line: 0, scope: !187, inlinedAt: !592)
!592 = distinct !DILocation(line: 129, column: 4, scope: !265, inlinedAt: !582)
!593 = !DILocation(line: 59, column: 16, scope: !195, inlinedAt: !592)
!594 = !DILocation(line: 59, column: 24, scope: !195, inlinedAt: !592)
!595 = !DILocation(line: 59, column: 38, scope: !195, inlinedAt: !592)
!596 = !DILocation(line: 59, column: 43, scope: !195, inlinedAt: !592)
!597 = !DILocation(line: 59, column: 6, scope: !187, inlinedAt: !592)
!598 = !DILocation(line: 60, column: 30, scope: !195, inlinedAt: !592)
!599 = !DILocation(line: 60, column: 3, scope: !195, inlinedAt: !592)
!600 = !DILocation(line: 62, column: 3, scope: !195, inlinedAt: !592)
!601 = !DILocation(line: 133, column: 11, scope: !266, inlinedAt: !582)
!602 = !DILocation(line: 318, column: 35, scope: !580)
!603 = !DILocation(line: 318, column: 19, scope: !580)
!604 = !DILocation(line: 134, column: 2, scope: !266, inlinedAt: !582)
!605 = !DILocation(line: 0, scope: !187, inlinedAt: !606)
!606 = distinct !DILocation(line: 318, column: 3, scope: !580)
!607 = !DILocation(line: 59, column: 16, scope: !195, inlinedAt: !606)
!608 = !DILocation(line: 59, column: 24, scope: !195, inlinedAt: !606)
!609 = !DILocation(line: 59, column: 38, scope: !195, inlinedAt: !606)
!610 = !DILocation(line: 59, column: 43, scope: !195, inlinedAt: !606)
!611 = !DILocation(line: 59, column: 6, scope: !187, inlinedAt: !606)
!612 = !DILocation(line: 60, column: 30, scope: !195, inlinedAt: !606)
!613 = !DILocation(line: 60, column: 3, scope: !195, inlinedAt: !606)
!614 = !DILocation(line: 62, column: 3, scope: !195, inlinedAt: !606)
!615 = !DILocation(line: 319, column: 18, scope: !580)
!616 = !DILocation(line: 320, column: 2, scope: !580)
!617 = !DILocation(line: 322, column: 2, scope: !567)
!618 = distinct !DISubprogram(name: "lzma_get_check", scope: !2, file: !2, line: 327, type: !619, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !623)
!619 = !DISubroutineType(types: !620)
!620 = !{!102, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!623 = !{!624}
!624 = !DILocalVariable(name: "strm", arg: 1, scope: !618, file: !2, line: 327, type: !621)
!625 = !DILocation(line: 0, scope: !618)
!626 = !DILocation(line: 331, column: 12, scope: !627)
!627 = distinct !DILexicalBlock(scope: !618, file: !2, line: 331, column: 6)
!628 = !DILocation(line: 331, column: 27, scope: !627)
!629 = !DILocation(line: 331, column: 37, scope: !627)
!630 = !DILocation(line: 331, column: 6, scope: !618)
!631 = !DILocation(line: 334, column: 61, scope: !618)
!632 = !DILocation(line: 334, column: 9, scope: !618)
!633 = !DILocation(line: 334, column: 2, scope: !618)
!634 = !DILocation(line: 335, column: 1, scope: !618)
!635 = distinct !DISubprogram(name: "lzma_memusage", scope: !2, file: !2, line: 339, type: !636, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{!52, !621}
!638 = !{!639, !640, !641}
!639 = !DILocalVariable(name: "strm", arg: 1, scope: !635, file: !2, line: 339, type: !621)
!640 = !DILocalVariable(name: "memusage", scope: !635, file: !2, line: 341, type: !52)
!641 = !DILocalVariable(name: "old_memlimit", scope: !635, file: !2, line: 342, type: !52)
!642 = distinct !DIAssignID()
!643 = !DILocation(line: 0, scope: !635)
!644 = distinct !DIAssignID()
!645 = !DILocation(line: 341, column: 2, scope: !635)
!646 = !DILocation(line: 342, column: 2, scope: !635)
!647 = !DILocation(line: 344, column: 11, scope: !648)
!648 = distinct !DILexicalBlock(scope: !635, file: !2, line: 344, column: 6)
!649 = !DILocation(line: 344, column: 19, scope: !648)
!650 = !DILocation(line: 344, column: 28, scope: !648)
!651 = !DILocation(line: 344, column: 37, scope: !648)
!652 = !DILocation(line: 345, column: 4, scope: !648)
!653 = !DILocation(line: 345, column: 28, scope: !648)
!654 = !DILocation(line: 345, column: 38, scope: !648)
!655 = !DILocation(line: 346, column: 4, scope: !648)
!656 = !DILocation(line: 347, column: 26, scope: !648)
!657 = !DILocation(line: 346, column: 7, scope: !648)
!658 = !DILocation(line: 348, column: 34, scope: !648)
!659 = !DILocation(line: 344, column: 6, scope: !635)
!660 = !DILocation(line: 352, column: 1, scope: !635)
!661 = distinct !DISubprogram(name: "lzma_memlimit_get", scope: !2, file: !2, line: 356, type: !636, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !662)
!662 = !{!663, !664, !665}
!663 = !DILocalVariable(name: "strm", arg: 1, scope: !661, file: !2, line: 356, type: !621)
!664 = !DILocalVariable(name: "old_memlimit", scope: !661, file: !2, line: 358, type: !52)
!665 = !DILocalVariable(name: "memusage", scope: !661, file: !2, line: 359, type: !52)
!666 = distinct !DIAssignID()
!667 = !DILocation(line: 0, scope: !661)
!668 = distinct !DIAssignID()
!669 = !DILocation(line: 358, column: 2, scope: !661)
!670 = !DILocation(line: 359, column: 2, scope: !661)
!671 = !DILocation(line: 361, column: 11, scope: !672)
!672 = distinct !DILexicalBlock(scope: !661, file: !2, line: 361, column: 6)
!673 = !DILocation(line: 361, column: 19, scope: !672)
!674 = !DILocation(line: 361, column: 28, scope: !672)
!675 = !DILocation(line: 361, column: 37, scope: !672)
!676 = !DILocation(line: 362, column: 4, scope: !672)
!677 = !DILocation(line: 362, column: 28, scope: !672)
!678 = !DILocation(line: 362, column: 38, scope: !672)
!679 = !DILocation(line: 363, column: 4, scope: !672)
!680 = !DILocation(line: 364, column: 26, scope: !672)
!681 = !DILocation(line: 363, column: 7, scope: !672)
!682 = !DILocation(line: 365, column: 34, scope: !672)
!683 = !DILocation(line: 361, column: 6, scope: !661)
!684 = !DILocation(line: 369, column: 1, scope: !661)
!685 = distinct !DISubprogram(name: "lzma_memlimit_set", scope: !2, file: !2, line: 373, type: !686, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !688)
!686 = !DISubroutineType(types: !687)
!687 = !{!65, !338, !52}
!688 = !{!689, !690, !691, !692}
!689 = !DILocalVariable(name: "strm", arg: 1, scope: !685, file: !2, line: 373, type: !338)
!690 = !DILocalVariable(name: "new_memlimit", arg: 2, scope: !685, file: !2, line: 373, type: !52)
!691 = !DILocalVariable(name: "old_memlimit", scope: !685, file: !2, line: 376, type: !52)
!692 = !DILocalVariable(name: "memusage", scope: !685, file: !2, line: 377, type: !52)
!693 = distinct !DIAssignID()
!694 = !DILocation(line: 0, scope: !685)
!695 = distinct !DIAssignID()
!696 = !DILocation(line: 376, column: 2, scope: !685)
!697 = !DILocation(line: 377, column: 2, scope: !685)
!698 = !DILocation(line: 379, column: 11, scope: !699)
!699 = distinct !DILexicalBlock(scope: !685, file: !2, line: 379, column: 6)
!700 = !DILocation(line: 379, column: 19, scope: !699)
!701 = !DILocation(line: 379, column: 28, scope: !699)
!702 = !DILocation(line: 379, column: 37, scope: !699)
!703 = !DILocation(line: 380, column: 4, scope: !699)
!704 = !DILocation(line: 380, column: 28, scope: !699)
!705 = !DILocation(line: 380, column: 38, scope: !699)
!706 = !DILocation(line: 379, column: 6, scope: !685)
!707 = !DILocation(line: 383, column: 24, scope: !708)
!708 = distinct !DILexicalBlock(scope: !685, file: !2, line: 383, column: 6)
!709 = !DILocation(line: 386, column: 61, scope: !685)
!710 = !DILocation(line: 386, column: 9, scope: !685)
!711 = !DILocation(line: 386, column: 2, scope: !685)
!712 = !DILocation(line: 388, column: 1, scope: !685)
