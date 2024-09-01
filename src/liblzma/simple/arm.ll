; ModuleID = 'liblzma/simple/arm.c'
source_filename = "liblzma/simple/arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_arm_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @arm_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext true) #3
  ret i32 %call.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_arm_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @arm_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext false) #3
  ret i32 %call.i
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @arm_code(ptr nocapture readnone %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 {
entry:
  %cmp.not60 = icmp ult i64 %size, 4
  br i1 %cmp.not60, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add18 = add i32 %now_pos, 8
  %0 = zext i64 %size to i128
  %1 = add nuw nsw i128 %0, 73786976294838206460
  %2 = lshr i128 %1, 2
  %3 = trunc i128 %2 to i64
  %4 = add i64 %3, 1
  %min.iters.check109 = icmp ult i64 %4, 4
  br i1 %is_encoder, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  br i1 %min.iters.check109, label %for.body.preheader133, label %vector.scevcheck

for.body.preheader133:                            ; preds = %middle.block, %vector.scevcheck, %for.body.preheader
  %add62.ph = phi i64 [ 4, %vector.scevcheck ], [ 4, %for.body.preheader ], [ %ind.end, %middle.block ]
  %i.061.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %for.body.preheader ], [ %ind.end80, %middle.block ]
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
  %mul.result67 = shl i64 %11, 2
  %mul.overflow68 = icmp ugt i64 %11, 4611686018427387903
  %12 = getelementptr i8, ptr %scevgep, i64 %mul.result67
  %13 = icmp ult ptr %12, %scevgep
  %14 = or i1 %13, %mul.overflow68
  %15 = icmp ugt i128 %6, 73786976294838206463
  %16 = or i1 %14, %15
  %17 = trunc i128 %7 to i64
  %mul.result70 = shl i64 %17, 2
  %mul.overflow71 = icmp ugt i64 %17, 4611686018427387903
  %18 = getelementptr i8, ptr %buffer, i64 %mul.result70
  %19 = icmp ult ptr %18, %buffer
  %20 = or i1 %19, %mul.overflow71
  %scevgep72 = getelementptr i8, ptr %buffer, i64 1
  %21 = trunc i128 %7 to i64
  %mul.result74 = shl i64 %21, 2
  %mul.overflow75 = icmp ugt i64 %21, 4611686018427387903
  %22 = getelementptr i8, ptr %scevgep72, i64 %mul.result74
  %23 = icmp ult ptr %22, %scevgep72
  %24 = or i1 %23, %mul.overflow75
  %scevgep76 = getelementptr i8, ptr %buffer, i64 2
  %25 = trunc i128 %7 to i64
  %mul.result78 = shl i64 %25, 2
  %mul.overflow79 = icmp ugt i64 %25, 4611686018427387903
  %26 = getelementptr i8, ptr %scevgep76, i64 %mul.result78
  %27 = icmp ult ptr %26, %scevgep76
  %28 = or i1 %27, %mul.overflow79
  %29 = or i1 %10, %16
  %30 = or i1 %20, %29
  %31 = or i1 %24, %30
  %32 = or i1 %28, %31
  br i1 %32, label %for.body.preheader133, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %4, -4
  %33 = shl i64 %n.vec, 2
  %ind.end = or disjoint i64 %33, 4
  %ind.end80 = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue87, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue87 ]
  %offset.idx = shl i64 %index, 2
  %34 = or disjoint i64 %offset.idx, 4
  %35 = or disjoint i64 %offset.idx, 8
  %36 = or disjoint i64 %offset.idx, 12
  %37 = or disjoint i64 %offset.idx, 3
  %38 = or disjoint i64 %offset.idx, 7
  %39 = or disjoint i64 %offset.idx, 11
  %40 = or disjoint i64 %offset.idx, 15
  %41 = getelementptr inbounds i8, ptr %buffer, i64 %37
  %42 = getelementptr inbounds i8, ptr %buffer, i64 %38
  %43 = getelementptr inbounds i8, ptr %buffer, i64 %39
  %44 = getelementptr inbounds i8, ptr %buffer, i64 %40
  %45 = load i8, ptr %41, align 1
  %46 = load i8, ptr %42, align 1
  %47 = load i8, ptr %43, align 1
  %48 = load i8, ptr %44, align 1
  %49 = icmp eq i8 %45, -21
  %50 = icmp eq i8 %46, -21
  %51 = icmp eq i8 %47, -21
  %52 = icmp eq i8 %48, -21
  br i1 %49, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %53 = or disjoint i64 %offset.idx, 2
  %54 = getelementptr inbounds i8, ptr %buffer, i64 %53
  %55 = load i8, ptr %54, align 1
  %56 = or disjoint i64 %offset.idx, 1
  %57 = getelementptr inbounds i8, ptr %buffer, i64 %56
  %58 = load i8, ptr %57, align 1
  %59 = getelementptr inbounds i8, ptr %buffer, i64 %offset.idx
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %55 to i32
  %62 = zext i8 %58 to i32
  %63 = shl nuw nsw i32 %61, 16
  %64 = shl nuw nsw i32 %62, 8
  %65 = zext i8 %60 to i32
  %66 = or disjoint i32 %64, %63
  %67 = trunc i64 %offset.idx to i32
  %68 = or disjoint i32 %66, %65
  %69 = add i32 %67, %now_pos
  %70 = shl nuw nsw i32 %68, 2
  %71 = sub i32 %70, %69
  %72 = add i32 %71, -8
  %73 = lshr i32 %72, 18
  %74 = trunc i32 %73 to i8
  store i8 %74, ptr %54, align 1
  %75 = lshr i32 %72, 10
  %76 = trunc i32 %75 to i8
  store i8 %76, ptr %57, align 1
  %77 = lshr i32 %72, 2
  %78 = trunc i32 %77 to i8
  store i8 %78, ptr %59, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  br i1 %50, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue
  %79 = or disjoint i64 %offset.idx, 6
  %80 = getelementptr inbounds i8, ptr %buffer, i64 %79
  %81 = load i8, ptr %80, align 1
  %82 = or disjoint i64 %offset.idx, 5
  %83 = getelementptr inbounds i8, ptr %buffer, i64 %82
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr inbounds i8, ptr %buffer, i64 %34
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %81 to i32
  %88 = zext i8 %84 to i32
  %89 = shl nuw nsw i32 %87, 16
  %90 = shl nuw nsw i32 %88, 8
  %91 = zext i8 %86 to i32
  %92 = or disjoint i32 %90, %89
  %93 = trunc i64 %34 to i32
  %94 = or disjoint i32 %92, %91
  %95 = add i32 %93, %now_pos
  %96 = shl nuw nsw i32 %94, 2
  %97 = sub i32 %96, %95
  %98 = add i32 %97, -8
  %99 = lshr i32 %98, 18
  %100 = trunc i32 %99 to i8
  store i8 %100, ptr %80, align 1
  %101 = lshr i32 %98, 10
  %102 = trunc i32 %101 to i8
  store i8 %102, ptr %83, align 1
  %103 = lshr i32 %98, 2
  %104 = trunc i32 %103 to i8
  store i8 %104, ptr %85, align 1
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue
  br i1 %51, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  %105 = or disjoint i64 %offset.idx, 10
  %106 = getelementptr inbounds i8, ptr %buffer, i64 %105
  %107 = load i8, ptr %106, align 1
  %108 = or disjoint i64 %offset.idx, 9
  %109 = getelementptr inbounds i8, ptr %buffer, i64 %108
  %110 = load i8, ptr %109, align 1
  %111 = getelementptr inbounds i8, ptr %buffer, i64 %35
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %107 to i32
  %114 = zext i8 %110 to i32
  %115 = shl nuw nsw i32 %113, 16
  %116 = shl nuw nsw i32 %114, 8
  %117 = zext i8 %112 to i32
  %118 = or disjoint i32 %116, %115
  %119 = trunc i64 %35 to i32
  %120 = or disjoint i32 %118, %117
  %121 = add i32 %119, %now_pos
  %122 = shl nuw nsw i32 %120, 2
  %123 = sub i32 %122, %121
  %124 = add i32 %123, -8
  %125 = lshr i32 %124, 18
  %126 = trunc i32 %125 to i8
  store i8 %126, ptr %106, align 1
  %127 = lshr i32 %124, 10
  %128 = trunc i32 %127 to i8
  store i8 %128, ptr %109, align 1
  %129 = lshr i32 %124, 2
  %130 = trunc i32 %129 to i8
  store i8 %130, ptr %111, align 1
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  br i1 %52, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  %131 = or disjoint i64 %offset.idx, 14
  %132 = getelementptr inbounds i8, ptr %buffer, i64 %131
  %133 = load i8, ptr %132, align 1
  %134 = or disjoint i64 %offset.idx, 13
  %135 = getelementptr inbounds i8, ptr %buffer, i64 %134
  %136 = load i8, ptr %135, align 1
  %137 = getelementptr inbounds i8, ptr %buffer, i64 %36
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %133 to i32
  %140 = zext i8 %136 to i32
  %141 = shl nuw nsw i32 %139, 16
  %142 = shl nuw nsw i32 %140, 8
  %143 = zext i8 %138 to i32
  %144 = or disjoint i32 %142, %141
  %145 = trunc i64 %36 to i32
  %146 = or disjoint i32 %144, %143
  %147 = add i32 %145, %now_pos
  %148 = shl nuw nsw i32 %146, 2
  %149 = sub i32 %148, %147
  %150 = add i32 %149, -8
  %151 = lshr i32 %150, 18
  %152 = trunc i32 %151 to i8
  store i8 %152, ptr %132, align 1
  %153 = lshr i32 %150, 10
  %154 = trunc i32 %153 to i8
  store i8 %154, ptr %135, align 1
  %155 = lshr i32 %150, 2
  %156 = trunc i32 %155 to i8
  store i8 %156, ptr %137, align 1
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %index.next = add nuw i64 %index, 4
  %157 = icmp eq i64 %index.next, %n.vec
  br i1 %157, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %pred.store.continue87
  %cmp.n = icmp eq i64 %4, %n.vec
  %cmo = shl i64 %n.vec, 2
  br i1 %cmp.n, label %for.end, label %for.body.preheader133

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  br i1 %min.iters.check109, label %for.body.us.preheader132, label %vector.scevcheck88

vector.scevcheck88:                               ; preds = %for.body.us.preheader
  %158 = zext i64 %size to i128
  %159 = add nsw i128 %158, -4
  %160 = lshr i128 %159, 2
  %161 = trunc i128 %160 to i64
  %mul.result90 = shl i64 %161, 2
  %mul.overflow91 = icmp ugt i64 %161, 4611686018427387903
  %162 = icmp ugt i64 %mul.result90, -9
  %163 = or i1 %162, %mul.overflow91
  %scevgep92 = getelementptr i8, ptr %buffer, i64 3
  %164 = trunc i128 %160 to i64
  %mul.result94 = shl i64 %164, 2
  %mul.overflow95 = icmp ugt i64 %164, 4611686018427387903
  %165 = getelementptr i8, ptr %scevgep92, i64 %mul.result94
  %166 = icmp ult ptr %165, %scevgep92
  %167 = or i1 %166, %mul.overflow95
  %168 = icmp ugt i128 %159, 73786976294838206463
  %169 = or i1 %167, %168
  %170 = trunc i128 %160 to i64
  %mul.result97 = shl i64 %170, 2
  %mul.overflow98 = icmp ugt i64 %170, 4611686018427387903
  %171 = getelementptr i8, ptr %buffer, i64 %mul.result97
  %172 = icmp ult ptr %171, %buffer
  %173 = or i1 %172, %mul.overflow98
  %scevgep99 = getelementptr i8, ptr %buffer, i64 1
  %174 = trunc i128 %160 to i64
  %mul.result101 = shl i64 %174, 2
  %mul.overflow102 = icmp ugt i64 %174, 4611686018427387903
  %175 = getelementptr i8, ptr %scevgep99, i64 %mul.result101
  %176 = icmp ult ptr %175, %scevgep99
  %177 = or i1 %176, %mul.overflow102
  %scevgep103 = getelementptr i8, ptr %buffer, i64 2
  %178 = trunc i128 %160 to i64
  %mul.result105 = shl i64 %178, 2
  %mul.overflow106 = icmp ugt i64 %178, 4611686018427387903
  %179 = getelementptr i8, ptr %scevgep103, i64 %mul.result105
  %180 = icmp ult ptr %179, %scevgep103
  %181 = or i1 %180, %mul.overflow106
  %182 = or i1 %163, %169
  %183 = or i1 %173, %182
  %184 = or i1 %177, %183
  %185 = or i1 %181, %184
  br i1 %185, label %for.body.us.preheader132, label %vector.ph110

vector.ph110:                                     ; preds = %vector.scevcheck88
  %n.vec112 = and i64 %4, -4
  %186 = shl i64 %n.vec112, 2
  %ind.end113 = or disjoint i64 %186, 4
  %ind.end115 = shl i64 %n.vec112, 2
  br label %vector.body117

vector.body117:                                   ; preds = %pred.store.continue127, %vector.ph110
  %index118 = phi i64 [ 0, %vector.ph110 ], [ %index.next128, %pred.store.continue127 ]
  %offset.idx119 = shl i64 %index118, 2
  %187 = or disjoint i64 %offset.idx119, 4
  %188 = or disjoint i64 %offset.idx119, 8
  %189 = or disjoint i64 %offset.idx119, 12
  %190 = or disjoint i64 %offset.idx119, 3
  %191 = or disjoint i64 %offset.idx119, 7
  %192 = or disjoint i64 %offset.idx119, 11
  %193 = or disjoint i64 %offset.idx119, 15
  %194 = getelementptr inbounds i8, ptr %buffer, i64 %190
  %195 = getelementptr inbounds i8, ptr %buffer, i64 %191
  %196 = getelementptr inbounds i8, ptr %buffer, i64 %192
  %197 = getelementptr inbounds i8, ptr %buffer, i64 %193
  %198 = load i8, ptr %194, align 1
  %199 = load i8, ptr %195, align 1
  %200 = load i8, ptr %196, align 1
  %201 = load i8, ptr %197, align 1
  %202 = icmp eq i8 %198, -21
  %203 = icmp eq i8 %199, -21
  %204 = icmp eq i8 %200, -21
  %205 = icmp eq i8 %201, -21
  br i1 %202, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %vector.body117
  %206 = or disjoint i64 %offset.idx119, 2
  %207 = getelementptr inbounds i8, ptr %buffer, i64 %206
  %208 = load i8, ptr %207, align 1
  %209 = or disjoint i64 %offset.idx119, 1
  %210 = getelementptr inbounds i8, ptr %buffer, i64 %209
  %211 = load i8, ptr %210, align 1
  %212 = getelementptr inbounds i8, ptr %buffer, i64 %offset.idx119
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %208 to i32
  %215 = zext i8 %211 to i32
  %216 = shl nuw nsw i32 %214, 16
  %217 = shl nuw nsw i32 %215, 8
  %218 = zext i8 %213 to i32
  %219 = or disjoint i32 %217, %216
  %220 = or disjoint i32 %219, %218
  %221 = trunc i64 %offset.idx119 to i32
  %222 = shl nuw nsw i32 %220, 2
  %223 = add i32 %add18, %221
  %224 = add i32 %223, %222
  %225 = lshr i32 %224, 18
  %226 = trunc i32 %225 to i8
  store i8 %226, ptr %207, align 1
  %227 = lshr i32 %224, 10
  %228 = trunc i32 %227 to i8
  store i8 %228, ptr %210, align 1
  %229 = lshr i32 %224, 2
  %230 = trunc i32 %229 to i8
  store i8 %230, ptr %212, align 1
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %vector.body117
  br i1 %203, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  %231 = or disjoint i64 %offset.idx119, 6
  %232 = getelementptr inbounds i8, ptr %buffer, i64 %231
  %233 = load i8, ptr %232, align 1
  %234 = or disjoint i64 %offset.idx119, 5
  %235 = getelementptr inbounds i8, ptr %buffer, i64 %234
  %236 = load i8, ptr %235, align 1
  %237 = getelementptr inbounds i8, ptr %buffer, i64 %187
  %238 = load i8, ptr %237, align 1
  %239 = zext i8 %233 to i32
  %240 = zext i8 %236 to i32
  %241 = shl nuw nsw i32 %239, 16
  %242 = shl nuw nsw i32 %240, 8
  %243 = zext i8 %238 to i32
  %244 = or disjoint i32 %242, %241
  %245 = or disjoint i32 %244, %243
  %246 = trunc i64 %187 to i32
  %247 = shl nuw nsw i32 %245, 2
  %248 = add i32 %add18, %246
  %249 = add i32 %248, %247
  %250 = lshr i32 %249, 18
  %251 = trunc i32 %250 to i8
  store i8 %251, ptr %232, align 1
  %252 = lshr i32 %249, 10
  %253 = trunc i32 %252 to i8
  store i8 %253, ptr %235, align 1
  %254 = lshr i32 %249, 2
  %255 = trunc i32 %254 to i8
  store i8 %255, ptr %237, align 1
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  br i1 %204, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  %256 = or disjoint i64 %offset.idx119, 10
  %257 = getelementptr inbounds i8, ptr %buffer, i64 %256
  %258 = load i8, ptr %257, align 1
  %259 = or disjoint i64 %offset.idx119, 9
  %260 = getelementptr inbounds i8, ptr %buffer, i64 %259
  %261 = load i8, ptr %260, align 1
  %262 = getelementptr inbounds i8, ptr %buffer, i64 %188
  %263 = load i8, ptr %262, align 1
  %264 = zext i8 %258 to i32
  %265 = zext i8 %261 to i32
  %266 = shl nuw nsw i32 %264, 16
  %267 = shl nuw nsw i32 %265, 8
  %268 = zext i8 %263 to i32
  %269 = or disjoint i32 %267, %266
  %270 = or disjoint i32 %269, %268
  %271 = trunc i64 %188 to i32
  %272 = shl nuw nsw i32 %270, 2
  %273 = add i32 %add18, %271
  %274 = add i32 %273, %272
  %275 = lshr i32 %274, 18
  %276 = trunc i32 %275 to i8
  store i8 %276, ptr %257, align 1
  %277 = lshr i32 %274, 10
  %278 = trunc i32 %277 to i8
  store i8 %278, ptr %260, align 1
  %279 = lshr i32 %274, 2
  %280 = trunc i32 %279 to i8
  store i8 %280, ptr %262, align 1
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  br i1 %205, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  %281 = or disjoint i64 %offset.idx119, 14
  %282 = getelementptr inbounds i8, ptr %buffer, i64 %281
  %283 = load i8, ptr %282, align 1
  %284 = or disjoint i64 %offset.idx119, 13
  %285 = getelementptr inbounds i8, ptr %buffer, i64 %284
  %286 = load i8, ptr %285, align 1
  %287 = getelementptr inbounds i8, ptr %buffer, i64 %189
  %288 = load i8, ptr %287, align 1
  %289 = zext i8 %283 to i32
  %290 = zext i8 %286 to i32
  %291 = shl nuw nsw i32 %289, 16
  %292 = shl nuw nsw i32 %290, 8
  %293 = zext i8 %288 to i32
  %294 = or disjoint i32 %292, %291
  %295 = or disjoint i32 %294, %293
  %296 = trunc i64 %189 to i32
  %297 = shl nuw nsw i32 %295, 2
  %298 = add i32 %add18, %296
  %299 = add i32 %298, %297
  %300 = lshr i32 %299, 18
  %301 = trunc i32 %300 to i8
  store i8 %301, ptr %282, align 1
  %302 = lshr i32 %299, 10
  %303 = trunc i32 %302 to i8
  store i8 %303, ptr %285, align 1
  %304 = lshr i32 %299, 2
  %305 = trunc i32 %304 to i8
  store i8 %305, ptr %287, align 1
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %index.next128 = add nuw i64 %index118, 4
  %306 = icmp eq i64 %index.next128, %n.vec112
  br i1 %306, label %middle.block107, label %vector.body117, !llvm.loop !8

middle.block107:                                  ; preds = %pred.store.continue127
  %cmp.n129 = icmp eq i64 %4, %n.vec112
  %cmo130 = shl i64 %n.vec112, 2
  br i1 %cmp.n129, label %for.end, label %for.body.us.preheader132

for.body.us.preheader132:                         ; preds = %middle.block107, %vector.scevcheck88, %for.body.us.preheader
  %add62.us.ph = phi i64 [ 4, %vector.scevcheck88 ], [ 4, %for.body.us.preheader ], [ %ind.end113, %middle.block107 ]
  %i.061.us.ph = phi i64 [ 0, %vector.scevcheck88 ], [ 0, %for.body.us.preheader ], [ %ind.end115, %middle.block107 ]
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader132, %for.inc.us
  %add62.us = phi i64 [ %add.us, %for.inc.us ], [ %add62.us.ph, %for.body.us.preheader132 ]
  %i.061.us = phi i64 [ %add62.us, %for.inc.us ], [ %i.061.us.ph, %for.body.us.preheader132 ]
  %add1.us = or disjoint i64 %i.061.us, 3
  %arrayidx.us = getelementptr inbounds i8, ptr %buffer, i64 %add1.us
  %307 = load i8, ptr %arrayidx.us, align 1
  %cmp2.us = icmp eq i8 %307, -21
  br i1 %cmp2.us, label %if.then.us, label %for.inc.us

if.then.us:                                       ; preds = %for.body.us
  %add4.us = or disjoint i64 %i.061.us, 2
  %arrayidx5.us = getelementptr inbounds i8, ptr %buffer, i64 %add4.us
  %308 = load i8, ptr %arrayidx5.us, align 1
  %conv6.us = zext i8 %308 to i32
  %shl.us = shl nuw nsw i32 %conv6.us, 16
  %add7.us = or disjoint i64 %i.061.us, 1
  %arrayidx8.us = getelementptr inbounds i8, ptr %buffer, i64 %add7.us
  %309 = load i8, ptr %arrayidx8.us, align 1
  %conv9.us = zext i8 %309 to i32
  %shl10.us = shl nuw nsw i32 %conv9.us, 8
  %or.us = or disjoint i32 %shl10.us, %shl.us
  %arrayidx12.us = getelementptr inbounds i8, ptr %buffer, i64 %i.061.us
  %310 = load i8, ptr %arrayidx12.us, align 1
  %conv13.us = zext i8 %310 to i32
  %or14.us = or disjoint i32 %or.us, %conv13.us
  %shl15.us = shl nuw nsw i32 %or14.us, 2
  %conv17.us = trunc i64 %i.061.us to i32
  %add19.us = add i32 %add18, %conv17.us
  %add20.us = add i32 %add19.us, %shl15.us
  %shr.us = lshr i32 %add20.us, 2
  %shr24.us = lshr i32 %add20.us, 18
  %conv25.us = trunc i32 %shr24.us to i8
  store i8 %conv25.us, ptr %arrayidx5.us, align 1
  %shr28.us = lshr i32 %add20.us, 10
  %conv29.us = trunc i32 %shr28.us to i8
  store i8 %conv29.us, ptr %arrayidx8.us, align 1
  %conv32.us = trunc i32 %shr.us to i8
  store i8 %conv32.us, ptr %arrayidx12.us, align 1
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %for.body.us
  %add.us = add i64 %add62.us, 4
  %cmp.not.us = icmp ugt i64 %add.us, %size
  br i1 %cmp.not.us, label %for.end, label %for.body.us, !llvm.loop !9

for.body:                                         ; preds = %for.body.preheader133, %for.inc
  %add62 = phi i64 [ %add, %for.inc ], [ %add62.ph, %for.body.preheader133 ]
  %i.061 = phi i64 [ %add62, %for.inc ], [ %i.061.ph, %for.body.preheader133 ]
  %add1 = or disjoint i64 %i.061, 3
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %add1
  %311 = load i8, ptr %arrayidx, align 1
  %cmp2 = icmp eq i8 %311, -21
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %add4 = or disjoint i64 %i.061, 2
  %arrayidx5 = getelementptr inbounds i8, ptr %buffer, i64 %add4
  %312 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %312 to i32
  %shl = shl nuw nsw i32 %conv6, 16
  %add7 = or disjoint i64 %i.061, 1
  %arrayidx8 = getelementptr inbounds i8, ptr %buffer, i64 %add7
  %313 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %313 to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %or = or disjoint i32 %shl10, %shl
  %arrayidx12 = getelementptr inbounds i8, ptr %buffer, i64 %i.061
  %314 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %314 to i32
  %or14 = or disjoint i32 %or, %conv13
  %shl15 = shl nuw nsw i32 %or14, 2
  %conv21 = trunc i64 %i.061 to i32
  %315 = add i32 %conv21, %now_pos
  %reass.sub = sub i32 %shl15, %315
  %sub = add i32 %reass.sub, -8
  %shr = lshr i32 %sub, 2
  %shr24 = lshr i32 %sub, 18
  %conv25 = trunc i32 %shr24 to i8
  store i8 %conv25, ptr %arrayidx5, align 1
  %shr28 = lshr i32 %sub, 10
  %conv29 = trunc i32 %shr28 to i8
  store i8 %conv29, ptr %arrayidx8, align 1
  %conv32 = trunc i32 %shr to i8
  store i8 %conv32, ptr %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %add = add i64 %add62, 4
  %cmp.not = icmp ugt i64 %add, %size
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !10

for.end:                                          ; preds = %for.inc, %for.inc.us, %middle.block, %middle.block107, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %cmo130, %middle.block107 ], [ %cmo, %middle.block ], [ %add62.us, %for.inc.us ], [ %add62, %for.inc ]
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
