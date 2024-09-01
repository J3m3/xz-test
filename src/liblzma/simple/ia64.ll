; ModuleID = 'liblzma/simple/ia64.c'
source_filename = "liblzma/simple/ia64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_ia64_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !99 {
entry:
    #dbg_value(ptr %next, !183, !DIExpression(), !186)
    #dbg_value(ptr %allocator, !184, !DIExpression(), !186)
    #dbg_value(ptr %filters, !185, !DIExpression(), !186)
    #dbg_value(ptr %next, !187, !DIExpression(), !195)
    #dbg_value(ptr %allocator, !192, !DIExpression(), !195)
    #dbg_value(ptr %filters, !193, !DIExpression(), !195)
    #dbg_value(i1 true, !194, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !195)
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @ia64_code, i64 noundef 0, i64 noundef 16, i32 noundef 16, i1 noundef zeroext true) #3, !dbg !197
  ret i32 %call.i, !dbg !198
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_ia64_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !199 {
entry:
    #dbg_value(ptr %next, !201, !DIExpression(), !204)
    #dbg_value(ptr %allocator, !202, !DIExpression(), !204)
    #dbg_value(ptr %filters, !203, !DIExpression(), !204)
    #dbg_value(ptr %next, !187, !DIExpression(), !205)
    #dbg_value(ptr %allocator, !192, !DIExpression(), !205)
    #dbg_value(ptr %filters, !193, !DIExpression(), !205)
    #dbg_value(i1 false, !194, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !205)
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @ia64_code, i64 noundef 0, i64 noundef 16, i32 noundef 16, i1 noundef zeroext false) #3, !dbg !207
  ret i32 %call.i, !dbg !208
}

declare !dbg !209 i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @ia64_code(ptr nocapture readnone %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 !dbg !46 {
entry:
    #dbg_value(ptr poison, !58, !DIExpression(), !213)
    #dbg_value(i32 %now_pos, !59, !DIExpression(), !213)
    #dbg_value(i1 %is_encoder, !60, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !213)
    #dbg_value(ptr %buffer, !61, !DIExpression(), !213)
    #dbg_value(i64 %size, !62, !DIExpression(), !213)
    #dbg_value(i64 0, !63, !DIExpression(), !213)
  %cmp.not135 = icmp ult i64 %size, 16, !dbg !214
  br i1 %cmp.not135, label %for.end88, label %for.body.preheader, !dbg !215

for.body.preheader:                               ; preds = %entry
  %invariant.gep.1 = getelementptr i8, ptr %buffer, i64 5
  %invariant.gep.2 = getelementptr i8, ptr %buffer, i64 10
  br label %for.body, !dbg !215

for.body:                                         ; preds = %for.body.preheader, %for.inc82.2
  %add137 = phi i64 [ %add, %for.inc82.2 ], [ 16, %for.body.preheader ]
  %i.0136 = phi i64 [ %add137, %for.inc82.2 ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %i.0136, !63, !DIExpression(), !213)
  %arrayidx = getelementptr i8, ptr %buffer, i64 %i.0136, !dbg !216
  %0 = load i8, ptr %arrayidx, align 1, !dbg !216
  %1 = and i8 %0, 31, !dbg !217
  %idxprom = zext nneg i8 %1 to i64, !dbg !218
    #dbg_value(i64 %idxprom, !64, !DIExpression(), !219)
    #dbg_value(i32 poison, !69, !DIExpression(), !219)
    #dbg_value(i32 5, !70, !DIExpression(), !219)
    #dbg_value(i64 0, !71, !DIExpression(), !220)
  %conv43 = trunc i64 %i.0136 to i32
  %add44 = add i32 %conv43, %now_pos
  %2 = sub i32 0, %add44
  %dest.0.p = select i1 %is_encoder, i32 %add44, i32 %2
  %3 = lshr i32 %dest.0.p, 4
    #dbg_value(i64 5, !70, !DIExpression(), !219)
    #dbg_value(i64 0, !71, !DIExpression(), !220)
  %4 = add nsw i8 %1, -24, !dbg !221
  %cmp7 = icmp ult i8 %4, -2, !dbg !221
  br i1 %cmp7, label %for.inc82, label %if.end, !dbg !223

if.end:                                           ; preds = %for.body
    #dbg_value(i64 0, !73, !DIExpression(), !224)
    #dbg_value(i64 5, !77, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !224)
    #dbg_value(i64 0, !78, !DIExpression(), !224)
    #dbg_value(i64 0, !79, !DIExpression(), !225)
    #dbg_value(i64 0, !79, !DIExpression(), !225)
    #dbg_value(i64 0, !78, !DIExpression(), !224)
  %conv20 = zext i8 %0 to i64, !dbg !226
    #dbg_value(i64 %conv20, !78, !DIExpression(), !224)
    #dbg_value(i64 1, !79, !DIExpression(), !225)
  %add17.1 = or disjoint i64 %i.0136, 1, !dbg !228
  %gep.1 = getelementptr i8, ptr %buffer, i64 %add17.1, !dbg !229
  %5 = load i8, ptr %gep.1, align 1, !dbg !229
  %conv20.1 = zext i8 %5 to i64, !dbg !226
  %shl.1 = shl nuw nsw i64 %conv20.1, 8, !dbg !230
    #dbg_value(!DIArgList(i64 %shl.1, i64 %conv20), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 2, !79, !DIExpression(), !225)
  %add17.2 = or disjoint i64 %i.0136, 2, !dbg !228
  %gep.2 = getelementptr i8, ptr %buffer, i64 %add17.2, !dbg !229
  %6 = load i8, ptr %gep.2, align 1, !dbg !229
  %conv20.2 = zext i8 %6 to i64, !dbg !226
  %shl.2 = shl nuw nsw i64 %conv20.2, 16, !dbg !230
  %7 = or disjoint i64 %shl.1, %shl.2, !dbg !231
  %add21.2 = or disjoint i64 %7, %conv20, !dbg !231
    #dbg_value(!DIArgList(i64 %shl.2, i64 %shl.1, i64 %conv20), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 3, !79, !DIExpression(), !225)
  %add17.3 = or disjoint i64 %i.0136, 3, !dbg !228
  %gep.3 = getelementptr i8, ptr %buffer, i64 %add17.3, !dbg !229
  %8 = load i8, ptr %gep.3, align 1, !dbg !229
  %conv20.3 = zext i8 %8 to i64, !dbg !226
  %shl.3 = shl nuw nsw i64 %conv20.3, 24, !dbg !230
    #dbg_value(!DIArgList(i64 %shl.3, i64 %shl.2, i64 %shl.1, i64 %conv20), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 4, !79, !DIExpression(), !225)
  %add17.4 = or disjoint i64 %i.0136, 4, !dbg !228
  %gep.4 = getelementptr i8, ptr %buffer, i64 %add17.4, !dbg !229
  %9 = load i8, ptr %gep.4, align 1, !dbg !229
  %conv20.4 = zext i8 %9 to i64, !dbg !226
  %shl.4 = shl nuw nsw i64 %conv20.4, 32, !dbg !230
  %10 = or disjoint i64 %shl.3, %shl.4, !dbg !231
  %add21.4 = or disjoint i64 %10, %add21.2, !dbg !231
    #dbg_value(!DIArgList(i64 %shl.4, i64 %shl.3, i64 %shl.2, i64 %shl.1, i64 %conv20), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 5, !79, !DIExpression(), !225)
  %add17.5 = or disjoint i64 %i.0136, 5, !dbg !228
  %gep.5 = getelementptr i8, ptr %buffer, i64 %add17.5, !dbg !229
  %11 = load i8, ptr %gep.5, align 1, !dbg !229
  %conv20.5 = zext i8 %11 to i64, !dbg !226
  %shl.5 = shl nuw nsw i64 %conv20.5, 40, !dbg !230
  %add21.5 = or disjoint i64 %shl.5, %add21.4, !dbg !231
    #dbg_value(!DIArgList(i64 %shl.5, i64 %shl.4, i64 %shl.3, i64 %shl.2, i64 %shl.1, i64 %conv20), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 6, !79, !DIExpression(), !225)
    #dbg_value(!DIArgList(i64 %shl.5, i64 %shl.4, i64 %shl.3, i64 %shl.2, i64 %shl.1, i64 %conv20), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 5, DW_OP_shr, DW_OP_stack_value), !224)
  %12 = and i64 %add21.5, 65970697781248, !dbg !232
  %or.cond = icmp eq i64 %12, 21990232555520, !dbg !232
  br i1 %or.cond, label %if.then32, label %for.inc82, !dbg !232

if.then32:                                        ; preds = %if.end
    #dbg_value(!DIArgList(i64 %shl.5, i64 %10, i64 %shl.1, i64 %conv20, i64 %shl.2), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 5, DW_OP_shr, DW_OP_stack_value), !224)
  %shr33 = lshr i64 %add21.4, 18, !dbg !233
  %conv35 = and i64 %shr33, 1048575, !dbg !234
    #dbg_value(!DIArgList(i64 %shl.4, i64 %shl.3, i64 %shl.2, i64 %shl.1, i64 %conv20), !82, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 18, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1048575, DW_OP_and, DW_OP_stack_value), !235)
  %13 = lshr i64 %add21.5, 21, !dbg !236
  %shl38 = and i64 %13, 1048576, !dbg !236
  %or = or disjoint i64 %conv35, %shl38, !dbg !237
  %conv40 = trunc nuw nsw i64 %or to i32, !dbg !237
    #dbg_value(i32 %conv40, !82, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !235)
    #dbg_value(!DIArgList(i32 %conv40, i32 %dest.0.p), !85, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !235)
  %14 = add nuw nsw i32 %3, %conv40, !dbg !238
    #dbg_value(i32 %14, !85, !DIExpression(DW_OP_constu, 268435455, DW_OP_and, DW_OP_stack_value), !235)
  %and50 = and i64 %add21.5, 9223325582488649696, !dbg !239
    #dbg_value(!DIArgList(i64 %shl.5, i64 %10, i64 %shl.1, i64 %conv20, i64 %shl.2), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 9223325582488649696, DW_OP_and, DW_OP_stack_value), !224)
  %and51 = and i32 %14, 1048575, !dbg !240
  %conv52 = zext nneg i32 %and51 to i64, !dbg !241
  %shl53 = shl nuw nsw i64 %conv52, 18, !dbg !242
  %or54 = or disjoint i64 %shl53, %and50, !dbg !243
    #dbg_value(!DIArgList(i64 %shl53, i64 %shl.5, i64 %10, i64 %shl.1, i64 %conv20, i64 %shl.2), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 9223325582488649696, DW_OP_and, DW_OP_or, DW_OP_stack_value), !224)
  %and55 = and i32 %14, 1048576, !dbg !244
  %conv56 = zext nneg i32 %and55 to i64, !dbg !245
  %shl57 = shl nuw nsw i64 %conv56, 21, !dbg !246
    #dbg_value(!DIArgList(i64 %shl53, i64 %shl57, i64 %shl.5, i64 %10, i64 %shl.1, i64 %conv20, i64 %shl.2), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 9223325582488649696, DW_OP_and, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !224)
  %and62 = and i64 %conv20, 31, !dbg !247
    #dbg_value(i64 %and62, !78, !DIExpression(), !224)
  %15 = or disjoint i64 %shl57, %and62, !dbg !248
  %or65 = or disjoint i64 %15, %or54, !dbg !248
    #dbg_value(!DIArgList(i64 %shl53, i64 %and62, i64 %shl57, i64 %shl.5, i64 %10, i64 %shl.1, i64 %conv20, i64 %shl.2), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 9223325582488649696, DW_OP_and, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 0, !86, !DIExpression(), !249)
    #dbg_value(i64 0, !86, !DIExpression(), !249)
  %conv74 = trunc i64 %or65 to i8, !dbg !250
  store i8 %conv74, ptr %arrayidx, align 1, !dbg !252
    #dbg_value(i64 1, !86, !DIExpression(), !249)
  store i8 %5, ptr %gep.1, align 1, !dbg !252
    #dbg_value(i64 2, !86, !DIExpression(), !249)
  %shr73.2 = lshr i64 %or65, 16, !dbg !253
  %conv74.2 = trunc i64 %shr73.2 to i8, !dbg !250
  store i8 %conv74.2, ptr %gep.2, align 1, !dbg !252
    #dbg_value(i64 3, !86, !DIExpression(), !249)
  %shr73.3 = lshr i64 %or65, 24, !dbg !253
  %conv74.3 = trunc i64 %shr73.3 to i8, !dbg !250
  store i8 %conv74.3, ptr %gep.3, align 1, !dbg !252
    #dbg_value(i64 4, !86, !DIExpression(), !249)
  %shr73.4 = lshr i64 %or65, 32, !dbg !253
  %conv74.4 = trunc i64 %shr73.4 to i8, !dbg !250
  store i8 %conv74.4, ptr %gep.4, align 1, !dbg !252
    #dbg_value(i64 5, !86, !DIExpression(), !249)
  %shr73.5 = lshr i64 %or65, 40, !dbg !253
  %conv74.5 = trunc nuw i64 %shr73.5 to i8, !dbg !250
  store i8 %conv74.5, ptr %gep.5, align 1, !dbg !252
    #dbg_value(i64 6, !86, !DIExpression(), !249)
  br label %for.inc82, !dbg !254

for.inc82:                                        ; preds = %if.then32, %if.end, %for.body
    #dbg_value(i64 1, !71, !DIExpression(), !220)
    #dbg_value(i64 46, !70, !DIExpression(), !219)
  %16 = lshr i64 4281597951, %idxprom, !dbg !221
  %17 = and i64 %16, 1, !dbg !221
  %cmp7.1.not = icmp eq i64 %17, 0, !dbg !221
  br i1 %cmp7.1.not, label %if.end.1, label %for.inc82.1, !dbg !223

if.end.1:                                         ; preds = %for.inc82
    #dbg_value(i64 5, !73, !DIExpression(), !224)
    #dbg_value(i64 46, !77, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !224)
    #dbg_value(i64 0, !78, !DIExpression(), !224)
    #dbg_value(i64 0, !79, !DIExpression(), !225)
    #dbg_value(i64 0, !79, !DIExpression(), !225)
    #dbg_value(i64 0, !78, !DIExpression(), !224)
  %gep.1140 = getelementptr i8, ptr %invariant.gep.1, i64 %i.0136, !dbg !229
  %18 = load i8, ptr %gep.1140, align 1, !dbg !229
  %conv20.1141 = zext i8 %18 to i64, !dbg !226
    #dbg_value(i64 %conv20.1141, !78, !DIExpression(), !224)
    #dbg_value(i64 1, !79, !DIExpression(), !225)
  %add17.1.1 = or disjoint i64 %i.0136, 1, !dbg !228
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 %add17.1.1, !dbg !229
  %19 = load i8, ptr %gep.1.1, align 1, !dbg !229
  %conv20.1.1 = zext i8 %19 to i64, !dbg !226
  %shl.1.1 = shl nuw nsw i64 %conv20.1.1, 8, !dbg !230
    #dbg_value(!DIArgList(i64 %shl.1.1, i64 %conv20.1141), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 2, !79, !DIExpression(), !225)
  %add17.2.1 = or disjoint i64 %i.0136, 2, !dbg !228
  %gep.2.1 = getelementptr i8, ptr %invariant.gep.1, i64 %add17.2.1, !dbg !229
  %20 = load i8, ptr %gep.2.1, align 1, !dbg !229
  %conv20.2.1 = zext i8 %20 to i64, !dbg !226
  %shl.2.1 = shl nuw nsw i64 %conv20.2.1, 16, !dbg !230
  %21 = or disjoint i64 %shl.1.1, %shl.2.1, !dbg !231
  %add21.2.1 = or disjoint i64 %21, %conv20.1141, !dbg !231
    #dbg_value(!DIArgList(i64 %shl.2.1, i64 %shl.1.1, i64 %conv20.1141), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 3, !79, !DIExpression(), !225)
  %add17.3.1 = or disjoint i64 %i.0136, 3, !dbg !228
  %gep.3.1 = getelementptr i8, ptr %invariant.gep.1, i64 %add17.3.1, !dbg !229
  %22 = load i8, ptr %gep.3.1, align 1, !dbg !229
  %conv20.3.1 = zext i8 %22 to i64, !dbg !226
  %shl.3.1 = shl nuw nsw i64 %conv20.3.1, 24, !dbg !230
    #dbg_value(!DIArgList(i64 %shl.3.1, i64 %shl.2.1, i64 %shl.1.1, i64 %conv20.1141), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 4, !79, !DIExpression(), !225)
  %add17.4.1 = or disjoint i64 %i.0136, 4, !dbg !228
  %gep.4.1 = getelementptr i8, ptr %invariant.gep.1, i64 %add17.4.1, !dbg !229
  %23 = load i8, ptr %gep.4.1, align 1, !dbg !229
  %conv20.4.1 = zext i8 %23 to i64, !dbg !226
  %shl.4.1 = shl nuw nsw i64 %conv20.4.1, 32, !dbg !230
  %24 = or disjoint i64 %shl.3.1, %shl.4.1, !dbg !231
  %add21.4.1 = or disjoint i64 %24, %add21.2.1, !dbg !231
    #dbg_value(!DIArgList(i64 %shl.4.1, i64 %shl.3.1, i64 %shl.2.1, i64 %shl.1.1, i64 %conv20.1141), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 5, !79, !DIExpression(), !225)
  %add17.5.1 = or disjoint i64 %i.0136, 5, !dbg !228
  %gep.5.1 = getelementptr i8, ptr %invariant.gep.1, i64 %add17.5.1, !dbg !229
  %25 = load i8, ptr %gep.5.1, align 1, !dbg !229
  %conv20.5.1 = zext i8 %25 to i64, !dbg !226
  %shl.5.1 = shl nuw nsw i64 %conv20.5.1, 40, !dbg !230
  %add21.5.1 = or disjoint i64 %shl.5.1, %add21.4.1, !dbg !231
    #dbg_value(!DIArgList(i64 %shl.5.1, i64 %shl.4.1, i64 %shl.3.1, i64 %shl.2.1, i64 %shl.1.1, i64 %conv20.1141), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 6, !79, !DIExpression(), !225)
    #dbg_value(!DIArgList(i64 %shl.5.1, i64 %shl.4.1, i64 %shl.3.1, i64 %shl.2.1, i64 %shl.1.1, i64 %conv20.1141), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 6, DW_OP_shr, DW_OP_stack_value), !224)
  %26 = and i64 %add21.5.1, 131941395562496, !dbg !232
  %or.cond.1 = icmp eq i64 %26, 43980465111040, !dbg !232
  br i1 %or.cond.1, label %if.then32.1, label %for.inc82.1, !dbg !232

if.then32.1:                                      ; preds = %if.end.1
    #dbg_value(!DIArgList(i64 %shl.5.1, i64 %24, i64 %shl.1.1, i64 %conv20.1141, i64 %shl.2.1), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 6, DW_OP_shr, DW_OP_stack_value), !224)
  %shr33.1 = lshr i64 %add21.4.1, 19, !dbg !233
  %conv35.1 = and i64 %shr33.1, 1048575, !dbg !234
    #dbg_value(!DIArgList(i64 %shl.4.1, i64 %shl.3.1, i64 %shl.2.1, i64 %shl.1.1, i64 %conv20.1141), !82, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 19, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1048575, DW_OP_and, DW_OP_stack_value), !235)
  %27 = lshr i64 %add21.5.1, 22, !dbg !236
  %shl38.1 = and i64 %27, 1048576, !dbg !236
  %or.1 = or disjoint i64 %conv35.1, %shl38.1, !dbg !237
  %conv40.1 = trunc nuw nsw i64 %or.1 to i32, !dbg !237
    #dbg_value(i32 %conv40.1, !82, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !235)
    #dbg_value(!DIArgList(i32 %conv40.1, i32 %dest.0.p), !85, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !235)
  %28 = add nuw nsw i32 %3, %conv40.1, !dbg !238
    #dbg_value(i32 %28, !85, !DIExpression(DW_OP_constu, 268435455, DW_OP_and, DW_OP_stack_value), !235)
  %and50.1 = and i64 %add21.5.1, 9223279128122523584, !dbg !239
    #dbg_value(!DIArgList(i64 %shl.5.1, i64 %24, i64 %shl.1.1, i64 %conv20.1141, i64 %shl.2.1), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 9223279128122523584, DW_OP_and, DW_OP_stack_value), !224)
  %and51.1 = and i32 %28, 1048575, !dbg !240
  %conv52.1 = zext nneg i32 %and51.1 to i64, !dbg !241
  %shl53.1 = shl nuw nsw i64 %conv52.1, 19, !dbg !242
  %or54.1 = or disjoint i64 %shl53.1, %and50.1, !dbg !243
    #dbg_value(!DIArgList(i64 %shl53.1, i64 %shl.5.1, i64 %24, i64 %shl.1.1, i64 %conv20.1141, i64 %shl.2.1), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 9223279128122523584, DW_OP_and, DW_OP_or, DW_OP_stack_value), !224)
  %and55.1 = and i32 %28, 1048576, !dbg !244
  %conv56.1 = zext nneg i32 %and55.1 to i64, !dbg !245
  %shl57.1 = shl nuw nsw i64 %conv56.1, 22, !dbg !246
    #dbg_value(!DIArgList(i64 %shl53.1, i64 %shl57.1, i64 %shl.5.1, i64 %24, i64 %shl.1.1, i64 %conv20.1141, i64 %shl.2.1), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 9223279128122523584, DW_OP_and, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !224)
  %and62.1 = and i64 %conv20.1141, 63, !dbg !247
    #dbg_value(i64 %and62.1, !78, !DIExpression(), !224)
  %29 = or disjoint i64 %shl57.1, %and62.1, !dbg !248
  %or65.1 = or disjoint i64 %29, %or54.1, !dbg !248
    #dbg_value(!DIArgList(i64 %shl53.1, i64 %and62.1, i64 %shl57.1, i64 %shl.5.1, i64 %24, i64 %shl.1.1, i64 %conv20.1141, i64 %shl.2.1), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 9223279128122523584, DW_OP_and, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 0, !86, !DIExpression(), !249)
    #dbg_value(i64 0, !86, !DIExpression(), !249)
  %conv74.1142 = trunc i64 %or65.1 to i8, !dbg !250
  store i8 %conv74.1142, ptr %gep.1140, align 1, !dbg !252
    #dbg_value(i64 1, !86, !DIExpression(), !249)
  store i8 %19, ptr %gep.1.1, align 1, !dbg !252
    #dbg_value(i64 2, !86, !DIExpression(), !249)
  %shr73.2.1 = lshr i64 %or65.1, 16, !dbg !253
  %conv74.2.1 = trunc i64 %shr73.2.1 to i8, !dbg !250
  store i8 %conv74.2.1, ptr %gep.2.1, align 1, !dbg !252
    #dbg_value(i64 3, !86, !DIExpression(), !249)
  %shr73.3.1 = lshr i64 %or65.1, 24, !dbg !253
  %conv74.3.1 = trunc i64 %shr73.3.1 to i8, !dbg !250
  store i8 %conv74.3.1, ptr %gep.3.1, align 1, !dbg !252
    #dbg_value(i64 4, !86, !DIExpression(), !249)
  %shr73.4.1 = lshr i64 %or65.1, 32, !dbg !253
  %conv74.4.1 = trunc i64 %shr73.4.1 to i8, !dbg !250
  store i8 %conv74.4.1, ptr %gep.4.1, align 1, !dbg !252
    #dbg_value(i64 5, !86, !DIExpression(), !249)
  %shr73.5.1 = lshr i64 %or65.1, 40, !dbg !253
  %conv74.5.1 = trunc nuw i64 %shr73.5.1 to i8, !dbg !250
  store i8 %conv74.5.1, ptr %gep.5.1, align 1, !dbg !252
    #dbg_value(i64 6, !86, !DIExpression(), !249)
  br label %for.inc82.1, !dbg !254

for.inc82.1:                                      ; preds = %if.then32.1, %if.end.1, %for.inc82
    #dbg_value(i64 2, !71, !DIExpression(), !220)
    #dbg_value(i64 87, !70, !DIExpression(), !219)
  %30 = lshr i64 3425763327, %idxprom, !dbg !221
  %31 = and i64 %30, 1, !dbg !221
  %cmp7.2.not = icmp eq i64 %31, 0, !dbg !221
  br i1 %cmp7.2.not, label %if.end.2, label %for.inc82.2, !dbg !223

if.end.2:                                         ; preds = %for.inc82.1
    #dbg_value(i64 10, !73, !DIExpression(), !224)
    #dbg_value(i64 87, !77, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !224)
    #dbg_value(i64 0, !78, !DIExpression(), !224)
    #dbg_value(i64 0, !79, !DIExpression(), !225)
    #dbg_value(i64 0, !79, !DIExpression(), !225)
    #dbg_value(i64 0, !78, !DIExpression(), !224)
  %gep.2144 = getelementptr i8, ptr %invariant.gep.2, i64 %i.0136, !dbg !229
  %32 = load i8, ptr %gep.2144, align 1, !dbg !229
  %conv20.2145 = zext i8 %32 to i64, !dbg !226
    #dbg_value(i64 %conv20.2145, !78, !DIExpression(), !224)
    #dbg_value(i64 1, !79, !DIExpression(), !225)
  %add17.1.2 = or disjoint i64 %i.0136, 1, !dbg !228
  %gep.1.2 = getelementptr i8, ptr %invariant.gep.2, i64 %add17.1.2, !dbg !229
  %33 = load i8, ptr %gep.1.2, align 1, !dbg !229
  %conv20.1.2 = zext i8 %33 to i64, !dbg !226
  %shl.1.2 = shl nuw nsw i64 %conv20.1.2, 8, !dbg !230
    #dbg_value(!DIArgList(i64 %shl.1.2, i64 %conv20.2145), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 2, !79, !DIExpression(), !225)
  %add17.2.2 = or disjoint i64 %i.0136, 2, !dbg !228
  %gep.2.2 = getelementptr i8, ptr %invariant.gep.2, i64 %add17.2.2, !dbg !229
  %34 = load i8, ptr %gep.2.2, align 1, !dbg !229
  %conv20.2.2 = zext i8 %34 to i64, !dbg !226
  %shl.2.2 = shl nuw nsw i64 %conv20.2.2, 16, !dbg !230
  %35 = or disjoint i64 %shl.1.2, %shl.2.2, !dbg !231
  %add21.2.2 = or disjoint i64 %35, %conv20.2145, !dbg !231
    #dbg_value(!DIArgList(i64 %shl.2.2, i64 %shl.1.2, i64 %conv20.2145), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 3, !79, !DIExpression(), !225)
  %add17.3.2 = or disjoint i64 %i.0136, 3, !dbg !228
  %gep.3.2 = getelementptr i8, ptr %invariant.gep.2, i64 %add17.3.2, !dbg !229
  %36 = load i8, ptr %gep.3.2, align 1, !dbg !229
  %conv20.3.2 = zext i8 %36 to i64, !dbg !226
  %shl.3.2 = shl nuw nsw i64 %conv20.3.2, 24, !dbg !230
    #dbg_value(!DIArgList(i64 %shl.3.2, i64 %shl.2.2, i64 %shl.1.2, i64 %conv20.2145), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 4, !79, !DIExpression(), !225)
  %add17.4.2 = or disjoint i64 %i.0136, 4, !dbg !228
  %gep.4.2 = getelementptr i8, ptr %invariant.gep.2, i64 %add17.4.2, !dbg !229
  %37 = load i8, ptr %gep.4.2, align 1, !dbg !229
  %conv20.4.2 = zext i8 %37 to i64, !dbg !226
  %shl.4.2 = shl nuw nsw i64 %conv20.4.2, 32, !dbg !230
  %38 = or disjoint i64 %shl.3.2, %shl.4.2, !dbg !231
  %add21.4.2 = or disjoint i64 %38, %add21.2.2, !dbg !231
    #dbg_value(!DIArgList(i64 %shl.4.2, i64 %shl.3.2, i64 %shl.2.2, i64 %shl.1.2, i64 %conv20.2145), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 5, !79, !DIExpression(), !225)
  %add17.5.2 = or disjoint i64 %i.0136, 5, !dbg !228
  %gep.5.2 = getelementptr i8, ptr %invariant.gep.2, i64 %add17.5.2, !dbg !229
  %39 = load i8, ptr %gep.5.2, align 1, !dbg !229
  %conv20.5.2 = zext i8 %39 to i64, !dbg !226
  %shl.5.2 = shl nuw nsw i64 %conv20.5.2, 40, !dbg !230
  %add21.5.2 = or disjoint i64 %shl.5.2, %add21.4.2, !dbg !231
    #dbg_value(!DIArgList(i64 %shl.5.2, i64 %shl.4.2, i64 %shl.3.2, i64 %shl.2.2, i64 %shl.1.2, i64 %conv20.2145), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 6, !79, !DIExpression(), !225)
    #dbg_value(!DIArgList(i64 %shl.5.2, i64 %shl.4.2, i64 %shl.3.2, i64 %shl.2.2, i64 %shl.1.2, i64 %conv20.2145), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !224)
  %40 = and i64 %add21.5.2, 263882791124992, !dbg !232
  %or.cond.2 = icmp eq i64 %40, 87960930222080, !dbg !232
  br i1 %or.cond.2, label %if.then32.2, label %for.inc82.2, !dbg !232

if.then32.2:                                      ; preds = %if.end.2
    #dbg_value(!DIArgList(i64 %shl.5.2, i64 %38, i64 %shl.1.2, i64 %conv20.2145, i64 %shl.2.2), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value), !224)
  %shr33.2 = lshr i64 %add21.4.2, 20, !dbg !233
    #dbg_value(!DIArgList(i64 %shl.4.2, i64 %shl.3.2, i64 %shl.2.2, i64 %shl.1.2, i64 %conv20.2145), !82, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 20, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1048575, DW_OP_and, DW_OP_stack_value), !235)
  %41 = lshr i64 %add21.5.2, 23, !dbg !236
  %shl38.2 = and i64 %41, 1048576, !dbg !236
  %or.2 = or disjoint i64 %shr33.2, %shl38.2, !dbg !237
  %conv40.2 = trunc nuw nsw i64 %or.2 to i32, !dbg !237
    #dbg_value(i32 %conv40.2, !82, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !235)
    #dbg_value(!DIArgList(i32 %conv40.2, i32 %dest.0.p), !85, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !235)
  %42 = add nuw nsw i32 %3, %conv40.2, !dbg !238
    #dbg_value(i32 %42, !85, !DIExpression(DW_OP_constu, 268435455, DW_OP_and, DW_OP_stack_value), !235)
  %and50.2 = and i64 %add21.5.2, 9223186219390271360, !dbg !239
    #dbg_value(!DIArgList(i64 %shl.5.2, i64 %38, i64 %shl.1.2, i64 %conv20.2145, i64 %shl.2.2), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 9223186219390271360, DW_OP_and, DW_OP_stack_value), !224)
  %and51.2 = and i32 %42, 1048575, !dbg !240
  %conv52.2 = zext nneg i32 %and51.2 to i64, !dbg !241
  %shl53.2 = shl nuw nsw i64 %conv52.2, 20, !dbg !242
  %or54.2 = or disjoint i64 %shl53.2, %and50.2, !dbg !243
    #dbg_value(!DIArgList(i64 %shl53.2, i64 %shl.5.2, i64 %38, i64 %shl.1.2, i64 %conv20.2145, i64 %shl.2.2), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 9223186219390271360, DW_OP_and, DW_OP_or, DW_OP_stack_value), !224)
  %and55.2 = and i32 %42, 1048576, !dbg !244
  %conv56.2 = zext nneg i32 %and55.2 to i64, !dbg !245
  %shl57.2 = shl nuw nsw i64 %conv56.2, 23, !dbg !246
    #dbg_value(!DIArgList(i64 %shl53.2, i64 %shl57.2, i64 %shl.5.2, i64 %38, i64 %shl.1.2, i64 %conv20.2145, i64 %shl.2.2), !81, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 9223186219390271360, DW_OP_and, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !224)
  %and62.2 = and i64 %conv20.2145, 127, !dbg !247
    #dbg_value(i64 %and62.2, !78, !DIExpression(), !224)
  %43 = or disjoint i64 %shl57.2, %and62.2, !dbg !248
  %or65.2 = or disjoint i64 %43, %or54.2, !dbg !248
    #dbg_value(!DIArgList(i64 %shl53.2, i64 %and62.2, i64 %shl57.2, i64 %shl.5.2, i64 %38, i64 %shl.1.2, i64 %conv20.2145, i64 %shl.2.2), !78, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 9223186219390271360, DW_OP_and, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !224)
    #dbg_value(i64 0, !86, !DIExpression(), !249)
    #dbg_value(i64 0, !86, !DIExpression(), !249)
  %conv74.2146 = trunc i64 %or65.2 to i8, !dbg !250
  store i8 %conv74.2146, ptr %gep.2144, align 1, !dbg !252
    #dbg_value(i64 1, !86, !DIExpression(), !249)
  store i8 %33, ptr %gep.1.2, align 1, !dbg !252
    #dbg_value(i64 2, !86, !DIExpression(), !249)
  %shr73.2.2 = lshr i64 %or65.2, 16, !dbg !253
  %conv74.2.2 = trunc i64 %shr73.2.2 to i8, !dbg !250
  store i8 %conv74.2.2, ptr %gep.2.2, align 1, !dbg !252
    #dbg_value(i64 3, !86, !DIExpression(), !249)
  %shr73.3.2 = lshr i64 %or65.2, 24, !dbg !253
  %conv74.3.2 = trunc i64 %shr73.3.2 to i8, !dbg !250
  store i8 %conv74.3.2, ptr %gep.3.2, align 1, !dbg !252
    #dbg_value(i64 4, !86, !DIExpression(), !249)
  %shr73.4.2 = lshr i64 %or65.2, 32, !dbg !253
  %conv74.4.2 = trunc i64 %shr73.4.2 to i8, !dbg !250
  store i8 %conv74.4.2, ptr %gep.4.2, align 1, !dbg !252
    #dbg_value(i64 5, !86, !DIExpression(), !249)
  %shr73.5.2 = lshr i64 %or65.2, 40, !dbg !253
  %conv74.5.2 = trunc nuw nsw i64 %shr73.5.2 to i8, !dbg !250
  store i8 %conv74.5.2, ptr %gep.5.2, align 1, !dbg !252
    #dbg_value(i64 6, !86, !DIExpression(), !249)
  br label %for.inc82.2, !dbg !254

for.inc82.2:                                      ; preds = %if.then32.2, %if.end.2, %for.inc82.1
    #dbg_value(i64 3, !71, !DIExpression(), !220)
    #dbg_value(i64 128, !70, !DIExpression(), !219)
    #dbg_value(i64 %add137, !63, !DIExpression(), !213)
  %add = add i64 %add137, 16, !dbg !255
  %cmp.not = icmp ugt i64 %add, %size, !dbg !214
  br i1 %cmp.not, label %for.end88, label %for.body, !dbg !215, !llvm.loop !256

for.end88:                                        ; preds = %for.inc82.2, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %add137, %for.inc82.2 ], !dbg !258
  ret i64 %i.0.lcssa, !dbg !259
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, globals: !43, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/simple/ia64.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "537ce06f7cec90003554685ce664077b")
!2 = !{!3, !19, !25}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!22 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!23 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!24 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 27, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "liblzma/api/lzma/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!29 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!30 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!31 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!32 = !{!33, !38, !40}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !34, line: 27, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !36, line: 45, baseType: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 26, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !36, line: 42, baseType: !5)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !34, line: 24, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !36, line: 38, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !{!44}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "BRANCH_TABLE", scope: !46, file: !1, line: 22, type: !88, isLocal: true, isDefinition: true)
!46 = distinct !DISubprogram(name: "ia64_code", scope: !1, file: !1, line: 18, type: !47, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !51, !38, !55, !56, !49}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 18, baseType: !37)
!50 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_simple", file: !53, line: 19, baseType: !54)
!53 = !DIFile(filename: "liblzma/simple/simple_private.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "2921a659cca72849047c4661dc5d5b7e")
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_simple_s", file: !53, line: 19, flags: DIFlagFwdDecl)
!55 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !69, !70, !71, !73, !77, !78, !79, !81, !82, !85, !86}
!58 = !DILocalVariable(name: "simple", arg: 1, scope: !46, file: !1, line: 18, type: !51)
!59 = !DILocalVariable(name: "now_pos", arg: 2, scope: !46, file: !1, line: 19, type: !38)
!60 = !DILocalVariable(name: "is_encoder", arg: 3, scope: !46, file: !1, line: 19, type: !55)
!61 = !DILocalVariable(name: "buffer", arg: 4, scope: !46, file: !1, line: 20, type: !56)
!62 = !DILocalVariable(name: "size", arg: 5, scope: !46, file: !1, line: 20, type: !49)
!63 = !DILocalVariable(name: "i", scope: !46, file: !1, line: 29, type: !49)
!64 = !DILocalVariable(name: "instr_template", scope: !65, file: !1, line: 31, type: !68)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 30, column: 39)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 30, column: 2)
!67 = distinct !DILexicalBlock(scope: !46, file: !1, line: 30, column: 2)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!69 = !DILocalVariable(name: "mask", scope: !65, file: !1, line: 32, type: !68)
!70 = !DILocalVariable(name: "bit_pos", scope: !65, file: !1, line: 33, type: !38)
!71 = !DILocalVariable(name: "slot", scope: !72, file: !1, line: 35, type: !49)
!72 = distinct !DILexicalBlock(scope: !65, file: !1, line: 35, column: 3)
!73 = !DILocalVariable(name: "byte_pos", scope: !74, file: !1, line: 39, type: !76)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 35, column: 58)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 35, column: 3)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!77 = !DILocalVariable(name: "bit_res", scope: !74, file: !1, line: 40, type: !68)
!78 = !DILocalVariable(name: "instruction", scope: !74, file: !1, line: 41, type: !33)
!79 = !DILocalVariable(name: "j", scope: !80, file: !1, line: 43, type: !49)
!80 = distinct !DILexicalBlock(scope: !74, file: !1, line: 43, column: 4)
!81 = !DILocalVariable(name: "inst_norm", scope: !74, file: !1, line: 48, type: !33)
!82 = !DILocalVariable(name: "src", scope: !83, file: !1, line: 54, type: !38)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 53, column: 8)
!84 = distinct !DILexicalBlock(scope: !74, file: !1, line: 50, column: 8)
!85 = !DILocalVariable(name: "dest", scope: !83, file: !1, line: 60, type: !38)
!86 = !DILocalVariable(name: "j", scope: !87, file: !1, line: 76, type: !49)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 76, column: 5)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 1024, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 32)
!91 = !{i32 7, !"Dwarf Version", i32 5}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"wchar_size", i32 4}
!94 = !{i32 8, !"PIC Level", i32 2}
!95 = !{i32 7, !"PIE Level", i32 2}
!96 = !{i32 7, !"uwtable", i32 2}
!97 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!98 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!99 = distinct !DISubprogram(name: "lzma_simple_ia64_encoder_init", scope: !1, file: !1, line: 98, type: !100, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !182)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !103, !122, !172}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !105, line: 80, baseType: !106)
!105 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !105, line: 124, size: 512, elements: !107)
!107 = !{!108, !111, !114, !117, !143, !148, !155, !160}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !106, file: !105, line: 126, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !105, line: 78, baseType: null)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !106, file: !105, line: 130, baseType: !112, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !113, line: 63, baseType: !33)
!113 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!114 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !106, file: !105, line: 136, baseType: !115, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !116, line: 90, baseType: !37)
!116 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!117 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !106, file: !105, line: 139, baseType: !118, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !105, line: 94, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!102, !109, !122, !136, !139, !49, !141, !139, !49, !142}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !125)
!125 = !{!126, !131, !135}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !124, file: !4, line: 376, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !130, !49, !49}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !124, file: !4, line: 390, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !130, !130}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !124, file: !4, line: 401, baseType: !130, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !106, file: !105, line: 144, baseType: !144, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !105, line: 102, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !109, !122}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !106, file: !105, line: 148, baseType: !149, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !106, file: !105, line: 152, baseType: !156, size: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!102, !109, !159, !159, !33}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !106, file: !105, line: 157, baseType: !161, size: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!102, !109, !122, !164, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !167, line: 65, baseType: !168)
!167 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 43, size: 128, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !168, file: !167, line: 54, baseType: !112, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !168, file: !167, line: 63, baseType: !130, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !105, line: 82, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !105, line: 109, size: 192, elements: !176)
!176 = !{!177, !178, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !175, file: !105, line: 112, baseType: !112, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !175, file: !105, line: 116, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !105, line: 86, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !175, file: !105, line: 119, baseType: !130, size: 64, offset: 128)
!182 = !{!183, !184, !185}
!183 = !DILocalVariable(name: "next", arg: 1, scope: !99, file: !1, line: 98, type: !103)
!184 = !DILocalVariable(name: "allocator", arg: 2, scope: !99, file: !1, line: 99, type: !122)
!185 = !DILocalVariable(name: "filters", arg: 3, scope: !99, file: !1, line: 99, type: !172)
!186 = !DILocation(line: 0, scope: !99)
!187 = !DILocalVariable(name: "next", arg: 1, scope: !188, file: !1, line: 89, type: !103)
!188 = distinct !DISubprogram(name: "ia64_coder_init", scope: !1, file: !1, line: 89, type: !189, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{!102, !103, !122, !172, !55}
!191 = !{!187, !192, !193, !194}
!192 = !DILocalVariable(name: "allocator", arg: 2, scope: !188, file: !1, line: 89, type: !122)
!193 = !DILocalVariable(name: "filters", arg: 3, scope: !188, file: !1, line: 90, type: !172)
!194 = !DILocalVariable(name: "is_encoder", arg: 4, scope: !188, file: !1, line: 90, type: !55)
!195 = !DILocation(line: 0, scope: !188, inlinedAt: !196)
!196 = distinct !DILocation(line: 101, column: 9, scope: !99)
!197 = !DILocation(line: 92, column: 9, scope: !188, inlinedAt: !196)
!198 = !DILocation(line: 101, column: 2, scope: !99)
!199 = distinct !DISubprogram(name: "lzma_simple_ia64_decoder_init", scope: !1, file: !1, line: 106, type: !100, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !200)
!200 = !{!201, !202, !203}
!201 = !DILocalVariable(name: "next", arg: 1, scope: !199, file: !1, line: 106, type: !103)
!202 = !DILocalVariable(name: "allocator", arg: 2, scope: !199, file: !1, line: 107, type: !122)
!203 = !DILocalVariable(name: "filters", arg: 3, scope: !199, file: !1, line: 107, type: !172)
!204 = !DILocation(line: 0, scope: !199)
!205 = !DILocation(line: 0, scope: !188, inlinedAt: !206)
!206 = distinct !DILocation(line: 109, column: 9, scope: !199)
!207 = !DILocation(line: 92, column: 9, scope: !188, inlinedAt: !206)
!208 = !DILocation(line: 109, column: 2, scope: !199)
!209 = !DISubprogram(name: "lzma_simple_coder_init", scope: !53, file: !53, line: 68, type: !210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = !DISubroutineType(types: !211)
!211 = !{!102, !103, !122, !172, !212, !49, !49, !38, !55}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!213 = !DILocation(line: 0, scope: !46)
!214 = !DILocation(line: 30, column: 21, scope: !66)
!215 = !DILocation(line: 30, column: 2, scope: !67)
!216 = !DILocation(line: 31, column: 35, scope: !65)
!217 = !DILocation(line: 31, column: 45, scope: !65)
!218 = !DILocation(line: 32, column: 25, scope: !65)
!219 = !DILocation(line: 0, scope: !65)
!220 = !DILocation(line: 0, scope: !72)
!221 = !DILocation(line: 36, column: 29, scope: !222)
!222 = distinct !DILexicalBlock(scope: !74, file: !1, line: 36, column: 8)
!223 = !DILocation(line: 36, column: 8, scope: !74)
!224 = !DILocation(line: 0, scope: !74)
!225 = !DILocation(line: 0, scope: !80)
!226 = !DILocation(line: 44, column: 20, scope: !227)
!227 = distinct !DILexicalBlock(scope: !80, file: !1, line: 43, column: 4)
!228 = !DILocation(line: 45, column: 16, scope: !227)
!229 = !DILocation(line: 45, column: 7, scope: !227)
!230 = !DILocation(line: 46, column: 7, scope: !227)
!231 = !DILocation(line: 44, column: 17, scope: !227)
!232 = !DILocation(line: 51, column: 6, scope: !84)
!233 = !DILocation(line: 55, column: 18, scope: !83)
!234 = !DILocation(line: 54, column: 20, scope: !83)
!235 = !DILocation(line: 0, scope: !83)
!236 = !DILocation(line: 56, column: 36, scope: !83)
!237 = !DILocation(line: 56, column: 9, scope: !83)
!238 = !DILocation(line: 66, column: 10, scope: !83)
!239 = !DILocation(line: 68, column: 15, scope: !83)
!240 = !DILocation(line: 69, column: 34, scope: !83)
!241 = !DILocation(line: 69, column: 18, scope: !83)
!242 = !DILocation(line: 69, column: 45, scope: !83)
!243 = !DILocation(line: 69, column: 15, scope: !83)
!244 = !DILocation(line: 70, column: 34, scope: !83)
!245 = !DILocation(line: 70, column: 18, scope: !83)
!246 = !DILocation(line: 71, column: 7, scope: !83)
!247 = !DILocation(line: 73, column: 17, scope: !83)
!248 = !DILocation(line: 74, column: 17, scope: !83)
!249 = !DILocation(line: 0, scope: !87)
!250 = !DILocation(line: 77, column: 33, scope: !251)
!251 = distinct !DILexicalBlock(scope: !87, file: !1, line: 76, column: 5)
!252 = !DILocation(line: 77, column: 31, scope: !251)
!253 = !DILocation(line: 79, column: 8, scope: !251)
!254 = !DILocation(line: 35, column: 35, scope: !75)
!255 = !DILocation(line: 30, column: 16, scope: !66)
!256 = distinct !{!256, !215, !257}
!257 = !DILocation(line: 82, column: 2, scope: !67)
!258 = !DILocation(line: 30, scope: !67)
!259 = !DILocation(line: 84, column: 2, scope: !46)
