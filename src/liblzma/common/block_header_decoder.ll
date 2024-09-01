; ModuleID = 'liblzma/common/block_header_decoder.c'
source_filename = "liblzma/common/block_header_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter = type { i64, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_header_decode(ptr noundef %block, ptr noundef %allocator, ptr noundef %in) local_unnamed_addr #0 !dbg !43 {
entry:
  %in_pos = alloca i64, align 8, !DIAssignID !143
    #dbg_assign(i1 undef, !128, !DIExpression(), !143, ptr %in_pos, !DIExpression(), !144)
    #dbg_value(ptr %block, !121, !DIExpression(), !144)
    #dbg_value(ptr %allocator, !122, !DIExpression(), !144)
    #dbg_value(ptr %in, !123, !DIExpression(), !144)
    #dbg_value(i64 0, !124, !DIExpression(), !145)
  %filters = getelementptr inbounds i8, ptr %block, i64 32
    #dbg_value(i64 0, !124, !DIExpression(), !145)
    #dbg_value(i64 0, !124, !DIExpression(), !145)
  %0 = load ptr, ptr %filters, align 8, !dbg !146
  store i64 -1, ptr %0, align 8, !dbg !149
  %1 = load ptr, ptr %filters, align 8, !dbg !150
  %options = getelementptr inbounds i8, ptr %1, i64 8, !dbg !151
  store ptr null, ptr %options, align 8, !dbg !152
    #dbg_value(i64 1, !124, !DIExpression(), !145)
  %2 = load ptr, ptr %filters, align 8, !dbg !146
  %arrayidx.1 = getelementptr inbounds i8, ptr %2, i64 16, !dbg !153
  store i64 -1, ptr %arrayidx.1, align 8, !dbg !149
  %3 = load ptr, ptr %filters, align 8, !dbg !150
  %options.1 = getelementptr inbounds i8, ptr %3, i64 24, !dbg !151
  store ptr null, ptr %options.1, align 8, !dbg !152
    #dbg_value(i64 2, !124, !DIExpression(), !145)
  %4 = load ptr, ptr %filters, align 8, !dbg !146
  %arrayidx.2 = getelementptr inbounds i8, ptr %4, i64 32, !dbg !153
  store i64 -1, ptr %arrayidx.2, align 8, !dbg !149
  %5 = load ptr, ptr %filters, align 8, !dbg !150
  %options.2 = getelementptr inbounds i8, ptr %5, i64 40, !dbg !151
  store ptr null, ptr %options.2, align 8, !dbg !152
    #dbg_value(i64 3, !124, !DIExpression(), !145)
  %6 = load ptr, ptr %filters, align 8, !dbg !146
  %arrayidx.3 = getelementptr inbounds i8, ptr %6, i64 48, !dbg !153
  store i64 -1, ptr %arrayidx.3, align 8, !dbg !149
  %7 = load ptr, ptr %filters, align 8, !dbg !150
  %options.3 = getelementptr inbounds i8, ptr %7, i64 56, !dbg !151
  store ptr null, ptr %options.3, align 8, !dbg !152
    #dbg_value(i64 4, !124, !DIExpression(), !145)
  %8 = load ptr, ptr %filters, align 8, !dbg !146
  %arrayidx.4 = getelementptr inbounds i8, ptr %8, i64 64, !dbg !153
  store i64 -1, ptr %arrayidx.4, align 8, !dbg !149
  %9 = load ptr, ptr %filters, align 8, !dbg !150
  %options.4 = getelementptr inbounds i8, ptr %9, i64 72, !dbg !151
  store ptr null, ptr %options.4, align 8, !dbg !152
    #dbg_value(i64 5, !124, !DIExpression(), !145)
  store i32 0, ptr %block, align 8, !dbg !154
  %10 = load i8, ptr %in, align 1, !dbg !155
  %conv = zext i8 %10 to i32, !dbg !155
  %add = shl nuw nsw i32 %conv, 2, !dbg !155
  %mul = add nuw nsw i32 %add, 4, !dbg !155
  %header_size = getelementptr inbounds i8, ptr %block, i64 4, !dbg !157
  %11 = load i32, ptr %header_size, align 4, !dbg !157
  %cmp4.not = icmp eq i32 %mul, %11, !dbg !158
  br i1 %cmp4.not, label %lor.lhs.false, label %return, !dbg !159

lor.lhs.false:                                    ; preds = %entry
  %check = getelementptr inbounds i8, ptr %block, i64 8, !dbg !160
  %12 = load i32, ptr %check, align 8, !dbg !160
  %cmp6 = icmp ugt i32 %12, 15, !dbg !161
  br i1 %cmp6, label %return, label %if.end, !dbg !162

if.end:                                           ; preds = %lor.lhs.false
  %conv9 = zext nneg i32 %add to i64, !dbg !163
    #dbg_value(i64 %conv9, !126, !DIExpression(), !144)
  %call = tail call i32 @lzma_crc32(ptr noundef nonnull %in, i64 noundef %conv9, i32 noundef 0) #3, !dbg !164
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %conv9, !dbg !166
    #dbg_value(ptr %add.ptr, !167, !DIExpression(), !174)
  %13 = load i32, ptr %add.ptr, align 1, !dbg !176
    #dbg_value(i8 poison, !173, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !174)
    #dbg_value(i16 poison, !173, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !174)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !173, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !174)
    #dbg_value(i32 %13, !173, !DIExpression(), !174)
  %cmp11.not = icmp eq i32 %call, %13, !dbg !177
  br i1 %cmp11.not, label %if.end14, label %return, !dbg !178

if.end14:                                         ; preds = %if.end
  %arrayidx15 = getelementptr inbounds i8, ptr %in, i64 1, !dbg !179
  %14 = load i8, ptr %arrayidx15, align 1, !dbg !179
  %15 = and i8 %14, 60, !dbg !181
  %tobool.not = icmp eq i8 %15, 0, !dbg !181
  br i1 %tobool.not, label %if.end18, label %return, !dbg !182

if.end18:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_pos) #3, !dbg !183
  store i64 2, ptr %in_pos, align 8, !dbg !184, !DIAssignID !185
    #dbg_assign(i64 2, !128, !DIExpression(), !185, ptr %in_pos, !DIExpression(), !144)
  %16 = and i8 %14, 64, !dbg !186
  %tobool22.not = icmp eq i8 %16, 0, !dbg !186
  %compressed_size34 = getelementptr inbounds i8, ptr %block, i64 16, !dbg !187
  br i1 %tobool22.not, label %if.else, label %do.body, !dbg !188

do.body:                                          ; preds = %if.end18
  %call24 = call i32 @lzma_vli_decode(ptr noundef nonnull %compressed_size34, ptr noundef null, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %conv9) #3, !dbg !189
    #dbg_value(i32 %call24, !129, !DIExpression(), !190)
  %cmp25.not = icmp eq i32 %call24, 0, !dbg !191
  br i1 %cmp25.not, label %do.end, label %cleanup92

do.end:                                           ; preds = %do.body
  %call29 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %block) #3, !dbg !193
  %cmp30 = icmp eq i64 %call29, 0, !dbg !195
  br i1 %cmp30, label %cleanup92, label %if.end35, !dbg !196

if.else:                                          ; preds = %if.end18
  store i64 -1, ptr %compressed_size34, align 8, !dbg !197
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.else
  %17 = load i8, ptr %arrayidx15, align 1, !dbg !199
  %tobool39.not = icmp sgt i8 %17, -1, !dbg !200
  %uncompressed_size54 = getelementptr inbounds i8, ptr %block, i64 24, !dbg !201
  br i1 %tobool39.not, label %if.else53, label %do.body41, !dbg !202

do.body41:                                        ; preds = %if.end35
  %call43 = call i32 @lzma_vli_decode(ptr noundef nonnull %uncompressed_size54, ptr noundef null, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %conv9) #3, !dbg !203
    #dbg_value(i32 %call43, !134, !DIExpression(), !204)
  %cmp44.not = icmp eq i32 %call43, 0, !dbg !205
  br i1 %cmp44.not, label %if.end55, label %cleanup92

if.else53:                                        ; preds = %if.end35
  store i64 -1, ptr %uncompressed_size54, align 8, !dbg !207
  br label %if.end55

if.end55:                                         ; preds = %do.body41, %if.else53
  %18 = load i8, ptr %arrayidx15, align 1, !dbg !208
  %19 = and i8 %18, 3, !dbg !209
  %narrow = add nuw nsw i8 %19, 1, !dbg !210
  %conv60 = zext nneg i8 %narrow to i64, !dbg !211
    #dbg_value(i64 %conv60, !137, !DIExpression(), !144)
    #dbg_value(i64 0, !138, !DIExpression(), !212)
    #dbg_value(i64 0, !138, !DIExpression(), !212)
  br label %for.body66, !dbg !213

for.cond62:                                       ; preds = %for.body66
  %inc78 = add nuw nsw i64 %i61.0143, 1, !dbg !214
    #dbg_value(i64 %inc78, !138, !DIExpression(), !212)
    #dbg_value(i64 %inc78, !138, !DIExpression(), !212)
  %exitcond.not = icmp eq i64 %inc78, %conv60, !dbg !215
  br i1 %exitcond.not, label %while.cond.preheader, label %for.body66, !dbg !213, !llvm.loop !216

while.cond.preheader:                             ; preds = %for.cond62
  %in_pos.promoted = load i64, ptr %in_pos, align 8
  br label %while.cond, !dbg !218

for.body66:                                       ; preds = %if.end55, %for.cond62
  %i61.0143 = phi i64 [ 0, %if.end55 ], [ %inc78, %for.cond62 ]
    #dbg_value(i64 %i61.0143, !138, !DIExpression(), !212)
  %20 = load ptr, ptr %filters, align 8, !dbg !219
  %arrayidx68 = getelementptr inbounds %struct.lzma_filter, ptr %20, i64 %i61.0143, !dbg !220
  %call69 = call i32 @lzma_filter_flags_decode(ptr noundef %arrayidx68, ptr noundef %allocator, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %conv9) #3, !dbg !221
    #dbg_value(i32 %call69, !140, !DIExpression(), !222)
  %cmp70.not = icmp eq i32 %call69, 0, !dbg !223
    #dbg_value(i64 %i61.0143, !138, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !212)
  br i1 %cmp70.not, label %for.cond62, label %cleanup79.thread, !dbg !225

cleanup79.thread:                                 ; preds = %for.body66
    #dbg_value(ptr %block, !226, !DIExpression(), !234)
    #dbg_value(ptr %allocator, !231, !DIExpression(), !234)
    #dbg_value(i64 0, !232, !DIExpression(), !237)
  %21 = load ptr, ptr %filters, align 8, !dbg !238
  %options.i = getelementptr inbounds i8, ptr %21, i64 8, !dbg !241
  %22 = load ptr, ptr %options.i, align 8, !dbg !241
  call void @lzma_free(ptr noundef %22, ptr noundef %allocator) #3, !dbg !242
  %23 = load ptr, ptr %filters, align 8, !dbg !243
  store i64 -1, ptr %23, align 8, !dbg !244
  %24 = load ptr, ptr %filters, align 8, !dbg !245
  %options5.i = getelementptr inbounds i8, ptr %24, i64 8, !dbg !246
  store ptr null, ptr %options5.i, align 8, !dbg !247
    #dbg_value(i64 1, !232, !DIExpression(), !237)
  %25 = load ptr, ptr %filters, align 8, !dbg !238
  %options.1.i = getelementptr inbounds i8, ptr %25, i64 24, !dbg !241
  %26 = load ptr, ptr %options.1.i, align 8, !dbg !241
  call void @lzma_free(ptr noundef %26, ptr noundef %allocator) #3, !dbg !242
  %27 = load ptr, ptr %filters, align 8, !dbg !243
  %arrayidx2.1.i = getelementptr inbounds i8, ptr %27, i64 16, !dbg !248
  store i64 -1, ptr %arrayidx2.1.i, align 8, !dbg !244
  %28 = load ptr, ptr %filters, align 8, !dbg !245
  %options5.1.i = getelementptr inbounds i8, ptr %28, i64 24, !dbg !246
  store ptr null, ptr %options5.1.i, align 8, !dbg !247
    #dbg_value(i64 2, !232, !DIExpression(), !237)
  %29 = load ptr, ptr %filters, align 8, !dbg !238
  %options.2.i = getelementptr inbounds i8, ptr %29, i64 40, !dbg !241
  %30 = load ptr, ptr %options.2.i, align 8, !dbg !241
  call void @lzma_free(ptr noundef %30, ptr noundef %allocator) #3, !dbg !242
  %31 = load ptr, ptr %filters, align 8, !dbg !243
  %arrayidx2.2.i = getelementptr inbounds i8, ptr %31, i64 32, !dbg !248
  store i64 -1, ptr %arrayidx2.2.i, align 8, !dbg !244
  %32 = load ptr, ptr %filters, align 8, !dbg !245
  %options5.2.i = getelementptr inbounds i8, ptr %32, i64 40, !dbg !246
  store ptr null, ptr %options5.2.i, align 8, !dbg !247
    #dbg_value(i64 3, !232, !DIExpression(), !237)
  %33 = load ptr, ptr %filters, align 8, !dbg !238
  %options.3.i = getelementptr inbounds i8, ptr %33, i64 56, !dbg !241
  %34 = load ptr, ptr %options.3.i, align 8, !dbg !241
  call void @lzma_free(ptr noundef %34, ptr noundef %allocator) #3, !dbg !242
  %35 = load ptr, ptr %filters, align 8, !dbg !243
  %arrayidx2.3.i = getelementptr inbounds i8, ptr %35, i64 48, !dbg !248
  store i64 -1, ptr %arrayidx2.3.i, align 8, !dbg !244
  %36 = load ptr, ptr %filters, align 8, !dbg !245
  %options5.3.i = getelementptr inbounds i8, ptr %36, i64 56, !dbg !246
  store ptr null, ptr %options5.3.i, align 8, !dbg !247
    #dbg_value(i64 4, !232, !DIExpression(), !237)
  br label %cleanup92

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %inc84144 = phi i64 [ %in_pos.promoted, %while.cond.preheader ], [ %inc84, %while.body ]
  %cmp82 = icmp ult i64 %inc84144, %conv9, !dbg !249
  br i1 %cmp82, label %while.body, label %cleanup92, !dbg !218

while.body:                                       ; preds = %while.cond
  %inc84 = add nuw nsw i64 %inc84144, 1, !dbg !250
  store i64 %inc84, ptr %in_pos, align 8, !dbg !250, !DIAssignID !253
    #dbg_assign(i64 %inc84, !128, !DIExpression(), !253, ptr %in_pos, !DIExpression(), !144)
  %arrayidx85 = getelementptr inbounds i8, ptr %in, i64 %inc84144, !dbg !254
  %37 = load i8, ptr %arrayidx85, align 1, !dbg !254
  %cmp87.not = icmp eq i8 %37, 0, !dbg !255
  br i1 %cmp87.not, label %while.cond, label %if.then89, !dbg !256, !llvm.loop !257

if.then89:                                        ; preds = %while.body
  call fastcc void @free_properties(ptr noundef nonnull %block, ptr noundef %allocator), !dbg !259
  br label %cleanup92, !dbg !261

cleanup92:                                        ; preds = %while.cond, %cleanup79.thread, %if.then89, %do.end, %do.body, %do.body41
  %retval.8 = phi i32 [ %call43, %do.body41 ], [ %call24, %do.body ], [ 9, %do.end ], [ 8, %if.then89 ], [ %call69, %cleanup79.thread ], [ 0, %while.cond ], !dbg !144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_pos) #3, !dbg !262
  br label %return

return:                                           ; preds = %cleanup92, %if.end, %if.end14, %entry, %lor.lhs.false
  %retval.10 = phi i32 [ 11, %lor.lhs.false ], [ 11, %entry ], [ %retval.8, %cleanup92 ], [ 9, %if.end ], [ 8, %if.end14 ], !dbg !144
  ret i32 %retval.10, !dbg !262
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !263 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !266 i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !271 i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

declare !dbg !276 i32 @lzma_filter_flags_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @free_properties(ptr nocapture noundef readonly %block, ptr noundef %allocator) unnamed_addr #0 !dbg !227 {
entry:
    #dbg_value(ptr %block, !226, !DIExpression(), !279)
    #dbg_value(ptr %allocator, !231, !DIExpression(), !279)
    #dbg_value(i64 0, !232, !DIExpression(), !280)
  %filters = getelementptr inbounds i8, ptr %block, i64 32
    #dbg_value(i64 0, !232, !DIExpression(), !280)
    #dbg_value(i64 0, !232, !DIExpression(), !280)
  %0 = load ptr, ptr %filters, align 8, !dbg !281
  %options = getelementptr inbounds i8, ptr %0, i64 8, !dbg !282
  %1 = load ptr, ptr %options, align 8, !dbg !282
  tail call void @lzma_free(ptr noundef %1, ptr noundef %allocator) #3, !dbg !283
  %2 = load ptr, ptr %filters, align 8, !dbg !284
  store i64 -1, ptr %2, align 8, !dbg !285
  %3 = load ptr, ptr %filters, align 8, !dbg !286
  %options5 = getelementptr inbounds i8, ptr %3, i64 8, !dbg !287
  store ptr null, ptr %options5, align 8, !dbg !288
    #dbg_value(i64 1, !232, !DIExpression(), !280)
  %4 = load ptr, ptr %filters, align 8, !dbg !281
  %options.1 = getelementptr inbounds i8, ptr %4, i64 24, !dbg !282
  %5 = load ptr, ptr %options.1, align 8, !dbg !282
  tail call void @lzma_free(ptr noundef %5, ptr noundef %allocator) #3, !dbg !283
  %6 = load ptr, ptr %filters, align 8, !dbg !284
  %arrayidx2.1 = getelementptr inbounds i8, ptr %6, i64 16, !dbg !289
  store i64 -1, ptr %arrayidx2.1, align 8, !dbg !285
  %7 = load ptr, ptr %filters, align 8, !dbg !286
  %options5.1 = getelementptr inbounds i8, ptr %7, i64 24, !dbg !287
  store ptr null, ptr %options5.1, align 8, !dbg !288
    #dbg_value(i64 2, !232, !DIExpression(), !280)
  %8 = load ptr, ptr %filters, align 8, !dbg !281
  %options.2 = getelementptr inbounds i8, ptr %8, i64 40, !dbg !282
  %9 = load ptr, ptr %options.2, align 8, !dbg !282
  tail call void @lzma_free(ptr noundef %9, ptr noundef %allocator) #3, !dbg !283
  %10 = load ptr, ptr %filters, align 8, !dbg !284
  %arrayidx2.2 = getelementptr inbounds i8, ptr %10, i64 32, !dbg !289
  store i64 -1, ptr %arrayidx2.2, align 8, !dbg !285
  %11 = load ptr, ptr %filters, align 8, !dbg !286
  %options5.2 = getelementptr inbounds i8, ptr %11, i64 40, !dbg !287
  store ptr null, ptr %options5.2, align 8, !dbg !288
    #dbg_value(i64 3, !232, !DIExpression(), !280)
  %12 = load ptr, ptr %filters, align 8, !dbg !281
  %options.3 = getelementptr inbounds i8, ptr %12, i64 56, !dbg !282
  %13 = load ptr, ptr %options.3, align 8, !dbg !282
  tail call void @lzma_free(ptr noundef %13, ptr noundef %allocator) #3, !dbg !283
  %14 = load ptr, ptr %filters, align 8, !dbg !284
  %arrayidx2.3 = getelementptr inbounds i8, ptr %14, i64 48, !dbg !289
  store i64 -1, ptr %arrayidx2.3, align 8, !dbg !285
  %15 = load ptr, ptr %filters, align 8, !dbg !286
  %options5.3 = getelementptr inbounds i8, ptr %15, i64 56, !dbg !287
  store ptr null, ptr %options5.3, align 8, !dbg !288
    #dbg_value(i64 4, !232, !DIExpression(), !280)
  ret void, !dbg !290
}

declare !dbg !291 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/block_header_decoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "fd5977cc73b0a776afe5331d178f422f")
!2 = !{!3, !19, !26}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 57, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "LZMA_OK", value: 0)
!8 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!9 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!10 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!11 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!12 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!13 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!14 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!15 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!16 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!17 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!18 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 27, baseType: !5, size: 32, elements: !21)
!20 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!23 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!24 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!25 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !27)
!27 = !{!28}
!28 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!29 = !{!30, !31, !5}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 26, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !34, line: 42, baseType: !5)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!35 = !{i32 7, !"Dwarf Version", i32 5}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = !{i32 8, !"PIC Level", i32 2}
!39 = !{i32 7, !"PIE Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 2}
!41 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!42 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!43 = distinct !DISubprogram(name: "lzma_block_header_decode", scope: !1, file: !1, line: 34, type: !44, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !47, !103, !118}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !49, line: 245, baseType: !50)
!49 = !DIFile(filename: "liblzma/api/lzma/block.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 30, size: 1664, elements: !51)
!51 = !{!52, !53, !54, !56, !62, !63, !71, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !100, !101, !102}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !50, file: !49, line: 47, baseType: !31, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !50, file: !49, line: 67, baseType: !31, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !50, file: !49, line: 88, baseType: !55, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !50, file: !49, line: 143, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !58, line: 63, baseType: !59)
!58 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !32, line: 27, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !34, line: 45, baseType: !61)
!61 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !50, file: !49, line: 167, baseType: !57, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !50, file: !49, line: 195, baseType: !64, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !66, line: 65, baseType: !67)
!66 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 43, size: 128, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !67, file: !66, line: 54, baseType: !57, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !67, file: !66, line: 63, baseType: !30, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !50, file: !49, line: 212, baseType: !72, size: 512, offset: 320)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 512, elements: !76)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !32, line: 24, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !34, line: 38, baseType: !75)
!75 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !{!77}
!77 = !DISubrange(count: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !50, file: !49, line: 221, baseType: !30, size: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !50, file: !49, line: 222, baseType: !30, size: 64, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !50, file: !49, line: 223, baseType: !30, size: 64, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !50, file: !49, line: 224, baseType: !31, size: 32, offset: 1024)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !50, file: !49, line: 225, baseType: !31, size: 32, offset: 1056)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !50, file: !49, line: 226, baseType: !57, size: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !50, file: !49, line: 227, baseType: !57, size: 64, offset: 1152)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !50, file: !49, line: 228, baseType: !57, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !50, file: !49, line: 229, baseType: !57, size: 64, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !50, file: !49, line: 230, baseType: !57, size: 64, offset: 1344)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !50, file: !49, line: 231, baseType: !57, size: 64, offset: 1408)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !50, file: !49, line: 232, baseType: !90, size: 32, offset: 1472)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !50, file: !49, line: 233, baseType: !90, size: 32, offset: 1504)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !50, file: !49, line: 234, baseType: !90, size: 32, offset: 1536)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !50, file: !49, line: 235, baseType: !90, size: 32, offset: 1568)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !50, file: !49, line: 236, baseType: !95, size: 8, offset: 1600)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !75)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !50, file: !49, line: 237, baseType: !95, size: 8, offset: 1608)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !50, file: !49, line: 238, baseType: !95, size: 8, offset: 1616)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !50, file: !49, line: 239, baseType: !95, size: 8, offset: 1624)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !50, file: !49, line: 240, baseType: !95, size: 8, offset: 1632)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !50, file: !49, line: 241, baseType: !95, size: 8, offset: 1640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !50, file: !49, line: 242, baseType: !95, size: 8, offset: 1648)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !50, file: !49, line: 243, baseType: !95, size: 8, offset: 1656)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !106)
!106 = !{!107, !113, !117}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !105, file: !4, line: 376, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!30, !30, !111, !111}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 18, baseType: !61)
!112 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!113 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !105, file: !4, line: 390, baseType: !114, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !30, !30}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !105, file: !4, line: 401, baseType: !30, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!120 = !{!121, !122, !123, !124, !126, !128, !129, !134, !137, !138, !140}
!121 = !DILocalVariable(name: "block", arg: 1, scope: !43, file: !1, line: 34, type: !47)
!122 = !DILocalVariable(name: "allocator", arg: 2, scope: !43, file: !1, line: 35, type: !103)
!123 = !DILocalVariable(name: "in", arg: 3, scope: !43, file: !1, line: 35, type: !118)
!124 = !DILocalVariable(name: "i", scope: !125, file: !1, line: 44, type: !111)
!125 = distinct !DILexicalBlock(scope: !43, file: !1, line: 44, column: 2)
!126 = !DILocalVariable(name: "in_size", scope: !43, file: !1, line: 59, type: !127)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!128 = !DILocalVariable(name: "in_pos", scope: !43, file: !1, line: 70, type: !111)
!129 = !DILocalVariable(name: "ret_", scope: !130, file: !1, line: 74, type: !133)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 74, column: 3)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 73, column: 20)
!132 = distinct !DILexicalBlock(scope: !43, file: !1, line: 73, column: 6)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!134 = !DILocalVariable(name: "ret_", scope: !135, file: !1, line: 87, type: !133)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 87, column: 3)
!136 = distinct !DILexicalBlock(scope: !43, file: !1, line: 86, column: 6)
!137 = !DILocalVariable(name: "filter_count", scope: !43, file: !1, line: 93, type: !127)
!138 = !DILocalVariable(name: "i", scope: !139, file: !1, line: 94, type: !111)
!139 = distinct !DILexicalBlock(scope: !43, file: !1, line: 94, column: 2)
!140 = !DILocalVariable(name: "ret", scope: !141, file: !1, line: 95, type: !133)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 94, column: 44)
!142 = distinct !DILexicalBlock(scope: !139, file: !1, line: 94, column: 2)
!143 = distinct !DIAssignID()
!144 = !DILocation(line: 0, scope: !43)
!145 = !DILocation(line: 0, scope: !125)
!146 = !DILocation(line: 45, column: 10, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 44, column: 49)
!148 = distinct !DILexicalBlock(scope: !125, file: !1, line: 44, column: 2)
!149 = !DILocation(line: 45, column: 24, scope: !147)
!150 = !DILocation(line: 46, column: 10, scope: !147)
!151 = !DILocation(line: 46, column: 21, scope: !147)
!152 = !DILocation(line: 46, column: 29, scope: !147)
!153 = !DILocation(line: 45, column: 3, scope: !147)
!154 = !DILocation(line: 50, column: 17, scope: !43)
!155 = !DILocation(line: 54, column: 6, scope: !156)
!156 = distinct !DILexicalBlock(scope: !43, file: !1, line: 54, column: 6)
!157 = !DILocation(line: 54, column: 53, scope: !156)
!158 = !DILocation(line: 54, column: 43, scope: !156)
!159 = !DILocation(line: 55, column: 4, scope: !156)
!160 = !DILocation(line: 55, column: 29, scope: !156)
!161 = !DILocation(line: 55, column: 36, scope: !156)
!162 = !DILocation(line: 54, column: 6, scope: !43)
!163 = !DILocation(line: 59, column: 25, scope: !43)
!164 = !DILocation(line: 62, column: 6, scope: !165)
!165 = distinct !DILexicalBlock(scope: !43, file: !1, line: 62, column: 6)
!166 = !DILocation(line: 62, column: 58, scope: !165)
!167 = !DILocalVariable(name: "buf", arg: 1, scope: !168, file: !169, line: 311, type: !118)
!168 = distinct !DISubprogram(name: "unaligned_read32le", scope: !169, file: !169, line: 311, type: !170, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !172)
!169 = !DIFile(filename: "common/tuklib_integer.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!170 = !DISubroutineType(types: !171)
!171 = !{!31, !118}
!172 = !{!167, !173}
!173 = !DILocalVariable(name: "num", scope: !168, file: !169, line: 313, type: !31)
!174 = !DILocation(line: 0, scope: !168, inlinedAt: !175)
!175 = distinct !DILocation(line: 62, column: 36, scope: !165)
!176 = !DILocation(line: 313, column: 27, scope: !168, inlinedAt: !175)
!177 = !DILocation(line: 62, column: 33, scope: !165)
!178 = !DILocation(line: 62, column: 6, scope: !43)
!179 = !DILocation(line: 66, column: 6, scope: !180)
!180 = distinct !DILexicalBlock(scope: !43, file: !1, line: 66, column: 6)
!181 = !DILocation(line: 66, column: 12, scope: !180)
!182 = !DILocation(line: 66, column: 6, scope: !43)
!183 = !DILocation(line: 70, column: 2, scope: !43)
!184 = !DILocation(line: 70, column: 9, scope: !43)
!185 = distinct !DIAssignID()
!186 = !DILocation(line: 73, column: 12, scope: !132)
!187 = !DILocation(line: 0, scope: !132)
!188 = !DILocation(line: 73, column: 6, scope: !43)
!189 = !DILocation(line: 74, column: 3, scope: !130)
!190 = !DILocation(line: 0, scope: !130)
!191 = !DILocation(line: 74, column: 3, scope: !192)
!192 = distinct !DILexicalBlock(scope: !130, file: !1, line: 74, column: 3)
!193 = !DILocation(line: 79, column: 7, scope: !194)
!194 = distinct !DILexicalBlock(scope: !131, file: !1, line: 79, column: 7)
!195 = !DILocation(line: 79, column: 39, scope: !194)
!196 = !DILocation(line: 79, column: 7, scope: !131)
!197 = !DILocation(line: 82, column: 26, scope: !198)
!198 = distinct !DILexicalBlock(scope: !132, file: !1, line: 81, column: 9)
!199 = !DILocation(line: 86, column: 6, scope: !136)
!200 = !DILocation(line: 86, column: 12, scope: !136)
!201 = !DILocation(line: 0, scope: !136)
!202 = !DILocation(line: 86, column: 6, scope: !43)
!203 = !DILocation(line: 87, column: 3, scope: !135)
!204 = !DILocation(line: 0, scope: !135)
!205 = !DILocation(line: 87, column: 3, scope: !206)
!206 = distinct !DILexicalBlock(scope: !135, file: !1, line: 87, column: 3)
!207 = !DILocation(line: 90, column: 28, scope: !136)
!208 = !DILocation(line: 93, column: 31, scope: !43)
!209 = !DILocation(line: 93, column: 37, scope: !43)
!210 = !DILocation(line: 93, column: 42, scope: !43)
!211 = !DILocation(line: 93, column: 30, scope: !43)
!212 = !DILocation(line: 0, scope: !139)
!213 = !DILocation(line: 94, column: 2, scope: !139)
!214 = !DILocation(line: 94, column: 39, scope: !142)
!215 = !DILocation(line: 94, column: 23, scope: !142)
!216 = distinct !{!216, !213, !217}
!217 = !DILocation(line: 102, column: 2, scope: !139)
!218 = !DILocation(line: 105, column: 2, scope: !43)
!219 = !DILocation(line: 96, column: 13, scope: !141)
!220 = !DILocation(line: 96, column: 6, scope: !141)
!221 = !DILocation(line: 95, column: 24, scope: !141)
!222 = !DILocation(line: 0, scope: !141)
!223 = !DILocation(line: 98, column: 11, scope: !224)
!224 = distinct !DILexicalBlock(scope: !141, file: !1, line: 98, column: 7)
!225 = !DILocation(line: 98, column: 7, scope: !141)
!226 = !DILocalVariable(name: "block", arg: 1, scope: !227, file: !1, line: 18, type: !47)
!227 = distinct !DISubprogram(name: "free_properties", scope: !1, file: !1, line: 18, type: !228, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !47, !103}
!230 = !{!226, !231, !232}
!231 = !DILocalVariable(name: "allocator", arg: 2, scope: !227, file: !1, line: 18, type: !103)
!232 = !DILocalVariable(name: "i", scope: !233, file: !1, line: 23, type: !111)
!233 = distinct !DILexicalBlock(scope: !227, file: !1, line: 23, column: 2)
!234 = !DILocation(line: 0, scope: !227, inlinedAt: !235)
!235 = distinct !DILocation(line: 99, column: 4, scope: !236)
!236 = distinct !DILexicalBlock(scope: !224, file: !1, line: 98, column: 23)
!237 = !DILocation(line: 0, scope: !233, inlinedAt: !235)
!238 = !DILocation(line: 24, column: 20, scope: !239, inlinedAt: !235)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 23, column: 48)
!240 = distinct !DILexicalBlock(scope: !233, file: !1, line: 23, column: 2)
!241 = !DILocation(line: 24, column: 31, scope: !239, inlinedAt: !235)
!242 = !DILocation(line: 24, column: 3, scope: !239, inlinedAt: !235)
!243 = !DILocation(line: 25, column: 10, scope: !239, inlinedAt: !235)
!244 = !DILocation(line: 25, column: 24, scope: !239, inlinedAt: !235)
!245 = !DILocation(line: 26, column: 10, scope: !239, inlinedAt: !235)
!246 = !DILocation(line: 26, column: 21, scope: !239, inlinedAt: !235)
!247 = !DILocation(line: 26, column: 29, scope: !239, inlinedAt: !235)
!248 = !DILocation(line: 25, column: 3, scope: !239, inlinedAt: !235)
!249 = !DILocation(line: 105, column: 16, scope: !43)
!250 = !DILocation(line: 106, column: 16, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 106, column: 7)
!252 = distinct !DILexicalBlock(scope: !43, file: !1, line: 105, column: 27)
!253 = distinct !DIAssignID()
!254 = !DILocation(line: 106, column: 7, scope: !251)
!255 = !DILocation(line: 106, column: 20, scope: !251)
!256 = !DILocation(line: 106, column: 7, scope: !252)
!257 = distinct !{!257, !218, !258}
!258 = !DILocation(line: 113, column: 2, scope: !43)
!259 = !DILocation(line: 107, column: 4, scope: !260)
!260 = distinct !DILexicalBlock(scope: !251, file: !1, line: 106, column: 29)
!261 = !DILocation(line: 111, column: 4, scope: !260)
!262 = !DILocation(line: 116, column: 1, scope: !43)
!263 = !DISubprogram(name: "lzma_crc32", scope: !20, file: !20, line: 119, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubroutineType(types: !265)
!265 = !{!31, !118, !111, !31}
!266 = !DISubprogram(name: "lzma_vli_decode", scope: !58, file: !58, line: 154, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubroutineType(types: !268)
!268 = !{!46, !269, !270, !118, !270, !111}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!271 = !DISubprogram(name: "lzma_block_unpadded_size", scope: !49, file: !49, line: 391, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!272 = !DISubroutineType(types: !273)
!273 = !{!57, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!276 = !DISubprogram(name: "lzma_filter_flags_decode", scope: !66, file: !66, line: 421, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubroutineType(types: !278)
!278 = !{!46, !64, !103, !118, !270, !111}
!279 = !DILocation(line: 0, scope: !227)
!280 = !DILocation(line: 0, scope: !233)
!281 = !DILocation(line: 24, column: 20, scope: !239)
!282 = !DILocation(line: 24, column: 31, scope: !239)
!283 = !DILocation(line: 24, column: 3, scope: !239)
!284 = !DILocation(line: 25, column: 10, scope: !239)
!285 = !DILocation(line: 25, column: 24, scope: !239)
!286 = !DILocation(line: 26, column: 10, scope: !239)
!287 = !DILocation(line: 26, column: 21, scope: !239)
!288 = !DILocation(line: 26, column: 29, scope: !239)
!289 = !DILocation(line: 25, column: 3, scope: !239)
!290 = !DILocation(line: 29, column: 2, scope: !227)
!291 = !DISubprogram(name: "lzma_free", scope: !292, file: !292, line: 215, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!293 = !DISubroutineType(types: !294)
!294 = !{null, !30, !103}
