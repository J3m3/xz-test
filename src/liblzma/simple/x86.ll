; ModuleID = 'liblzma/simple/x86.c'
source_filename = "liblzma/simple/x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x86_code.MASK_TO_ALLOWED_STATUS = internal unnamed_addr constant [8 x i8] c"\01\01\01\00\01\00\00\00", align 1, !dbg !0
@x86_code.MASK_TO_BIT_NUMBER = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3], align 16, !dbg !147

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_x86_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !187 {
entry:
    #dbg_value(ptr %next, !202, !DIExpression(), !205)
    #dbg_value(ptr %allocator, !203, !DIExpression(), !205)
    #dbg_value(ptr %filters, !204, !DIExpression(), !205)
    #dbg_value(ptr %next, !206, !DIExpression(), !216)
    #dbg_value(ptr %allocator, !211, !DIExpression(), !216)
    #dbg_value(ptr %filters, !212, !DIExpression(), !216)
    #dbg_value(i1 true, !213, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !216)
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @x86_code, i64 noundef 8, i64 noundef 5, i32 noundef 1, i1 noundef zeroext true) #4, !dbg !218
    #dbg_value(i32 %call.i, !214, !DIExpression(), !216)
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !219
  br i1 %cmp.i, label %if.then.i, label %x86_coder_init.exit, !dbg !221

if.then.i:                                        ; preds = %entry
  %0 = load ptr, ptr %next, align 8, !dbg !222
  %simple.i = getelementptr inbounds i8, ptr %0, i64 80, !dbg !224
  %1 = load ptr, ptr %simple.i, align 8, !dbg !224
  store i32 0, ptr %1, align 4, !dbg !225
  %2 = load ptr, ptr %next, align 8, !dbg !226
  %simple2.i = getelementptr inbounds i8, ptr %2, i64 80, !dbg !227
  %3 = load ptr, ptr %simple2.i, align 8, !dbg !227
  %prev_pos.i = getelementptr inbounds i8, ptr %3, i64 4, !dbg !228
  store i32 -5, ptr %prev_pos.i, align 4, !dbg !229
  br label %x86_coder_init.exit, !dbg !230

x86_coder_init.exit:                              ; preds = %entry, %if.then.i
  ret i32 %call.i, !dbg !231
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_x86_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !232 {
entry:
    #dbg_value(ptr %next, !234, !DIExpression(), !237)
    #dbg_value(ptr %allocator, !235, !DIExpression(), !237)
    #dbg_value(ptr %filters, !236, !DIExpression(), !237)
    #dbg_value(ptr %next, !206, !DIExpression(), !238)
    #dbg_value(ptr %allocator, !211, !DIExpression(), !238)
    #dbg_value(ptr %filters, !212, !DIExpression(), !238)
    #dbg_value(i1 false, !213, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !238)
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @x86_code, i64 noundef 8, i64 noundef 5, i32 noundef 1, i1 noundef zeroext false) #4, !dbg !240
    #dbg_value(i32 %call.i, !214, !DIExpression(), !238)
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !241
  br i1 %cmp.i, label %if.then.i, label %x86_coder_init.exit, !dbg !242

if.then.i:                                        ; preds = %entry
  %0 = load ptr, ptr %next, align 8, !dbg !243
  %simple.i = getelementptr inbounds i8, ptr %0, i64 80, !dbg !244
  %1 = load ptr, ptr %simple.i, align 8, !dbg !244
  store i32 0, ptr %1, align 4, !dbg !245
  %2 = load ptr, ptr %next, align 8, !dbg !246
  %simple2.i = getelementptr inbounds i8, ptr %2, i64 80, !dbg !247
  %3 = load ptr, ptr %simple2.i, align 8, !dbg !247
  %prev_pos.i = getelementptr inbounds i8, ptr %3, i64 4, !dbg !248
  store i32 -5, ptr %prev_pos.i, align 4, !dbg !249
  br label %x86_coder_init.exit, !dbg !250

x86_coder_init.exit:                              ; preds = %entry, %if.then.i
  ret i32 %call.i, !dbg !251
}

declare !dbg !252 i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @x86_code(ptr nocapture noundef %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 !dbg !2 {
entry:
    #dbg_value(ptr %simple, !154, !DIExpression(), !255)
    #dbg_value(i32 %now_pos, !155, !DIExpression(), !255)
    #dbg_value(i1 %is_encoder, !156, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !255)
    #dbg_value(ptr %buffer, !157, !DIExpression(), !255)
    #dbg_value(i64 %size, !158, !DIExpression(), !255)
    #dbg_value(i32 poison, !159, !DIExpression(), !255)
  %prev_pos2 = getelementptr inbounds i8, ptr %simple, i64 4, !dbg !256
    #dbg_value(i32 poison, !160, !DIExpression(), !255)
  %cmp = icmp ult i64 %size, 5, !dbg !257
  br i1 %cmp, label %cleanup137, label %if.end, !dbg !259

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %simple, align 4, !dbg !260
    #dbg_value(i32 %0, !159, !DIExpression(), !255)
  %1 = load i32, ptr %prev_pos2, align 4, !dbg !256
    #dbg_value(i32 %1, !160, !DIExpression(), !255)
  %sub = sub i32 %now_pos, %1, !dbg !261
  %cmp3 = icmp ugt i32 %sub, 5, !dbg !263
  %sub5 = add i32 %now_pos, -5
  %spec.select = select i1 %cmp3, i32 %sub5, i32 %1, !dbg !264
    #dbg_value(i32 %spec.select, !160, !DIExpression(), !255)
  %sub7 = add i64 %size, -5, !dbg !265
    #dbg_value(i64 %sub7, !161, !DIExpression(), !255)
    #dbg_value(i64 0, !163, !DIExpression(), !255)
    #dbg_value(i32 %0, !159, !DIExpression(), !255)
    #dbg_value(i32 %spec.select, !160, !DIExpression(), !255)
  br label %while.body, !dbg !266

while.body:                                       ; preds = %if.end, %cleanup129
  %prev_mask.0218 = phi i32 [ %0, %if.end ], [ %prev_mask.4, %cleanup129 ]
  %buffer_pos.0217 = phi i64 [ 0, %if.end ], [ %buffer_pos.2, %cleanup129 ]
  %prev_pos.1216 = phi i32 [ %spec.select, %if.end ], [ %prev_pos.2, %cleanup129 ]
    #dbg_value(i32 %prev_mask.0218, !159, !DIExpression(), !255)
    #dbg_value(i64 %buffer_pos.0217, !163, !DIExpression(), !255)
    #dbg_value(i32 %prev_pos.1216, !160, !DIExpression(), !255)
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %buffer_pos.0217, !dbg !267
  %2 = load i8, ptr %arrayidx, align 1, !dbg !267
    #dbg_value(i8 %2, !164, !DIExpression(), !268)
  %3 = add i8 %2, 22, !dbg !269
  %or.cond = icmp ult i8 %3, -2, !dbg !269
  br i1 %or.cond, label %if.then14, label %if.end15, !dbg !269

if.then14:                                        ; preds = %while.body
  %inc = add nuw i64 %buffer_pos.0217, 1, !dbg !271
    #dbg_value(i64 %inc, !163, !DIExpression(), !255)
  br label %cleanup129, !dbg !273, !llvm.loop !274

if.end15:                                         ; preds = %while.body
  %conv16 = trunc i64 %buffer_pos.0217 to i32, !dbg !276
  %add = add i32 %conv16, %now_pos, !dbg !277
  %sub17 = sub i32 %add, %prev_pos.1216, !dbg !278
    #dbg_value(i32 %sub17, !166, !DIExpression(), !268)
    #dbg_value(i32 %add, !160, !DIExpression(), !255)
  %cmp20 = icmp ugt i32 %sub17, 5, !dbg !279
  br i1 %cmp20, label %if.end26, label %for.cond.preheader, !dbg !280

for.cond.preheader:                               ; preds = %if.end15
    #dbg_value(i32 0, !167, !DIExpression(), !281)
    #dbg_value(i32 %prev_mask.0218, !159, !DIExpression(), !255)
  %cmp23208.not = icmp eq i32 %add, %prev_pos.1216, !dbg !282
  br i1 %cmp23208.not, label %if.end26, label %for.body.preheader, !dbg !284

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = tail call i32 @llvm.umax.i32(i32 %sub17, i32 1), !dbg !284
  br label %for.body.epil, !dbg !284

for.body.epil:                                    ; preds = %for.body.epil, %for.body.preheader
  %prev_mask.1209.epil = phi i32 [ %shl.epil, %for.body.epil ], [ %prev_mask.0218, %for.body.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %for.body.epil ], [ 0, %for.body.preheader ]
    #dbg_value(i32 poison, !167, !DIExpression(), !281)
    #dbg_value(i32 %prev_mask.1209.epil, !159, !DIExpression(DW_OP_constu, 119, DW_OP_and, DW_OP_stack_value), !255)
  %and.epil = shl i32 %prev_mask.1209.epil, 1, !dbg !285
  %shl.epil = and i32 %and.epil, 238, !dbg !285
    #dbg_value(i32 %shl.epil, !159, !DIExpression(), !255)
    #dbg_value(i32 poison, !167, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !281)
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !284
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %umax, !dbg !284
  br i1 %epil.iter.cmp.not, label %if.end26, label %for.body.epil, !dbg !284, !llvm.loop !287

if.end26:                                         ; preds = %for.body.epil, %for.cond.preheader, %if.end15
  %prev_mask.2 = phi i32 [ 0, %if.end15 ], [ %prev_mask.0218, %for.cond.preheader ], [ %shl.epil, %for.body.epil ], !dbg !255
    #dbg_value(i32 %prev_mask.2, !159, !DIExpression(), !255)
  %arrayidx28 = getelementptr i8, ptr %arrayidx, i64 4, !dbg !289
  %4 = load i8, ptr %arrayidx28, align 1, !dbg !289
    #dbg_value(i8 %4, !164, !DIExpression(), !268)
  %conv29 = zext i8 %4 to i32, !dbg !290
  %5 = add i8 %4, 1, !dbg !290
  %or.cond139 = icmp ult i8 %5, 2, !dbg !290
  br i1 %or.cond139, label %land.lhs.true35, label %if.else115, !dbg !290

land.lhs.true35:                                  ; preds = %if.end26
  %shr = lshr i32 %prev_mask.2, 1, !dbg !291
  %and36 = and i32 %shr, 7, !dbg !292
  %idxprom = zext nneg i32 %and36 to i64, !dbg !293
  %arrayidx37 = getelementptr inbounds [8 x i8], ptr @x86_code.MASK_TO_ALLOWED_STATUS, i64 0, i64 %idxprom, !dbg !293
  %6 = load i8, ptr %arrayidx37, align 1, !dbg !293, !range !294, !noundef !295
  %loadedv = trunc nuw i8 %6 to i1, !dbg !293
  %cmp41 = icmp ult i32 %prev_mask.2, 32
  %or.cond203 = select i1 %loadedv, i1 %cmp41, i1 false, !dbg !296
  br i1 %or.cond203, label %if.then43, label %if.else115, !dbg !296

if.then43:                                        ; preds = %land.lhs.true35
  %shl45 = shl nuw i32 %conv29, 24, !dbg !297
  %arrayidx47 = getelementptr i8, ptr %arrayidx, i64 3, !dbg !298
  %7 = load i8, ptr %arrayidx47, align 1, !dbg !298
  %conv48 = zext i8 %7 to i32, !dbg !299
  %shl49 = shl nuw nsw i32 %conv48, 16, !dbg !300
  %or = or disjoint i32 %shl49, %shl45, !dbg !301
  %arrayidx51 = getelementptr i8, ptr %arrayidx, i64 2, !dbg !302
  %8 = load i8, ptr %arrayidx51, align 1, !dbg !302
  %conv52 = zext i8 %8 to i32, !dbg !303
  %shl53 = shl nuw nsw i32 %conv52, 8, !dbg !304
  %or54 = or disjoint i32 %or, %shl53, !dbg !305
  %arrayidx56 = getelementptr i8, ptr %arrayidx, i64 1, !dbg !306
  %9 = load i8, ptr %arrayidx56, align 1, !dbg !306
  %conv57 = zext i8 %9 to i32, !dbg !307
  %or58 = or disjoint i32 %or54, %conv57, !dbg !308
    #dbg_value(i32 %or58, !171, !DIExpression(), !309)
  %add65 = add i32 %add, 5
  %10 = sub i32 -5, %add
  %dest.0.p = select i1 %is_encoder, i32 %add65, i32 %10
  %cmp73 = icmp eq i32 %prev_mask.2, 0
  %dest.0211 = add i32 %or58, %dest.0.p, !dbg !310
  br i1 %cmp73, label %while.end, label %if.end76.lr.ph, !dbg !311

if.end76.lr.ph:                                   ; preds = %if.then43
  %idxprom79 = zext nneg i32 %shr to i64
  %arrayidx80 = getelementptr inbounds [8 x i32], ptr @x86_code.MASK_TO_BIT_NUMBER, i64 0, i64 %idxprom79
  %11 = load i32, ptr %arrayidx80, align 4
  %mul = shl i32 %11, 3
  %sub81 = sub i32 24, %mul
  %sub94 = sub i32 32, %mul
  %notmask = shl nsw i32 -1, %sub94
  br label %if.end76, !dbg !311

if.end76:                                         ; preds = %cleanup, %if.end76.lr.ph
  %dest.0212 = phi i32 [ %dest.0211, %if.end76.lr.ph ], [ %dest.0, %cleanup ]
    #dbg_value(i32 %11, !175, !DIExpression(), !312)
  %shr82 = lshr i32 %dest.0212, %sub81, !dbg !313
    #dbg_value(i32 %shr82, !164, !DIExpression(), !268)
  %trunc = trunc i32 %shr82 to i8, !dbg !314
  switch i8 %trunc, label %while.end [
    i8 -1, label %cleanup
    i8 0, label %cleanup
  ], !dbg !314

cleanup:                                          ; preds = %if.end76, %if.end76
  %12 = xor i32 %dest.0212, %notmask, !dbg !316
  %xor = xor i32 %12, -1, !dbg !316
    #dbg_value(i32 %xor, !171, !DIExpression(), !309)
  %dest.0 = add i32 %dest.0.p, %xor, !dbg !310
    #dbg_value(i32 %dest.0, !174, !DIExpression(), !309)
  br label %if.end76, !dbg !311

while.end:                                        ; preds = %if.end76, %if.then43
  %dest.0.lcssa = phi i32 [ %dest.0211, %if.then43 ], [ %dest.0212, %if.end76 ], !dbg !310
  %13 = shl i32 %dest.0.lcssa, 7, !dbg !317
  %14 = ashr i32 %13, 31, !dbg !317
  %conv100 = trunc nsw i32 %14 to i8, !dbg !318
  store i8 %conv100, ptr %arrayidx28, align 1, !dbg !319
  %shr103 = lshr i32 %dest.0.lcssa, 16, !dbg !320
  %conv104 = trunc i32 %shr103 to i8, !dbg !321
  store i8 %conv104, ptr %arrayidx47, align 1, !dbg !322
  %shr107 = lshr i32 %dest.0.lcssa, 8, !dbg !323
  %conv108 = trunc i32 %shr107 to i8, !dbg !324
  store i8 %conv108, ptr %arrayidx51, align 1, !dbg !325
  %conv111 = trunc i32 %dest.0.lcssa to i8, !dbg !326
  store i8 %conv111, ptr %arrayidx56, align 1, !dbg !327
  %add114 = add nuw i64 %buffer_pos.0217, 5, !dbg !328
    #dbg_value(i64 %add114, !163, !DIExpression(), !255)
    #dbg_value(i32 0, !159, !DIExpression(), !255)
  br label %cleanup129, !dbg !329

if.else115:                                       ; preds = %if.end26, %land.lhs.true35
  %spec.select204.v = phi i32 [ 1, %if.end26 ], [ 17, %land.lhs.true35 ], !dbg !330
  %inc116 = add nuw i64 %buffer_pos.0217, 1, !dbg !330
    #dbg_value(i64 %inc116, !163, !DIExpression(), !255)
    #dbg_value(i32 %prev_mask.2, !159, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !255)
  %spec.select204 = or i32 %spec.select204.v, %prev_mask.2, !dbg !332
  br label %cleanup129, !dbg !332

cleanup129:                                       ; preds = %if.else115, %while.end, %if.then14
  %prev_pos.2 = phi i32 [ %prev_pos.1216, %if.then14 ], [ %add, %if.else115 ], [ %add, %while.end ], !dbg !255
  %buffer_pos.2 = phi i64 [ %inc, %if.then14 ], [ %inc116, %if.else115 ], [ %add114, %while.end ], !dbg !268
  %prev_mask.4 = phi i32 [ %prev_mask.0218, %if.then14 ], [ %spec.select204, %if.else115 ], [ 0, %while.end ], !dbg !255
    #dbg_value(i32 %prev_mask.4, !159, !DIExpression(), !255)
    #dbg_value(i64 %buffer_pos.2, !163, !DIExpression(), !255)
    #dbg_value(i32 %prev_pos.2, !160, !DIExpression(), !255)
  %cmp8.not = icmp ugt i64 %buffer_pos.2, %sub7, !dbg !334
  br i1 %cmp8.not, label %while.end132, label %while.body, !dbg !266

while.end132:                                     ; preds = %cleanup129
  store i32 %prev_mask.4, ptr %simple, align 4, !dbg !335
  store i32 %prev_pos.2, ptr %prev_pos2, align 4, !dbg !336
  br label %cleanup137

cleanup137:                                       ; preds = %entry, %while.end132
  %retval.0 = phi i64 [ %buffer_pos.2, %while.end132 ], [ 0, %entry ], !dbg !255
  ret i64 %retval.0, !dbg !337
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "MASK_TO_ALLOWED_STATUS", scope: !2, file: !3, line: 30, type: !177, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "x86_code", scope: !3, file: !3, line: 27, type: !4, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !153)
!3 = !DIFile(filename: "liblzma/simple/x86.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d511d504c4e6105d3bb96252bce2f620")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9, !15, !21, !22, !6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 18, baseType: !8)
!7 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_simple", file: !11, line: 19, baseType: !12)
!11 = !DIFile(filename: "liblzma/simple/simple_private.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "2921a659cca72849047c4661dc5d5b7e")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_simple_s", file: !3, line: 20, size: 64, elements: !13)
!13 = !{!14, !20}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "prev_mask", scope: !12, file: !3, line: 21, baseType: !15, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !16, line: 26, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !18, line: 42, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !12, file: !3, line: 22, baseType: !15, size: 32, offset: 32)
!21 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !16, line: 24, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !18, line: 38, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !27, retainedTypes: !56, globals: !146, splitDebugInlining: false, nameTableKind: None)
!27 = !{!28, !43, !49}
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 57, baseType: !19, size: 32, elements: !30)
!29 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!31 = !DIEnumerator(name: "LZMA_OK", value: 0)
!32 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!33 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!34 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!35 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!36 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!37 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!38 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!39 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!40 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!41 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!42 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 250, baseType: !19, size: 32, elements: !44)
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!46 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!47 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!48 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 27, baseType: !19, size: 32, elements: !51)
!50 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!53 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!54 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!55 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!56 = !{!57, !15, !23}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !11, line: 21, size: 1024, elements: !59)
!59 = !{!60, !132, !133, !134, !136, !137, !138, !139, !140, !141, !142}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !58, file: !11, line: 23, baseType: !61, size: 512)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !62, line: 80, baseType: !63)
!62 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !62, line: 124, size: 512, elements: !64)
!64 = !{!65, !68, !73, !76, !103, !108, !115, !120}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !63, file: !62, line: 126, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !62, line: 78, baseType: null)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !63, file: !62, line: 130, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !70, line: 63, baseType: !71)
!70 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !16, line: 27, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !18, line: 45, baseType: !8)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !63, file: !62, line: 136, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !75, line: 90, baseType: !8)
!75 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!76 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !63, file: !62, line: 139, baseType: !77, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !62, line: 94, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !66, !82, !96, !99, !6, !101, !99, !6, !102}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !29, line: 237, baseType: !28)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !29, line: 403, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 341, size: 192, elements: !85)
!85 = !{!86, !91, !95}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !84, file: !29, line: 376, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!90, !90, !6, !6}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !84, file: !29, line: 390, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !90, !90}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !84, file: !29, line: 401, baseType: !90, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !29, line: 322, baseType: !43)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !63, file: !62, line: 144, baseType: !104, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !62, line: 102, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !66, !82}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !63, file: !62, line: 148, baseType: !109, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !50, line: 55, baseType: !49)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !63, file: !62, line: 152, baseType: !116, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!81, !66, !119, !119, !71}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !63, file: !62, line: 157, baseType: !121, size: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!81, !66, !82, !124, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !127, line: 65, baseType: !128)
!127 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 43, size: 128, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !128, file: !127, line: 54, baseType: !69, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !128, file: !127, line: 63, baseType: !90, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "end_was_reached", scope: !58, file: !11, line: 26, baseType: !21, size: 8, offset: 512)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "is_encoder", scope: !58, file: !11, line: 32, baseType: !21, size: 8, offset: 520)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !58, file: !11, line: 36, baseType: !135, size: 64, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "simple", scope: !58, file: !11, line: 41, baseType: !9, size: 64, offset: 640)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "now_pos", scope: !58, file: !11, line: 46, baseType: !15, size: 32, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !58, file: !11, line: 49, baseType: !6, size: 64, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !58, file: !11, line: 53, baseType: !6, size: 64, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !58, file: !11, line: 57, baseType: !6, size: 64, offset: 896)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !58, file: !11, line: 61, baseType: !6, size: 64, offset: 960)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !58, file: !11, line: 64, baseType: !143, offset: 1024)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: -1)
!146 = !{!0, !147}
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "MASK_TO_BIT_NUMBER", scope: !2, file: !3, line: 33, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !151)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!151 = !{!152}
!152 = !DISubrange(count: 8)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !163, !164, !166, !167, !171, !174, !175}
!154 = !DILocalVariable(name: "simple", arg: 1, scope: !2, file: !3, line: 27, type: !9)
!155 = !DILocalVariable(name: "now_pos", arg: 2, scope: !2, file: !3, line: 27, type: !15)
!156 = !DILocalVariable(name: "is_encoder", arg: 3, scope: !2, file: !3, line: 27, type: !21)
!157 = !DILocalVariable(name: "buffer", arg: 4, scope: !2, file: !3, line: 28, type: !22)
!158 = !DILocalVariable(name: "size", arg: 5, scope: !2, file: !3, line: 28, type: !6)
!159 = !DILocalVariable(name: "prev_mask", scope: !2, file: !3, line: 36, type: !15)
!160 = !DILocalVariable(name: "prev_pos", scope: !2, file: !3, line: 37, type: !15)
!161 = !DILocalVariable(name: "limit", scope: !2, file: !3, line: 45, type: !162)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!163 = !DILocalVariable(name: "buffer_pos", scope: !2, file: !3, line: 46, type: !6)
!164 = !DILocalVariable(name: "b", scope: !165, file: !3, line: 49, type: !23)
!165 = distinct !DILexicalBlock(scope: !2, file: !3, line: 48, column: 30)
!166 = !DILocalVariable(name: "offset", scope: !165, file: !3, line: 55, type: !150)
!167 = !DILocalVariable(name: "i", scope: !168, file: !3, line: 62, type: !15)
!168 = distinct !DILexicalBlock(scope: !169, file: !3, line: 62, column: 4)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 61, column: 10)
!170 = distinct !DILexicalBlock(scope: !165, file: !3, line: 59, column: 7)
!171 = !DILocalVariable(name: "src", scope: !172, file: !3, line: 74, type: !15)
!172 = distinct !DILexicalBlock(scope: !173, file: !3, line: 72, column: 33)
!173 = distinct !DILexicalBlock(scope: !165, file: !3, line: 70, column: 7)
!174 = !DILocalVariable(name: "dest", scope: !172, file: !3, line: 79, type: !15)
!175 = !DILocalVariable(name: "i", scope: !176, file: !3, line: 91, type: !150)
!176 = distinct !DILexicalBlock(scope: !172, file: !3, line: 80, column: 17)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 64, elements: !151)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!179 = !{i32 7, !"Dwarf Version", i32 5}
!180 = !{i32 2, !"Debug Info Version", i32 3}
!181 = !{i32 1, !"wchar_size", i32 4}
!182 = !{i32 8, !"PIC Level", i32 2}
!183 = !{i32 7, !"PIE Level", i32 2}
!184 = !{i32 7, !"uwtable", i32 2}
!185 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!186 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!187 = distinct !DISubprogram(name: "lzma_simple_x86_encoder_init", scope: !3, file: !3, line: 142, type: !188, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !201)
!188 = !DISubroutineType(types: !189)
!189 = !{!81, !190, !82, !191}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !62, line: 82, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !62, line: 109, size: 192, elements: !195)
!195 = !{!196, !197, !200}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !194, file: !62, line: 112, baseType: !69, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !194, file: !62, line: 116, baseType: !198, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !62, line: 86, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !194, file: !62, line: 119, baseType: !90, size: 64, offset: 128)
!201 = !{!202, !203, !204}
!202 = !DILocalVariable(name: "next", arg: 1, scope: !187, file: !3, line: 142, type: !190)
!203 = !DILocalVariable(name: "allocator", arg: 2, scope: !187, file: !3, line: 142, type: !82)
!204 = !DILocalVariable(name: "filters", arg: 3, scope: !187, file: !3, line: 143, type: !191)
!205 = !DILocation(line: 0, scope: !187)
!206 = !DILocalVariable(name: "next", arg: 1, scope: !207, file: !3, line: 126, type: !190)
!207 = distinct !DISubprogram(name: "x86_coder_init", scope: !3, file: !3, line: 126, type: !208, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !210)
!208 = !DISubroutineType(types: !209)
!209 = !{!81, !190, !82, !191, !21}
!210 = !{!206, !211, !212, !213, !214}
!211 = !DILocalVariable(name: "allocator", arg: 2, scope: !207, file: !3, line: 126, type: !82)
!212 = !DILocalVariable(name: "filters", arg: 3, scope: !207, file: !3, line: 127, type: !191)
!213 = !DILocalVariable(name: "is_encoder", arg: 4, scope: !207, file: !3, line: 127, type: !21)
!214 = !DILocalVariable(name: "ret", scope: !207, file: !3, line: 129, type: !215)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!216 = !DILocation(line: 0, scope: !207, inlinedAt: !217)
!217 = distinct !DILocation(line: 145, column: 9, scope: !187)
!218 = !DILocation(line: 129, column: 23, scope: !207, inlinedAt: !217)
!219 = !DILocation(line: 132, column: 10, scope: !220, inlinedAt: !217)
!220 = distinct !DILexicalBlock(scope: !207, file: !3, line: 132, column: 6)
!221 = !DILocation(line: 132, column: 6, scope: !207, inlinedAt: !217)
!222 = !DILocation(line: 133, column: 32, scope: !223, inlinedAt: !217)
!223 = distinct !DILexicalBlock(scope: !220, file: !3, line: 132, column: 22)
!224 = !DILocation(line: 133, column: 40, scope: !223, inlinedAt: !217)
!225 = !DILocation(line: 133, column: 58, scope: !223, inlinedAt: !217)
!226 = !DILocation(line: 134, column: 32, scope: !223, inlinedAt: !217)
!227 = !DILocation(line: 134, column: 40, scope: !223, inlinedAt: !217)
!228 = !DILocation(line: 134, column: 48, scope: !223, inlinedAt: !217)
!229 = !DILocation(line: 134, column: 57, scope: !223, inlinedAt: !217)
!230 = !DILocation(line: 135, column: 2, scope: !223, inlinedAt: !217)
!231 = !DILocation(line: 145, column: 2, scope: !187)
!232 = distinct !DISubprogram(name: "lzma_simple_x86_decoder_init", scope: !3, file: !3, line: 150, type: !188, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !233)
!233 = !{!234, !235, !236}
!234 = !DILocalVariable(name: "next", arg: 1, scope: !232, file: !3, line: 150, type: !190)
!235 = !DILocalVariable(name: "allocator", arg: 2, scope: !232, file: !3, line: 150, type: !82)
!236 = !DILocalVariable(name: "filters", arg: 3, scope: !232, file: !3, line: 151, type: !191)
!237 = !DILocation(line: 0, scope: !232)
!238 = !DILocation(line: 0, scope: !207, inlinedAt: !239)
!239 = distinct !DILocation(line: 153, column: 9, scope: !232)
!240 = !DILocation(line: 129, column: 23, scope: !207, inlinedAt: !239)
!241 = !DILocation(line: 132, column: 10, scope: !220, inlinedAt: !239)
!242 = !DILocation(line: 132, column: 6, scope: !207, inlinedAt: !239)
!243 = !DILocation(line: 133, column: 32, scope: !223, inlinedAt: !239)
!244 = !DILocation(line: 133, column: 40, scope: !223, inlinedAt: !239)
!245 = !DILocation(line: 133, column: 58, scope: !223, inlinedAt: !239)
!246 = !DILocation(line: 134, column: 32, scope: !223, inlinedAt: !239)
!247 = !DILocation(line: 134, column: 40, scope: !223, inlinedAt: !239)
!248 = !DILocation(line: 134, column: 48, scope: !223, inlinedAt: !239)
!249 = !DILocation(line: 134, column: 57, scope: !223, inlinedAt: !239)
!250 = !DILocation(line: 135, column: 2, scope: !223, inlinedAt: !239)
!251 = !DILocation(line: 153, column: 2, scope: !232)
!252 = !DISubprogram(name: "lzma_simple_coder_init", scope: !11, file: !11, line: 68, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubroutineType(types: !254)
!254 = !{!81, !190, !82, !191, !135, !6, !6, !15, !21}
!255 = !DILocation(line: 0, scope: !2)
!256 = !DILocation(line: 37, column: 30, scope: !2)
!257 = !DILocation(line: 39, column: 11, scope: !258)
!258 = distinct !DILexicalBlock(scope: !2, file: !3, line: 39, column: 6)
!259 = !DILocation(line: 39, column: 6, scope: !2)
!260 = !DILocation(line: 36, column: 31, scope: !2)
!261 = !DILocation(line: 42, column: 14, scope: !262)
!262 = distinct !DILexicalBlock(scope: !2, file: !3, line: 42, column: 6)
!263 = !DILocation(line: 42, column: 25, scope: !262)
!264 = !DILocation(line: 42, column: 6, scope: !2)
!265 = !DILocation(line: 45, column: 28, scope: !2)
!266 = !DILocation(line: 48, column: 2, scope: !2)
!267 = !DILocation(line: 49, column: 15, scope: !165)
!268 = !DILocation(line: 0, scope: !165)
!269 = !DILocation(line: 50, column: 17, scope: !270)
!270 = distinct !DILexicalBlock(scope: !165, file: !3, line: 50, column: 7)
!271 = !DILocation(line: 51, column: 4, scope: !272)
!272 = distinct !DILexicalBlock(scope: !270, file: !3, line: 50, column: 31)
!273 = !DILocation(line: 52, column: 4, scope: !272)
!274 = distinct !{!274, !266, !275}
!275 = !DILocation(line: 116, column: 2, scope: !2)
!276 = !DILocation(line: 55, column: 37, scope: !165)
!277 = !DILocation(line: 55, column: 35, scope: !165)
!278 = !DILocation(line: 56, column: 5, scope: !165)
!279 = !DILocation(line: 59, column: 14, scope: !170)
!280 = !DILocation(line: 59, column: 7, scope: !165)
!281 = !DILocation(line: 0, scope: !168)
!282 = !DILocation(line: 62, column: 27, scope: !283)
!283 = distinct !DILexicalBlock(scope: !168, file: !3, line: 62, column: 4)
!284 = !DILocation(line: 62, column: 4, scope: !168)
!285 = !DILocation(line: 64, column: 15, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !3, line: 62, column: 42)
!287 = distinct !{!287, !288}
!288 = !{!"llvm.loop.unroll.disable"}
!289 = !DILocation(line: 68, column: 7, scope: !165)
!290 = !DILocation(line: 70, column: 7, scope: !173)
!291 = !DILocation(line: 71, column: 41, scope: !173)
!292 = !DILocation(line: 71, column: 47, scope: !173)
!293 = !DILocation(line: 71, column: 7, scope: !173)
!294 = !{i8 0, i8 2}
!295 = !{}
!296 = !DILocation(line: 72, column: 5, scope: !173)
!297 = !DILocation(line: 74, column: 34, scope: !172)
!298 = !DILocation(line: 75, column: 19, scope: !172)
!299 = !DILocation(line: 75, column: 8, scope: !172)
!300 = !DILocation(line: 75, column: 43, scope: !172)
!301 = !DILocation(line: 75, column: 5, scope: !172)
!302 = !DILocation(line: 76, column: 19, scope: !172)
!303 = !DILocation(line: 76, column: 8, scope: !172)
!304 = !DILocation(line: 76, column: 43, scope: !172)
!305 = !DILocation(line: 76, column: 5, scope: !172)
!306 = !DILocation(line: 77, column: 8, scope: !172)
!307 = !DILocation(line: 77, column: 7, scope: !172)
!308 = !DILocation(line: 77, column: 5, scope: !172)
!309 = !DILocation(line: 0, scope: !172)
!310 = !DILocation(line: 81, column: 9, scope: !176)
!311 = !DILocation(line: 88, column: 9, scope: !176)
!312 = !DILocation(line: 0, scope: !176)
!313 = !DILocation(line: 94, column: 24, scope: !176)
!314 = !DILocation(line: 96, column: 10, scope: !315)
!315 = distinct !DILexicalBlock(scope: !176, file: !3, line: 96, column: 9)
!316 = !DILocation(line: 99, column: 16, scope: !176)
!317 = !DILocation(line: 103, column: 34, scope: !172)
!318 = !DILocation(line: 103, column: 8, scope: !172)
!319 = !DILocation(line: 103, column: 6, scope: !172)
!320 = !DILocation(line: 104, column: 44, scope: !172)
!321 = !DILocation(line: 104, column: 29, scope: !172)
!322 = !DILocation(line: 104, column: 27, scope: !172)
!323 = !DILocation(line: 105, column: 44, scope: !172)
!324 = !DILocation(line: 105, column: 29, scope: !172)
!325 = !DILocation(line: 105, column: 27, scope: !172)
!326 = !DILocation(line: 106, column: 29, scope: !172)
!327 = !DILocation(line: 106, column: 27, scope: !172)
!328 = !DILocation(line: 107, column: 15, scope: !172)
!329 = !DILocation(line: 110, column: 3, scope: !172)
!330 = !DILocation(line: 111, column: 4, scope: !331)
!331 = distinct !DILexicalBlock(scope: !173, file: !3, line: 110, column: 10)
!332 = !DILocation(line: 113, column: 8, scope: !333)
!333 = distinct !DILexicalBlock(scope: !331, file: !3, line: 113, column: 8)
!334 = !DILocation(line: 48, column: 20, scope: !2)
!335 = !DILocation(line: 118, column: 20, scope: !2)
!336 = !DILocation(line: 119, column: 19, scope: !2)
!337 = !DILocation(line: 122, column: 1, scope: !2)
