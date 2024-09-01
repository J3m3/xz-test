; ModuleID = 'liblzma/simple/powerpc.c'
source_filename = "liblzma/simple/powerpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_powerpc_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !45 {
entry:
    #dbg_value(ptr %next, !138, !DIExpression(), !141)
    #dbg_value(ptr %allocator, !139, !DIExpression(), !141)
    #dbg_value(ptr %filters, !140, !DIExpression(), !141)
    #dbg_value(ptr %next, !142, !DIExpression(), !151)
    #dbg_value(ptr %allocator, !148, !DIExpression(), !151)
    #dbg_value(ptr %filters, !149, !DIExpression(), !151)
    #dbg_value(i1 true, !150, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !151)
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @powerpc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext true) #3, !dbg !153
  ret i32 %call.i, !dbg !154
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_powerpc_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !155 {
entry:
    #dbg_value(ptr %next, !157, !DIExpression(), !160)
    #dbg_value(ptr %allocator, !158, !DIExpression(), !160)
    #dbg_value(ptr %filters, !159, !DIExpression(), !160)
    #dbg_value(ptr %next, !142, !DIExpression(), !161)
    #dbg_value(ptr %allocator, !148, !DIExpression(), !161)
    #dbg_value(ptr %filters, !149, !DIExpression(), !161)
    #dbg_value(i1 false, !150, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !161)
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @powerpc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext false) #3, !dbg !163
  ret i32 %call.i, !dbg !164
}

declare !dbg !165 i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @powerpc_code(ptr nocapture readnone %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 !dbg !175 {
entry:
    #dbg_value(ptr poison, !177, !DIExpression(), !191)
    #dbg_value(i32 %now_pos, !178, !DIExpression(), !191)
    #dbg_value(i1 %is_encoder, !179, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !191)
    #dbg_value(ptr %buffer, !180, !DIExpression(), !191)
    #dbg_value(i64 %size, !181, !DIExpression(), !191)
    #dbg_value(i64 0, !182, !DIExpression(), !191)
  %cmp.not88 = icmp ult i64 %size, 4, !dbg !192
  br i1 %cmp.not88, label %for.end, label %for.body.lr.ph, !dbg !193

for.body.lr.ph:                                   ; preds = %entry
  %0 = zext i64 %size to i128, !dbg !193
  %1 = add nuw nsw i128 %0, 73786976294838206460, !dbg !193
  %2 = lshr i128 %1, 2, !dbg !193
  %3 = trunc i128 %2 to i64, !dbg !193
  %4 = add i64 %3, 1, !dbg !193
  %min.iters.check143 = icmp ult i64 %4, 4, !dbg !193
  br i1 %is_encoder, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  br i1 %min.iters.check143, label %for.body.preheader175, label %vector.scevcheck, !dbg !193

for.body.preheader175:                            ; preds = %middle.block, %vector.scevcheck, %for.body.preheader
  %add90.ph = phi i64 [ 4, %vector.scevcheck ], [ 4, %for.body.preheader ], [ %ind.end, %middle.block ]
  %i.089.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %for.body.preheader ], [ %ind.end108, %middle.block ]
  br label %for.body, !dbg !193

vector.scevcheck:                                 ; preds = %for.body.preheader
  %5 = zext i64 %size to i128, !dbg !193
  %6 = add nsw i128 %5, -4, !dbg !193
  %7 = lshr i128 %6, 2, !dbg !193
  %8 = trunc i128 %7 to i64, !dbg !193
  %mul.result = shl i64 %8, 2, !dbg !193
  %mul.overflow = icmp ugt i64 %8, 4611686018427387903, !dbg !193
  %9 = icmp ugt i64 %mul.result, -9, !dbg !193
  %10 = or i1 %9, %mul.overflow, !dbg !193
  %scevgep = getelementptr i8, ptr %buffer, i64 3, !dbg !193
  %11 = trunc i128 %7 to i64, !dbg !193
  %mul.result95 = shl i64 %11, 2, !dbg !193
  %mul.overflow96 = icmp ugt i64 %11, 4611686018427387903, !dbg !193
  %12 = getelementptr i8, ptr %scevgep, i64 %mul.result95, !dbg !193
  %13 = icmp ult ptr %12, %scevgep, !dbg !193
  %14 = or i1 %13, %mul.overflow96, !dbg !193
  %15 = icmp ugt i128 %6, 73786976294838206463, !dbg !193
  %16 = or i1 %14, %15, !dbg !193
  %scevgep97 = getelementptr i8, ptr %buffer, i64 2, !dbg !193
  %17 = trunc i128 %7 to i64, !dbg !193
  %mul.result99 = shl i64 %17, 2, !dbg !193
  %mul.overflow100 = icmp ugt i64 %17, 4611686018427387903, !dbg !193
  %18 = getelementptr i8, ptr %scevgep97, i64 %mul.result99, !dbg !193
  %19 = icmp ult ptr %18, %scevgep97, !dbg !193
  %20 = or i1 %19, %mul.overflow100, !dbg !193
  %scevgep101 = getelementptr i8, ptr %buffer, i64 1, !dbg !193
  %21 = trunc i128 %7 to i64, !dbg !193
  %mul.result103 = shl i64 %21, 2, !dbg !193
  %mul.overflow104 = icmp ugt i64 %21, 4611686018427387903, !dbg !193
  %22 = getelementptr i8, ptr %scevgep101, i64 %mul.result103, !dbg !193
  %23 = icmp ult ptr %22, %scevgep101, !dbg !193
  %24 = or i1 %23, %mul.overflow104, !dbg !193
  %25 = trunc i128 %7 to i64, !dbg !193
  %mul.result106 = shl i64 %25, 2, !dbg !193
  %mul.overflow107 = icmp ugt i64 %25, 4611686018427387903, !dbg !193
  %26 = getelementptr i8, ptr %buffer, i64 %mul.result106, !dbg !193
  %27 = icmp ult ptr %26, %buffer, !dbg !193
  %28 = or i1 %27, %mul.overflow107, !dbg !193
  %29 = or i1 %10, %16, !dbg !193
  %30 = or i1 %20, %29, !dbg !193
  %31 = or i1 %24, %30, !dbg !193
  %32 = or i1 %28, %31, !dbg !193
  br i1 %32, label %for.body.preheader175, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %4, -4, !dbg !193
  %33 = shl i64 %n.vec, 2, !dbg !193
  %ind.end = or disjoint i64 %33, 4, !dbg !193
  %ind.end108 = shl i64 %n.vec, 2, !dbg !193
  br label %vector.body, !dbg !193

vector.body:                                      ; preds = %pred.store.continue121, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue121 ]
  %offset.idx = shl i64 %index, 2, !dbg !193
  %34 = or disjoint i64 %offset.idx, 4, !dbg !193
  %35 = or disjoint i64 %offset.idx, 8, !dbg !193
  %36 = or disjoint i64 %offset.idx, 12, !dbg !193
  %37 = getelementptr inbounds i8, ptr %buffer, i64 %offset.idx, !dbg !194
  %38 = getelementptr inbounds i8, ptr %buffer, i64 %34, !dbg !194
  %39 = getelementptr inbounds i8, ptr %buffer, i64 %35, !dbg !194
  %40 = getelementptr inbounds i8, ptr %buffer, i64 %36, !dbg !194
  %41 = load i8, ptr %37, align 1, !dbg !194
  %42 = load i8, ptr %38, align 1, !dbg !194
  %43 = load i8, ptr %39, align 1, !dbg !194
  %44 = load i8, ptr %40, align 1, !dbg !194
  %45 = zext i8 %41 to i32, !dbg !194
  %46 = zext i8 %42 to i32, !dbg !194
  %47 = zext i8 %43 to i32, !dbg !194
  %48 = zext i8 %44 to i32, !dbg !194
  %49 = and i32 %45, 252, !dbg !195
  %50 = and i32 %46, 252, !dbg !195
  %51 = and i32 %47, 252, !dbg !195
  %52 = and i32 %48, 252, !dbg !195
  %53 = icmp eq i32 %49, 72, !dbg !195
  %54 = icmp eq i32 %50, 72, !dbg !195
  %55 = icmp eq i32 %51, 72, !dbg !195
  %56 = icmp eq i32 %52, 72, !dbg !195
  %57 = or disjoint i64 %offset.idx, 3, !dbg !196
  %58 = or disjoint i64 %offset.idx, 7, !dbg !196
  %59 = or disjoint i64 %offset.idx, 11, !dbg !196
  %60 = or disjoint i64 %offset.idx, 15, !dbg !196
  %61 = getelementptr inbounds i8, ptr %buffer, i64 %57, !dbg !197
  %62 = getelementptr inbounds i8, ptr %buffer, i64 %58, !dbg !197
  %63 = getelementptr inbounds i8, ptr %buffer, i64 %59, !dbg !197
  %64 = getelementptr inbounds i8, ptr %buffer, i64 %60, !dbg !197
  br i1 %53, label %pred.load.if, label %pred.load.continue, !dbg !193

pred.load.if:                                     ; preds = %vector.body
  %65 = load i8, ptr %61, align 1, !dbg !197
  br label %pred.load.continue, !dbg !197

pred.load.continue:                               ; preds = %pred.load.if, %vector.body
  %66 = phi i8 [ poison, %vector.body ], [ %65, %pred.load.if ], !dbg !197
  br i1 %54, label %pred.load.if110, label %pred.load.continue111, !dbg !197

pred.load.if110:                                  ; preds = %pred.load.continue
  %67 = load i8, ptr %62, align 1, !dbg !197
  br label %pred.load.continue111, !dbg !197

pred.load.continue111:                            ; preds = %pred.load.if110, %pred.load.continue
  %68 = phi i8 [ poison, %pred.load.continue ], [ %67, %pred.load.if110 ], !dbg !197
  br i1 %55, label %pred.load.if112, label %pred.load.continue113, !dbg !197

pred.load.if112:                                  ; preds = %pred.load.continue111
  %69 = load i8, ptr %63, align 1, !dbg !197
  br label %pred.load.continue113, !dbg !197

pred.load.continue113:                            ; preds = %pred.load.if112, %pred.load.continue111
  %70 = phi i8 [ poison, %pred.load.continue111 ], [ %69, %pred.load.if112 ], !dbg !197
  br i1 %56, label %pred.load.if114, label %pred.load.continue115, !dbg !197

pred.load.if114:                                  ; preds = %pred.load.continue113
  %71 = load i8, ptr %64, align 1, !dbg !197
  br label %pred.load.continue115, !dbg !197

pred.load.continue115:                            ; preds = %pred.load.if114, %pred.load.continue113
  %72 = phi i8 [ poison, %pred.load.continue113 ], [ %71, %pred.load.if114 ], !dbg !197
  %73 = zext i8 %66 to i32, !dbg !197
  %74 = zext i8 %68 to i32, !dbg !197
  %75 = zext i8 %70 to i32, !dbg !197
  %76 = zext i8 %72 to i32, !dbg !197
  %77 = and i32 %73, 3, !dbg !198
  %78 = and i32 %74, 3, !dbg !198
  %79 = and i32 %75, 3, !dbg !198
  %80 = and i32 %76, 3, !dbg !198
  %81 = icmp eq i32 %77, 1, !dbg !199
  %82 = icmp eq i32 %78, 1, !dbg !199
  %83 = icmp eq i32 %79, 1, !dbg !199
  %84 = icmp eq i32 %80, 1, !dbg !199
  %85 = select i1 %53, i1 %81, i1 false, !dbg !200
  %86 = select i1 %54, i1 %82, i1 false, !dbg !200
  %87 = select i1 %55, i1 %83, i1 false, !dbg !200
  %88 = select i1 %56, i1 %84, i1 false, !dbg !200
  br i1 %85, label %pred.store.if, label %pred.store.continue, !dbg !197

pred.store.if:                                    ; preds = %pred.load.continue115
  %89 = or disjoint i64 %offset.idx, 1, !dbg !201
  %90 = getelementptr inbounds i8, ptr %buffer, i64 %89, !dbg !202
  %91 = load i8, ptr %90, align 1, !dbg !202
  %92 = or disjoint i64 %offset.idx, 2, !dbg !203
  %93 = getelementptr inbounds i8, ptr %buffer, i64 %92, !dbg !204
  %94 = load i8, ptr %93, align 1, !dbg !204
  %95 = trunc i64 %offset.idx to i32, !dbg !205
  %96 = shl nuw nsw i32 %45, 24, !dbg !206
  %97 = add i32 %95, %now_pos, !dbg !205
  %98 = and i32 %96, 50331648, !dbg !206
  %99 = and i32 %73, 252, !dbg !207
  %100 = sub i32 %98, %97, !dbg !208
  %101 = add i32 %100, %99, !dbg !209
  %102 = zext i8 %91 to i32, !dbg !202
  %103 = zext i8 %94 to i32, !dbg !204
  %104 = shl nuw nsw i32 %102, 16, !dbg !210
  %105 = shl nuw nsw i32 %103, 8, !dbg !211
  %106 = add i32 %101, %104, !dbg !212
  %107 = add i32 %106, %105, !dbg !205
  %108 = lshr i32 %107, 24, !dbg !213
  %109 = trunc nuw i32 %108 to i8, !dbg !214
  %110 = and i8 %109, 3, !dbg !214
  %111 = or disjoint i8 %110, 72, !dbg !214
  store i8 %111, ptr %37, align 1, !dbg !215
  %112 = lshr i32 %107, 16, !dbg !216
  %113 = trunc i32 %112 to i8, !dbg !217
  store i8 %113, ptr %90, align 1, !dbg !218
  %114 = lshr i32 %107, 8, !dbg !219
  %115 = trunc i32 %114 to i8, !dbg !220
  store i8 %115, ptr %93, align 1, !dbg !221
  %116 = trunc i32 %101 to i8, !dbg !222
  %117 = and i8 %66, 3, !dbg !223
  %118 = or i8 %117, %116, !dbg !222
  store i8 %118, ptr %61, align 1, !dbg !222
  br label %pred.store.continue, !dbg !200

pred.store.continue:                              ; preds = %pred.store.if, %pred.load.continue115
  br i1 %86, label %pred.store.if116, label %pred.store.continue117, !dbg !222

pred.store.if116:                                 ; preds = %pred.store.continue
  %119 = or disjoint i64 %offset.idx, 5, !dbg !201
  %120 = getelementptr inbounds i8, ptr %buffer, i64 %119, !dbg !202
  %121 = load i8, ptr %120, align 1, !dbg !202
  %122 = or disjoint i64 %offset.idx, 6, !dbg !203
  %123 = getelementptr inbounds i8, ptr %buffer, i64 %122, !dbg !204
  %124 = load i8, ptr %123, align 1, !dbg !204
  %125 = trunc i64 %34 to i32, !dbg !205
  %126 = shl nuw nsw i32 %46, 24, !dbg !206
  %127 = add i32 %125, %now_pos, !dbg !205
  %128 = and i32 %126, 50331648, !dbg !206
  %129 = and i32 %74, 252, !dbg !207
  %130 = sub i32 %128, %127, !dbg !208
  %131 = add i32 %130, %129, !dbg !209
  %132 = zext i8 %121 to i32, !dbg !202
  %133 = zext i8 %124 to i32, !dbg !204
  %134 = shl nuw nsw i32 %132, 16, !dbg !210
  %135 = shl nuw nsw i32 %133, 8, !dbg !211
  %136 = add i32 %131, %134, !dbg !212
  %137 = add i32 %136, %135, !dbg !205
  %138 = lshr i32 %137, 24, !dbg !213
  %139 = trunc nuw i32 %138 to i8, !dbg !214
  %140 = and i8 %139, 3, !dbg !214
  %141 = or disjoint i8 %140, 72, !dbg !214
  store i8 %141, ptr %38, align 1, !dbg !215
  %142 = lshr i32 %137, 16, !dbg !216
  %143 = trunc i32 %142 to i8, !dbg !217
  store i8 %143, ptr %120, align 1, !dbg !218
  %144 = lshr i32 %137, 8, !dbg !219
  %145 = trunc i32 %144 to i8, !dbg !220
  store i8 %145, ptr %123, align 1, !dbg !221
  %146 = trunc i32 %131 to i8, !dbg !222
  %147 = and i8 %68, 3, !dbg !223
  %148 = or i8 %147, %146, !dbg !222
  store i8 %148, ptr %62, align 1, !dbg !222
  br label %pred.store.continue117, !dbg !222

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue
  br i1 %87, label %pred.store.if118, label %pred.store.continue119, !dbg !222

pred.store.if118:                                 ; preds = %pred.store.continue117
  %149 = or disjoint i64 %offset.idx, 9, !dbg !201
  %150 = getelementptr inbounds i8, ptr %buffer, i64 %149, !dbg !202
  %151 = load i8, ptr %150, align 1, !dbg !202
  %152 = or disjoint i64 %offset.idx, 10, !dbg !203
  %153 = getelementptr inbounds i8, ptr %buffer, i64 %152, !dbg !204
  %154 = load i8, ptr %153, align 1, !dbg !204
  %155 = trunc i64 %35 to i32, !dbg !205
  %156 = shl nuw nsw i32 %47, 24, !dbg !206
  %157 = add i32 %155, %now_pos, !dbg !205
  %158 = and i32 %156, 50331648, !dbg !206
  %159 = and i32 %75, 252, !dbg !207
  %160 = sub i32 %158, %157, !dbg !208
  %161 = add i32 %160, %159, !dbg !209
  %162 = zext i8 %151 to i32, !dbg !202
  %163 = zext i8 %154 to i32, !dbg !204
  %164 = shl nuw nsw i32 %162, 16, !dbg !210
  %165 = shl nuw nsw i32 %163, 8, !dbg !211
  %166 = add i32 %161, %164, !dbg !212
  %167 = add i32 %166, %165, !dbg !205
  %168 = lshr i32 %167, 24, !dbg !213
  %169 = trunc nuw i32 %168 to i8, !dbg !214
  %170 = and i8 %169, 3, !dbg !214
  %171 = or disjoint i8 %170, 72, !dbg !214
  store i8 %171, ptr %39, align 1, !dbg !215
  %172 = lshr i32 %167, 16, !dbg !216
  %173 = trunc i32 %172 to i8, !dbg !217
  store i8 %173, ptr %150, align 1, !dbg !218
  %174 = lshr i32 %167, 8, !dbg !219
  %175 = trunc i32 %174 to i8, !dbg !220
  store i8 %175, ptr %153, align 1, !dbg !221
  %176 = trunc i32 %161 to i8, !dbg !222
  %177 = and i8 %70, 3, !dbg !223
  %178 = or i8 %177, %176, !dbg !222
  store i8 %178, ptr %63, align 1, !dbg !222
  br label %pred.store.continue119, !dbg !222

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  br i1 %88, label %pred.store.if120, label %pred.store.continue121, !dbg !222

pred.store.if120:                                 ; preds = %pred.store.continue119
  %179 = or disjoint i64 %offset.idx, 13, !dbg !201
  %180 = getelementptr inbounds i8, ptr %buffer, i64 %179, !dbg !202
  %181 = load i8, ptr %180, align 1, !dbg !202
  %182 = or disjoint i64 %offset.idx, 14, !dbg !203
  %183 = getelementptr inbounds i8, ptr %buffer, i64 %182, !dbg !204
  %184 = load i8, ptr %183, align 1, !dbg !204
  %185 = trunc i64 %36 to i32, !dbg !205
  %186 = shl nuw nsw i32 %48, 24, !dbg !206
  %187 = add i32 %185, %now_pos, !dbg !205
  %188 = and i32 %186, 50331648, !dbg !206
  %189 = and i32 %76, 252, !dbg !207
  %190 = sub i32 %188, %187, !dbg !208
  %191 = add i32 %190, %189, !dbg !209
  %192 = zext i8 %181 to i32, !dbg !202
  %193 = zext i8 %184 to i32, !dbg !204
  %194 = shl nuw nsw i32 %192, 16, !dbg !210
  %195 = shl nuw nsw i32 %193, 8, !dbg !211
  %196 = add i32 %191, %194, !dbg !212
  %197 = add i32 %196, %195, !dbg !205
  %198 = lshr i32 %197, 24, !dbg !213
  %199 = trunc nuw i32 %198 to i8, !dbg !214
  %200 = and i8 %199, 3, !dbg !214
  %201 = or disjoint i8 %200, 72, !dbg !214
  store i8 %201, ptr %40, align 1, !dbg !215
  %202 = lshr i32 %197, 16, !dbg !216
  %203 = trunc i32 %202 to i8, !dbg !217
  store i8 %203, ptr %180, align 1, !dbg !218
  %204 = lshr i32 %197, 8, !dbg !219
  %205 = trunc i32 %204 to i8, !dbg !220
  store i8 %205, ptr %183, align 1, !dbg !221
  %206 = trunc i32 %191 to i8, !dbg !222
  %207 = and i8 %72, 3, !dbg !223
  %208 = or i8 %207, %206, !dbg !222
  store i8 %208, ptr %64, align 1, !dbg !222
  br label %pred.store.continue121, !dbg !222

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %index.next = add nuw i64 %index, 4
  %209 = icmp eq i64 %index.next, %n.vec
  br i1 %209, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %pred.store.continue121
  %cmp.n = icmp eq i64 %4, %n.vec, !dbg !193
  %cmo = shl i64 %n.vec, 2, !dbg !193
  br i1 %cmp.n, label %for.end, label %for.body.preheader175, !dbg !193

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  br i1 %min.iters.check143, label %for.body.us.preheader174, label %vector.scevcheck122, !dbg !193

vector.scevcheck122:                              ; preds = %for.body.us.preheader
  %210 = zext i64 %size to i128, !dbg !193
  %211 = add nsw i128 %210, -4, !dbg !193
  %212 = lshr i128 %211, 2, !dbg !193
  %213 = trunc i128 %212 to i64, !dbg !193
  %mul.result124 = shl i64 %213, 2, !dbg !193
  %mul.overflow125 = icmp ugt i64 %213, 4611686018427387903, !dbg !193
  %214 = icmp ugt i64 %mul.result124, -9, !dbg !193
  %215 = or i1 %214, %mul.overflow125, !dbg !193
  %scevgep126 = getelementptr i8, ptr %buffer, i64 3, !dbg !193
  %216 = trunc i128 %212 to i64, !dbg !193
  %mul.result128 = shl i64 %216, 2, !dbg !193
  %mul.overflow129 = icmp ugt i64 %216, 4611686018427387903, !dbg !193
  %217 = getelementptr i8, ptr %scevgep126, i64 %mul.result128, !dbg !193
  %218 = icmp ult ptr %217, %scevgep126, !dbg !193
  %219 = or i1 %218, %mul.overflow129, !dbg !193
  %220 = icmp ugt i128 %211, 73786976294838206463, !dbg !193
  %221 = or i1 %219, %220, !dbg !193
  %scevgep130 = getelementptr i8, ptr %buffer, i64 2, !dbg !193
  %222 = trunc i128 %212 to i64, !dbg !193
  %mul.result132 = shl i64 %222, 2, !dbg !193
  %mul.overflow133 = icmp ugt i64 %222, 4611686018427387903, !dbg !193
  %223 = getelementptr i8, ptr %scevgep130, i64 %mul.result132, !dbg !193
  %224 = icmp ult ptr %223, %scevgep130, !dbg !193
  %225 = or i1 %224, %mul.overflow133, !dbg !193
  %scevgep134 = getelementptr i8, ptr %buffer, i64 1, !dbg !193
  %226 = trunc i128 %212 to i64, !dbg !193
  %mul.result136 = shl i64 %226, 2, !dbg !193
  %mul.overflow137 = icmp ugt i64 %226, 4611686018427387903, !dbg !193
  %227 = getelementptr i8, ptr %scevgep134, i64 %mul.result136, !dbg !193
  %228 = icmp ult ptr %227, %scevgep134, !dbg !193
  %229 = or i1 %228, %mul.overflow137, !dbg !193
  %230 = trunc i128 %212 to i64, !dbg !193
  %mul.result139 = shl i64 %230, 2, !dbg !193
  %mul.overflow140 = icmp ugt i64 %230, 4611686018427387903, !dbg !193
  %231 = getelementptr i8, ptr %buffer, i64 %mul.result139, !dbg !193
  %232 = icmp ult ptr %231, %buffer, !dbg !193
  %233 = or i1 %232, %mul.overflow140, !dbg !193
  %234 = or i1 %215, %221, !dbg !193
  %235 = or i1 %225, %234, !dbg !193
  %236 = or i1 %229, %235, !dbg !193
  %237 = or i1 %233, %236, !dbg !193
  br i1 %237, label %for.body.us.preheader174, label %vector.ph144

vector.ph144:                                     ; preds = %vector.scevcheck122
  %n.vec146 = and i64 %4, -4, !dbg !193
  %238 = shl i64 %n.vec146, 2, !dbg !193
  %ind.end147 = or disjoint i64 %238, 4, !dbg !193
  %ind.end149 = shl i64 %n.vec146, 2, !dbg !193
  br label %vector.body151, !dbg !193

vector.body151:                                   ; preds = %pred.store.continue169, %vector.ph144
  %index152 = phi i64 [ 0, %vector.ph144 ], [ %index.next170, %pred.store.continue169 ]
  %offset.idx153 = shl i64 %index152, 2, !dbg !193
  %239 = or disjoint i64 %offset.idx153, 4, !dbg !193
  %240 = or disjoint i64 %offset.idx153, 8, !dbg !193
  %241 = or disjoint i64 %offset.idx153, 12, !dbg !193
  %242 = getelementptr inbounds i8, ptr %buffer, i64 %offset.idx153, !dbg !194
  %243 = getelementptr inbounds i8, ptr %buffer, i64 %239, !dbg !194
  %244 = getelementptr inbounds i8, ptr %buffer, i64 %240, !dbg !194
  %245 = getelementptr inbounds i8, ptr %buffer, i64 %241, !dbg !194
  %246 = load i8, ptr %242, align 1, !dbg !194
  %247 = load i8, ptr %243, align 1, !dbg !194
  %248 = load i8, ptr %244, align 1, !dbg !194
  %249 = load i8, ptr %245, align 1, !dbg !194
  %250 = zext i8 %246 to i32, !dbg !194
  %251 = zext i8 %247 to i32, !dbg !194
  %252 = zext i8 %248 to i32, !dbg !194
  %253 = zext i8 %249 to i32, !dbg !194
  %254 = and i32 %250, 252, !dbg !195
  %255 = and i32 %251, 252, !dbg !195
  %256 = and i32 %252, 252, !dbg !195
  %257 = and i32 %253, 252, !dbg !195
  %258 = icmp eq i32 %254, 72, !dbg !195
  %259 = icmp eq i32 %255, 72, !dbg !195
  %260 = icmp eq i32 %256, 72, !dbg !195
  %261 = icmp eq i32 %257, 72, !dbg !195
  %262 = or disjoint i64 %offset.idx153, 3, !dbg !196
  %263 = or disjoint i64 %offset.idx153, 7, !dbg !196
  %264 = or disjoint i64 %offset.idx153, 11, !dbg !196
  %265 = or disjoint i64 %offset.idx153, 15, !dbg !196
  %266 = getelementptr inbounds i8, ptr %buffer, i64 %262, !dbg !197
  %267 = getelementptr inbounds i8, ptr %buffer, i64 %263, !dbg !197
  %268 = getelementptr inbounds i8, ptr %buffer, i64 %264, !dbg !197
  %269 = getelementptr inbounds i8, ptr %buffer, i64 %265, !dbg !197
  br i1 %258, label %pred.load.if154, label %pred.load.continue155, !dbg !193

pred.load.if154:                                  ; preds = %vector.body151
  %270 = load i8, ptr %266, align 1, !dbg !197
  br label %pred.load.continue155, !dbg !197

pred.load.continue155:                            ; preds = %pred.load.if154, %vector.body151
  %271 = phi i8 [ poison, %vector.body151 ], [ %270, %pred.load.if154 ], !dbg !197
  br i1 %259, label %pred.load.if156, label %pred.load.continue157, !dbg !197

pred.load.if156:                                  ; preds = %pred.load.continue155
  %272 = load i8, ptr %267, align 1, !dbg !197
  br label %pred.load.continue157, !dbg !197

pred.load.continue157:                            ; preds = %pred.load.if156, %pred.load.continue155
  %273 = phi i8 [ poison, %pred.load.continue155 ], [ %272, %pred.load.if156 ], !dbg !197
  br i1 %260, label %pred.load.if158, label %pred.load.continue159, !dbg !197

pred.load.if158:                                  ; preds = %pred.load.continue157
  %274 = load i8, ptr %268, align 1, !dbg !197
  br label %pred.load.continue159, !dbg !197

pred.load.continue159:                            ; preds = %pred.load.if158, %pred.load.continue157
  %275 = phi i8 [ poison, %pred.load.continue157 ], [ %274, %pred.load.if158 ], !dbg !197
  br i1 %261, label %pred.load.if160, label %pred.load.continue161, !dbg !197

pred.load.if160:                                  ; preds = %pred.load.continue159
  %276 = load i8, ptr %269, align 1, !dbg !197
  br label %pred.load.continue161, !dbg !197

pred.load.continue161:                            ; preds = %pred.load.if160, %pred.load.continue159
  %277 = phi i8 [ poison, %pred.load.continue159 ], [ %276, %pred.load.if160 ], !dbg !197
  %278 = zext i8 %271 to i32, !dbg !197
  %279 = zext i8 %273 to i32, !dbg !197
  %280 = zext i8 %275 to i32, !dbg !197
  %281 = zext i8 %277 to i32, !dbg !197
  %282 = and i32 %278, 3, !dbg !198
  %283 = and i32 %279, 3, !dbg !198
  %284 = and i32 %280, 3, !dbg !198
  %285 = and i32 %281, 3, !dbg !198
  %286 = icmp eq i32 %282, 1, !dbg !199
  %287 = icmp eq i32 %283, 1, !dbg !199
  %288 = icmp eq i32 %284, 1, !dbg !199
  %289 = icmp eq i32 %285, 1, !dbg !199
  %290 = select i1 %258, i1 %286, i1 false, !dbg !200
  %291 = select i1 %259, i1 %287, i1 false, !dbg !200
  %292 = select i1 %260, i1 %288, i1 false, !dbg !200
  %293 = select i1 %261, i1 %289, i1 false, !dbg !200
  br i1 %290, label %pred.store.if162, label %pred.store.continue163, !dbg !197

pred.store.if162:                                 ; preds = %pred.load.continue161
  %294 = or disjoint i64 %offset.idx153, 1, !dbg !201
  %295 = getelementptr inbounds i8, ptr %buffer, i64 %294, !dbg !202
  %296 = load i8, ptr %295, align 1, !dbg !202
  %297 = or disjoint i64 %offset.idx153, 2, !dbg !203
  %298 = getelementptr inbounds i8, ptr %buffer, i64 %297, !dbg !204
  %299 = load i8, ptr %298, align 1, !dbg !204
  %300 = trunc i64 %offset.idx153 to i32, !dbg !205
  %301 = shl nuw nsw i32 %250, 24, !dbg !206
  %302 = add i32 %300, %now_pos, !dbg !205
  %303 = and i32 %301, 50331648, !dbg !206
  %304 = and i32 %278, 252, !dbg !207
  %305 = add i32 %303, %302, !dbg !208
  %306 = add i32 %305, %304, !dbg !209
  %307 = zext i8 %296 to i32, !dbg !202
  %308 = zext i8 %299 to i32, !dbg !204
  %309 = shl nuw nsw i32 %307, 16, !dbg !210
  %310 = shl nuw nsw i32 %308, 8, !dbg !211
  %311 = add i32 %306, %309, !dbg !212
  %312 = add i32 %311, %310, !dbg !205
  %313 = lshr i32 %312, 24, !dbg !213
  %314 = trunc nuw i32 %313 to i8, !dbg !214
  %315 = and i8 %314, 3, !dbg !214
  %316 = or disjoint i8 %315, 72, !dbg !214
  store i8 %316, ptr %242, align 1, !dbg !215
  %317 = lshr i32 %312, 16, !dbg !216
  %318 = trunc i32 %317 to i8, !dbg !217
  store i8 %318, ptr %295, align 1, !dbg !218
  %319 = lshr i32 %312, 8, !dbg !219
  %320 = trunc i32 %319 to i8, !dbg !220
  store i8 %320, ptr %298, align 1, !dbg !221
  %321 = trunc i32 %306 to i8, !dbg !222
  %322 = and i8 %271, 3, !dbg !223
  %323 = or i8 %322, %321, !dbg !222
  store i8 %323, ptr %266, align 1, !dbg !222
  br label %pred.store.continue163, !dbg !200

pred.store.continue163:                           ; preds = %pred.store.if162, %pred.load.continue161
  br i1 %291, label %pred.store.if164, label %pred.store.continue165, !dbg !222

pred.store.if164:                                 ; preds = %pred.store.continue163
  %324 = or disjoint i64 %offset.idx153, 5, !dbg !201
  %325 = getelementptr inbounds i8, ptr %buffer, i64 %324, !dbg !202
  %326 = load i8, ptr %325, align 1, !dbg !202
  %327 = or disjoint i64 %offset.idx153, 6, !dbg !203
  %328 = getelementptr inbounds i8, ptr %buffer, i64 %327, !dbg !204
  %329 = load i8, ptr %328, align 1, !dbg !204
  %330 = trunc i64 %239 to i32, !dbg !205
  %331 = shl nuw nsw i32 %251, 24, !dbg !206
  %332 = add i32 %330, %now_pos, !dbg !205
  %333 = and i32 %331, 50331648, !dbg !206
  %334 = and i32 %279, 252, !dbg !207
  %335 = add i32 %333, %332, !dbg !208
  %336 = add i32 %335, %334, !dbg !209
  %337 = zext i8 %326 to i32, !dbg !202
  %338 = zext i8 %329 to i32, !dbg !204
  %339 = shl nuw nsw i32 %337, 16, !dbg !210
  %340 = shl nuw nsw i32 %338, 8, !dbg !211
  %341 = add i32 %336, %339, !dbg !212
  %342 = add i32 %341, %340, !dbg !205
  %343 = lshr i32 %342, 24, !dbg !213
  %344 = trunc nuw i32 %343 to i8, !dbg !214
  %345 = and i8 %344, 3, !dbg !214
  %346 = or disjoint i8 %345, 72, !dbg !214
  store i8 %346, ptr %243, align 1, !dbg !215
  %347 = lshr i32 %342, 16, !dbg !216
  %348 = trunc i32 %347 to i8, !dbg !217
  store i8 %348, ptr %325, align 1, !dbg !218
  %349 = lshr i32 %342, 8, !dbg !219
  %350 = trunc i32 %349 to i8, !dbg !220
  store i8 %350, ptr %328, align 1, !dbg !221
  %351 = trunc i32 %336 to i8, !dbg !222
  %352 = and i8 %273, 3, !dbg !223
  %353 = or i8 %352, %351, !dbg !222
  store i8 %353, ptr %267, align 1, !dbg !222
  br label %pred.store.continue165, !dbg !222

pred.store.continue165:                           ; preds = %pred.store.if164, %pred.store.continue163
  br i1 %292, label %pred.store.if166, label %pred.store.continue167, !dbg !222

pred.store.if166:                                 ; preds = %pred.store.continue165
  %354 = or disjoint i64 %offset.idx153, 9, !dbg !201
  %355 = getelementptr inbounds i8, ptr %buffer, i64 %354, !dbg !202
  %356 = load i8, ptr %355, align 1, !dbg !202
  %357 = or disjoint i64 %offset.idx153, 10, !dbg !203
  %358 = getelementptr inbounds i8, ptr %buffer, i64 %357, !dbg !204
  %359 = load i8, ptr %358, align 1, !dbg !204
  %360 = trunc i64 %240 to i32, !dbg !205
  %361 = shl nuw nsw i32 %252, 24, !dbg !206
  %362 = add i32 %360, %now_pos, !dbg !205
  %363 = and i32 %361, 50331648, !dbg !206
  %364 = and i32 %280, 252, !dbg !207
  %365 = add i32 %363, %362, !dbg !208
  %366 = add i32 %365, %364, !dbg !209
  %367 = zext i8 %356 to i32, !dbg !202
  %368 = zext i8 %359 to i32, !dbg !204
  %369 = shl nuw nsw i32 %367, 16, !dbg !210
  %370 = shl nuw nsw i32 %368, 8, !dbg !211
  %371 = add i32 %366, %369, !dbg !212
  %372 = add i32 %371, %370, !dbg !205
  %373 = lshr i32 %372, 24, !dbg !213
  %374 = trunc nuw i32 %373 to i8, !dbg !214
  %375 = and i8 %374, 3, !dbg !214
  %376 = or disjoint i8 %375, 72, !dbg !214
  store i8 %376, ptr %244, align 1, !dbg !215
  %377 = lshr i32 %372, 16, !dbg !216
  %378 = trunc i32 %377 to i8, !dbg !217
  store i8 %378, ptr %355, align 1, !dbg !218
  %379 = lshr i32 %372, 8, !dbg !219
  %380 = trunc i32 %379 to i8, !dbg !220
  store i8 %380, ptr %358, align 1, !dbg !221
  %381 = trunc i32 %366 to i8, !dbg !222
  %382 = and i8 %275, 3, !dbg !223
  %383 = or i8 %382, %381, !dbg !222
  store i8 %383, ptr %268, align 1, !dbg !222
  br label %pred.store.continue167, !dbg !222

pred.store.continue167:                           ; preds = %pred.store.if166, %pred.store.continue165
  br i1 %293, label %pred.store.if168, label %pred.store.continue169, !dbg !222

pred.store.if168:                                 ; preds = %pred.store.continue167
  %384 = or disjoint i64 %offset.idx153, 13, !dbg !201
  %385 = getelementptr inbounds i8, ptr %buffer, i64 %384, !dbg !202
  %386 = load i8, ptr %385, align 1, !dbg !202
  %387 = or disjoint i64 %offset.idx153, 14, !dbg !203
  %388 = getelementptr inbounds i8, ptr %buffer, i64 %387, !dbg !204
  %389 = load i8, ptr %388, align 1, !dbg !204
  %390 = trunc i64 %241 to i32, !dbg !205
  %391 = shl nuw nsw i32 %253, 24, !dbg !206
  %392 = add i32 %390, %now_pos, !dbg !205
  %393 = and i32 %391, 50331648, !dbg !206
  %394 = and i32 %281, 252, !dbg !207
  %395 = add i32 %393, %392, !dbg !208
  %396 = add i32 %395, %394, !dbg !209
  %397 = zext i8 %386 to i32, !dbg !202
  %398 = zext i8 %389 to i32, !dbg !204
  %399 = shl nuw nsw i32 %397, 16, !dbg !210
  %400 = shl nuw nsw i32 %398, 8, !dbg !211
  %401 = add i32 %396, %399, !dbg !212
  %402 = add i32 %401, %400, !dbg !205
  %403 = lshr i32 %402, 24, !dbg !213
  %404 = trunc nuw i32 %403 to i8, !dbg !214
  %405 = and i8 %404, 3, !dbg !214
  %406 = or disjoint i8 %405, 72, !dbg !214
  store i8 %406, ptr %245, align 1, !dbg !215
  %407 = lshr i32 %402, 16, !dbg !216
  %408 = trunc i32 %407 to i8, !dbg !217
  store i8 %408, ptr %385, align 1, !dbg !218
  %409 = lshr i32 %402, 8, !dbg !219
  %410 = trunc i32 %409 to i8, !dbg !220
  store i8 %410, ptr %388, align 1, !dbg !221
  %411 = trunc i32 %396 to i8, !dbg !222
  %412 = and i8 %277, 3, !dbg !223
  %413 = or i8 %412, %411, !dbg !222
  store i8 %413, ptr %269, align 1, !dbg !222
  br label %pred.store.continue169, !dbg !222

pred.store.continue169:                           ; preds = %pred.store.if168, %pred.store.continue167
  %index.next170 = add nuw i64 %index152, 4
  %414 = icmp eq i64 %index.next170, %n.vec146
  br i1 %414, label %middle.block141, label %vector.body151, !llvm.loop !228

middle.block141:                                  ; preds = %pred.store.continue169
  %cmp.n171 = icmp eq i64 %4, %n.vec146, !dbg !193
  %cmo172 = shl i64 %n.vec146, 2, !dbg !193
  br i1 %cmp.n171, label %for.end, label %for.body.us.preheader174, !dbg !193

for.body.us.preheader174:                         ; preds = %middle.block141, %vector.scevcheck122, %for.body.us.preheader
  %add90.us.ph = phi i64 [ 4, %vector.scevcheck122 ], [ 4, %for.body.us.preheader ], [ %ind.end147, %middle.block141 ]
  %i.089.us.ph = phi i64 [ 0, %vector.scevcheck122 ], [ 0, %for.body.us.preheader ], [ %ind.end149, %middle.block141 ]
  br label %for.body.us, !dbg !193

for.body.us:                                      ; preds = %for.body.us.preheader174, %for.inc.us
  %add90.us = phi i64 [ %add.us, %for.inc.us ], [ %add90.us.ph, %for.body.us.preheader174 ]
  %i.089.us = phi i64 [ %add90.us, %for.inc.us ], [ %i.089.us.ph, %for.body.us.preheader174 ]
    #dbg_value(i64 %i.089.us, !182, !DIExpression(), !191)
  %arrayidx.us = getelementptr inbounds i8, ptr %buffer, i64 %i.089.us, !dbg !194
  %415 = load i8, ptr %arrayidx.us, align 1, !dbg !194
  %conv.us = zext i8 %415 to i32, !dbg !194
  %shr.mask.us = and i32 %conv.us, 252, !dbg !195
  %cmp1.us = icmp eq i32 %shr.mask.us, 72, !dbg !195
  br i1 %cmp1.us, label %land.lhs.true.us, label %for.inc.us, !dbg !229

land.lhs.true.us:                                 ; preds = %for.body.us
  %add3.us = or disjoint i64 %i.089.us, 3, !dbg !196
  %arrayidx4.us = getelementptr inbounds i8, ptr %buffer, i64 %add3.us, !dbg !197
  %416 = load i8, ptr %arrayidx4.us, align 1, !dbg !197
  %conv5.us = zext i8 %416 to i32, !dbg !197
  %and.us = and i32 %conv5.us, 3, !dbg !198
  %cmp6.us = icmp eq i32 %and.us, 1, !dbg !199
  br i1 %cmp6.us, label %if.then.us, label %for.inc.us, !dbg !200

if.then.us:                                       ; preds = %land.lhs.true.us
  %and11.us = shl nuw nsw i32 %conv.us, 24, !dbg !206
  %shl.us = and i32 %and11.us, 50331648, !dbg !206
  %add12.us = or disjoint i64 %i.089.us, 1, !dbg !201
  %arrayidx13.us = getelementptr inbounds i8, ptr %buffer, i64 %add12.us, !dbg !202
  %417 = load i8, ptr %arrayidx13.us, align 1, !dbg !202
  %conv14.us = zext i8 %417 to i32, !dbg !202
  %shl15.us = shl nuw nsw i32 %conv14.us, 16, !dbg !210
  %add16.us = or disjoint i64 %i.089.us, 2, !dbg !203
  %arrayidx17.us = getelementptr inbounds i8, ptr %buffer, i64 %add16.us, !dbg !204
  %418 = load i8, ptr %arrayidx17.us, align 1, !dbg !204
  %conv18.us = zext i8 %418 to i32, !dbg !204
  %shl19.us = shl nuw nsw i32 %conv18.us, 8, !dbg !211
  %and24.us = and i32 %conv5.us, 252, !dbg !207
    #dbg_value(i32 poison, !183, !DIExpression(), !230)
  %conv27.us = trunc i64 %i.089.us to i32, !dbg !205
  %add28.us = add i32 %conv27.us, %now_pos, !dbg !205
  %or25.us = add i32 %shl.us, %add28.us, !dbg !208
  %or.us = add i32 %or25.us, %and24.us, !dbg !209
  %or20.us = add i32 %or.us, %shl15.us, !dbg !212
  %dest.0.us = add i32 %or20.us, %shl19.us, !dbg !205
    #dbg_value(!DIArgList(i32 %or.us, i32 %shl19.us, i32 %shl15.us), !190, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !230)
  %shr32.us = lshr i32 %dest.0.us, 24, !dbg !213
  %419 = trunc nuw i32 %shr32.us to i8, !dbg !214
  %420 = and i8 %419, 3, !dbg !214
  %conv35.us = or disjoint i8 %420, 72, !dbg !214
  store i8 %conv35.us, ptr %arrayidx.us, align 1, !dbg !215
  %shr38.us = lshr i32 %dest.0.us, 16, !dbg !216
  %conv39.us = trunc i32 %shr38.us to i8, !dbg !217
  store i8 %conv39.us, ptr %arrayidx13.us, align 1, !dbg !218
  %shr42.us = lshr i32 %dest.0.us, 8, !dbg !219
  %conv43.us = trunc i32 %shr42.us to i8, !dbg !220
  store i8 %conv43.us, ptr %arrayidx17.us, align 1, !dbg !221
  %421 = and i8 %416, 3, !dbg !223
  %422 = trunc i32 %or.us to i8, !dbg !222
  %conv55.us = or i8 %421, %422, !dbg !222
  store i8 %conv55.us, ptr %arrayidx4.us, align 1, !dbg !222
  br label %for.inc.us, !dbg !231

for.inc.us:                                       ; preds = %if.then.us, %land.lhs.true.us, %for.body.us
    #dbg_value(i64 %add90.us, !182, !DIExpression(), !191)
  %add.us = add i64 %add90.us, 4, !dbg !232
  %cmp.not.us = icmp ugt i64 %add.us, %size, !dbg !192
  br i1 %cmp.not.us, label %for.end, label %for.body.us, !dbg !193, !llvm.loop !233

for.body:                                         ; preds = %for.body.preheader175, %for.inc
  %add90 = phi i64 [ %add, %for.inc ], [ %add90.ph, %for.body.preheader175 ]
  %i.089 = phi i64 [ %add90, %for.inc ], [ %i.089.ph, %for.body.preheader175 ]
    #dbg_value(i64 %i.089, !182, !DIExpression(), !191)
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %i.089, !dbg !194
  %423 = load i8, ptr %arrayidx, align 1, !dbg !194
  %conv = zext i8 %423 to i32, !dbg !194
  %shr.mask = and i32 %conv, 252, !dbg !195
  %cmp1 = icmp eq i32 %shr.mask, 72, !dbg !195
  br i1 %cmp1, label %land.lhs.true, label %for.inc, !dbg !229

land.lhs.true:                                    ; preds = %for.body
  %add3 = or disjoint i64 %i.089, 3, !dbg !196
  %arrayidx4 = getelementptr inbounds i8, ptr %buffer, i64 %add3, !dbg !197
  %424 = load i8, ptr %arrayidx4, align 1, !dbg !197
  %conv5 = zext i8 %424 to i32, !dbg !197
  %and = and i32 %conv5, 3, !dbg !198
  %cmp6 = icmp eq i32 %and, 1, !dbg !199
  br i1 %cmp6, label %if.then, label %for.inc, !dbg !200

if.then:                                          ; preds = %land.lhs.true
  %and11 = shl nuw nsw i32 %conv, 24, !dbg !206
  %shl = and i32 %and11, 50331648, !dbg !206
  %add12 = or disjoint i64 %i.089, 1, !dbg !201
  %arrayidx13 = getelementptr inbounds i8, ptr %buffer, i64 %add12, !dbg !202
  %425 = load i8, ptr %arrayidx13, align 1, !dbg !202
  %conv14 = zext i8 %425 to i32, !dbg !202
  %shl15 = shl nuw nsw i32 %conv14, 16, !dbg !210
  %add16 = or disjoint i64 %i.089, 2, !dbg !203
  %arrayidx17 = getelementptr inbounds i8, ptr %buffer, i64 %add16, !dbg !204
  %426 = load i8, ptr %arrayidx17, align 1, !dbg !204
  %conv18 = zext i8 %426 to i32, !dbg !204
  %shl19 = shl nuw nsw i32 %conv18, 8, !dbg !211
  %and24 = and i32 %conv5, 252, !dbg !207
    #dbg_value(i32 poison, !183, !DIExpression(), !230)
  %conv27 = trunc i64 %i.089 to i32, !dbg !205
  %add28 = add i32 %conv27, %now_pos, !dbg !205
  %or25 = sub i32 %shl, %add28, !dbg !208
  %or = add i32 %or25, %and24, !dbg !209
  %or20 = add i32 %or, %shl15, !dbg !212
  %dest.0 = add i32 %or20, %shl19, !dbg !205
    #dbg_value(!DIArgList(i32 %or, i32 %shl19, i32 %shl15), !190, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !230)
  %shr32 = lshr i32 %dest.0, 24, !dbg !213
  %427 = trunc nuw i32 %shr32 to i8, !dbg !214
  %428 = and i8 %427, 3, !dbg !214
  %conv35 = or disjoint i8 %428, 72, !dbg !214
  store i8 %conv35, ptr %arrayidx, align 1, !dbg !215
  %shr38 = lshr i32 %dest.0, 16, !dbg !216
  %conv39 = trunc i32 %shr38 to i8, !dbg !217
  store i8 %conv39, ptr %arrayidx13, align 1, !dbg !218
  %shr42 = lshr i32 %dest.0, 8, !dbg !219
  %conv43 = trunc i32 %shr42 to i8, !dbg !220
  store i8 %conv43, ptr %arrayidx17, align 1, !dbg !221
  %429 = and i8 %424, 3, !dbg !223
  %430 = trunc i32 %or to i8, !dbg !222
  %conv55 = or i8 %429, %430, !dbg !222
  store i8 %conv55, ptr %arrayidx4, align 1, !dbg !222
  br label %for.inc, !dbg !231

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
    #dbg_value(i64 %add90, !182, !DIExpression(), !191)
  %add = add i64 %add90, 4, !dbg !232
  %cmp.not = icmp ugt i64 %add, %size, !dbg !192
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !193, !llvm.loop !234

for.end:                                          ; preds = %for.inc, %for.inc.us, %middle.block, %middle.block141, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %cmo172, %middle.block141 ], [ %cmo, %middle.block ], [ %add90.us, %for.inc.us ], [ %add90, %for.inc ], !dbg !235
  ret i64 %i.0.lcssa, !dbg !236
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/simple/powerpc.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "78baf9835d3948fbb68e389980bc0142")
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
!45 = distinct !DISubprogram(name: "lzma_simple_powerpc_encoder_init", scope: !1, file: !1, line: 61, type: !46, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
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
!138 = !DILocalVariable(name: "next", arg: 1, scope: !45, file: !1, line: 61, type: !49)
!139 = !DILocalVariable(name: "allocator", arg: 2, scope: !45, file: !1, line: 62, type: !71)
!140 = !DILocalVariable(name: "filters", arg: 3, scope: !45, file: !1, line: 62, type: !127)
!141 = !DILocation(line: 0, scope: !45)
!142 = !DILocalVariable(name: "next", arg: 1, scope: !143, file: !1, line: 52, type: !49)
!143 = distinct !DISubprogram(name: "powerpc_coder_init", scope: !1, file: !1, line: 52, type: !144, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !147)
!144 = !DISubroutineType(types: !145)
!145 = !{!48, !49, !71, !127, !146}
!146 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!147 = !{!142, !148, !149, !150}
!148 = !DILocalVariable(name: "allocator", arg: 2, scope: !143, file: !1, line: 52, type: !71)
!149 = !DILocalVariable(name: "filters", arg: 3, scope: !143, file: !1, line: 53, type: !127)
!150 = !DILocalVariable(name: "is_encoder", arg: 4, scope: !143, file: !1, line: 53, type: !146)
!151 = !DILocation(line: 0, scope: !143, inlinedAt: !152)
!152 = distinct !DILocation(line: 64, column: 9, scope: !45)
!153 = !DILocation(line: 55, column: 9, scope: !143, inlinedAt: !152)
!154 = !DILocation(line: 64, column: 2, scope: !45)
!155 = distinct !DISubprogram(name: "lzma_simple_powerpc_decoder_init", scope: !1, file: !1, line: 69, type: !46, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !156)
!156 = !{!157, !158, !159}
!157 = !DILocalVariable(name: "next", arg: 1, scope: !155, file: !1, line: 69, type: !49)
!158 = !DILocalVariable(name: "allocator", arg: 2, scope: !155, file: !1, line: 70, type: !71)
!159 = !DILocalVariable(name: "filters", arg: 3, scope: !155, file: !1, line: 70, type: !127)
!160 = !DILocation(line: 0, scope: !155)
!161 = !DILocation(line: 0, scope: !143, inlinedAt: !162)
!162 = distinct !DILocation(line: 72, column: 9, scope: !155)
!163 = !DILocation(line: 55, column: 9, scope: !143, inlinedAt: !162)
!164 = !DILocation(line: 72, column: 2, scope: !155)
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
!175 = distinct !DISubprogram(name: "powerpc_code", scope: !1, file: !1, line: 18, type: !170, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !190}
!177 = !DILocalVariable(name: "simple", arg: 1, scope: !175, file: !1, line: 18, type: !172)
!178 = !DILocalVariable(name: "now_pos", arg: 2, scope: !175, file: !1, line: 19, type: !33)
!179 = !DILocalVariable(name: "is_encoder", arg: 3, scope: !175, file: !1, line: 19, type: !146)
!180 = !DILocalVariable(name: "buffer", arg: 4, scope: !175, file: !1, line: 20, type: !96)
!181 = !DILocalVariable(name: "size", arg: 5, scope: !175, file: !1, line: 20, type: !80)
!182 = !DILocalVariable(name: "i", scope: !175, file: !1, line: 22, type: !80)
!183 = !DILocalVariable(name: "src", scope: !184, file: !1, line: 28, type: !189)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 26, column: 36)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 25, column: 7)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 23, column: 37)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 23, column: 2)
!188 = distinct !DILexicalBlock(scope: !175, file: !1, line: 23, column: 2)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!190 = !DILocalVariable(name: "dest", scope: !184, file: !1, line: 33, type: !33)
!191 = !DILocation(line: 0, scope: !175)
!192 = !DILocation(line: 23, column: 20, scope: !187)
!193 = !DILocation(line: 23, column: 2, scope: !188)
!194 = !DILocation(line: 25, column: 8, scope: !185)
!195 = !DILocation(line: 25, column: 24, scope: !185)
!196 = !DILocation(line: 26, column: 19, scope: !185)
!197 = !DILocation(line: 26, column: 10, scope: !185)
!198 = !DILocation(line: 26, column: 24, scope: !185)
!199 = !DILocation(line: 26, column: 29, scope: !185)
!200 = !DILocation(line: 25, column: 7, scope: !186)
!201 = !DILocation(line: 29, column: 18, scope: !184)
!202 = !DILocation(line: 29, column: 9, scope: !184)
!203 = !DILocation(line: 30, column: 18, scope: !184)
!204 = !DILocation(line: 30, column: 9, scope: !184)
!205 = !DILocation(line: 34, column: 8, scope: !184)
!206 = !DILocation(line: 28, column: 46, scope: !184)
!207 = !DILocation(line: 31, column: 23, scope: !184)
!208 = !DILocation(line: 31, column: 6, scope: !184)
!209 = !DILocation(line: 29, column: 6, scope: !184)
!210 = !DILocation(line: 29, column: 23, scope: !184)
!211 = !DILocation(line: 30, column: 23, scope: !184)
!212 = !DILocation(line: 30, column: 6, scope: !184)
!213 = !DILocation(line: 39, column: 34, scope: !184)
!214 = !DILocation(line: 39, column: 20, scope: !184)
!215 = !DILocation(line: 39, column: 18, scope: !184)
!216 = !DILocation(line: 40, column: 26, scope: !184)
!217 = !DILocation(line: 40, column: 20, scope: !184)
!218 = !DILocation(line: 40, column: 18, scope: !184)
!219 = !DILocation(line: 41, column: 26, scope: !184)
!220 = !DILocation(line: 41, column: 20, scope: !184)
!221 = !DILocation(line: 41, column: 18, scope: !184)
!222 = !DILocation(line: 43, column: 18, scope: !184)
!223 = !DILocation(line: 42, column: 18, scope: !184)
!224 = distinct !{!224, !193, !225, !226, !227}
!225 = !DILocation(line: 45, column: 2, scope: !188)
!226 = !{!"llvm.loop.isvectorized", i32 1}
!227 = !{!"llvm.loop.unroll.runtime.disable"}
!228 = distinct !{!228, !193, !225, !226, !227}
!229 = !DILocation(line: 26, column: 5, scope: !185)
!230 = !DILocation(line: 0, scope: !184)
!231 = !DILocation(line: 44, column: 3, scope: !184)
!232 = !DILocation(line: 23, column: 16, scope: !187)
!233 = distinct !{!233, !193, !225, !226}
!234 = distinct !{!234, !193, !225, !226}
!235 = !DILocation(line: 23, scope: !188)
!236 = !DILocation(line: 47, column: 2, scope: !175)
