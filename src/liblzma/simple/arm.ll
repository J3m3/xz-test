; ModuleID = 'liblzma/simple/arm.c'
source_filename = "liblzma/simple/arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_arm_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !45 {
entry:
    #dbg_value(ptr %next, !138, !DIExpression(), !141)
    #dbg_value(ptr %allocator, !139, !DIExpression(), !141)
    #dbg_value(ptr %filters, !140, !DIExpression(), !141)
    #dbg_value(ptr %next, !142, !DIExpression(), !151)
    #dbg_value(ptr %allocator, !148, !DIExpression(), !151)
    #dbg_value(ptr %filters, !149, !DIExpression(), !151)
    #dbg_value(i1 true, !150, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !151)
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @arm_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext true) #3, !dbg !153
  ret i32 %call.i, !dbg !154
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_arm_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !155 {
entry:
    #dbg_value(ptr %next, !157, !DIExpression(), !160)
    #dbg_value(ptr %allocator, !158, !DIExpression(), !160)
    #dbg_value(ptr %filters, !159, !DIExpression(), !160)
    #dbg_value(ptr %next, !142, !DIExpression(), !161)
    #dbg_value(ptr %allocator, !148, !DIExpression(), !161)
    #dbg_value(ptr %filters, !149, !DIExpression(), !161)
    #dbg_value(i1 false, !150, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !161)
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @arm_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext false) #3, !dbg !163
  ret i32 %call.i, !dbg !164
}

declare !dbg !165 i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @arm_code(ptr nocapture readnone %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 !dbg !175 {
entry:
    #dbg_value(ptr poison, !177, !DIExpression(), !190)
    #dbg_value(i32 %now_pos, !178, !DIExpression(), !190)
    #dbg_value(i1 %is_encoder, !179, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !190)
    #dbg_value(ptr %buffer, !180, !DIExpression(), !190)
    #dbg_value(i64 %size, !181, !DIExpression(), !190)
    #dbg_value(i64 0, !182, !DIExpression(), !190)
  %cmp.not60 = icmp ult i64 %size, 4, !dbg !191
  br i1 %cmp.not60, label %for.end, label %for.body.lr.ph, !dbg !192

for.body.lr.ph:                                   ; preds = %entry
  %add18 = add i32 %now_pos, 8
  %0 = zext i64 %size to i128, !dbg !192
  %1 = add nuw nsw i128 %0, 73786976294838206460, !dbg !192
  %2 = lshr i128 %1, 2, !dbg !192
  %3 = trunc i128 %2 to i64, !dbg !192
  %4 = add i64 %3, 1, !dbg !192
  %min.iters.check109 = icmp ult i64 %4, 4, !dbg !192
  br i1 %is_encoder, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  br i1 %min.iters.check109, label %for.body.preheader133, label %vector.scevcheck, !dbg !192

for.body.preheader133:                            ; preds = %middle.block, %vector.scevcheck, %for.body.preheader
  %add62.ph = phi i64 [ 4, %vector.scevcheck ], [ 4, %for.body.preheader ], [ %ind.end, %middle.block ]
  %i.061.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %for.body.preheader ], [ %ind.end80, %middle.block ]
  br label %for.body, !dbg !192

vector.scevcheck:                                 ; preds = %for.body.preheader
  %5 = zext i64 %size to i128, !dbg !192
  %6 = add nsw i128 %5, -4, !dbg !192
  %7 = lshr i128 %6, 2, !dbg !192
  %8 = trunc i128 %7 to i64, !dbg !192
  %mul.result = shl i64 %8, 2, !dbg !192
  %mul.overflow = icmp ugt i64 %8, 4611686018427387903, !dbg !192
  %9 = icmp ugt i64 %mul.result, -9, !dbg !192
  %10 = or i1 %9, %mul.overflow, !dbg !192
  %scevgep = getelementptr i8, ptr %buffer, i64 3, !dbg !192
  %11 = trunc i128 %7 to i64, !dbg !192
  %mul.result67 = shl i64 %11, 2, !dbg !192
  %mul.overflow68 = icmp ugt i64 %11, 4611686018427387903, !dbg !192
  %12 = getelementptr i8, ptr %scevgep, i64 %mul.result67, !dbg !192
  %13 = icmp ult ptr %12, %scevgep, !dbg !192
  %14 = or i1 %13, %mul.overflow68, !dbg !192
  %15 = icmp ugt i128 %6, 73786976294838206463, !dbg !192
  %16 = or i1 %14, %15, !dbg !192
  %17 = trunc i128 %7 to i64, !dbg !192
  %mul.result70 = shl i64 %17, 2, !dbg !192
  %mul.overflow71 = icmp ugt i64 %17, 4611686018427387903, !dbg !192
  %18 = getelementptr i8, ptr %buffer, i64 %mul.result70, !dbg !192
  %19 = icmp ult ptr %18, %buffer, !dbg !192
  %20 = or i1 %19, %mul.overflow71, !dbg !192
  %scevgep72 = getelementptr i8, ptr %buffer, i64 1, !dbg !192
  %21 = trunc i128 %7 to i64, !dbg !192
  %mul.result74 = shl i64 %21, 2, !dbg !192
  %mul.overflow75 = icmp ugt i64 %21, 4611686018427387903, !dbg !192
  %22 = getelementptr i8, ptr %scevgep72, i64 %mul.result74, !dbg !192
  %23 = icmp ult ptr %22, %scevgep72, !dbg !192
  %24 = or i1 %23, %mul.overflow75, !dbg !192
  %scevgep76 = getelementptr i8, ptr %buffer, i64 2, !dbg !192
  %25 = trunc i128 %7 to i64, !dbg !192
  %mul.result78 = shl i64 %25, 2, !dbg !192
  %mul.overflow79 = icmp ugt i64 %25, 4611686018427387903, !dbg !192
  %26 = getelementptr i8, ptr %scevgep76, i64 %mul.result78, !dbg !192
  %27 = icmp ult ptr %26, %scevgep76, !dbg !192
  %28 = or i1 %27, %mul.overflow79, !dbg !192
  %29 = or i1 %10, %16, !dbg !192
  %30 = or i1 %20, %29, !dbg !192
  %31 = or i1 %24, %30, !dbg !192
  %32 = or i1 %28, %31, !dbg !192
  br i1 %32, label %for.body.preheader133, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %4, -4, !dbg !192
  %33 = shl i64 %n.vec, 2, !dbg !192
  %ind.end = or disjoint i64 %33, 4, !dbg !192
  %ind.end80 = shl i64 %n.vec, 2, !dbg !192
  br label %vector.body, !dbg !192

vector.body:                                      ; preds = %pred.store.continue87, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue87 ]
  %offset.idx = shl i64 %index, 2, !dbg !192
  %34 = or disjoint i64 %offset.idx, 4, !dbg !192
  %35 = or disjoint i64 %offset.idx, 8, !dbg !192
  %36 = or disjoint i64 %offset.idx, 12, !dbg !192
  %37 = or disjoint i64 %offset.idx, 3, !dbg !193
  %38 = or disjoint i64 %offset.idx, 7, !dbg !193
  %39 = or disjoint i64 %offset.idx, 11, !dbg !193
  %40 = or disjoint i64 %offset.idx, 15, !dbg !193
  %41 = getelementptr inbounds i8, ptr %buffer, i64 %37, !dbg !194
  %42 = getelementptr inbounds i8, ptr %buffer, i64 %38, !dbg !194
  %43 = getelementptr inbounds i8, ptr %buffer, i64 %39, !dbg !194
  %44 = getelementptr inbounds i8, ptr %buffer, i64 %40, !dbg !194
  %45 = load i8, ptr %41, align 1, !dbg !194
  %46 = load i8, ptr %42, align 1, !dbg !194
  %47 = load i8, ptr %43, align 1, !dbg !194
  %48 = load i8, ptr %44, align 1, !dbg !194
  %49 = icmp eq i8 %45, -21, !dbg !195
  %50 = icmp eq i8 %46, -21, !dbg !195
  %51 = icmp eq i8 %47, -21, !dbg !195
  %52 = icmp eq i8 %48, -21, !dbg !195
  br i1 %49, label %pred.store.if, label %pred.store.continue, !dbg !192

pred.store.if:                                    ; preds = %vector.body
  %53 = or disjoint i64 %offset.idx, 2, !dbg !196
  %54 = getelementptr inbounds i8, ptr %buffer, i64 %53, !dbg !197
  %55 = load i8, ptr %54, align 1, !dbg !197
  %56 = or disjoint i64 %offset.idx, 1, !dbg !198
  %57 = getelementptr inbounds i8, ptr %buffer, i64 %56, !dbg !199
  %58 = load i8, ptr %57, align 1, !dbg !199
  %59 = getelementptr inbounds i8, ptr %buffer, i64 %offset.idx, !dbg !200
  %60 = load i8, ptr %59, align 1, !dbg !200
  %61 = zext i8 %55 to i32, !dbg !197
  %62 = zext i8 %58 to i32, !dbg !199
  %63 = shl nuw nsw i32 %61, 16, !dbg !201
  %64 = shl nuw nsw i32 %62, 8, !dbg !202
  %65 = zext i8 %60 to i32, !dbg !203
  %66 = or disjoint i32 %64, %63, !dbg !204
  %67 = trunc i64 %offset.idx to i32, !dbg !205
  %68 = or disjoint i32 %66, %65, !dbg !207
  %69 = add i32 %67, %now_pos, !dbg !208
  %70 = shl nuw nsw i32 %68, 2, !dbg !209
  %71 = sub i32 %70, %69, !dbg !210
  %72 = add i32 %71, -8, !dbg !210
  %73 = lshr i32 %72, 18, !dbg !211
  %74 = trunc i32 %73 to i8, !dbg !212
  store i8 %74, ptr %54, align 1, !dbg !213
  %75 = lshr i32 %72, 10, !dbg !214
  %76 = trunc i32 %75 to i8, !dbg !215
  store i8 %76, ptr %57, align 1, !dbg !216
  %77 = lshr i32 %72, 2, !dbg !217
  %78 = trunc i32 %77 to i8, !dbg !218
  store i8 %78, ptr %59, align 1, !dbg !219
  br label %pred.store.continue, !dbg !195

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  br i1 %50, label %pred.store.if82, label %pred.store.continue83, !dbg !219

pred.store.if82:                                  ; preds = %pred.store.continue
  %79 = or disjoint i64 %offset.idx, 6, !dbg !196
  %80 = getelementptr inbounds i8, ptr %buffer, i64 %79, !dbg !197
  %81 = load i8, ptr %80, align 1, !dbg !197
  %82 = or disjoint i64 %offset.idx, 5, !dbg !198
  %83 = getelementptr inbounds i8, ptr %buffer, i64 %82, !dbg !199
  %84 = load i8, ptr %83, align 1, !dbg !199
  %85 = getelementptr inbounds i8, ptr %buffer, i64 %34, !dbg !200
  %86 = load i8, ptr %85, align 1, !dbg !200
  %87 = zext i8 %81 to i32, !dbg !197
  %88 = zext i8 %84 to i32, !dbg !199
  %89 = shl nuw nsw i32 %87, 16, !dbg !201
  %90 = shl nuw nsw i32 %88, 8, !dbg !202
  %91 = zext i8 %86 to i32, !dbg !203
  %92 = or disjoint i32 %90, %89, !dbg !204
  %93 = trunc i64 %34 to i32, !dbg !205
  %94 = or disjoint i32 %92, %91, !dbg !207
  %95 = add i32 %93, %now_pos, !dbg !208
  %96 = shl nuw nsw i32 %94, 2, !dbg !209
  %97 = sub i32 %96, %95, !dbg !210
  %98 = add i32 %97, -8, !dbg !210
  %99 = lshr i32 %98, 18, !dbg !211
  %100 = trunc i32 %99 to i8, !dbg !212
  store i8 %100, ptr %80, align 1, !dbg !213
  %101 = lshr i32 %98, 10, !dbg !214
  %102 = trunc i32 %101 to i8, !dbg !215
  store i8 %102, ptr %83, align 1, !dbg !216
  %103 = lshr i32 %98, 2, !dbg !217
  %104 = trunc i32 %103 to i8, !dbg !218
  store i8 %104, ptr %85, align 1, !dbg !219
  br label %pred.store.continue83, !dbg !219

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue
  br i1 %51, label %pred.store.if84, label %pred.store.continue85, !dbg !219

pred.store.if84:                                  ; preds = %pred.store.continue83
  %105 = or disjoint i64 %offset.idx, 10, !dbg !196
  %106 = getelementptr inbounds i8, ptr %buffer, i64 %105, !dbg !197
  %107 = load i8, ptr %106, align 1, !dbg !197
  %108 = or disjoint i64 %offset.idx, 9, !dbg !198
  %109 = getelementptr inbounds i8, ptr %buffer, i64 %108, !dbg !199
  %110 = load i8, ptr %109, align 1, !dbg !199
  %111 = getelementptr inbounds i8, ptr %buffer, i64 %35, !dbg !200
  %112 = load i8, ptr %111, align 1, !dbg !200
  %113 = zext i8 %107 to i32, !dbg !197
  %114 = zext i8 %110 to i32, !dbg !199
  %115 = shl nuw nsw i32 %113, 16, !dbg !201
  %116 = shl nuw nsw i32 %114, 8, !dbg !202
  %117 = zext i8 %112 to i32, !dbg !203
  %118 = or disjoint i32 %116, %115, !dbg !204
  %119 = trunc i64 %35 to i32, !dbg !205
  %120 = or disjoint i32 %118, %117, !dbg !207
  %121 = add i32 %119, %now_pos, !dbg !208
  %122 = shl nuw nsw i32 %120, 2, !dbg !209
  %123 = sub i32 %122, %121, !dbg !210
  %124 = add i32 %123, -8, !dbg !210
  %125 = lshr i32 %124, 18, !dbg !211
  %126 = trunc i32 %125 to i8, !dbg !212
  store i8 %126, ptr %106, align 1, !dbg !213
  %127 = lshr i32 %124, 10, !dbg !214
  %128 = trunc i32 %127 to i8, !dbg !215
  store i8 %128, ptr %109, align 1, !dbg !216
  %129 = lshr i32 %124, 2, !dbg !217
  %130 = trunc i32 %129 to i8, !dbg !218
  store i8 %130, ptr %111, align 1, !dbg !219
  br label %pred.store.continue85, !dbg !219

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  br i1 %52, label %pred.store.if86, label %pred.store.continue87, !dbg !219

pred.store.if86:                                  ; preds = %pred.store.continue85
  %131 = or disjoint i64 %offset.idx, 14, !dbg !196
  %132 = getelementptr inbounds i8, ptr %buffer, i64 %131, !dbg !197
  %133 = load i8, ptr %132, align 1, !dbg !197
  %134 = or disjoint i64 %offset.idx, 13, !dbg !198
  %135 = getelementptr inbounds i8, ptr %buffer, i64 %134, !dbg !199
  %136 = load i8, ptr %135, align 1, !dbg !199
  %137 = getelementptr inbounds i8, ptr %buffer, i64 %36, !dbg !200
  %138 = load i8, ptr %137, align 1, !dbg !200
  %139 = zext i8 %133 to i32, !dbg !197
  %140 = zext i8 %136 to i32, !dbg !199
  %141 = shl nuw nsw i32 %139, 16, !dbg !201
  %142 = shl nuw nsw i32 %140, 8, !dbg !202
  %143 = zext i8 %138 to i32, !dbg !203
  %144 = or disjoint i32 %142, %141, !dbg !204
  %145 = trunc i64 %36 to i32, !dbg !205
  %146 = or disjoint i32 %144, %143, !dbg !207
  %147 = add i32 %145, %now_pos, !dbg !208
  %148 = shl nuw nsw i32 %146, 2, !dbg !209
  %149 = sub i32 %148, %147, !dbg !210
  %150 = add i32 %149, -8, !dbg !210
  %151 = lshr i32 %150, 18, !dbg !211
  %152 = trunc i32 %151 to i8, !dbg !212
  store i8 %152, ptr %132, align 1, !dbg !213
  %153 = lshr i32 %150, 10, !dbg !214
  %154 = trunc i32 %153 to i8, !dbg !215
  store i8 %154, ptr %135, align 1, !dbg !216
  %155 = lshr i32 %150, 2, !dbg !217
  %156 = trunc i32 %155 to i8, !dbg !218
  store i8 %156, ptr %137, align 1, !dbg !219
  br label %pred.store.continue87, !dbg !219

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %index.next = add nuw i64 %index, 4
  %157 = icmp eq i64 %index.next, %n.vec
  br i1 %157, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %pred.store.continue87
  %cmp.n = icmp eq i64 %4, %n.vec, !dbg !192
  %cmo = shl i64 %n.vec, 2, !dbg !192
  br i1 %cmp.n, label %for.end, label %for.body.preheader133, !dbg !192

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  br i1 %min.iters.check109, label %for.body.us.preheader132, label %vector.scevcheck88, !dbg !192

vector.scevcheck88:                               ; preds = %for.body.us.preheader
  %158 = zext i64 %size to i128, !dbg !192
  %159 = add nsw i128 %158, -4, !dbg !192
  %160 = lshr i128 %159, 2, !dbg !192
  %161 = trunc i128 %160 to i64, !dbg !192
  %mul.result90 = shl i64 %161, 2, !dbg !192
  %mul.overflow91 = icmp ugt i64 %161, 4611686018427387903, !dbg !192
  %162 = icmp ugt i64 %mul.result90, -9, !dbg !192
  %163 = or i1 %162, %mul.overflow91, !dbg !192
  %scevgep92 = getelementptr i8, ptr %buffer, i64 3, !dbg !192
  %164 = trunc i128 %160 to i64, !dbg !192
  %mul.result94 = shl i64 %164, 2, !dbg !192
  %mul.overflow95 = icmp ugt i64 %164, 4611686018427387903, !dbg !192
  %165 = getelementptr i8, ptr %scevgep92, i64 %mul.result94, !dbg !192
  %166 = icmp ult ptr %165, %scevgep92, !dbg !192
  %167 = or i1 %166, %mul.overflow95, !dbg !192
  %168 = icmp ugt i128 %159, 73786976294838206463, !dbg !192
  %169 = or i1 %167, %168, !dbg !192
  %170 = trunc i128 %160 to i64, !dbg !192
  %mul.result97 = shl i64 %170, 2, !dbg !192
  %mul.overflow98 = icmp ugt i64 %170, 4611686018427387903, !dbg !192
  %171 = getelementptr i8, ptr %buffer, i64 %mul.result97, !dbg !192
  %172 = icmp ult ptr %171, %buffer, !dbg !192
  %173 = or i1 %172, %mul.overflow98, !dbg !192
  %scevgep99 = getelementptr i8, ptr %buffer, i64 1, !dbg !192
  %174 = trunc i128 %160 to i64, !dbg !192
  %mul.result101 = shl i64 %174, 2, !dbg !192
  %mul.overflow102 = icmp ugt i64 %174, 4611686018427387903, !dbg !192
  %175 = getelementptr i8, ptr %scevgep99, i64 %mul.result101, !dbg !192
  %176 = icmp ult ptr %175, %scevgep99, !dbg !192
  %177 = or i1 %176, %mul.overflow102, !dbg !192
  %scevgep103 = getelementptr i8, ptr %buffer, i64 2, !dbg !192
  %178 = trunc i128 %160 to i64, !dbg !192
  %mul.result105 = shl i64 %178, 2, !dbg !192
  %mul.overflow106 = icmp ugt i64 %178, 4611686018427387903, !dbg !192
  %179 = getelementptr i8, ptr %scevgep103, i64 %mul.result105, !dbg !192
  %180 = icmp ult ptr %179, %scevgep103, !dbg !192
  %181 = or i1 %180, %mul.overflow106, !dbg !192
  %182 = or i1 %163, %169, !dbg !192
  %183 = or i1 %173, %182, !dbg !192
  %184 = or i1 %177, %183, !dbg !192
  %185 = or i1 %181, %184, !dbg !192
  br i1 %185, label %for.body.us.preheader132, label %vector.ph110

vector.ph110:                                     ; preds = %vector.scevcheck88
  %n.vec112 = and i64 %4, -4, !dbg !192
  %186 = shl i64 %n.vec112, 2, !dbg !192
  %ind.end113 = or disjoint i64 %186, 4, !dbg !192
  %ind.end115 = shl i64 %n.vec112, 2, !dbg !192
  br label %vector.body117, !dbg !192

vector.body117:                                   ; preds = %pred.store.continue127, %vector.ph110
  %index118 = phi i64 [ 0, %vector.ph110 ], [ %index.next128, %pred.store.continue127 ]
  %offset.idx119 = shl i64 %index118, 2, !dbg !192
  %187 = or disjoint i64 %offset.idx119, 4, !dbg !192
  %188 = or disjoint i64 %offset.idx119, 8, !dbg !192
  %189 = or disjoint i64 %offset.idx119, 12, !dbg !192
  %190 = or disjoint i64 %offset.idx119, 3, !dbg !193
  %191 = or disjoint i64 %offset.idx119, 7, !dbg !193
  %192 = or disjoint i64 %offset.idx119, 11, !dbg !193
  %193 = or disjoint i64 %offset.idx119, 15, !dbg !193
  %194 = getelementptr inbounds i8, ptr %buffer, i64 %190, !dbg !194
  %195 = getelementptr inbounds i8, ptr %buffer, i64 %191, !dbg !194
  %196 = getelementptr inbounds i8, ptr %buffer, i64 %192, !dbg !194
  %197 = getelementptr inbounds i8, ptr %buffer, i64 %193, !dbg !194
  %198 = load i8, ptr %194, align 1, !dbg !194
  %199 = load i8, ptr %195, align 1, !dbg !194
  %200 = load i8, ptr %196, align 1, !dbg !194
  %201 = load i8, ptr %197, align 1, !dbg !194
  %202 = icmp eq i8 %198, -21, !dbg !195
  %203 = icmp eq i8 %199, -21, !dbg !195
  %204 = icmp eq i8 %200, -21, !dbg !195
  %205 = icmp eq i8 %201, -21, !dbg !195
  br i1 %202, label %pred.store.if120, label %pred.store.continue121, !dbg !192

pred.store.if120:                                 ; preds = %vector.body117
  %206 = or disjoint i64 %offset.idx119, 2, !dbg !196
  %207 = getelementptr inbounds i8, ptr %buffer, i64 %206, !dbg !197
  %208 = load i8, ptr %207, align 1, !dbg !197
  %209 = or disjoint i64 %offset.idx119, 1, !dbg !198
  %210 = getelementptr inbounds i8, ptr %buffer, i64 %209, !dbg !199
  %211 = load i8, ptr %210, align 1, !dbg !199
  %212 = getelementptr inbounds i8, ptr %buffer, i64 %offset.idx119, !dbg !200
  %213 = load i8, ptr %212, align 1, !dbg !200
  %214 = zext i8 %208 to i32, !dbg !197
  %215 = zext i8 %211 to i32, !dbg !199
  %216 = shl nuw nsw i32 %214, 16, !dbg !201
  %217 = shl nuw nsw i32 %215, 8, !dbg !202
  %218 = zext i8 %213 to i32, !dbg !203
  %219 = or disjoint i32 %217, %216, !dbg !204
  %220 = or disjoint i32 %219, %218, !dbg !207
  %221 = trunc i64 %offset.idx119 to i32, !dbg !224
  %222 = shl nuw nsw i32 %220, 2, !dbg !209
  %223 = add i32 %add18, %221, !dbg !225
  %224 = add i32 %223, %222, !dbg !226
  %225 = lshr i32 %224, 18, !dbg !211
  %226 = trunc i32 %225 to i8, !dbg !212
  store i8 %226, ptr %207, align 1, !dbg !213
  %227 = lshr i32 %224, 10, !dbg !214
  %228 = trunc i32 %227 to i8, !dbg !215
  store i8 %228, ptr %210, align 1, !dbg !216
  %229 = lshr i32 %224, 2, !dbg !217
  %230 = trunc i32 %229 to i8, !dbg !218
  store i8 %230, ptr %212, align 1, !dbg !219
  br label %pred.store.continue121, !dbg !195

pred.store.continue121:                           ; preds = %pred.store.if120, %vector.body117
  br i1 %203, label %pred.store.if122, label %pred.store.continue123, !dbg !219

pred.store.if122:                                 ; preds = %pred.store.continue121
  %231 = or disjoint i64 %offset.idx119, 6, !dbg !196
  %232 = getelementptr inbounds i8, ptr %buffer, i64 %231, !dbg !197
  %233 = load i8, ptr %232, align 1, !dbg !197
  %234 = or disjoint i64 %offset.idx119, 5, !dbg !198
  %235 = getelementptr inbounds i8, ptr %buffer, i64 %234, !dbg !199
  %236 = load i8, ptr %235, align 1, !dbg !199
  %237 = getelementptr inbounds i8, ptr %buffer, i64 %187, !dbg !200
  %238 = load i8, ptr %237, align 1, !dbg !200
  %239 = zext i8 %233 to i32, !dbg !197
  %240 = zext i8 %236 to i32, !dbg !199
  %241 = shl nuw nsw i32 %239, 16, !dbg !201
  %242 = shl nuw nsw i32 %240, 8, !dbg !202
  %243 = zext i8 %238 to i32, !dbg !203
  %244 = or disjoint i32 %242, %241, !dbg !204
  %245 = or disjoint i32 %244, %243, !dbg !207
  %246 = trunc i64 %187 to i32, !dbg !224
  %247 = shl nuw nsw i32 %245, 2, !dbg !209
  %248 = add i32 %add18, %246, !dbg !225
  %249 = add i32 %248, %247, !dbg !226
  %250 = lshr i32 %249, 18, !dbg !211
  %251 = trunc i32 %250 to i8, !dbg !212
  store i8 %251, ptr %232, align 1, !dbg !213
  %252 = lshr i32 %249, 10, !dbg !214
  %253 = trunc i32 %252 to i8, !dbg !215
  store i8 %253, ptr %235, align 1, !dbg !216
  %254 = lshr i32 %249, 2, !dbg !217
  %255 = trunc i32 %254 to i8, !dbg !218
  store i8 %255, ptr %237, align 1, !dbg !219
  br label %pred.store.continue123, !dbg !219

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  br i1 %204, label %pred.store.if124, label %pred.store.continue125, !dbg !219

pred.store.if124:                                 ; preds = %pred.store.continue123
  %256 = or disjoint i64 %offset.idx119, 10, !dbg !196
  %257 = getelementptr inbounds i8, ptr %buffer, i64 %256, !dbg !197
  %258 = load i8, ptr %257, align 1, !dbg !197
  %259 = or disjoint i64 %offset.idx119, 9, !dbg !198
  %260 = getelementptr inbounds i8, ptr %buffer, i64 %259, !dbg !199
  %261 = load i8, ptr %260, align 1, !dbg !199
  %262 = getelementptr inbounds i8, ptr %buffer, i64 %188, !dbg !200
  %263 = load i8, ptr %262, align 1, !dbg !200
  %264 = zext i8 %258 to i32, !dbg !197
  %265 = zext i8 %261 to i32, !dbg !199
  %266 = shl nuw nsw i32 %264, 16, !dbg !201
  %267 = shl nuw nsw i32 %265, 8, !dbg !202
  %268 = zext i8 %263 to i32, !dbg !203
  %269 = or disjoint i32 %267, %266, !dbg !204
  %270 = or disjoint i32 %269, %268, !dbg !207
  %271 = trunc i64 %188 to i32, !dbg !224
  %272 = shl nuw nsw i32 %270, 2, !dbg !209
  %273 = add i32 %add18, %271, !dbg !225
  %274 = add i32 %273, %272, !dbg !226
  %275 = lshr i32 %274, 18, !dbg !211
  %276 = trunc i32 %275 to i8, !dbg !212
  store i8 %276, ptr %257, align 1, !dbg !213
  %277 = lshr i32 %274, 10, !dbg !214
  %278 = trunc i32 %277 to i8, !dbg !215
  store i8 %278, ptr %260, align 1, !dbg !216
  %279 = lshr i32 %274, 2, !dbg !217
  %280 = trunc i32 %279 to i8, !dbg !218
  store i8 %280, ptr %262, align 1, !dbg !219
  br label %pred.store.continue125, !dbg !219

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  br i1 %205, label %pred.store.if126, label %pred.store.continue127, !dbg !219

pred.store.if126:                                 ; preds = %pred.store.continue125
  %281 = or disjoint i64 %offset.idx119, 14, !dbg !196
  %282 = getelementptr inbounds i8, ptr %buffer, i64 %281, !dbg !197
  %283 = load i8, ptr %282, align 1, !dbg !197
  %284 = or disjoint i64 %offset.idx119, 13, !dbg !198
  %285 = getelementptr inbounds i8, ptr %buffer, i64 %284, !dbg !199
  %286 = load i8, ptr %285, align 1, !dbg !199
  %287 = getelementptr inbounds i8, ptr %buffer, i64 %189, !dbg !200
  %288 = load i8, ptr %287, align 1, !dbg !200
  %289 = zext i8 %283 to i32, !dbg !197
  %290 = zext i8 %286 to i32, !dbg !199
  %291 = shl nuw nsw i32 %289, 16, !dbg !201
  %292 = shl nuw nsw i32 %290, 8, !dbg !202
  %293 = zext i8 %288 to i32, !dbg !203
  %294 = or disjoint i32 %292, %291, !dbg !204
  %295 = or disjoint i32 %294, %293, !dbg !207
  %296 = trunc i64 %189 to i32, !dbg !224
  %297 = shl nuw nsw i32 %295, 2, !dbg !209
  %298 = add i32 %add18, %296, !dbg !225
  %299 = add i32 %298, %297, !dbg !226
  %300 = lshr i32 %299, 18, !dbg !211
  %301 = trunc i32 %300 to i8, !dbg !212
  store i8 %301, ptr %282, align 1, !dbg !213
  %302 = lshr i32 %299, 10, !dbg !214
  %303 = trunc i32 %302 to i8, !dbg !215
  store i8 %303, ptr %285, align 1, !dbg !216
  %304 = lshr i32 %299, 2, !dbg !217
  %305 = trunc i32 %304 to i8, !dbg !218
  store i8 %305, ptr %287, align 1, !dbg !219
  br label %pred.store.continue127, !dbg !219

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %index.next128 = add nuw i64 %index118, 4
  %306 = icmp eq i64 %index.next128, %n.vec112
  br i1 %306, label %middle.block107, label %vector.body117, !llvm.loop !227

middle.block107:                                  ; preds = %pred.store.continue127
  %cmp.n129 = icmp eq i64 %4, %n.vec112, !dbg !192
  %cmo130 = shl i64 %n.vec112, 2, !dbg !192
  br i1 %cmp.n129, label %for.end, label %for.body.us.preheader132, !dbg !192

for.body.us.preheader132:                         ; preds = %middle.block107, %vector.scevcheck88, %for.body.us.preheader
  %add62.us.ph = phi i64 [ 4, %vector.scevcheck88 ], [ 4, %for.body.us.preheader ], [ %ind.end113, %middle.block107 ]
  %i.061.us.ph = phi i64 [ 0, %vector.scevcheck88 ], [ 0, %for.body.us.preheader ], [ %ind.end115, %middle.block107 ]
  br label %for.body.us, !dbg !192

for.body.us:                                      ; preds = %for.body.us.preheader132, %for.inc.us
  %add62.us = phi i64 [ %add.us, %for.inc.us ], [ %add62.us.ph, %for.body.us.preheader132 ]
  %i.061.us = phi i64 [ %add62.us, %for.inc.us ], [ %i.061.us.ph, %for.body.us.preheader132 ]
    #dbg_value(i64 %i.061.us, !182, !DIExpression(), !190)
  %add1.us = or disjoint i64 %i.061.us, 3, !dbg !193
  %arrayidx.us = getelementptr inbounds i8, ptr %buffer, i64 %add1.us, !dbg !194
  %307 = load i8, ptr %arrayidx.us, align 1, !dbg !194
  %cmp2.us = icmp eq i8 %307, -21, !dbg !195
  br i1 %cmp2.us, label %if.then.us, label %for.inc.us, !dbg !228

if.then.us:                                       ; preds = %for.body.us
  %add4.us = or disjoint i64 %i.061.us, 2, !dbg !196
  %arrayidx5.us = getelementptr inbounds i8, ptr %buffer, i64 %add4.us, !dbg !197
  %308 = load i8, ptr %arrayidx5.us, align 1, !dbg !197
  %conv6.us = zext i8 %308 to i32, !dbg !197
  %shl.us = shl nuw nsw i32 %conv6.us, 16, !dbg !201
  %add7.us = or disjoint i64 %i.061.us, 1, !dbg !198
  %arrayidx8.us = getelementptr inbounds i8, ptr %buffer, i64 %add7.us, !dbg !199
  %309 = load i8, ptr %arrayidx8.us, align 1, !dbg !199
  %conv9.us = zext i8 %309 to i32, !dbg !199
  %shl10.us = shl nuw nsw i32 %conv9.us, 8, !dbg !202
  %or.us = or disjoint i32 %shl10.us, %shl.us, !dbg !204
  %arrayidx12.us = getelementptr inbounds i8, ptr %buffer, i64 %i.061.us, !dbg !200
  %310 = load i8, ptr %arrayidx12.us, align 1, !dbg !200
  %conv13.us = zext i8 %310 to i32, !dbg !203
  %or14.us = or disjoint i32 %or.us, %conv13.us, !dbg !207
    #dbg_value(i32 %or14.us, !183, !DIExpression(), !229)
  %shl15.us = shl nuw nsw i32 %or14.us, 2, !dbg !209
    #dbg_value(i32 %shl15.us, !183, !DIExpression(), !229)
  %conv17.us = trunc i64 %i.061.us to i32, !dbg !224
  %add19.us = add i32 %add18, %conv17.us, !dbg !225
  %add20.us = add i32 %add19.us, %shl15.us, !dbg !226
    #dbg_value(i32 poison, !189, !DIExpression(), !229)
  %shr.us = lshr i32 %add20.us, 2, !dbg !217
    #dbg_value(i32 %shr.us, !189, !DIExpression(), !229)
  %shr24.us = lshr i32 %add20.us, 18, !dbg !211
  %conv25.us = trunc i32 %shr24.us to i8, !dbg !212
  store i8 %conv25.us, ptr %arrayidx5.us, align 1, !dbg !213
  %shr28.us = lshr i32 %add20.us, 10, !dbg !214
  %conv29.us = trunc i32 %shr28.us to i8, !dbg !215
  store i8 %conv29.us, ptr %arrayidx8.us, align 1, !dbg !216
  %conv32.us = trunc i32 %shr.us to i8, !dbg !218
  store i8 %conv32.us, ptr %arrayidx12.us, align 1, !dbg !219
  br label %for.inc.us, !dbg !230

for.inc.us:                                       ; preds = %if.then.us, %for.body.us
    #dbg_value(i64 %add62.us, !182, !DIExpression(), !190)
  %add.us = add i64 %add62.us, 4, !dbg !231
  %cmp.not.us = icmp ugt i64 %add.us, %size, !dbg !191
  br i1 %cmp.not.us, label %for.end, label %for.body.us, !dbg !192, !llvm.loop !232

for.body:                                         ; preds = %for.body.preheader133, %for.inc
  %add62 = phi i64 [ %add, %for.inc ], [ %add62.ph, %for.body.preheader133 ]
  %i.061 = phi i64 [ %add62, %for.inc ], [ %i.061.ph, %for.body.preheader133 ]
    #dbg_value(i64 %i.061, !182, !DIExpression(), !190)
  %add1 = or disjoint i64 %i.061, 3, !dbg !193
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %add1, !dbg !194
  %311 = load i8, ptr %arrayidx, align 1, !dbg !194
  %cmp2 = icmp eq i8 %311, -21, !dbg !195
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !228

if.then:                                          ; preds = %for.body
  %add4 = or disjoint i64 %i.061, 2, !dbg !196
  %arrayidx5 = getelementptr inbounds i8, ptr %buffer, i64 %add4, !dbg !197
  %312 = load i8, ptr %arrayidx5, align 1, !dbg !197
  %conv6 = zext i8 %312 to i32, !dbg !197
  %shl = shl nuw nsw i32 %conv6, 16, !dbg !201
  %add7 = or disjoint i64 %i.061, 1, !dbg !198
  %arrayidx8 = getelementptr inbounds i8, ptr %buffer, i64 %add7, !dbg !199
  %313 = load i8, ptr %arrayidx8, align 1, !dbg !199
  %conv9 = zext i8 %313 to i32, !dbg !199
  %shl10 = shl nuw nsw i32 %conv9, 8, !dbg !202
  %or = or disjoint i32 %shl10, %shl, !dbg !204
  %arrayidx12 = getelementptr inbounds i8, ptr %buffer, i64 %i.061, !dbg !200
  %314 = load i8, ptr %arrayidx12, align 1, !dbg !200
  %conv13 = zext i8 %314 to i32, !dbg !203
  %or14 = or disjoint i32 %or, %conv13, !dbg !207
    #dbg_value(i32 %or14, !183, !DIExpression(), !229)
  %shl15 = shl nuw nsw i32 %or14, 2, !dbg !209
    #dbg_value(i32 %shl15, !183, !DIExpression(), !229)
  %conv21 = trunc i64 %i.061 to i32, !dbg !205
  %315 = add i32 %conv21, %now_pos, !dbg !208
  %reass.sub = sub i32 %shl15, %315, !dbg !210
  %sub = add i32 %reass.sub, -8, !dbg !210
    #dbg_value(i32 %sub, !189, !DIExpression(), !229)
  %shr = lshr i32 %sub, 2, !dbg !217
    #dbg_value(i32 %shr, !189, !DIExpression(), !229)
  %shr24 = lshr i32 %sub, 18, !dbg !211
  %conv25 = trunc i32 %shr24 to i8, !dbg !212
  store i8 %conv25, ptr %arrayidx5, align 1, !dbg !213
  %shr28 = lshr i32 %sub, 10, !dbg !214
  %conv29 = trunc i32 %shr28 to i8, !dbg !215
  store i8 %conv29, ptr %arrayidx8, align 1, !dbg !216
  %conv32 = trunc i32 %shr to i8, !dbg !218
  store i8 %conv32, ptr %arrayidx12, align 1, !dbg !219
  br label %for.inc, !dbg !230

for.inc:                                          ; preds = %for.body, %if.then
    #dbg_value(i64 %add62, !182, !DIExpression(), !190)
  %add = add i64 %add62, 4, !dbg !231
  %cmp.not = icmp ugt i64 %add, %size, !dbg !191
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !192, !llvm.loop !233

for.end:                                          ; preds = %for.inc, %for.inc.us, %middle.block, %middle.block107, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %cmo130, %middle.block107 ], [ %cmo, %middle.block ], [ %add62.us, %for.inc.us ], [ %add62, %for.inc ], !dbg !234
  ret i64 %i.0.lcssa, !dbg !235
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/simple/arm.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "47611a29fefd04d98093fdd3fb8f33a6")
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
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 26, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !36, line: 42, baseType: !5)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 8, !"PIC Level", i32 2}
!41 = !{i32 7, !"PIE Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 2}
!43 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!44 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!45 = distinct !DISubprogram(name: "lzma_simple_arm_encoder_init", scope: !1, file: !1, line: 57, type: !46, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !71, !127}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !51, line: 80, baseType: !52)
!51 = !DIFile(filename: "liblzma/common/common.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !51, line: 124, size: 512, elements: !53)
!53 = !{!54, !57, !63, !66, !98, !103, !110, !115}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !52, file: !51, line: 126, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !51, line: 78, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !52, file: !51, line: 130, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !59, line: 63, baseType: !60)
!59 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !34, line: 27, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !36, line: 45, baseType: !62)
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !52, file: !51, line: 136, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !65, line: 90, baseType: !62)
!65 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!66 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !52, file: !51, line: 139, baseType: !67, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !51, line: 94, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!48, !55, !71, !87, !93, !80, !95, !93, !80, !97}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !74)
!74 = !{!75, !82, !86}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !73, file: !4, line: 376, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !79, !80, !80}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 18, baseType: !62)
!81 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !73, file: !4, line: 390, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !79, !79}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !73, file: !4, line: 401, baseType: !79, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !34, line: 24, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !36, line: 38, baseType: !92)
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !52, file: !51, line: 144, baseType: !99, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !51, line: 102, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !55, !71}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !52, file: !51, line: 148, baseType: !104, size: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !52, file: !51, line: 152, baseType: !111, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!48, !55, !114, !114, !60}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !52, file: !51, line: 157, baseType: !116, size: 64, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!48, !55, !71, !119, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !122, line: 65, baseType: !123)
!122 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 43, size: 128, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !123, file: !122, line: 54, baseType: !58, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !123, file: !122, line: 63, baseType: !79, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !51, line: 82, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !51, line: 109, size: 192, elements: !131)
!131 = !{!132, !133, !136}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !130, file: !51, line: 112, baseType: !58, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !130, file: !51, line: 116, baseType: !134, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !51, line: 86, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !130, file: !51, line: 119, baseType: !79, size: 64, offset: 128)
!137 = !{!138, !139, !140}
!138 = !DILocalVariable(name: "next", arg: 1, scope: !45, file: !1, line: 57, type: !49)
!139 = !DILocalVariable(name: "allocator", arg: 2, scope: !45, file: !1, line: 57, type: !71)
!140 = !DILocalVariable(name: "filters", arg: 3, scope: !45, file: !1, line: 58, type: !127)
!141 = !DILocation(line: 0, scope: !45)
!142 = !DILocalVariable(name: "next", arg: 1, scope: !143, file: !1, line: 48, type: !49)
!143 = distinct !DISubprogram(name: "arm_coder_init", scope: !1, file: !1, line: 48, type: !144, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !147)
!144 = !DISubroutineType(types: !145)
!145 = !{!48, !49, !71, !127, !146}
!146 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!147 = !{!142, !148, !149, !150}
!148 = !DILocalVariable(name: "allocator", arg: 2, scope: !143, file: !1, line: 48, type: !71)
!149 = !DILocalVariable(name: "filters", arg: 3, scope: !143, file: !1, line: 49, type: !127)
!150 = !DILocalVariable(name: "is_encoder", arg: 4, scope: !143, file: !1, line: 49, type: !146)
!151 = !DILocation(line: 0, scope: !143, inlinedAt: !152)
!152 = distinct !DILocation(line: 60, column: 9, scope: !45)
!153 = !DILocation(line: 51, column: 9, scope: !143, inlinedAt: !152)
!154 = !DILocation(line: 60, column: 2, scope: !45)
!155 = distinct !DISubprogram(name: "lzma_simple_arm_decoder_init", scope: !1, file: !1, line: 65, type: !46, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !156)
!156 = !{!157, !158, !159}
!157 = !DILocalVariable(name: "next", arg: 1, scope: !155, file: !1, line: 65, type: !49)
!158 = !DILocalVariable(name: "allocator", arg: 2, scope: !155, file: !1, line: 65, type: !71)
!159 = !DILocalVariable(name: "filters", arg: 3, scope: !155, file: !1, line: 66, type: !127)
!160 = !DILocation(line: 0, scope: !155)
!161 = !DILocation(line: 0, scope: !143, inlinedAt: !162)
!162 = distinct !DILocation(line: 68, column: 9, scope: !155)
!163 = !DILocation(line: 51, column: 9, scope: !143, inlinedAt: !162)
!164 = !DILocation(line: 68, column: 2, scope: !155)
!165 = !DISubprogram(name: "lzma_simple_coder_init", scope: !166, file: !166, line: 68, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DIFile(filename: "liblzma/simple/simple_private.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "2921a659cca72849047c4661dc5d5b7e")
!167 = !DISubroutineType(types: !168)
!168 = !{!48, !49, !71, !127, !169, !80, !80, !33, !146}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!80, !172, !33, !146, !96, !80}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_simple", file: !166, line: 19, baseType: !174)
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_simple_s", file: !166, line: 19, flags: DIFlagFwdDecl)
!175 = distinct !DISubprogram(name: "arm_code", scope: !1, file: !1, line: 18, type: !170, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !189}
!177 = !DILocalVariable(name: "simple", arg: 1, scope: !175, file: !1, line: 18, type: !172)
!178 = !DILocalVariable(name: "now_pos", arg: 2, scope: !175, file: !1, line: 19, type: !33)
!179 = !DILocalVariable(name: "is_encoder", arg: 3, scope: !175, file: !1, line: 19, type: !146)
!180 = !DILocalVariable(name: "buffer", arg: 4, scope: !175, file: !1, line: 20, type: !96)
!181 = !DILocalVariable(name: "size", arg: 5, scope: !175, file: !1, line: 20, type: !80)
!182 = !DILocalVariable(name: "i", scope: !175, file: !1, line: 22, type: !80)
!183 = !DILocalVariable(name: "src", scope: !184, file: !1, line: 25, type: !33)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 24, column: 30)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 24, column: 7)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 23, column: 37)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 23, column: 2)
!188 = distinct !DILexicalBlock(scope: !175, file: !1, line: 23, column: 2)
!189 = !DILocalVariable(name: "dest", scope: !184, file: !1, line: 30, type: !33)
!190 = !DILocation(line: 0, scope: !175)
!191 = !DILocation(line: 23, column: 20, scope: !187)
!192 = !DILocation(line: 23, column: 2, scope: !188)
!193 = !DILocation(line: 24, column: 16, scope: !185)
!194 = !DILocation(line: 24, column: 7, scope: !185)
!195 = !DILocation(line: 24, column: 21, scope: !185)
!196 = !DILocation(line: 25, column: 29, scope: !184)
!197 = !DILocation(line: 25, column: 20, scope: !184)
!198 = !DILocation(line: 26, column: 18, scope: !184)
!199 = !DILocation(line: 26, column: 9, scope: !184)
!200 = !DILocation(line: 27, column: 9, scope: !184)
!201 = !DILocation(line: 25, column: 34, scope: !184)
!202 = !DILocation(line: 26, column: 23, scope: !184)
!203 = !DILocation(line: 27, column: 8, scope: !184)
!204 = !DILocation(line: 26, column: 6, scope: !184)
!205 = !DILocation(line: 34, column: 29, scope: !206)
!206 = distinct !DILexicalBlock(scope: !184, file: !1, line: 31, column: 8)
!207 = !DILocation(line: 27, column: 6, scope: !184)
!208 = !DILocation(line: 34, column: 43, scope: !206)
!209 = !DILocation(line: 28, column: 8, scope: !184)
!210 = !DILocation(line: 34, column: 16, scope: !206)
!211 = !DILocation(line: 37, column: 26, scope: !184)
!212 = !DILocation(line: 37, column: 20, scope: !184)
!213 = !DILocation(line: 37, column: 18, scope: !184)
!214 = !DILocation(line: 38, column: 26, scope: !184)
!215 = !DILocation(line: 38, column: 20, scope: !184)
!216 = !DILocation(line: 38, column: 18, scope: !184)
!217 = !DILocation(line: 36, column: 9, scope: !184)
!218 = !DILocation(line: 39, column: 20, scope: !184)
!219 = !DILocation(line: 39, column: 18, scope: !184)
!220 = distinct !{!220, !192, !221, !222, !223}
!221 = !DILocation(line: 41, column: 2, scope: !188)
!222 = !{!"llvm.loop.isvectorized", i32 1}
!223 = !{!"llvm.loop.unroll.runtime.disable"}
!224 = !DILocation(line: 32, column: 22, scope: !206)
!225 = !DILocation(line: 32, column: 36, scope: !206)
!226 = !DILocation(line: 32, column: 40, scope: !206)
!227 = distinct !{!227, !192, !221, !222, !223}
!228 = !DILocation(line: 24, column: 7, scope: !186)
!229 = !DILocation(line: 0, scope: !184)
!230 = !DILocation(line: 40, column: 3, scope: !184)
!231 = !DILocation(line: 23, column: 16, scope: !187)
!232 = distinct !{!232, !192, !221, !222}
!233 = distinct !{!233, !192, !221, !222}
!234 = !DILocation(line: 23, scope: !188)
!235 = !DILocation(line: 43, column: 2, scope: !175)
