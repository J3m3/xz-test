; ModuleID = 'liblzma/common/block_header_encoder.c'
source_filename = "liblzma/common/block_header_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_header_size(ptr nocapture noundef %block) local_unnamed_addr #0 !dbg !39 {
entry:
  %add37 = alloca i32, align 4, !DIAssignID !123
    #dbg_assign(i1 undef, !117, !DIExpression(), !123, ptr %add37, !DIExpression(), !124)
    #dbg_value(ptr %block, !104, !DIExpression(), !125)
  %0 = load i32, ptr %block, align 8, !dbg !126
  %cmp.not = icmp eq i32 %0, 0, !dbg !128
  br i1 %cmp.not, label %if.end, label %return, !dbg !129

if.end:                                           ; preds = %entry
    #dbg_value(i32 6, !105, !DIExpression(), !125)
  %compressed_size = getelementptr inbounds i8, ptr %block, i64 16, !dbg !130
  %1 = load i64, ptr %compressed_size, align 8, !dbg !130
  %cmp1.not = icmp eq i64 %1, -1, !dbg !131
  br i1 %cmp1.not, label %if.end10, label %if.then2, !dbg !132

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @lzma_vli_size(i64 noundef %1) #4, !dbg !133
    #dbg_value(i32 %call, !106, !DIExpression(), !134)
  %cmp4 = icmp eq i32 %call, 0, !dbg !135
  br i1 %cmp4, label %return, label %cleanup, !dbg !137

cleanup:                                          ; preds = %if.then2
  %2 = load i64, ptr %compressed_size, align 8, !dbg !138
  %cmp6.not = icmp eq i64 %2, 0, !dbg !139
  %add9 = add i32 %call, 6
    #dbg_value(i32 poison, !105, !DIExpression(), !125)
  br i1 %cmp6.not, label %return, label %if.end10

if.end10:                                         ; preds = %cleanup, %if.end
  %size.1 = phi i32 [ %add9, %cleanup ], [ 6, %if.end ], !dbg !140
    #dbg_value(i32 %size.1, !105, !DIExpression(), !125)
  %uncompressed_size = getelementptr inbounds i8, ptr %block, i64 24, !dbg !141
  %3 = load i64, ptr %uncompressed_size, align 8, !dbg !141
  %cmp11.not = icmp eq i64 %3, -1, !dbg !142
  br i1 %cmp11.not, label %if.end23, label %if.then12, !dbg !143

if.then12:                                        ; preds = %if.end10
  %call15 = tail call i32 @lzma_vli_size(i64 noundef %3) #4, !dbg !144
    #dbg_value(i32 %call15, !110, !DIExpression(), !145)
  %cmp16.not = icmp eq i32 %call15, 0, !dbg !146
  %add19 = add i32 %call15, %size.1, !dbg !148
    #dbg_value(i32 %add19, !105, !DIExpression(), !125)
  br i1 %cmp16.not, label %return, label %if.end23

if.end23:                                         ; preds = %if.then12, %if.end10
  %size.3 = phi i32 [ %add19, %if.then12 ], [ %size.1, %if.end10 ], !dbg !140
    #dbg_value(i32 %size.3, !105, !DIExpression(), !125)
  %filters = getelementptr inbounds i8, ptr %block, i64 32, !dbg !149
  %4 = load ptr, ptr %filters, align 8, !dbg !149
  %cmp24 = icmp eq ptr %4, null, !dbg !151
  br i1 %cmp24, label %return, label %lor.lhs.false25, !dbg !152

lor.lhs.false25:                                  ; preds = %if.end23
  %5 = load i64, ptr %4, align 8, !dbg !153
  %cmp27 = icmp eq i64 %5, -1, !dbg !154
  br i1 %cmp27, label %return, label %for.body.preheader, !dbg !155

for.body.preheader:                               ; preds = %lor.lhs.false25
    #dbg_value(i64 0, !113, !DIExpression(), !156)
    #dbg_value(i32 %size.3, !105, !DIExpression(), !125)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %add37) #4, !dbg !157
  %call39 = call i32 @lzma_filter_flags_size(ptr noundef nonnull %add37, ptr noundef nonnull %4) #4, !dbg !158
    #dbg_value(i32 %call39, !120, !DIExpression(), !159)
  %cmp40.not = icmp eq i32 %call39, 0, !dbg !160
  %6 = load i32, ptr %add37, align 4
    #dbg_value(i32 poison, !105, !DIExpression(), !125)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %add37) #4, !dbg !162
  br i1 %cmp40.not, label %for.inc, label %return

for.inc:                                          ; preds = %for.body.preheader
  %add46 = add i32 %6, %size.3
    #dbg_value(i64 1, !113, !DIExpression(), !156)
    #dbg_value(i32 %add46, !105, !DIExpression(), !125)
  %7 = load ptr, ptr %filters, align 8, !dbg !163
  %arrayidx31 = getelementptr inbounds i8, ptr %7, i64 16, !dbg !164
  %8 = load i64, ptr %arrayidx31, align 8, !dbg !165
  %cmp33.not = icmp eq i64 %8, -1, !dbg !166
  br i1 %cmp33.not, label %for.end, label %for.body.1, !dbg !167, !llvm.loop !168

for.body.1:                                       ; preds = %for.inc
    #dbg_value(i64 1, !113, !DIExpression(), !156)
    #dbg_value(i32 %add46, !105, !DIExpression(), !125)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %add37) #4, !dbg !157
  %call39.1 = call i32 @lzma_filter_flags_size(ptr noundef nonnull %add37, ptr noundef nonnull %arrayidx31) #4, !dbg !158
    #dbg_value(i32 %call39.1, !120, !DIExpression(), !159)
  %cmp40.not.1 = icmp eq i32 %call39.1, 0, !dbg !160
  %9 = load i32, ptr %add37, align 4
    #dbg_value(i32 poison, !105, !DIExpression(), !125)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %add37) #4, !dbg !162
  br i1 %cmp40.not.1, label %for.inc.1, label %return

for.inc.1:                                        ; preds = %for.body.1
  %add46.1 = add i32 %9, %add46
    #dbg_value(i64 2, !113, !DIExpression(), !156)
    #dbg_value(i32 %add46.1, !105, !DIExpression(), !125)
  %10 = load ptr, ptr %filters, align 8, !dbg !163
  %arrayidx31.1 = getelementptr inbounds i8, ptr %10, i64 32, !dbg !164
  %11 = load i64, ptr %arrayidx31.1, align 8, !dbg !165
  %cmp33.not.1 = icmp eq i64 %11, -1, !dbg !166
  br i1 %cmp33.not.1, label %for.end, label %for.body.2, !dbg !167, !llvm.loop !168

for.body.2:                                       ; preds = %for.inc.1
    #dbg_value(i64 2, !113, !DIExpression(), !156)
    #dbg_value(i32 %add46.1, !105, !DIExpression(), !125)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %add37) #4, !dbg !157
  %call39.2 = call i32 @lzma_filter_flags_size(ptr noundef nonnull %add37, ptr noundef nonnull %arrayidx31.1) #4, !dbg !158
    #dbg_value(i32 %call39.2, !120, !DIExpression(), !159)
  %cmp40.not.2 = icmp eq i32 %call39.2, 0, !dbg !160
  %12 = load i32, ptr %add37, align 4
    #dbg_value(i32 poison, !105, !DIExpression(), !125)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %add37) #4, !dbg !162
  br i1 %cmp40.not.2, label %for.inc.2, label %return

for.inc.2:                                        ; preds = %for.body.2
  %add46.2 = add i32 %12, %add46.1
    #dbg_value(i64 3, !113, !DIExpression(), !156)
    #dbg_value(i32 %add46.2, !105, !DIExpression(), !125)
  %13 = load ptr, ptr %filters, align 8, !dbg !163
  %arrayidx31.2 = getelementptr inbounds i8, ptr %13, i64 48, !dbg !164
  %14 = load i64, ptr %arrayidx31.2, align 8, !dbg !165
  %cmp33.not.2 = icmp eq i64 %14, -1, !dbg !166
  br i1 %cmp33.not.2, label %for.end, label %for.body.3, !dbg !167, !llvm.loop !168

for.body.3:                                       ; preds = %for.inc.2
    #dbg_value(i64 3, !113, !DIExpression(), !156)
    #dbg_value(i32 %add46.2, !105, !DIExpression(), !125)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %add37) #4, !dbg !157
  %call39.3 = call i32 @lzma_filter_flags_size(ptr noundef nonnull %add37, ptr noundef nonnull %arrayidx31.2) #4, !dbg !158
    #dbg_value(i32 %call39.3, !120, !DIExpression(), !159)
  %cmp40.not.3 = icmp eq i32 %call39.3, 0, !dbg !160
  %15 = load i32, ptr %add37, align 4
    #dbg_value(i32 poison, !105, !DIExpression(), !125)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %add37) #4, !dbg !162
  br i1 %cmp40.not.3, label %for.inc.3, label %return

for.inc.3:                                        ; preds = %for.body.3
  %add46.3 = add i32 %15, %add46.2
    #dbg_value(i64 4, !113, !DIExpression(), !156)
    #dbg_value(i32 %add46.3, !105, !DIExpression(), !125)
  %16 = load ptr, ptr %filters, align 8, !dbg !163
  %arrayidx31.3 = getelementptr inbounds i8, ptr %16, i64 64, !dbg !164
  %17 = load i64, ptr %arrayidx31.3, align 8, !dbg !165
  %cmp33.not.3 = icmp eq i64 %17, -1, !dbg !166
  br i1 %cmp33.not.3, label %for.end, label %return, !dbg !167, !llvm.loop !168

for.end:                                          ; preds = %for.inc, %for.inc.1, %for.inc.2, %for.inc.3
  %add46.lcssa = phi i32 [ %add46, %for.inc ], [ %add46.1, %for.inc.1 ], [ %add46.2, %for.inc.2 ], [ %add46.3, %for.inc.3 ]
    #dbg_value(i32 %add46.lcssa, !105, !DIExpression(), !125)
  %add52 = add i32 %add46.lcssa, 3, !dbg !170
  %and = and i32 %add52, -4, !dbg !171
  %header_size = getelementptr inbounds i8, ptr %block, i64 4, !dbg !172
  store i32 %and, ptr %header_size, align 4, !dbg !173
  br label %return, !dbg !174

return:                                           ; preds = %for.body.preheader, %for.body.1, %for.body.2, %for.body.3, %for.inc.3, %if.then2, %for.end, %if.then12, %cleanup, %lor.lhs.false25, %if.end23, %entry
  %retval.8 = phi i32 [ 8, %entry ], [ 0, %for.end ], [ 11, %if.then12 ], [ 11, %cleanup ], [ 11, %lor.lhs.false25 ], [ 11, %if.end23 ], [ 11, %if.then2 ], [ %call39, %for.body.preheader ], [ %call39.1, %for.body.1 ], [ %call39.2, %for.body.2 ], [ %call39.3, %for.body.3 ], [ 11, %for.inc.3 ], !dbg !125
  ret i32 %retval.8, !dbg !175
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !176 i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !179 i32 @lzma_filter_flags_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_header_encode(ptr noundef %block, ptr noundef %out) local_unnamed_addr #0 !dbg !185 {
entry:
  %out_pos = alloca i64, align 8, !DIAssignID !209
    #dbg_assign(i1 undef, !196, !DIExpression(), !209, ptr %out_pos, !DIExpression(), !210)
    #dbg_value(ptr %block, !192, !DIExpression(), !210)
    #dbg_value(ptr %out, !193, !DIExpression(), !210)
  %call = tail call i64 @lzma_block_unpadded_size(ptr noundef %block) #4, !dbg !211
  %cmp = icmp eq i64 %call, 0, !dbg !213
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !214

lor.lhs.false:                                    ; preds = %entry
  %uncompressed_size = getelementptr inbounds i8, ptr %block, i64 24, !dbg !215
  %0 = load i64, ptr %uncompressed_size, align 8, !dbg !215
  %or.cond = icmp sgt i64 %0, -2, !dbg !215
  br i1 %or.cond, label %if.end, label %return, !dbg !215

if.end:                                           ; preds = %lor.lhs.false
  %header_size = getelementptr inbounds i8, ptr %block, i64 4, !dbg !216
  %1 = load i32, ptr %header_size, align 4, !dbg !216
  %sub = add i32 %1, -4, !dbg !217
  %conv = zext i32 %sub to i64, !dbg !218
    #dbg_value(i64 %conv, !194, !DIExpression(), !210)
  %div128 = lshr i32 %sub, 2, !dbg !219
  %conv5 = trunc i32 %div128 to i8, !dbg !220
  store i8 %conv5, ptr %out, align 1, !dbg !221
  %arrayidx6 = getelementptr inbounds i8, ptr %out, i64 1, !dbg !222
  store i8 0, ptr %arrayidx6, align 1, !dbg !223
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_pos) #4, !dbg !224
  store i64 2, ptr %out_pos, align 8, !dbg !225, !DIAssignID !226
    #dbg_assign(i64 2, !196, !DIExpression(), !226, ptr %out_pos, !DIExpression(), !210)
  %compressed_size = getelementptr inbounds i8, ptr %block, i64 16, !dbg !227
  %2 = load i64, ptr %compressed_size, align 8, !dbg !227
  %cmp7.not = icmp eq i64 %2, -1, !dbg !228
  br i1 %cmp7.not, label %if.end19, label %do.body, !dbg !229

do.body:                                          ; preds = %if.end
  %call11 = call i32 @lzma_vli_encode(i64 noundef %2, ptr noundef null, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #4, !dbg !230
    #dbg_value(i32 %call11, !197, !DIExpression(), !231)
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !232
  br i1 %cmp12.not, label %do.end, label %cleanup86

do.end:                                           ; preds = %do.body
  %3 = load i8, ptr %arrayidx6, align 1, !dbg !234
  %4 = or i8 %3, 64, !dbg !234
  store i8 %4, ptr %arrayidx6, align 1, !dbg !234
  br label %if.end19, !dbg !235

if.end19:                                         ; preds = %do.end, %if.end
  %5 = load i64, ptr %uncompressed_size, align 8, !dbg !236
  %cmp21.not = icmp eq i64 %5, -1, !dbg !237
  br i1 %cmp21.not, label %if.end41, label %do.body24, !dbg !238

do.body24:                                        ; preds = %if.end19
  %call27 = call i32 @lzma_vli_encode(i64 noundef %5, ptr noundef null, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #4, !dbg !239
    #dbg_value(i32 %call27, !201, !DIExpression(), !240)
  %cmp28.not = icmp eq i32 %call27, 0, !dbg !241
  br i1 %cmp28.not, label %do.end36, label %cleanup86

do.end36:                                         ; preds = %do.body24
  %6 = load i8, ptr %arrayidx6, align 1, !dbg !243
  %7 = or i8 %6, -128, !dbg !243
  store i8 %7, ptr %arrayidx6, align 1, !dbg !243
  br label %if.end41, !dbg !244

if.end41:                                         ; preds = %do.end36, %if.end19
  %filters = getelementptr inbounds i8, ptr %block, i64 32, !dbg !245
  %8 = load ptr, ptr %filters, align 8, !dbg !245
  %cmp42 = icmp eq ptr %8, null, !dbg !247
  br i1 %cmp42, label %cleanup86, label %lor.lhs.false44, !dbg !248

lor.lhs.false44:                                  ; preds = %if.end41
  %9 = load i64, ptr %8, align 8, !dbg !249
  %cmp47 = icmp eq i64 %9, -1, !dbg !250
  br i1 %cmp47, label %cleanup86, label %do.body51.preheader, !dbg !251

do.body51.preheader:                              ; preds = %lor.lhs.false44
    #dbg_value(i64 0, !205, !DIExpression(), !210)
  %call59 = call i32 @lzma_filter_flags_encode(ptr noundef nonnull %8, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #4, !dbg !252
    #dbg_value(i32 %call59, !206, !DIExpression(), !253)
  %cmp60.not = icmp eq i32 %call59, 0, !dbg !254
  br i1 %cmp60.not, label %do.cond69, label %cleanup86

do.cond69:                                        ; preds = %do.body51.preheader
  %10 = load ptr, ptr %filters, align 8, !dbg !256
    #dbg_value(i64 1, !205, !DIExpression(), !210)
  %arrayidx71 = getelementptr inbounds i8, ptr %10, i64 16, !dbg !257
  %11 = load i64, ptr %arrayidx71, align 8, !dbg !258
  %cmp73.not = icmp eq i64 %11, -1, !dbg !259
  br i1 %cmp73.not, label %do.end75, label %do.body51.1, !dbg !260, !llvm.loop !261

do.body51.1:                                      ; preds = %do.cond69
    #dbg_value(i64 1, !205, !DIExpression(), !210)
  %call59.1 = call i32 @lzma_filter_flags_encode(ptr noundef nonnull %arrayidx71, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #4, !dbg !252
    #dbg_value(i32 %call59.1, !206, !DIExpression(), !253)
  %cmp60.not.1 = icmp eq i32 %call59.1, 0, !dbg !254
  br i1 %cmp60.not.1, label %do.cond69.1, label %cleanup86

do.cond69.1:                                      ; preds = %do.body51.1
  %12 = load ptr, ptr %filters, align 8, !dbg !256
    #dbg_value(i64 2, !205, !DIExpression(), !210)
  %arrayidx71.1 = getelementptr inbounds i8, ptr %12, i64 32, !dbg !257
  %13 = load i64, ptr %arrayidx71.1, align 8, !dbg !258
  %cmp73.not.1 = icmp eq i64 %13, -1, !dbg !259
  br i1 %cmp73.not.1, label %do.end75, label %do.body51.2, !dbg !260, !llvm.loop !261

do.body51.2:                                      ; preds = %do.cond69.1
    #dbg_value(i64 2, !205, !DIExpression(), !210)
  %call59.2 = call i32 @lzma_filter_flags_encode(ptr noundef nonnull %arrayidx71.1, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #4, !dbg !252
    #dbg_value(i32 %call59.2, !206, !DIExpression(), !253)
  %cmp60.not.2 = icmp eq i32 %call59.2, 0, !dbg !254
  br i1 %cmp60.not.2, label %do.cond69.2, label %cleanup86

do.cond69.2:                                      ; preds = %do.body51.2
  %14 = load ptr, ptr %filters, align 8, !dbg !256
    #dbg_value(i64 3, !205, !DIExpression(), !210)
  %arrayidx71.2 = getelementptr inbounds i8, ptr %14, i64 48, !dbg !257
  %15 = load i64, ptr %arrayidx71.2, align 8, !dbg !258
  %cmp73.not.2 = icmp eq i64 %15, -1, !dbg !259
  br i1 %cmp73.not.2, label %do.end75, label %do.body51.3, !dbg !260, !llvm.loop !261

do.body51.3:                                      ; preds = %do.cond69.2
    #dbg_value(i64 3, !205, !DIExpression(), !210)
  %call59.3 = call i32 @lzma_filter_flags_encode(ptr noundef nonnull %arrayidx71.2, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #4, !dbg !252
    #dbg_value(i32 %call59.3, !206, !DIExpression(), !253)
  %cmp60.not.3 = icmp eq i32 %call59.3, 0, !dbg !254
  br i1 %cmp60.not.3, label %do.cond69.3, label %cleanup86

do.cond69.3:                                      ; preds = %do.body51.3
  %16 = load ptr, ptr %filters, align 8, !dbg !256
    #dbg_value(i64 4, !205, !DIExpression(), !210)
  %arrayidx71.3 = getelementptr inbounds i8, ptr %16, i64 64, !dbg !257
  %17 = load i64, ptr %arrayidx71.3, align 8, !dbg !258
  %cmp73.not.3 = icmp eq i64 %17, -1, !dbg !259
  br i1 %cmp73.not.3, label %do.end75, label %cleanup86, !dbg !260, !llvm.loop !261

do.end75:                                         ; preds = %do.cond69.3, %do.cond69.2, %do.cond69.1, %do.cond69
  %filter_count.0.lcssa130 = phi i8 [ 0, %do.cond69 ], [ 1, %do.cond69.1 ], [ 2, %do.cond69.2 ], [ 3, %do.cond69.3 ], !dbg !210
  %18 = load i8, ptr %arrayidx6, align 1, !dbg !264
  %conv80 = or i8 %18, %filter_count.0.lcssa130, !dbg !264
  store i8 %conv80, ptr %arrayidx6, align 1, !dbg !264
  %19 = load i64, ptr %out_pos, align 8, !dbg !265
  %add.ptr81 = getelementptr inbounds i8, ptr %out, i64 %19, !dbg !265
  %sub82 = sub i64 %conv, %19, !dbg !265
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr81, i8 0, i64 %sub82, i1 false), !dbg !265
  %add.ptr83 = getelementptr inbounds i8, ptr %out, i64 %conv, !dbg !266
  %call84 = call i32 @lzma_crc32(ptr noundef nonnull %out, i64 noundef %conv, i32 noundef 0) #4, !dbg !267
    #dbg_value(ptr %add.ptr83, !268, !DIExpression(), !275)
    #dbg_value(i32 %call84, !274, !DIExpression(), !275)
  %conv.i = trunc i32 %call84 to i8, !dbg !277
  store i8 %conv.i, ptr %add.ptr83, align 1, !dbg !278
  %shr.i = lshr i32 %call84, 8, !dbg !279
  %conv1.i = trunc i32 %shr.i to i8, !dbg !280
  %arrayidx2.i = getelementptr inbounds i8, ptr %add.ptr83, i64 1, !dbg !281
  store i8 %conv1.i, ptr %arrayidx2.i, align 1, !dbg !282
  %shr3.i = lshr i32 %call84, 16, !dbg !283
  %conv4.i = trunc i32 %shr3.i to i8, !dbg !284
  %arrayidx5.i = getelementptr inbounds i8, ptr %add.ptr83, i64 2, !dbg !285
  store i8 %conv4.i, ptr %arrayidx5.i, align 1, !dbg !286
  %shr6.i = lshr i32 %call84, 24, !dbg !287
  %conv7.i = trunc nuw i32 %shr6.i to i8, !dbg !288
  %arrayidx8.i = getelementptr inbounds i8, ptr %add.ptr83, i64 3, !dbg !289
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !dbg !290
  br label %cleanup86, !dbg !291

cleanup86:                                        ; preds = %do.body51.preheader, %do.body51.1, %do.body51.2, %do.body51.3, %do.cond69.3, %do.end75, %if.end41, %lor.lhs.false44, %do.body, %do.body24
  %retval.7 = phi i32 [ %call27, %do.body24 ], [ %call11, %do.body ], [ 11, %lor.lhs.false44 ], [ 11, %if.end41 ], [ 0, %do.end75 ], [ %call59, %do.body51.preheader ], [ %call59.1, %do.body51.1 ], [ %call59.2, %do.body51.2 ], [ %call59.3, %do.body51.3 ], [ 11, %do.cond69.3 ], !dbg !210
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_pos) #4, !dbg !292
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %cleanup86
  %retval.8 = phi i32 [ %retval.7, %cleanup86 ], [ 11, %lor.lhs.false ], [ 11, %entry ], !dbg !210
  ret i32 %retval.8, !dbg !292
}

declare !dbg !293 i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

declare !dbg !296 i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !300 i32 @lzma_filter_flags_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !303 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "liblzma/common/block_header_encoder.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "a8da97df8170ca904cf171741ab8c93e")
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
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 8, !"PIC Level", i32 2}
!35 = !{i32 7, !"PIE Level", i32 2}
!36 = !{i32 7, !"uwtable", i32 2}
!37 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!38 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!39 = distinct !DISubprogram(name: "lzma_block_header_size", scope: !1, file: !1, line: 18, type: !40, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !45, line: 245, baseType: !46)
!45 = !DIFile(filename: "liblzma/api/lzma/block.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 30, size: 1664, elements: !47)
!47 = !{!48, !53, !54, !56, !62, !63, !71, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !100, !101, !102}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !46, file: !45, line: 47, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !5)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!53 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !46, file: !45, line: 67, baseType: !49, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !46, file: !45, line: 88, baseType: !55, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !46, file: !45, line: 143, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !58, line: 63, baseType: !59)
!58 = !DIFile(filename: "liblzma/api/lzma/vli.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 27, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 45, baseType: !61)
!61 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !46, file: !45, line: 167, baseType: !57, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !46, file: !45, line: 195, baseType: !64, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !66, line: 65, baseType: !67)
!66 = !DIFile(filename: "liblzma/api/lzma/filter.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 43, size: 128, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !67, file: !66, line: 54, baseType: !57, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !67, file: !66, line: 63, baseType: !30, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !46, file: !45, line: 212, baseType: !72, size: 512, offset: 320)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 512, elements: !76)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 38, baseType: !75)
!75 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !{!77}
!77 = !DISubrange(count: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !46, file: !45, line: 221, baseType: !30, size: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !46, file: !45, line: 222, baseType: !30, size: 64, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !46, file: !45, line: 223, baseType: !30, size: 64, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !46, file: !45, line: 224, baseType: !49, size: 32, offset: 1024)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !46, file: !45, line: 225, baseType: !49, size: 32, offset: 1056)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !46, file: !45, line: 226, baseType: !57, size: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !46, file: !45, line: 227, baseType: !57, size: 64, offset: 1152)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !46, file: !45, line: 228, baseType: !57, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !46, file: !45, line: 229, baseType: !57, size: 64, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !46, file: !45, line: 230, baseType: !57, size: 64, offset: 1344)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !46, file: !45, line: 231, baseType: !57, size: 64, offset: 1408)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !46, file: !45, line: 232, baseType: !90, size: 32, offset: 1472)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !46, file: !45, line: 233, baseType: !90, size: 32, offset: 1504)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !46, file: !45, line: 234, baseType: !90, size: 32, offset: 1536)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !46, file: !45, line: 235, baseType: !90, size: 32, offset: 1568)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !46, file: !45, line: 236, baseType: !95, size: 8, offset: 1600)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !75)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !46, file: !45, line: 237, baseType: !95, size: 8, offset: 1608)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !46, file: !45, line: 238, baseType: !95, size: 8, offset: 1616)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !46, file: !45, line: 239, baseType: !95, size: 8, offset: 1624)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !46, file: !45, line: 240, baseType: !95, size: 8, offset: 1632)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !46, file: !45, line: 241, baseType: !95, size: 8, offset: 1640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !46, file: !45, line: 242, baseType: !95, size: 8, offset: 1648)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !46, file: !45, line: 243, baseType: !95, size: 8, offset: 1656)
!103 = !{!104, !105, !106, !110, !113, !117, !120}
!104 = !DILocalVariable(name: "block", arg: 1, scope: !39, file: !1, line: 18, type: !43)
!105 = !DILocalVariable(name: "size", scope: !39, file: !1, line: 24, type: !49)
!106 = !DILocalVariable(name: "add", scope: !107, file: !1, line: 28, type: !109)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 27, column: 50)
!108 = distinct !DILexicalBlock(scope: !39, file: !1, line: 27, column: 6)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!110 = !DILocalVariable(name: "add", scope: !111, file: !1, line: 37, type: !109)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 36, column: 52)
!112 = distinct !DILexicalBlock(scope: !39, file: !1, line: 36, column: 6)
!113 = !DILocalVariable(name: "i", scope: !114, file: !1, line: 48, type: !115)
!114 = distinct !DILexicalBlock(scope: !39, file: !1, line: 48, column: 2)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 18, baseType: !61)
!116 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!117 = !DILocalVariable(name: "add", scope: !118, file: !1, line: 53, type: !49)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 48, column: 68)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 48, column: 2)
!120 = !DILocalVariable(name: "ret_", scope: !121, file: !1, line: 54, type: !122)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 54, column: 3)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!123 = distinct !DIAssignID()
!124 = !DILocation(line: 0, scope: !118)
!125 = !DILocation(line: 0, scope: !39)
!126 = !DILocation(line: 20, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !39, file: !1, line: 20, column: 6)
!128 = !DILocation(line: 20, column: 21, scope: !127)
!129 = !DILocation(line: 20, column: 6, scope: !39)
!130 = !DILocation(line: 27, column: 13, scope: !108)
!131 = !DILocation(line: 27, column: 29, scope: !108)
!132 = !DILocation(line: 27, column: 6, scope: !39)
!133 = !DILocation(line: 28, column: 24, scope: !107)
!134 = !DILocation(line: 0, scope: !107)
!135 = !DILocation(line: 29, column: 11, scope: !136)
!136 = distinct !DILexicalBlock(scope: !107, file: !1, line: 29, column: 7)
!137 = !DILocation(line: 29, column: 16, scope: !136)
!138 = !DILocation(line: 29, column: 26, scope: !136)
!139 = !DILocation(line: 29, column: 42, scope: !136)
!140 = !DILocation(line: 24, column: 11, scope: !39)
!141 = !DILocation(line: 36, column: 13, scope: !112)
!142 = !DILocation(line: 36, column: 31, scope: !112)
!143 = !DILocation(line: 36, column: 6, scope: !39)
!144 = !DILocation(line: 37, column: 24, scope: !111)
!145 = !DILocation(line: 0, scope: !111)
!146 = !DILocation(line: 38, column: 11, scope: !147)
!147 = distinct !DILexicalBlock(scope: !111, file: !1, line: 38, column: 7)
!148 = !DILocation(line: 38, column: 7, scope: !111)
!149 = !DILocation(line: 45, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !39, file: !1, line: 45, column: 6)
!151 = !DILocation(line: 45, column: 21, scope: !150)
!152 = !DILocation(line: 45, column: 29, scope: !150)
!153 = !DILocation(line: 45, column: 50, scope: !150)
!154 = !DILocation(line: 45, column: 53, scope: !150)
!155 = !DILocation(line: 45, column: 6, scope: !39)
!156 = !DILocation(line: 0, scope: !114)
!157 = !DILocation(line: 53, column: 3, scope: !118)
!158 = !DILocation(line: 54, column: 3, scope: !121)
!159 = !DILocation(line: 0, scope: !121)
!160 = !DILocation(line: 54, column: 3, scope: !161)
!161 = distinct !DILexicalBlock(scope: !121, file: !1, line: 54, column: 3)
!162 = !DILocation(line: 58, column: 2, scope: !119)
!163 = !DILocation(line: 48, column: 28, scope: !119)
!164 = !DILocation(line: 48, column: 21, scope: !119)
!165 = !DILocation(line: 48, column: 39, scope: !119)
!166 = !DILocation(line: 48, column: 42, scope: !119)
!167 = !DILocation(line: 48, column: 2, scope: !114)
!168 = distinct !{!168, !167, !169}
!169 = !DILocation(line: 58, column: 2, scope: !114)
!170 = !DILocation(line: 61, column: 29, scope: !39)
!171 = !DILocation(line: 61, column: 34, scope: !39)
!172 = !DILocation(line: 61, column: 9, scope: !39)
!173 = !DILocation(line: 61, column: 21, scope: !39)
!174 = !DILocation(line: 69, column: 2, scope: !39)
!175 = !DILocation(line: 70, column: 1, scope: !39)
!176 = !DISubprogram(name: "lzma_vli_size", scope: !58, file: !58, line: 165, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!177 = !DISubroutineType(types: !178)
!178 = !{!49, !57}
!179 = !DISubprogram(name: "lzma_filter_flags_size", scope: !66, file: !66, line: 382, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!180 = !DISubroutineType(types: !181)
!181 = !{!42, !182, !183}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!185 = distinct !DISubprogram(name: "lzma_block_header_encode", scope: !1, file: !1, line: 74, type: !186, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !191)
!186 = !DISubroutineType(types: !187)
!187 = !{!42, !188, !190}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!191 = !{!192, !193, !194, !196, !197, !201, !205, !206}
!192 = !DILocalVariable(name: "block", arg: 1, scope: !185, file: !1, line: 74, type: !188)
!193 = !DILocalVariable(name: "out", arg: 2, scope: !185, file: !1, line: 74, type: !190)
!194 = !DILocalVariable(name: "out_size", scope: !185, file: !1, line: 82, type: !195)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!196 = !DILocalVariable(name: "out_pos", scope: !185, file: !1, line: 89, type: !115)
!197 = !DILocalVariable(name: "ret_", scope: !198, file: !1, line: 93, type: !122)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 93, column: 3)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 92, column: 50)
!200 = distinct !DILexicalBlock(scope: !185, file: !1, line: 92, column: 6)
!201 = !DILocalVariable(name: "ret_", scope: !202, file: !1, line: 101, type: !122)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 101, column: 3)
!203 = distinct !DILexicalBlock(scope: !204, file: !1, line: 100, column: 52)
!204 = distinct !DILexicalBlock(scope: !185, file: !1, line: 100, column: 6)
!205 = !DILocalVariable(name: "filter_count", scope: !185, file: !1, line: 111, type: !115)
!206 = !DILocalVariable(name: "ret_", scope: !207, file: !1, line: 117, type: !122)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 117, column: 3)
!208 = distinct !DILexicalBlock(scope: !185, file: !1, line: 112, column: 5)
!209 = distinct !DIAssignID()
!210 = !DILocation(line: 0, scope: !185)
!211 = !DILocation(line: 77, column: 6, scope: !212)
!212 = distinct !DILexicalBlock(scope: !185, file: !1, line: 77, column: 6)
!213 = !DILocation(line: 77, column: 38, scope: !212)
!214 = !DILocation(line: 78, column: 4, scope: !212)
!215 = !DILocation(line: 78, column: 8, scope: !212)
!216 = !DILocation(line: 82, column: 33, scope: !185)
!217 = !DILocation(line: 82, column: 45, scope: !185)
!218 = !DILocation(line: 82, column: 26, scope: !185)
!219 = !DILocation(line: 85, column: 20, scope: !185)
!220 = !DILocation(line: 85, column: 11, scope: !185)
!221 = !DILocation(line: 85, column: 9, scope: !185)
!222 = !DILocation(line: 88, column: 2, scope: !185)
!223 = !DILocation(line: 88, column: 9, scope: !185)
!224 = !DILocation(line: 89, column: 2, scope: !185)
!225 = !DILocation(line: 89, column: 9, scope: !185)
!226 = distinct !DIAssignID()
!227 = !DILocation(line: 92, column: 13, scope: !200)
!228 = !DILocation(line: 92, column: 29, scope: !200)
!229 = !DILocation(line: 92, column: 6, scope: !185)
!230 = !DILocation(line: 93, column: 3, scope: !198)
!231 = !DILocation(line: 0, scope: !198)
!232 = !DILocation(line: 93, column: 3, scope: !233)
!233 = distinct !DILexicalBlock(scope: !198, file: !1, line: 93, column: 3)
!234 = !DILocation(line: 96, column: 10, scope: !199)
!235 = !DILocation(line: 97, column: 2, scope: !199)
!236 = !DILocation(line: 100, column: 13, scope: !204)
!237 = !DILocation(line: 100, column: 31, scope: !204)
!238 = !DILocation(line: 100, column: 6, scope: !185)
!239 = !DILocation(line: 101, column: 3, scope: !202)
!240 = !DILocation(line: 0, scope: !202)
!241 = !DILocation(line: 101, column: 3, scope: !242)
!242 = distinct !DILexicalBlock(scope: !202, file: !1, line: 101, column: 3)
!243 = !DILocation(line: 104, column: 10, scope: !203)
!244 = !DILocation(line: 105, column: 2, scope: !203)
!245 = !DILocation(line: 108, column: 13, scope: !246)
!246 = distinct !DILexicalBlock(scope: !185, file: !1, line: 108, column: 6)
!247 = !DILocation(line: 108, column: 21, scope: !246)
!248 = !DILocation(line: 108, column: 29, scope: !246)
!249 = !DILocation(line: 108, column: 50, scope: !246)
!250 = !DILocation(line: 108, column: 53, scope: !246)
!251 = !DILocation(line: 108, column: 6, scope: !185)
!252 = !DILocation(line: 117, column: 3, scope: !207)
!253 = !DILocation(line: 0, scope: !207)
!254 = !DILocation(line: 117, column: 3, scope: !255)
!255 = distinct !DILexicalBlock(scope: !207, file: !1, line: 117, column: 3)
!256 = !DILocation(line: 121, column: 18, scope: !185)
!257 = !DILocation(line: 121, column: 11, scope: !185)
!258 = !DILocation(line: 121, column: 42, scope: !185)
!259 = !DILocation(line: 121, column: 45, scope: !185)
!260 = !DILocation(line: 121, column: 2, scope: !208)
!261 = distinct !{!261, !262, !263}
!262 = !DILocation(line: 112, column: 2, scope: !185)
!263 = !DILocation(line: 121, column: 64, scope: !185)
!264 = !DILocation(line: 123, column: 9, scope: !185)
!265 = !DILocation(line: 126, column: 2, scope: !185)
!266 = !DILocation(line: 129, column: 26, scope: !185)
!267 = !DILocation(line: 129, column: 38, scope: !185)
!268 = !DILocalVariable(name: "buf", arg: 1, scope: !269, file: !270, line: 351, type: !190)
!269 = distinct !DISubprogram(name: "unaligned_write32le", scope: !270, file: !270, line: 351, type: !271, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!270 = !DIFile(filename: "common/tuklib_integer.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!271 = !DISubroutineType(types: !272)
!272 = !{null, !190, !49}
!273 = !{!268, !274}
!274 = !DILocalVariable(name: "num", arg: 2, scope: !269, file: !270, line: 351, type: !49)
!275 = !DILocation(line: 0, scope: !269, inlinedAt: !276)
!276 = distinct !DILocation(line: 129, column: 2, scope: !185)
!277 = !DILocation(line: 353, column: 11, scope: !269, inlinedAt: !276)
!278 = !DILocation(line: 353, column: 9, scope: !269, inlinedAt: !276)
!279 = !DILocation(line: 354, column: 15, scope: !269, inlinedAt: !276)
!280 = !DILocation(line: 354, column: 11, scope: !269, inlinedAt: !276)
!281 = !DILocation(line: 354, column: 2, scope: !269, inlinedAt: !276)
!282 = !DILocation(line: 354, column: 9, scope: !269, inlinedAt: !276)
!283 = !DILocation(line: 355, column: 15, scope: !269, inlinedAt: !276)
!284 = !DILocation(line: 355, column: 11, scope: !269, inlinedAt: !276)
!285 = !DILocation(line: 355, column: 2, scope: !269, inlinedAt: !276)
!286 = !DILocation(line: 355, column: 9, scope: !269, inlinedAt: !276)
!287 = !DILocation(line: 356, column: 15, scope: !269, inlinedAt: !276)
!288 = !DILocation(line: 356, column: 11, scope: !269, inlinedAt: !276)
!289 = !DILocation(line: 356, column: 2, scope: !269, inlinedAt: !276)
!290 = !DILocation(line: 356, column: 9, scope: !269, inlinedAt: !276)
!291 = !DILocation(line: 131, column: 2, scope: !185)
!292 = !DILocation(line: 132, column: 1, scope: !185)
!293 = !DISubprogram(name: "lzma_block_unpadded_size", scope: !45, file: !45, line: 391, type: !294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = !DISubroutineType(types: !295)
!295 = !{!57, !188}
!296 = !DISubprogram(name: "lzma_vli_encode", scope: !58, file: !58, line: 115, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DISubroutineType(types: !298)
!298 = !{!42, !57, !299, !190, !299, !115}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!300 = !DISubprogram(name: "lzma_filter_flags_encode", scope: !66, file: !66, line: 405, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubroutineType(types: !302)
!302 = !{!42, !183, !190, !299, !115}
!303 = !DISubprogram(name: "lzma_crc32", scope: !20, file: !20, line: 119, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubroutineType(types: !305)
!305 = !{!49, !306, !115, !49}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
