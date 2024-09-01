; ModuleID = 'liblzma/simple/powerpc.c'
source_filename = "liblzma/simple/powerpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_powerpc_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @powerpc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext true) #3
  ret i32 %call.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_powerpc_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @powerpc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext false) #3
  ret i32 %call.i
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @powerpc_code(ptr nocapture readnone %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 {
entry:
  %cmp.not88 = icmp ult i64 %size, 4
  br i1 %cmp.not88, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %0 = zext i64 %size to i128
  %1 = add nuw nsw i128 %0, 73786976294838206460
  %2 = lshr i128 %1, 2
  %3 = trunc i128 %2 to i64
  %4 = add i64 %3, 1
  %min.iters.check143 = icmp ult i64 %4, 4
  br i1 %is_encoder, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  br i1 %min.iters.check143, label %for.body.preheader175, label %vector.scevcheck

for.body.preheader175:                            ; preds = %middle.block, %vector.scevcheck, %for.body.preheader
  %add90.ph = phi i64 [ 4, %vector.scevcheck ], [ 4, %for.body.preheader ], [ %ind.end, %middle.block ]
  %i.089.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %for.body.preheader ], [ %ind.end108, %middle.block ]
  br label %for.body

vector.scevcheck:                                 ; preds = %for.body.preheader
  %5 = zext i64 %size to i128
  %6 = add nsw i128 %5, -4
  %7 = lshr i128 %6, 2
  %8 = trunc i128 %7 to i64
  %mul.result = shl i64 %8, 2
  %mul.overflow = icmp ugt i64 %8, 4611686018427387903
  %9 = icmp ugt i64 %mul.result, -9
  %10 = or i1 %9, %mul.overflow
  %scevgep = getelementptr i8, ptr %buffer, i64 3
  %11 = trunc i128 %7 to i64
  %mul.result95 = shl i64 %11, 2
  %mul.overflow96 = icmp ugt i64 %11, 4611686018427387903
  %12 = getelementptr i8, ptr %scevgep, i64 %mul.result95
  %13 = icmp ult ptr %12, %scevgep
  %14 = or i1 %13, %mul.overflow96
  %15 = icmp ugt i128 %6, 73786976294838206463
  %16 = or i1 %14, %15
  %scevgep97 = getelementptr i8, ptr %buffer, i64 2
  %17 = trunc i128 %7 to i64
  %mul.result99 = shl i64 %17, 2
  %mul.overflow100 = icmp ugt i64 %17, 4611686018427387903
  %18 = getelementptr i8, ptr %scevgep97, i64 %mul.result99
  %19 = icmp ult ptr %18, %scevgep97
  %20 = or i1 %19, %mul.overflow100
  %scevgep101 = getelementptr i8, ptr %buffer, i64 1
  %21 = trunc i128 %7 to i64
  %mul.result103 = shl i64 %21, 2
  %mul.overflow104 = icmp ugt i64 %21, 4611686018427387903
  %22 = getelementptr i8, ptr %scevgep101, i64 %mul.result103
  %23 = icmp ult ptr %22, %scevgep101
  %24 = or i1 %23, %mul.overflow104
  %25 = trunc i128 %7 to i64
  %mul.result106 = shl i64 %25, 2
  %mul.overflow107 = icmp ugt i64 %25, 4611686018427387903
  %26 = getelementptr i8, ptr %buffer, i64 %mul.result106
  %27 = icmp ult ptr %26, %buffer
  %28 = or i1 %27, %mul.overflow107
  %29 = or i1 %10, %16
  %30 = or i1 %20, %29
  %31 = or i1 %24, %30
  %32 = or i1 %28, %31
  br i1 %32, label %for.body.preheader175, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %4, -4
  %33 = shl i64 %n.vec, 2
  %ind.end = or disjoint i64 %33, 4
  %ind.end108 = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue121, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue121 ]
  %offset.idx = shl i64 %index, 2
  %34 = or disjoint i64 %offset.idx, 4
  %35 = or disjoint i64 %offset.idx, 8
  %36 = or disjoint i64 %offset.idx, 12
  %37 = getelementptr inbounds i8, ptr %buffer, i64 %offset.idx
  %38 = getelementptr inbounds i8, ptr %buffer, i64 %34
  %39 = getelementptr inbounds i8, ptr %buffer, i64 %35
  %40 = getelementptr inbounds i8, ptr %buffer, i64 %36
  %41 = load i8, ptr %37, align 1
  %42 = load i8, ptr %38, align 1
  %43 = load i8, ptr %39, align 1
  %44 = load i8, ptr %40, align 1
  %45 = zext i8 %41 to i32
  %46 = zext i8 %42 to i32
  %47 = zext i8 %43 to i32
  %48 = zext i8 %44 to i32
  %49 = and i32 %45, 252
  %50 = and i32 %46, 252
  %51 = and i32 %47, 252
  %52 = and i32 %48, 252
  %53 = icmp eq i32 %49, 72
  %54 = icmp eq i32 %50, 72
  %55 = icmp eq i32 %51, 72
  %56 = icmp eq i32 %52, 72
  %57 = or disjoint i64 %offset.idx, 3
  %58 = or disjoint i64 %offset.idx, 7
  %59 = or disjoint i64 %offset.idx, 11
  %60 = or disjoint i64 %offset.idx, 15
  %61 = getelementptr inbounds i8, ptr %buffer, i64 %57
  %62 = getelementptr inbounds i8, ptr %buffer, i64 %58
  %63 = getelementptr inbounds i8, ptr %buffer, i64 %59
  %64 = getelementptr inbounds i8, ptr %buffer, i64 %60
  br i1 %53, label %pred.load.if, label %pred.load.continue

pred.load.if:                                     ; preds = %vector.body
  %65 = load i8, ptr %61, align 1
  br label %pred.load.continue

pred.load.continue:                               ; preds = %pred.load.if, %vector.body
  %66 = phi i8 [ poison, %vector.body ], [ %65, %pred.load.if ]
  br i1 %54, label %pred.load.if110, label %pred.load.continue111

pred.load.if110:                                  ; preds = %pred.load.continue
  %67 = load i8, ptr %62, align 1
  br label %pred.load.continue111

pred.load.continue111:                            ; preds = %pred.load.if110, %pred.load.continue
  %68 = phi i8 [ poison, %pred.load.continue ], [ %67, %pred.load.if110 ]
  br i1 %55, label %pred.load.if112, label %pred.load.continue113

pred.load.if112:                                  ; preds = %pred.load.continue111
  %69 = load i8, ptr %63, align 1
  br label %pred.load.continue113

pred.load.continue113:                            ; preds = %pred.load.if112, %pred.load.continue111
  %70 = phi i8 [ poison, %pred.load.continue111 ], [ %69, %pred.load.if112 ]
  br i1 %56, label %pred.load.if114, label %pred.load.continue115

pred.load.if114:                                  ; preds = %pred.load.continue113
  %71 = load i8, ptr %64, align 1
  br label %pred.load.continue115

pred.load.continue115:                            ; preds = %pred.load.if114, %pred.load.continue113
  %72 = phi i8 [ poison, %pred.load.continue113 ], [ %71, %pred.load.if114 ]
  %73 = zext i8 %66 to i32
  %74 = zext i8 %68 to i32
  %75 = zext i8 %70 to i32
  %76 = zext i8 %72 to i32
  %77 = and i32 %73, 3
  %78 = and i32 %74, 3
  %79 = and i32 %75, 3
  %80 = and i32 %76, 3
  %81 = icmp eq i32 %77, 1
  %82 = icmp eq i32 %78, 1
  %83 = icmp eq i32 %79, 1
  %84 = icmp eq i32 %80, 1
  %85 = select i1 %53, i1 %81, i1 false
  %86 = select i1 %54, i1 %82, i1 false
  %87 = select i1 %55, i1 %83, i1 false
  %88 = select i1 %56, i1 %84, i1 false
  br i1 %85, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %pred.load.continue115
  %89 = or disjoint i64 %offset.idx, 1
  %90 = getelementptr inbounds i8, ptr %buffer, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = or disjoint i64 %offset.idx, 2
  %93 = getelementptr inbounds i8, ptr %buffer, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = trunc i64 %offset.idx to i32
  %96 = shl nuw nsw i32 %45, 24
  %97 = add i32 %95, %now_pos
  %98 = and i32 %96, 50331648
  %99 = and i32 %73, 252
  %100 = sub i32 %98, %97
  %101 = add i32 %100, %99
  %102 = zext i8 %91 to i32
  %103 = zext i8 %94 to i32
  %104 = shl nuw nsw i32 %102, 16
  %105 = shl nuw nsw i32 %103, 8
  %106 = add i32 %101, %104
  %107 = add i32 %106, %105
  %108 = lshr i32 %107, 24
  %109 = trunc nuw i32 %108 to i8
  %110 = and i8 %109, 3
  %111 = or disjoint i8 %110, 72
  store i8 %111, ptr %37, align 1
  %112 = lshr i32 %107, 16
  %113 = trunc i32 %112 to i8
  store i8 %113, ptr %90, align 1
  %114 = lshr i32 %107, 8
  %115 = trunc i32 %114 to i8
  store i8 %115, ptr %93, align 1
  %116 = trunc i32 %101 to i8
  %117 = and i8 %66, 3
  %118 = or i8 %117, %116
  store i8 %118, ptr %61, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %pred.load.continue115
  br i1 %86, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue
  %119 = or disjoint i64 %offset.idx, 5
  %120 = getelementptr inbounds i8, ptr %buffer, i64 %119
  %121 = load i8, ptr %120, align 1
  %122 = or disjoint i64 %offset.idx, 6
  %123 = getelementptr inbounds i8, ptr %buffer, i64 %122
  %124 = load i8, ptr %123, align 1
  %125 = trunc i64 %34 to i32
  %126 = shl nuw nsw i32 %46, 24
  %127 = add i32 %125, %now_pos
  %128 = and i32 %126, 50331648
  %129 = and i32 %74, 252
  %130 = sub i32 %128, %127
  %131 = add i32 %130, %129
  %132 = zext i8 %121 to i32
  %133 = zext i8 %124 to i32
  %134 = shl nuw nsw i32 %132, 16
  %135 = shl nuw nsw i32 %133, 8
  %136 = add i32 %131, %134
  %137 = add i32 %136, %135
  %138 = lshr i32 %137, 24
  %139 = trunc nuw i32 %138 to i8
  %140 = and i8 %139, 3
  %141 = or disjoint i8 %140, 72
  store i8 %141, ptr %38, align 1
  %142 = lshr i32 %137, 16
  %143 = trunc i32 %142 to i8
  store i8 %143, ptr %120, align 1
  %144 = lshr i32 %137, 8
  %145 = trunc i32 %144 to i8
  store i8 %145, ptr %123, align 1
  %146 = trunc i32 %131 to i8
  %147 = and i8 %68, 3
  %148 = or i8 %147, %146
  store i8 %148, ptr %62, align 1
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue
  br i1 %87, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  %149 = or disjoint i64 %offset.idx, 9
  %150 = getelementptr inbounds i8, ptr %buffer, i64 %149
  %151 = load i8, ptr %150, align 1
  %152 = or disjoint i64 %offset.idx, 10
  %153 = getelementptr inbounds i8, ptr %buffer, i64 %152
  %154 = load i8, ptr %153, align 1
  %155 = trunc i64 %35 to i32
  %156 = shl nuw nsw i32 %47, 24
  %157 = add i32 %155, %now_pos
  %158 = and i32 %156, 50331648
  %159 = and i32 %75, 252
  %160 = sub i32 %158, %157
  %161 = add i32 %160, %159
  %162 = zext i8 %151 to i32
  %163 = zext i8 %154 to i32
  %164 = shl nuw nsw i32 %162, 16
  %165 = shl nuw nsw i32 %163, 8
  %166 = add i32 %161, %164
  %167 = add i32 %166, %165
  %168 = lshr i32 %167, 24
  %169 = trunc nuw i32 %168 to i8
  %170 = and i8 %169, 3
  %171 = or disjoint i8 %170, 72
  store i8 %171, ptr %39, align 1
  %172 = lshr i32 %167, 16
  %173 = trunc i32 %172 to i8
  store i8 %173, ptr %150, align 1
  %174 = lshr i32 %167, 8
  %175 = trunc i32 %174 to i8
  store i8 %175, ptr %153, align 1
  %176 = trunc i32 %161 to i8
  %177 = and i8 %70, 3
  %178 = or i8 %177, %176
  store i8 %178, ptr %63, align 1
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  br i1 %88, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  %179 = or disjoint i64 %offset.idx, 13
  %180 = getelementptr inbounds i8, ptr %buffer, i64 %179
  %181 = load i8, ptr %180, align 1
  %182 = or disjoint i64 %offset.idx, 14
  %183 = getelementptr inbounds i8, ptr %buffer, i64 %182
  %184 = load i8, ptr %183, align 1
  %185 = trunc i64 %36 to i32
  %186 = shl nuw nsw i32 %48, 24
  %187 = add i32 %185, %now_pos
  %188 = and i32 %186, 50331648
  %189 = and i32 %76, 252
  %190 = sub i32 %188, %187
  %191 = add i32 %190, %189
  %192 = zext i8 %181 to i32
  %193 = zext i8 %184 to i32
  %194 = shl nuw nsw i32 %192, 16
  %195 = shl nuw nsw i32 %193, 8
  %196 = add i32 %191, %194
  %197 = add i32 %196, %195
  %198 = lshr i32 %197, 24
  %199 = trunc nuw i32 %198 to i8
  %200 = and i8 %199, 3
  %201 = or disjoint i8 %200, 72
  store i8 %201, ptr %40, align 1
  %202 = lshr i32 %197, 16
  %203 = trunc i32 %202 to i8
  store i8 %203, ptr %180, align 1
  %204 = lshr i32 %197, 8
  %205 = trunc i32 %204 to i8
  store i8 %205, ptr %183, align 1
  %206 = trunc i32 %191 to i8
  %207 = and i8 %72, 3
  %208 = or i8 %207, %206
  store i8 %208, ptr %64, align 1
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %index.next = add nuw i64 %index, 4
  %209 = icmp eq i64 %index.next, %n.vec
  br i1 %209, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %pred.store.continue121
  %cmp.n = icmp eq i64 %4, %n.vec
  %cmo = shl i64 %n.vec, 2
  br i1 %cmp.n, label %for.end, label %for.body.preheader175

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  br i1 %min.iters.check143, label %for.body.us.preheader174, label %vector.scevcheck122

vector.scevcheck122:                              ; preds = %for.body.us.preheader
  %210 = zext i64 %size to i128
  %211 = add nsw i128 %210, -4
  %212 = lshr i128 %211, 2
  %213 = trunc i128 %212 to i64
  %mul.result124 = shl i64 %213, 2
  %mul.overflow125 = icmp ugt i64 %213, 4611686018427387903
  %214 = icmp ugt i64 %mul.result124, -9
  %215 = or i1 %214, %mul.overflow125
  %scevgep126 = getelementptr i8, ptr %buffer, i64 3
  %216 = trunc i128 %212 to i64
  %mul.result128 = shl i64 %216, 2
  %mul.overflow129 = icmp ugt i64 %216, 4611686018427387903
  %217 = getelementptr i8, ptr %scevgep126, i64 %mul.result128
  %218 = icmp ult ptr %217, %scevgep126
  %219 = or i1 %218, %mul.overflow129
  %220 = icmp ugt i128 %211, 73786976294838206463
  %221 = or i1 %219, %220
  %scevgep130 = getelementptr i8, ptr %buffer, i64 2
  %222 = trunc i128 %212 to i64
  %mul.result132 = shl i64 %222, 2
  %mul.overflow133 = icmp ugt i64 %222, 4611686018427387903
  %223 = getelementptr i8, ptr %scevgep130, i64 %mul.result132
  %224 = icmp ult ptr %223, %scevgep130
  %225 = or i1 %224, %mul.overflow133
  %scevgep134 = getelementptr i8, ptr %buffer, i64 1
  %226 = trunc i128 %212 to i64
  %mul.result136 = shl i64 %226, 2
  %mul.overflow137 = icmp ugt i64 %226, 4611686018427387903
  %227 = getelementptr i8, ptr %scevgep134, i64 %mul.result136
  %228 = icmp ult ptr %227, %scevgep134
  %229 = or i1 %228, %mul.overflow137
  %230 = trunc i128 %212 to i64
  %mul.result139 = shl i64 %230, 2
  %mul.overflow140 = icmp ugt i64 %230, 4611686018427387903
  %231 = getelementptr i8, ptr %buffer, i64 %mul.result139
  %232 = icmp ult ptr %231, %buffer
  %233 = or i1 %232, %mul.overflow140
  %234 = or i1 %215, %221
  %235 = or i1 %225, %234
  %236 = or i1 %229, %235
  %237 = or i1 %233, %236
  br i1 %237, label %for.body.us.preheader174, label %vector.ph144

vector.ph144:                                     ; preds = %vector.scevcheck122
  %n.vec146 = and i64 %4, -4
  %238 = shl i64 %n.vec146, 2
  %ind.end147 = or disjoint i64 %238, 4
  %ind.end149 = shl i64 %n.vec146, 2
  br label %vector.body151

vector.body151:                                   ; preds = %pred.store.continue169, %vector.ph144
  %index152 = phi i64 [ 0, %vector.ph144 ], [ %index.next170, %pred.store.continue169 ]
  %offset.idx153 = shl i64 %index152, 2
  %239 = or disjoint i64 %offset.idx153, 4
  %240 = or disjoint i64 %offset.idx153, 8
  %241 = or disjoint i64 %offset.idx153, 12
  %242 = getelementptr inbounds i8, ptr %buffer, i64 %offset.idx153
  %243 = getelementptr inbounds i8, ptr %buffer, i64 %239
  %244 = getelementptr inbounds i8, ptr %buffer, i64 %240
  %245 = getelementptr inbounds i8, ptr %buffer, i64 %241
  %246 = load i8, ptr %242, align 1
  %247 = load i8, ptr %243, align 1
  %248 = load i8, ptr %244, align 1
  %249 = load i8, ptr %245, align 1
  %250 = zext i8 %246 to i32
  %251 = zext i8 %247 to i32
  %252 = zext i8 %248 to i32
  %253 = zext i8 %249 to i32
  %254 = and i32 %250, 252
  %255 = and i32 %251, 252
  %256 = and i32 %252, 252
  %257 = and i32 %253, 252
  %258 = icmp eq i32 %254, 72
  %259 = icmp eq i32 %255, 72
  %260 = icmp eq i32 %256, 72
  %261 = icmp eq i32 %257, 72
  %262 = or disjoint i64 %offset.idx153, 3
  %263 = or disjoint i64 %offset.idx153, 7
  %264 = or disjoint i64 %offset.idx153, 11
  %265 = or disjoint i64 %offset.idx153, 15
  %266 = getelementptr inbounds i8, ptr %buffer, i64 %262
  %267 = getelementptr inbounds i8, ptr %buffer, i64 %263
  %268 = getelementptr inbounds i8, ptr %buffer, i64 %264
  %269 = getelementptr inbounds i8, ptr %buffer, i64 %265
  br i1 %258, label %pred.load.if154, label %pred.load.continue155

pred.load.if154:                                  ; preds = %vector.body151
  %270 = load i8, ptr %266, align 1
  br label %pred.load.continue155

pred.load.continue155:                            ; preds = %pred.load.if154, %vector.body151
  %271 = phi i8 [ poison, %vector.body151 ], [ %270, %pred.load.if154 ]
  br i1 %259, label %pred.load.if156, label %pred.load.continue157

pred.load.if156:                                  ; preds = %pred.load.continue155
  %272 = load i8, ptr %267, align 1
  br label %pred.load.continue157

pred.load.continue157:                            ; preds = %pred.load.if156, %pred.load.continue155
  %273 = phi i8 [ poison, %pred.load.continue155 ], [ %272, %pred.load.if156 ]
  br i1 %260, label %pred.load.if158, label %pred.load.continue159

pred.load.if158:                                  ; preds = %pred.load.continue157
  %274 = load i8, ptr %268, align 1
  br label %pred.load.continue159

pred.load.continue159:                            ; preds = %pred.load.if158, %pred.load.continue157
  %275 = phi i8 [ poison, %pred.load.continue157 ], [ %274, %pred.load.if158 ]
  br i1 %261, label %pred.load.if160, label %pred.load.continue161

pred.load.if160:                                  ; preds = %pred.load.continue159
  %276 = load i8, ptr %269, align 1
  br label %pred.load.continue161

pred.load.continue161:                            ; preds = %pred.load.if160, %pred.load.continue159
  %277 = phi i8 [ poison, %pred.load.continue159 ], [ %276, %pred.load.if160 ]
  %278 = zext i8 %271 to i32
  %279 = zext i8 %273 to i32
  %280 = zext i8 %275 to i32
  %281 = zext i8 %277 to i32
  %282 = and i32 %278, 3
  %283 = and i32 %279, 3
  %284 = and i32 %280, 3
  %285 = and i32 %281, 3
  %286 = icmp eq i32 %282, 1
  %287 = icmp eq i32 %283, 1
  %288 = icmp eq i32 %284, 1
  %289 = icmp eq i32 %285, 1
  %290 = select i1 %258, i1 %286, i1 false
  %291 = select i1 %259, i1 %287, i1 false
  %292 = select i1 %260, i1 %288, i1 false
  %293 = select i1 %261, i1 %289, i1 false
  br i1 %290, label %pred.store.if162, label %pred.store.continue163

pred.store.if162:                                 ; preds = %pred.load.continue161
  %294 = or disjoint i64 %offset.idx153, 1
  %295 = getelementptr inbounds i8, ptr %buffer, i64 %294
  %296 = load i8, ptr %295, align 1
  %297 = or disjoint i64 %offset.idx153, 2
  %298 = getelementptr inbounds i8, ptr %buffer, i64 %297
  %299 = load i8, ptr %298, align 1
  %300 = trunc i64 %offset.idx153 to i32
  %301 = shl nuw nsw i32 %250, 24
  %302 = add i32 %300, %now_pos
  %303 = and i32 %301, 50331648
  %304 = and i32 %278, 252
  %305 = add i32 %303, %302
  %306 = add i32 %305, %304
  %307 = zext i8 %296 to i32
  %308 = zext i8 %299 to i32
  %309 = shl nuw nsw i32 %307, 16
  %310 = shl nuw nsw i32 %308, 8
  %311 = add i32 %306, %309
  %312 = add i32 %311, %310
  %313 = lshr i32 %312, 24
  %314 = trunc nuw i32 %313 to i8
  %315 = and i8 %314, 3
  %316 = or disjoint i8 %315, 72
  store i8 %316, ptr %242, align 1
  %317 = lshr i32 %312, 16
  %318 = trunc i32 %317 to i8
  store i8 %318, ptr %295, align 1
  %319 = lshr i32 %312, 8
  %320 = trunc i32 %319 to i8
  store i8 %320, ptr %298, align 1
  %321 = trunc i32 %306 to i8
  %322 = and i8 %271, 3
  %323 = or i8 %322, %321
  store i8 %323, ptr %266, align 1
  br label %pred.store.continue163

pred.store.continue163:                           ; preds = %pred.store.if162, %pred.load.continue161
  br i1 %291, label %pred.store.if164, label %pred.store.continue165

pred.store.if164:                                 ; preds = %pred.store.continue163
  %324 = or disjoint i64 %offset.idx153, 5
  %325 = getelementptr inbounds i8, ptr %buffer, i64 %324
  %326 = load i8, ptr %325, align 1
  %327 = or disjoint i64 %offset.idx153, 6
  %328 = getelementptr inbounds i8, ptr %buffer, i64 %327
  %329 = load i8, ptr %328, align 1
  %330 = trunc i64 %239 to i32
  %331 = shl nuw nsw i32 %251, 24
  %332 = add i32 %330, %now_pos
  %333 = and i32 %331, 50331648
  %334 = and i32 %279, 252
  %335 = add i32 %333, %332
  %336 = add i32 %335, %334
  %337 = zext i8 %326 to i32
  %338 = zext i8 %329 to i32
  %339 = shl nuw nsw i32 %337, 16
  %340 = shl nuw nsw i32 %338, 8
  %341 = add i32 %336, %339
  %342 = add i32 %341, %340
  %343 = lshr i32 %342, 24
  %344 = trunc nuw i32 %343 to i8
  %345 = and i8 %344, 3
  %346 = or disjoint i8 %345, 72
  store i8 %346, ptr %243, align 1
  %347 = lshr i32 %342, 16
  %348 = trunc i32 %347 to i8
  store i8 %348, ptr %325, align 1
  %349 = lshr i32 %342, 8
  %350 = trunc i32 %349 to i8
  store i8 %350, ptr %328, align 1
  %351 = trunc i32 %336 to i8
  %352 = and i8 %273, 3
  %353 = or i8 %352, %351
  store i8 %353, ptr %267, align 1
  br label %pred.store.continue165

pred.store.continue165:                           ; preds = %pred.store.if164, %pred.store.continue163
  br i1 %292, label %pred.store.if166, label %pred.store.continue167

pred.store.if166:                                 ; preds = %pred.store.continue165
  %354 = or disjoint i64 %offset.idx153, 9
  %355 = getelementptr inbounds i8, ptr %buffer, i64 %354
  %356 = load i8, ptr %355, align 1
  %357 = or disjoint i64 %offset.idx153, 10
  %358 = getelementptr inbounds i8, ptr %buffer, i64 %357
  %359 = load i8, ptr %358, align 1
  %360 = trunc i64 %240 to i32
  %361 = shl nuw nsw i32 %252, 24
  %362 = add i32 %360, %now_pos
  %363 = and i32 %361, 50331648
  %364 = and i32 %280, 252
  %365 = add i32 %363, %362
  %366 = add i32 %365, %364
  %367 = zext i8 %356 to i32
  %368 = zext i8 %359 to i32
  %369 = shl nuw nsw i32 %367, 16
  %370 = shl nuw nsw i32 %368, 8
  %371 = add i32 %366, %369
  %372 = add i32 %371, %370
  %373 = lshr i32 %372, 24
  %374 = trunc nuw i32 %373 to i8
  %375 = and i8 %374, 3
  %376 = or disjoint i8 %375, 72
  store i8 %376, ptr %244, align 1
  %377 = lshr i32 %372, 16
  %378 = trunc i32 %377 to i8
  store i8 %378, ptr %355, align 1
  %379 = lshr i32 %372, 8
  %380 = trunc i32 %379 to i8
  store i8 %380, ptr %358, align 1
  %381 = trunc i32 %366 to i8
  %382 = and i8 %275, 3
  %383 = or i8 %382, %381
  store i8 %383, ptr %268, align 1
  br label %pred.store.continue167

pred.store.continue167:                           ; preds = %pred.store.if166, %pred.store.continue165
  br i1 %293, label %pred.store.if168, label %pred.store.continue169

pred.store.if168:                                 ; preds = %pred.store.continue167
  %384 = or disjoint i64 %offset.idx153, 13
  %385 = getelementptr inbounds i8, ptr %buffer, i64 %384
  %386 = load i8, ptr %385, align 1
  %387 = or disjoint i64 %offset.idx153, 14
  %388 = getelementptr inbounds i8, ptr %buffer, i64 %387
  %389 = load i8, ptr %388, align 1
  %390 = trunc i64 %241 to i32
  %391 = shl nuw nsw i32 %253, 24
  %392 = add i32 %390, %now_pos
  %393 = and i32 %391, 50331648
  %394 = and i32 %281, 252
  %395 = add i32 %393, %392
  %396 = add i32 %395, %394
  %397 = zext i8 %386 to i32
  %398 = zext i8 %389 to i32
  %399 = shl nuw nsw i32 %397, 16
  %400 = shl nuw nsw i32 %398, 8
  %401 = add i32 %396, %399
  %402 = add i32 %401, %400
  %403 = lshr i32 %402, 24
  %404 = trunc nuw i32 %403 to i8
  %405 = and i8 %404, 3
  %406 = or disjoint i8 %405, 72
  store i8 %406, ptr %245, align 1
  %407 = lshr i32 %402, 16
  %408 = trunc i32 %407 to i8
  store i8 %408, ptr %385, align 1
  %409 = lshr i32 %402, 8
  %410 = trunc i32 %409 to i8
  store i8 %410, ptr %388, align 1
  %411 = trunc i32 %396 to i8
  %412 = and i8 %277, 3
  %413 = or i8 %412, %411
  store i8 %413, ptr %269, align 1
  br label %pred.store.continue169

pred.store.continue169:                           ; preds = %pred.store.if168, %pred.store.continue167
  %index.next170 = add nuw i64 %index152, 4
  %414 = icmp eq i64 %index.next170, %n.vec146
  br i1 %414, label %middle.block141, label %vector.body151, !llvm.loop !8

middle.block141:                                  ; preds = %pred.store.continue169
  %cmp.n171 = icmp eq i64 %4, %n.vec146
  %cmo172 = shl i64 %n.vec146, 2
  br i1 %cmp.n171, label %for.end, label %for.body.us.preheader174

for.body.us.preheader174:                         ; preds = %middle.block141, %vector.scevcheck122, %for.body.us.preheader
  %add90.us.ph = phi i64 [ 4, %vector.scevcheck122 ], [ 4, %for.body.us.preheader ], [ %ind.end147, %middle.block141 ]
  %i.089.us.ph = phi i64 [ 0, %vector.scevcheck122 ], [ 0, %for.body.us.preheader ], [ %ind.end149, %middle.block141 ]
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader174, %for.inc.us
  %add90.us = phi i64 [ %add.us, %for.inc.us ], [ %add90.us.ph, %for.body.us.preheader174 ]
  %i.089.us = phi i64 [ %add90.us, %for.inc.us ], [ %i.089.us.ph, %for.body.us.preheader174 ]
  %arrayidx.us = getelementptr inbounds i8, ptr %buffer, i64 %i.089.us
  %415 = load i8, ptr %arrayidx.us, align 1
  %conv.us = zext i8 %415 to i32
  %shr.mask.us = and i32 %conv.us, 252
  %cmp1.us = icmp eq i32 %shr.mask.us, 72
  br i1 %cmp1.us, label %land.lhs.true.us, label %for.inc.us

land.lhs.true.us:                                 ; preds = %for.body.us
  %add3.us = or disjoint i64 %i.089.us, 3
  %arrayidx4.us = getelementptr inbounds i8, ptr %buffer, i64 %add3.us
  %416 = load i8, ptr %arrayidx4.us, align 1
  %conv5.us = zext i8 %416 to i32
  %and.us = and i32 %conv5.us, 3
  %cmp6.us = icmp eq i32 %and.us, 1
  br i1 %cmp6.us, label %if.then.us, label %for.inc.us

if.then.us:                                       ; preds = %land.lhs.true.us
  %and11.us = shl nuw nsw i32 %conv.us, 24
  %shl.us = and i32 %and11.us, 50331648
  %add12.us = or disjoint i64 %i.089.us, 1
  %arrayidx13.us = getelementptr inbounds i8, ptr %buffer, i64 %add12.us
  %417 = load i8, ptr %arrayidx13.us, align 1
  %conv14.us = zext i8 %417 to i32
  %shl15.us = shl nuw nsw i32 %conv14.us, 16
  %add16.us = or disjoint i64 %i.089.us, 2
  %arrayidx17.us = getelementptr inbounds i8, ptr %buffer, i64 %add16.us
  %418 = load i8, ptr %arrayidx17.us, align 1
  %conv18.us = zext i8 %418 to i32
  %shl19.us = shl nuw nsw i32 %conv18.us, 8
  %and24.us = and i32 %conv5.us, 252
  %conv27.us = trunc i64 %i.089.us to i32
  %add28.us = add i32 %conv27.us, %now_pos
  %or25.us = add i32 %shl.us, %add28.us
  %or.us = add i32 %or25.us, %and24.us
  %or20.us = add i32 %or.us, %shl15.us
  %dest.0.us = add i32 %or20.us, %shl19.us
  %shr32.us = lshr i32 %dest.0.us, 24
  %419 = trunc nuw i32 %shr32.us to i8
  %420 = and i8 %419, 3
  %conv35.us = or disjoint i8 %420, 72
  store i8 %conv35.us, ptr %arrayidx.us, align 1
  %shr38.us = lshr i32 %dest.0.us, 16
  %conv39.us = trunc i32 %shr38.us to i8
  store i8 %conv39.us, ptr %arrayidx13.us, align 1
  %shr42.us = lshr i32 %dest.0.us, 8
  %conv43.us = trunc i32 %shr42.us to i8
  store i8 %conv43.us, ptr %arrayidx17.us, align 1
  %421 = and i8 %416, 3
  %422 = trunc i32 %or.us to i8
  %conv55.us = or i8 %421, %422
  store i8 %conv55.us, ptr %arrayidx4.us, align 1
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %land.lhs.true.us, %for.body.us
  %add.us = add i64 %add90.us, 4
  %cmp.not.us = icmp ugt i64 %add.us, %size
  br i1 %cmp.not.us, label %for.end, label %for.body.us, !llvm.loop !9

for.body:                                         ; preds = %for.body.preheader175, %for.inc
  %add90 = phi i64 [ %add, %for.inc ], [ %add90.ph, %for.body.preheader175 ]
  %i.089 = phi i64 [ %add90, %for.inc ], [ %i.089.ph, %for.body.preheader175 ]
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %i.089
  %423 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %423 to i32
  %shr.mask = and i32 %conv, 252
  %cmp1 = icmp eq i32 %shr.mask, 72
  br i1 %cmp1, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %add3 = or disjoint i64 %i.089, 3
  %arrayidx4 = getelementptr inbounds i8, ptr %buffer, i64 %add3
  %424 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %424 to i32
  %and = and i32 %conv5, 3
  %cmp6 = icmp eq i32 %and, 1
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %and11 = shl nuw nsw i32 %conv, 24
  %shl = and i32 %and11, 50331648
  %add12 = or disjoint i64 %i.089, 1
  %arrayidx13 = getelementptr inbounds i8, ptr %buffer, i64 %add12
  %425 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %425 to i32
  %shl15 = shl nuw nsw i32 %conv14, 16
  %add16 = or disjoint i64 %i.089, 2
  %arrayidx17 = getelementptr inbounds i8, ptr %buffer, i64 %add16
  %426 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %426 to i32
  %shl19 = shl nuw nsw i32 %conv18, 8
  %and24 = and i32 %conv5, 252
  %conv27 = trunc i64 %i.089 to i32
  %add28 = add i32 %conv27, %now_pos
  %or25 = sub i32 %shl, %add28
  %or = add i32 %or25, %and24
  %or20 = add i32 %or, %shl15
  %dest.0 = add i32 %or20, %shl19
  %shr32 = lshr i32 %dest.0, 24
  %427 = trunc nuw i32 %shr32 to i8
  %428 = and i8 %427, 3
  %conv35 = or disjoint i8 %428, 72
  store i8 %conv35, ptr %arrayidx, align 1
  %shr38 = lshr i32 %dest.0, 16
  %conv39 = trunc i32 %shr38 to i8
  store i8 %conv39, ptr %arrayidx13, align 1
  %shr42 = lshr i32 %dest.0, 8
  %conv43 = trunc i32 %shr42 to i8
  store i8 %conv43, ptr %arrayidx17, align 1
  %429 = and i8 %424, 3
  %430 = trunc i32 %or to i8
  %conv55 = or i8 %429, %430
  store i8 %conv55, ptr %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %add = add i64 %add90, 4
  %cmp.not = icmp ugt i64 %add, %size
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !10

for.end:                                          ; preds = %for.inc, %for.inc.us, %middle.block, %middle.block141, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %cmo172, %middle.block141 ], [ %cmo, %middle.block ], [ %add90.us, %for.inc.us ], [ %add90, %for.inc ]
  ret i64 %i.0.lcssa
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !6, !7}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
