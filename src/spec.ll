; ModuleID = 'spec.c'
source_filename = "spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"main: Error mallocing memory for SHA-%d sum!\0A\00", align 1, !dbg !0
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"Error: Supplied original hash value is not the correct length to be SHA-%d\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [127 x i8] c"Usage: %s <input filename> <input size> <input raw SHA-%d> <compressed minimum> <compressed maximum> <compression level, ...>\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [41 x i8] c"SPEC CPU XZ driver: input=%s insize=%ld\0A\00", align 1, !dbg !17
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Error allocating in-memory file descriptors\0A\00", align 1, !dbg !22
@.str.6 = private unnamed_addr constant [32 x i8] c"Input data %ld bytes in length\0A\00", align 1, !dbg !27
@.str.7 = private unnamed_addr constant [44 x i8] c"Error: compression level '%s' is not valid\0A\00", align 1, !dbg !32
@.str.8 = private unnamed_addr constant [36 x i8] c"Compressing Input Data, level %d%s\0A\00", align 1, !dbg !37
@.str.9 = private unnamed_addr constant [11 x i8] c" (extreme)\00", align 1, !dbg !42
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !47
@.str.11 = private unnamed_addr constant [37 x i8] c"Compressed data %ld bytes in length\0A\00", align 1, !dbg !52
@.str.12 = private unnamed_addr constant [47 x i8] c"Compressed data length is %ld bytes in length\0A\00", align 1, !dbg !57
@.str.13 = private unnamed_addr constant [56 x i8] c"Compressed data is between %ld and %ld bytes in length\0A\00", align 1, !dbg !62
@.str.14 = private unnamed_addr constant [75 x i8] c"Compressed data length of %ld does not match expected length of %ld bytes\0A\00", align 1, !dbg !67
@.str.15 = private unnamed_addr constant [82 x i8] c"Compressed data length of %ld is outside the allowable range of %ld to %ld bytes\0A\00", align 1, !dbg !72
@.str.18 = private unnamed_addr constant [39 x i8] c"Uncompressed data %ld bytes in length\0A\00", align 1, !dbg !77
@.str.19 = private unnamed_addr constant [67 x i8] c"Computed SHA-%d sum for decompression step did not match expected\0A\00", align 1, !dbg !82
@.str.20 = private unnamed_addr constant [14 x i8] c"  Generated: \00", align 1, !dbg !87
@stdout = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"   Expected: \00", align 1, !dbg !92
@.str.24 = private unnamed_addr constant [28 x i8] c"Tested %ld MiB buffer: OK!\0A\00", align 1, !dbg !94
@str = private unnamed_addr constant [19 x i8] c"Loading Input Data\00", align 1
@str.25 = private unnamed_addr constant [26 x i8] c"Finished compressing data\00", align 1
@str.26 = private unnamed_addr constant [41 x i8] c"Uncompressing previously compressed data\00", align 1
@str.27 = private unnamed_addr constant [37 x i8] c"Uncompressed data compared correctly\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 !dbg !138 {
entry:
    #dbg_value(i32 %argc, !145, !DIExpression(), !163)
    #dbg_value(ptr %argv, !146, !DIExpression(), !163)
    #dbg_value(i32 0, !147, !DIExpression(), !163)
    #dbg_value(i32 0, !148, !DIExpression(), !163)
    #dbg_value(i32 0, !149, !DIExpression(), !163)
    #dbg_value(i64 0, !151, !DIExpression(), !163)
    #dbg_value(i64 -1, !157, !DIExpression(), !163)
    #dbg_value(i64 -1, !158, !DIExpression(), !163)
    #dbg_value(ptr null, !159, !DIExpression(), !163)
    #dbg_value(ptr null, !160, !DIExpression(), !163)
    #dbg_value(ptr null, !161, !DIExpression(), !163)
    #dbg_value(ptr null, !162, !DIExpression(), !163)
  %call = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #8, !dbg !164
    #dbg_value(ptr %call, !162, !DIExpression(), !163)
  %cmp = icmp eq ptr %call, null, !dbg !165
  br i1 %cmp, label %if.then, label %if.end, !dbg !167

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 512), !dbg !168
  tail call void @exit(i32 noundef 1) #9, !dbg !170
  unreachable, !dbg !170

if.end:                                           ; preds = %entry
  %cmp2 = icmp sgt i32 %argc, 1, !dbg !171
  br i1 %cmp2, label %if.end4, label %if.end35.thread, !dbg !173

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds i8, ptr %argv, i64 8, !dbg !174
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !174
    #dbg_value(ptr %0, !159, !DIExpression(), !163)
  %cmp5.not = icmp eq i32 %argc, 2, !dbg !175
  br i1 %cmp5.not, label %if.end35.thread, label %if.end9, !dbg !177

if.end9:                                          ; preds = %if.end4
  %arrayidx7 = getelementptr inbounds i8, ptr %argv, i64 16, !dbg !178
  %1 = load ptr, ptr %arrayidx7, align 8, !dbg !178
  %call8 = tail call i64 @strtol(ptr nocapture noundef %1, ptr noundef null, i32 noundef 10) #10, !dbg !179
    #dbg_value(i64 %call8, !151, !DIExpression(), !163)
  %cmp10 = icmp ugt i32 %argc, 3, !dbg !180
  br i1 %cmp10, label %if.then11, label %if.end35.thread, !dbg !182

if.then11:                                        ; preds = %if.end9
  %arrayidx12 = getelementptr inbounds i8, ptr %argv, i64 24, !dbg !183
  %2 = load ptr, ptr %arrayidx12, align 8, !dbg !183
  %call13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #11, !dbg !186
  %mul.mask = and i64 %call13, 4611686018427387903, !dbg !187
  %cmp14.not = icmp eq i64 %mul.mask, 128, !dbg !187
  br i1 %cmp14.not, label %if.end23, label %if.then15, !dbg !188

if.then15:                                        ; preds = %if.then11
  %3 = load ptr, ptr @stderr, align 8, !dbg !189
  %call16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 512) #12, !dbg !191
  tail call void @exit(i32 noundef 1) #9, !dbg !192
  unreachable, !dbg !192

if.end23:                                         ; preds = %if.then11
  %call21 = tail call ptr @sum_str_to_hex(ptr noundef %2, i32 noundef 512) #10, !dbg !193
    #dbg_value(ptr %call21, !160, !DIExpression(), !163)
  %cmp24.not = icmp eq i32 %argc, 4, !dbg !194
  br i1 %cmp24.not, label %if.end35.thread, label %if.end29, !dbg !196

if.end29:                                         ; preds = %if.end23
  %arrayidx27 = getelementptr inbounds i8, ptr %argv, i64 32, !dbg !197
  %4 = load ptr, ptr %arrayidx27, align 8, !dbg !197
  %call28 = tail call i64 @strtol(ptr nocapture noundef %4, ptr noundef null, i32 noundef 10) #10, !dbg !198
    #dbg_value(i64 %call28, !157, !DIExpression(), !163)
  %cmp30 = icmp ugt i32 %argc, 5, !dbg !199
  br i1 %cmp30, label %if.end35, label %if.end35.thread, !dbg !201

if.end35:                                         ; preds = %if.end29
  %arrayidx33 = getelementptr inbounds i8, ptr %argv, i64 40, !dbg !202
  %5 = load ptr, ptr %arrayidx33, align 8, !dbg !202
  %call34 = tail call i64 @strtol(ptr nocapture noundef %5, ptr noundef null, i32 noundef 10) #10, !dbg !203
    #dbg_value(i64 %call34, !158, !DIExpression(), !163)
  %call34.fr = freeze i64 %call34, !dbg !204
  %cmp36 = icmp slt i64 %call34.fr, 0, !dbg !204
  %spec.select = select i1 %cmp36, i64 %call28, i64 %call34.fr, !dbg !206
  br label %if.end35.thread, !dbg !206

if.end35.thread:                                  ; preds = %if.end35, %if.end, %if.end4, %if.end9, %if.end23, %if.end29
  %sha.0259265282 = phi ptr [ %call21, %if.end29 ], [ %call21, %if.end23 ], [ null, %if.end9 ], [ null, %if.end4 ], [ null, %if.end ], [ %call21, %if.end35 ]
  %input_name.0247251258266280 = phi ptr [ %0, %if.end29 ], [ %0, %if.end23 ], [ %0, %if.end9 ], [ %0, %if.end4 ], [ null, %if.end ], [ %0, %if.end35 ]
  %input_size.0252257267278 = phi i64 [ %call8, %if.end29 ], [ %call8, %if.end23 ], [ %call8, %if.end9 ], [ 0, %if.end4 ], [ 0, %if.end ], [ %call8, %if.end35 ]
  %compressed_min.0268276 = phi i64 [ %call28, %if.end29 ], [ -1, %if.end23 ], [ -1, %if.end9 ], [ -1, %if.end4 ], [ -1, %if.end ], [ %call28, %if.end35 ]
  %6 = phi i64 [ %call28, %if.end29 ], [ -1, %if.end23 ], [ -1, %if.end9 ], [ -1, %if.end4 ], [ -1, %if.end ], [ %spec.select, %if.end35 ], !dbg !206
    #dbg_value(i64 %6, !158, !DIExpression(), !163)
  %cmp40 = icmp eq ptr %input_name.0247251258266280, null, !dbg !207
  %cmp42 = icmp slt i64 %input_size.0252257267278, 1
  %or.cond = select i1 %cmp40, i1 true, i1 %cmp42, !dbg !209
  %cmp45 = icmp eq ptr %sha.0259265282, null
  %or.cond183 = select i1 %or.cond, i1 true, i1 %cmp45, !dbg !209
  %cmp48 = icmp eq i64 %compressed_min.0268276, 0
  %cmp51 = icmp eq i64 %6, 0
  %7 = or i1 %cmp48, %cmp51, !dbg !209
  %or.cond185 = select i1 %or.cond183, i1 true, i1 %7, !dbg !209
  %cmp54 = icmp slt i32 %argc, 6
  %or.cond186 = or i1 %cmp54, %or.cond185, !dbg !209
  br i1 %or.cond186, label %if.then56, label %if.end59, !dbg !209

if.then56:                                        ; preds = %if.end35.thread
  %8 = load ptr, ptr %argv, align 8, !dbg !210
  %call58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %8, i32 noundef 512), !dbg !212
  tail call void @exit(i32 noundef 1) #9, !dbg !213
  unreachable, !dbg !213

if.end59:                                         ; preds = %if.end35.thread
  %call60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %input_name.0247251258266280, i64 noundef %input_size.0252257267278), !dbg !214
  %call61 = tail call ptr @spec_mem_alloc_fds(i32 noundef 3) #10, !dbg !215
  store ptr %call61, ptr @spec_fd, align 8, !dbg !216
  %cmp62 = icmp eq ptr %call61, null, !dbg !217
  br i1 %cmp62, label %if.then64, label %if.end66, !dbg !219

if.then64:                                        ; preds = %if.end59
  %9 = load ptr, ptr @stderr, align 8, !dbg !220
  %10 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 44, i64 1, ptr %9) #13, !dbg !222
  tail call void @exit(i32 noundef 1) #9, !dbg !223
  unreachable, !dbg !223

if.end66:                                         ; preds = %if.end59
  %mul67 = shl nsw i64 %input_size.0252257267278, 20, !dbg !224
  %cmp68 = icmp ult i64 %input_size.0252257267278, 254, !dbg !226
  %spec.select292 = select i1 %cmp68, i64 266338304, i64 %mul67, !dbg !227
  %11 = getelementptr inbounds i8, ptr %call61, i64 40, !dbg !228
  store i64 %spec.select292, ptr %11, align 8, !dbg !228
  store i64 %spec.select292, ptr %call61, align 8, !dbg !228
  %12 = load ptr, ptr @spec_fd, align 8, !dbg !229
  %call81 = tail call i32 @spec_mem_init(ptr noundef %12, i32 noundef 3, i32 noundef 1) #10, !dbg !229
  %call82 = tail call i32 @debug_time() #10, !dbg !230
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str), !dbg !231
  %13 = load ptr, ptr @spec_fd, align 8, !dbg !232
  %call85 = tail call ptr @spec_mem_load(ptr noundef %13, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %input_name.0247251258266280, i64 noundef %mul67, i32 noundef 1, ptr noundef nonnull %sha.0259265282, i32 noundef 512) #10, !dbg !232
    #dbg_value(ptr %call85, !161, !DIExpression(), !163)
  %14 = load ptr, ptr @spec_fd, align 8, !dbg !233
  %len = getelementptr inbounds i8, ptr %14, i64 8, !dbg !234
  %15 = load i64, ptr %len, align 8, !dbg !234
  %call87 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %15), !dbg !235
  %16 = load ptr, ptr @spec_fd, align 8, !dbg !236
  %open = getelementptr inbounds i8, ptr %16, i64 104, !dbg !237
  store i32 1, ptr %open, align 8, !dbg !238
  %open90 = getelementptr inbounds i8, ptr %16, i64 64, !dbg !239
  store i32 1, ptr %open90, align 8, !dbg !240
  %open92 = getelementptr inbounds i8, ptr %16, i64 24, !dbg !241
  store i32 1, ptr %open92, align 8, !dbg !242
  tail call void (...) @spec_initbufs() #10, !dbg !243
    #dbg_value(i32 6, !148, !DIExpression(), !163)
  %cmp93285 = icmp ugt i32 %argc, 6, !dbg !244
  br i1 %cmp93285, label %for.body.lr.ph, label %for.end, !dbg !247

for.body.lr.ph:                                   ; preds = %if.end66
  %cmp125 = icmp sgt i64 %compressed_min.0268276, 0
  %cmp137 = icmp eq i64 %compressed_min.0268276, %6
  %wide.trip.count = zext nneg i32 %argc to i64, !dbg !244
  br label %for.body, !dbg !247

for.body:                                         ; preds = %for.body.lr.ph, %if.end176
  %indvars.iv = phi i64 [ 6, %for.body.lr.ph ], [ %indvars.iv.next, %if.end176 ]
    #dbg_value(i64 %indvars.iv, !148, !DIExpression(), !163)
  %arrayidx95 = getelementptr inbounds ptr, ptr %argv, i64 %indvars.iv, !dbg !248
  %17 = load ptr, ptr %arrayidx95, align 8, !dbg !248
  %18 = load i8, ptr %17, align 1, !dbg !248
    #dbg_value(i8 %18, !147, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !163)
    #dbg_value(i32 poison, !149, !DIExpression(), !163)
  %19 = add i8 %18, -58, !dbg !250
  %or.cond187 = icmp ult i8 %19, -10, !dbg !250
  br i1 %or.cond187, label %if.then112, label %if.end118, !dbg !250

if.then112:                                       ; preds = %for.body
  %call115 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %17), !dbg !252
  %20 = load ptr, ptr %argv, align 8, !dbg !254
  %call117 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %20, i32 noundef 512), !dbg !255
  tail call void @exit(i32 noundef 1) #9, !dbg !256
  unreachable, !dbg !256

if.end118:                                        ; preds = %for.body
  %arrayidx100 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !257
  %21 = load i8, ptr %arrayidx100, align 1, !dbg !257
  %cmp102.not = icmp eq i8 %21, 101, !dbg !259
  %. = select i1 %cmp102.not, i32 -2147483648, i32 0
    #dbg_value(i32 %., !149, !DIExpression(), !163)
  %conv97 = zext nneg i8 %18 to i32, !dbg !248
    #dbg_value(i32 %conv97, !147, !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !163)
  %sub = add nsw i32 %conv97, -48, !dbg !260
    #dbg_value(i32 %sub, !147, !DIExpression(), !163)
  %call119 = tail call i32 @debug_time() #10, !dbg !261
  %cond = select i1 %cmp102.not, ptr @.str.9, ptr @.str.10, !dbg !262
  %call120 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %sub, ptr noundef nonnull %cond), !dbg !263
  %or = or disjoint i32 %., %sub, !dbg !264
  tail call void @spec_compress(i32 noundef 0, i32 noundef 1, i32 noundef %or) #10, !dbg !265
  %call121 = tail call i32 @debug_time() #10, !dbg !266
  %22 = load ptr, ptr @stderr, align 8, !dbg !267
  %23 = load ptr, ptr @spec_fd, align 8, !dbg !268
  %len123 = getelementptr inbounds i8, ptr %23, i64 48, !dbg !269
  %24 = load i64, ptr %len123, align 8, !dbg !269
  %call124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.11, i64 noundef %24) #12, !dbg !270
  br i1 %cmp125, label %if.then127, label %if.end157, !dbg !271

if.then127:                                       ; preds = %if.end118
  %25 = load ptr, ptr @spec_fd, align 8, !dbg !272
  %len129 = getelementptr inbounds i8, ptr %25, i64 48, !dbg !276
  %26 = load i64, ptr %len129, align 8, !dbg !276
  %cmp130.not = icmp slt i64 %26, %compressed_min.0268276, !dbg !277
  %cmp134.not = icmp sgt i64 %26, %6
  %or.cond244 = select i1 %cmp130.not, i1 true, i1 %cmp134.not, !dbg !278
  br i1 %or.cond244, label %if.else144, label %if.then136, !dbg !278

if.then136:                                       ; preds = %if.then127
  br i1 %cmp137, label %if.then139, label %if.else141, !dbg !279

if.then139:                                       ; preds = %if.then136
  %call140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %compressed_min.0268276), !dbg !281
  br label %if.end157, !dbg !281

if.else141:                                       ; preds = %if.then136
  %call142 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i64 noundef %compressed_min.0268276, i64 noundef %6), !dbg !283
  br label %if.end157

if.else144:                                       ; preds = %if.then127
  br i1 %cmp137, label %if.then147, label %if.else151, !dbg !284

if.then147:                                       ; preds = %if.else144
  %call150 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i64 noundef %26, i64 noundef %compressed_min.0268276), !dbg !286
  br label %if.end157, !dbg !286

if.else151:                                       ; preds = %if.else144
  %call154 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %26, i64 noundef %compressed_min.0268276, i64 noundef %6), !dbg !288
  br label %if.end157

if.end157:                                        ; preds = %if.else141, %if.then139, %if.else151, %if.then147, %if.end118
  %puts240 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25), !dbg !289
  %27 = load ptr, ptr @spec_fd, align 8, !dbg !290
  %call159 = tail call i32 @spec_mem_reset(ptr noundef %27, i32 noundef 3, i32 noundef 0) #10, !dbg !290
  %28 = load ptr, ptr @spec_fd, align 8, !dbg !291
  %call160 = tail call i32 @spec_mem_rewind(ptr noundef %28, i32 noundef 3, i32 noundef 1) #10, !dbg !291
  %call161 = tail call i32 @debug_time() #10, !dbg !292
  %puts241 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26), !dbg !293
  tail call void @spec_uncompress(i32 noundef 1, i32 noundef 0) #10, !dbg !294
  %call163 = tail call i32 @debug_time() #10, !dbg !295
  %29 = load ptr, ptr @spec_fd, align 8, !dbg !296
  %len165 = getelementptr inbounds i8, ptr %29, i64 8, !dbg !297
  %30 = load i64, ptr %len165, align 8, !dbg !297
  %call166 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %30), !dbg !298
  %31 = load ptr, ptr @spec_fd, align 8, !dbg !299
  %call167 = tail call ptr @spec_mem_sum(ptr noundef %31, ptr noundef nonnull %call, i32 noundef 512) #10, !dbg !299
  %call168 = tail call i32 @compare_sum(ptr noundef %call85, ptr noundef nonnull %call, i32 noundef 512) #10, !dbg !301
  %tobool169.not = icmp eq i32 %call168, 0, !dbg !301
  br i1 %tobool169.not, label %if.end176, label %if.then170, !dbg !303

if.then170:                                       ; preds = %if.end157
  %call171 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef 512), !dbg !304
  %call172 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20), !dbg !306
  %32 = load ptr, ptr @stdout, align 8, !dbg !307
  tail call void @print_sum(ptr noundef %32, ptr noundef nonnull %call, i32 noundef 512) #10, !dbg !308
  %putchar = tail call i32 @putchar(i32 10), !dbg !309
  %call174 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22), !dbg !310
  %33 = load ptr, ptr @stdout, align 8, !dbg !311
  tail call void @print_sum(ptr noundef %33, ptr noundef %call85, i32 noundef 512) #10, !dbg !312
  %putchar243 = tail call i32 @putchar(i32 10), !dbg !313
  tail call void @exit(i32 noundef 0) #9, !dbg !314
  unreachable, !dbg !314

if.end176:                                        ; preds = %if.end157
  %call177 = tail call i32 @debug_time() #10, !dbg !315
  %puts242 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27), !dbg !316
  %34 = load ptr, ptr @spec_fd, align 8, !dbg !317
  %call179 = tail call i32 @spec_mem_reset(ptr noundef %34, i32 noundef 3, i32 noundef 1) #10, !dbg !317
  %35 = load ptr, ptr @spec_fd, align 8, !dbg !318
  %call180 = tail call i32 @spec_mem_rewind(ptr noundef %35, i32 noundef 3, i32 noundef 0) #10, !dbg !318
  %call181 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i64 noundef %input_size.0252257267278), !dbg !319
  %36 = load ptr, ptr @stdout, align 8, !dbg !320
  %call182 = tail call i32 @fflush(ptr noundef %36), !dbg !321
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !322
    #dbg_value(i64 %indvars.iv.next, !148, !DIExpression(), !163)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !244
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !247, !llvm.loop !323

for.end:                                          ; preds = %if.end176, %if.end66
  ret i32 0, !dbg !325
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !326 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !333 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare !dbg !340 void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !343 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !347 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !351 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare !dbg !403 ptr @sum_str_to_hex(ptr noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !407 ptr @spec_mem_alloc_fds(i32 noundef) local_unnamed_addr #6

declare !dbg !419 i32 @spec_mem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !422 i32 @debug_time() local_unnamed_addr #6

declare !dbg !425 ptr @spec_mem_load(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !428 void @spec_initbufs(...) local_unnamed_addr #6

declare !dbg !431 void @spec_compress(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !434 i32 @spec_mem_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !437 i32 @spec_mem_rewind(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !438 void @spec_uncompress(i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !441 ptr @spec_mem_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !444 i32 @compare_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !447 void @print_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !450 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { cold nounwind }
attributes #13 = { cold }

!llvm.dbg.cu = !{!99}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "spec.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "d78d7e82cc4121814f31761ecc6ce2c6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 46)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 76)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1016, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 127)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 41)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 45)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 32)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 44)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 36)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 11)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 1)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 37)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 47)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 56)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 75)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 656, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 82)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 39)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 171, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 67)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 14)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !89, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 28)
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !100, globals: !104, splitDebugInlining: false, nameTableKind: None)
!100 = !{!101, !103}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !{!0, !7, !12, !17, !22, !105, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !110, !115, !77, !82, !87, !120, !92, !125, !94}
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 20)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 27)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 42)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 2)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 38)
!130 = !{i32 7, !"Dwarf Version", i32 5}
!131 = !{i32 2, !"Debug Info Version", i32 3}
!132 = !{i32 1, !"wchar_size", i32 4}
!133 = !{i32 8, !"PIC Level", i32 2}
!134 = !{i32 7, !"PIE Level", i32 2}
!135 = !{i32 7, !"uwtable", i32 2}
!136 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!137 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!138 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 25, type: !139, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !144)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !141, !142}
!141 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!144 = !{!145, !146, !147, !148, !149, !151, !157, !158, !159, !160, !161, !162}
!145 = !DILocalVariable(name: "argc", arg: 1, scope: !138, file: !2, line: 25, type: !141)
!146 = !DILocalVariable(name: "argv", arg: 2, scope: !138, file: !2, line: 25, type: !142)
!147 = !DILocalVariable(name: "level", scope: !138, file: !2, line: 26, type: !141)
!148 = !DILocalVariable(name: "i", scope: !138, file: !2, line: 26, type: !141)
!149 = !DILocalVariable(name: "extreme", scope: !138, file: !2, line: 27, type: !150)
!150 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!151 = !DILocalVariable(name: "input_size", scope: !138, file: !2, line: 28, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !153, line: 27, baseType: !154)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !155, line: 44, baseType: !156)
!155 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!156 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!157 = !DILocalVariable(name: "compressed_min", scope: !138, file: !2, line: 29, type: !152)
!158 = !DILocalVariable(name: "compressed_max", scope: !138, file: !2, line: 30, type: !152)
!159 = !DILocalVariable(name: "input_name", scope: !138, file: !2, line: 31, type: !143)
!160 = !DILocalVariable(name: "sha", scope: !138, file: !2, line: 32, type: !101)
!161 = !DILocalVariable(name: "input_sha", scope: !138, file: !2, line: 33, type: !101)
!162 = !DILocalVariable(name: "check_sha", scope: !138, file: !2, line: 33, type: !101)
!163 = !DILocation(line: 0, scope: !138)
!164 = !DILocation(line: 40, column: 34, scope: !138)
!165 = !DILocation(line: 41, column: 19, scope: !166)
!166 = distinct !DILexicalBlock(scope: !138, file: !2, line: 41, column: 9)
!167 = !DILocation(line: 41, column: 9, scope: !138)
!168 = !DILocation(line: 42, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !2, line: 41, column: 28)
!170 = !DILocation(line: 43, column: 9, scope: !169)
!171 = !DILocation(line: 47, column: 14, scope: !172)
!172 = distinct !DILexicalBlock(scope: !138, file: !2, line: 47, column: 9)
!173 = !DILocation(line: 47, column: 9, scope: !138)
!174 = !DILocation(line: 47, column: 37, scope: !172)
!175 = !DILocation(line: 48, column: 14, scope: !176)
!176 = distinct !DILexicalBlock(scope: !138, file: !2, line: 48, column: 9)
!177 = !DILocation(line: 48, column: 9, scope: !138)
!178 = !DILocation(line: 48, column: 44, scope: !176)
!179 = !DILocation(line: 48, column: 37, scope: !176)
!180 = !DILocation(line: 49, column: 14, scope: !181)
!181 = distinct !DILexicalBlock(scope: !138, file: !2, line: 49, column: 9)
!182 = !DILocation(line: 49, column: 9, scope: !138)
!183 = !DILocation(line: 50, column: 18, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !2, line: 50, column: 11)
!185 = distinct !DILexicalBlock(scope: !181, file: !2, line: 49, column: 19)
!186 = !DILocation(line: 50, column: 11, scope: !184)
!187 = !DILocation(line: 50, column: 31, scope: !184)
!188 = !DILocation(line: 50, column: 11, scope: !185)
!189 = !DILocation(line: 51, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !184, file: !2, line: 50, column: 43)
!191 = !DILocation(line: 51, column: 9, scope: !190)
!192 = !DILocation(line: 52, column: 9, scope: !190)
!193 = !DILocation(line: 54, column: 37, scope: !184)
!194 = !DILocation(line: 56, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !138, file: !2, line: 56, column: 9)
!196 = !DILocation(line: 56, column: 9, scope: !138)
!197 = !DILocation(line: 56, column: 44, scope: !195)
!198 = !DILocation(line: 56, column: 37, scope: !195)
!199 = !DILocation(line: 57, column: 14, scope: !200)
!200 = distinct !DILexicalBlock(scope: !138, file: !2, line: 57, column: 9)
!201 = !DILocation(line: 57, column: 9, scope: !138)
!202 = !DILocation(line: 57, column: 44, scope: !200)
!203 = !DILocation(line: 57, column: 37, scope: !200)
!204 = !DILocation(line: 58, column: 24, scope: !205)
!205 = distinct !DILexicalBlock(scope: !138, file: !2, line: 58, column: 9)
!206 = !DILocation(line: 58, column: 9, scope: !138)
!207 = !DILocation(line: 61, column: 20, scope: !208)
!208 = distinct !DILexicalBlock(scope: !138, file: !2, line: 61, column: 9)
!209 = !DILocation(line: 61, column: 28, scope: !208)
!210 = !DILocation(line: 62, column: 147, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !2, line: 61, column: 121)
!212 = !DILocation(line: 62, column: 9, scope: !211)
!213 = !DILocation(line: 63, column: 9, scope: !211)
!214 = !DILocation(line: 65, column: 5, scope: !138)
!215 = !DILocation(line: 67, column: 15, scope: !138)
!216 = !DILocation(line: 67, column: 13, scope: !138)
!217 = !DILocation(line: 68, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !138, file: !2, line: 68, column: 9)
!219 = !DILocation(line: 68, column: 9, scope: !138)
!220 = !DILocation(line: 69, column: 17, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !2, line: 68, column: 26)
!222 = !DILocation(line: 69, column: 9, scope: !221)
!223 = !DILocation(line: 70, column: 9, scope: !221)
!224 = !DILocation(line: 76, column: 20, scope: !225)
!225 = distinct !DILexicalBlock(scope: !138, file: !2, line: 76, column: 9)
!226 = !DILocation(line: 76, column: 26, scope: !225)
!227 = !DILocation(line: 76, column: 9, scope: !138)
!228 = !DILocation(line: 0, scope: !225)
!229 = !DILocation(line: 81, column: 5, scope: !138)
!230 = !DILocation(line: 83, column: 5, scope: !138)
!231 = !DILocation(line: 84, column: 5, scope: !138)
!232 = !DILocation(line: 85, column: 17, scope: !138)
!233 = !DILocation(line: 86, column: 56, scope: !138)
!234 = !DILocation(line: 86, column: 67, scope: !138)
!235 = !DILocation(line: 86, column: 5, scope: !138)
!236 = !DILocation(line: 95, column: 41, scope: !138)
!237 = !DILocation(line: 95, column: 52, scope: !138)
!238 = !DILocation(line: 95, column: 57, scope: !138)
!239 = !DILocation(line: 95, column: 34, scope: !138)
!240 = !DILocation(line: 95, column: 39, scope: !138)
!241 = !DILocation(line: 95, column: 16, scope: !138)
!242 = !DILocation(line: 95, column: 21, scope: !138)
!243 = !DILocation(line: 97, column: 5, scope: !138)
!244 = !DILocation(line: 100, column: 18, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !2, line: 100, column: 5)
!246 = distinct !DILexicalBlock(scope: !138, file: !2, line: 100, column: 5)
!247 = !DILocation(line: 100, column: 5, scope: !246)
!248 = !DILocation(line: 102, column: 17, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !2, line: 100, column: 31)
!250 = !DILocation(line: 108, column: 23, scope: !251)
!251 = distinct !DILexicalBlock(scope: !249, file: !2, line: 108, column: 13)
!252 = !DILocation(line: 109, column: 13, scope: !253)
!253 = distinct !DILexicalBlock(scope: !251, file: !2, line: 108, column: 37)
!254 = !DILocation(line: 110, column: 151, scope: !253)
!255 = !DILocation(line: 110, column: 13, scope: !253)
!256 = !DILocation(line: 111, column: 13, scope: !253)
!257 = !DILocation(line: 103, column: 13, scope: !258)
!258 = distinct !DILexicalBlock(scope: !249, file: !2, line: 103, column: 13)
!259 = !DILocation(line: 103, column: 24, scope: !258)
!260 = !DILocation(line: 102, column: 28, scope: !249)
!261 = !DILocation(line: 114, column: 9, scope: !249)
!262 = !DILocation(line: 115, column: 63, scope: !249)
!263 = !DILocation(line: 115, column: 9, scope: !249)
!264 = !DILocation(line: 117, column: 34, scope: !249)
!265 = !DILocation(line: 117, column: 9, scope: !249)
!266 = !DILocation(line: 119, column: 9, scope: !249)
!267 = !DILocation(line: 120, column: 17, scope: !249)
!268 = !DILocation(line: 120, column: 74, scope: !249)
!269 = !DILocation(line: 120, column: 85, scope: !249)
!270 = !DILocation(line: 120, column: 9, scope: !249)
!271 = !DILocation(line: 121, column: 13, scope: !249)
!272 = !DILocation(line: 122, column: 15, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !2, line: 122, column: 15)
!274 = distinct !DILexicalBlock(scope: !275, file: !2, line: 121, column: 33)
!275 = distinct !DILexicalBlock(scope: !249, file: !2, line: 121, column: 13)
!276 = !DILocation(line: 122, column: 26, scope: !273)
!277 = !DILocation(line: 122, column: 30, scope: !273)
!278 = !DILocation(line: 122, column: 48, scope: !273)
!279 = !DILocation(line: 123, column: 17, scope: !280)
!280 = distinct !DILexicalBlock(scope: !273, file: !2, line: 122, column: 85)
!281 = !DILocation(line: 124, column: 15, scope: !282)
!282 = distinct !DILexicalBlock(scope: !280, file: !2, line: 123, column: 17)
!283 = !DILocation(line: 127, column: 15, scope: !282)
!284 = !DILocation(line: 130, column: 17, scope: !285)
!285 = distinct !DILexicalBlock(scope: !273, file: !2, line: 129, column: 18)
!286 = !DILocation(line: 131, column: 15, scope: !287)
!287 = distinct !DILexicalBlock(scope: !285, file: !2, line: 130, column: 17)
!288 = !DILocation(line: 134, column: 15, scope: !287)
!289 = !DILocation(line: 138, column: 9, scope: !249)
!290 = !DILocation(line: 150, column: 9, scope: !249)
!291 = !DILocation(line: 151, column: 9, scope: !249)
!292 = !DILocation(line: 153, column: 9, scope: !249)
!293 = !DILocation(line: 154, column: 9, scope: !249)
!294 = !DILocation(line: 155, column: 9, scope: !249)
!295 = !DILocation(line: 156, column: 9, scope: !249)
!296 = !DILocation(line: 157, column: 67, scope: !249)
!297 = !DILocation(line: 157, column: 78, scope: !249)
!298 = !DILocation(line: 157, column: 9, scope: !249)
!299 = !DILocation(line: 169, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !249, file: !2, line: 169, column: 9)
!301 = !DILocation(line: 170, column: 13, scope: !302)
!302 = distinct !DILexicalBlock(scope: !249, file: !2, line: 170, column: 13)
!303 = !DILocation(line: 170, column: 13, scope: !249)
!304 = !DILocation(line: 171, column: 13, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !2, line: 170, column: 57)
!306 = !DILocation(line: 172, column: 13, scope: !305)
!307 = !DILocation(line: 173, column: 23, scope: !305)
!308 = !DILocation(line: 173, column: 13, scope: !305)
!309 = !DILocation(line: 174, column: 13, scope: !305)
!310 = !DILocation(line: 175, column: 13, scope: !305)
!311 = !DILocation(line: 176, column: 23, scope: !305)
!312 = !DILocation(line: 176, column: 13, scope: !305)
!313 = !DILocation(line: 177, column: 13, scope: !305)
!314 = !DILocation(line: 178, column: 13, scope: !305)
!315 = !DILocation(line: 180, column: 9, scope: !249)
!316 = !DILocation(line: 181, column: 9, scope: !249)
!317 = !DILocation(line: 182, column: 9, scope: !249)
!318 = !DILocation(line: 183, column: 9, scope: !249)
!319 = !DILocation(line: 184, column: 9, scope: !249)
!320 = !DILocation(line: 185, column: 16, scope: !249)
!321 = !DILocation(line: 185, column: 9, scope: !249)
!322 = !DILocation(line: 100, column: 27, scope: !245)
!323 = distinct !{!323, !247, !324}
!324 = !DILocation(line: 186, column: 5, scope: !246)
!325 = !DILocation(line: 188, column: 5, scope: !138)
!326 = !DISubprogram(name: "malloc", scope: !327, file: !327, line: 540, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!328 = !DISubroutineType(types: !329)
!329 = !{!103, !330}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !331, line: 18, baseType: !332)
!331 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!332 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!333 = !DISubprogram(name: "printf", scope: !334, file: !334, line: 356, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!335 = !DISubroutineType(types: !336)
!336 = !{!141, !337, null}
!337 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!340 = !DISubprogram(name: "exit", scope: !327, file: !327, line: 624, type: !341, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !141}
!343 = !DISubprogram(name: "strtol", scope: !327, file: !327, line: 177, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DISubroutineType(types: !345)
!345 = !{!156, !337, !346, !141}
!346 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!347 = !DISubprogram(name: "strlen", scope: !348, file: !348, line: 407, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!349 = !DISubroutineType(types: !350)
!350 = !{!332, !338}
!351 = !DISubprogram(name: "fprintf", scope: !334, file: !334, line: 350, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DISubroutineType(types: !353)
!353 = !{!141, !354, !337, null}
!354 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !357, line: 7, baseType: !358)
!357 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !359, line: 49, size: 1728, elements: !360)
!359 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!360 = !{!361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !376, !378, !379, !380, !382, !384, !386, !387, !390, !392, !395, !398, !399, !400, !401, !402}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !358, file: !359, line: 51, baseType: !141, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !358, file: !359, line: 54, baseType: !143, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !358, file: !359, line: 55, baseType: !143, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !358, file: !359, line: 56, baseType: !143, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !358, file: !359, line: 57, baseType: !143, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !358, file: !359, line: 58, baseType: !143, size: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !358, file: !359, line: 59, baseType: !143, size: 64, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !358, file: !359, line: 60, baseType: !143, size: 64, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !358, file: !359, line: 61, baseType: !143, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !358, file: !359, line: 64, baseType: !143, size: 64, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !358, file: !359, line: 65, baseType: !143, size: 64, offset: 640)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !358, file: !359, line: 66, baseType: !143, size: 64, offset: 704)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !358, file: !359, line: 68, baseType: !374, size: 64, offset: 768)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !359, line: 36, flags: DIFlagFwdDecl)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !358, file: !359, line: 70, baseType: !377, size: 64, offset: 832)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !358, file: !359, line: 72, baseType: !141, size: 32, offset: 896)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !358, file: !359, line: 73, baseType: !141, size: 32, offset: 928)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !358, file: !359, line: 74, baseType: !381, size: 64, offset: 960)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !155, line: 152, baseType: !156)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !358, file: !359, line: 77, baseType: !383, size: 16, offset: 1024)
!383 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !358, file: !359, line: 78, baseType: !385, size: 8, offset: 1040)
!385 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !358, file: !359, line: 79, baseType: !49, size: 8, offset: 1048)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !358, file: !359, line: 81, baseType: !388, size: 64, offset: 1088)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !359, line: 43, baseType: null)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !358, file: !359, line: 89, baseType: !391, size: 64, offset: 1152)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !155, line: 153, baseType: !156)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !358, file: !359, line: 91, baseType: !393, size: 64, offset: 1216)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !359, line: 37, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !358, file: !359, line: 92, baseType: !396, size: 64, offset: 1280)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !359, line: 38, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !358, file: !359, line: 93, baseType: !377, size: 64, offset: 1344)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !358, file: !359, line: 94, baseType: !103, size: 64, offset: 1408)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !358, file: !359, line: 95, baseType: !330, size: 64, offset: 1472)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !358, file: !359, line: 96, baseType: !141, size: 32, offset: 1536)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !358, file: !359, line: 98, baseType: !107, size: 160, offset: 1568)
!403 = !DISubprogram(name: "sum_str_to_hex", scope: !404, file: !404, line: 68, type: !405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!404 = !DIFile(filename: "spec_mem_io/spec_mem_io.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "20f82235716911ab040d2b344ceb3e0d")
!405 = !DISubroutineType(types: !406)
!406 = !{!101, !143, !141}
!407 = !DISubprogram(name: "spec_mem_alloc_fds", scope: !404, file: !404, line: 43, type: !408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!408 = !DISubroutineType(types: !409)
!409 = !{!410, !150}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "spec_fd_t", file: !404, line: 40, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 34, size: 320, elements: !413)
!413 = !{!414, !415, !416, !417, !418}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !412, file: !404, line: 35, baseType: !152, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !412, file: !404, line: 36, baseType: !152, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !412, file: !404, line: 37, baseType: !152, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !412, file: !404, line: 38, baseType: !141, size: 32, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !412, file: !404, line: 39, baseType: !101, size: 64, offset: 256)
!419 = !DISubprogram(name: "spec_mem_init", scope: !404, file: !404, line: 48, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!420 = !DISubroutineType(types: !421)
!421 = !{!141, !410, !150, !150}
!422 = !DISubprogram(name: "debug_time", scope: !404, file: !404, line: 66, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!423 = !DISubroutineType(types: !424)
!424 = !{!141}
!425 = !DISubprogram(name: "spec_mem_load", scope: !404, file: !404, line: 49, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DISubroutineType(types: !427)
!427 = !{!101, !410, !150, !141, !143, !152, !141, !101, !141}
!428 = !DISubprogram(name: "spec_initbufs", scope: !404, file: !404, line: 45, type: !429, spFlags: DISPFlagOptimized)
!429 = !DISubroutineType(types: !430)
!430 = !{null}
!431 = !DISubprogram(name: "spec_compress", scope: !404, file: !404, line: 46, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !141, !141, !150}
!434 = !DISubprogram(name: "spec_mem_reset", scope: !404, file: !404, line: 53, type: !435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!435 = !DISubroutineType(types: !436)
!436 = !{!141, !410, !150, !141}
!437 = !DISubprogram(name: "spec_mem_rewind", scope: !404, file: !404, line: 61, type: !435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!438 = !DISubprogram(name: "spec_uncompress", scope: !404, file: !404, line: 47, type: !439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !141, !141}
!441 = !DISubprogram(name: "spec_mem_sum", scope: !404, file: !404, line: 70, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DISubroutineType(types: !443)
!443 = !{!101, !410, !101, !141}
!444 = !DISubprogram(name: "compare_sum", scope: !404, file: !404, line: 67, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DISubroutineType(types: !446)
!446 = !{!141, !101, !101, !141}
!447 = !DISubprogram(name: "print_sum", scope: !404, file: !404, line: 69, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !355, !101, !141}
!450 = !DISubprogram(name: "fflush", scope: !334, file: !334, line: 230, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DISubroutineType(types: !452)
!452 = !{!141, !355}
