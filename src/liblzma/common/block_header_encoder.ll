; ModuleID = 'liblzma/common/block_header_encoder.c'
source_filename = "liblzma/common/block_header_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_header_size(ptr nocapture noundef %block) local_unnamed_addr #0 {
entry:
  %add37 = alloca i32, align 4
  %0 = load i32, ptr %block, align 8
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %compressed_size = getelementptr inbounds i8, ptr %block, i64 16
  %1 = load i64, ptr %compressed_size, align 8
  %cmp1.not = icmp eq i64 %1, -1
  br i1 %cmp1.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @lzma_vli_size(i64 noundef %1) #4
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %return, label %cleanup

cleanup:                                          ; preds = %if.then2
  %2 = load i64, ptr %compressed_size, align 8
  %cmp6.not = icmp eq i64 %2, 0
  %add9 = add i32 %call, 6
  br i1 %cmp6.not, label %return, label %if.end10

if.end10:                                         ; preds = %cleanup, %if.end
  %size.1 = phi i32 [ %add9, %cleanup ], [ 6, %if.end ]
  %uncompressed_size = getelementptr inbounds i8, ptr %block, i64 24
  %3 = load i64, ptr %uncompressed_size, align 8
  %cmp11.not = icmp eq i64 %3, -1
  br i1 %cmp11.not, label %if.end23, label %if.then12

if.then12:                                        ; preds = %if.end10
  %call15 = tail call i32 @lzma_vli_size(i64 noundef %3) #4
  %cmp16.not = icmp eq i32 %call15, 0
  %add19 = add i32 %call15, %size.1
  br i1 %cmp16.not, label %return, label %if.end23

if.end23:                                         ; preds = %if.then12, %if.end10
  %size.3 = phi i32 [ %add19, %if.then12 ], [ %size.1, %if.end10 ]
  %filters = getelementptr inbounds i8, ptr %block, i64 32
  %4 = load ptr, ptr %filters, align 8
  %cmp24 = icmp eq ptr %4, null
  br i1 %cmp24, label %return, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end23
  %5 = load i64, ptr %4, align 8
  %cmp27 = icmp eq i64 %5, -1
  br i1 %cmp27, label %return, label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %add37) #4
  %call39 = call i32 @lzma_filter_flags_size(ptr noundef nonnull %add37, ptr noundef nonnull %4) #4
  %cmp40.not = icmp eq i32 %call39, 0
  %6 = load i32, ptr %add37, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %add37) #4
  br i1 %cmp40.not, label %for.inc, label %return

for.inc:                                          ; preds = %for.body.preheader
  %add46 = add i32 %6, %size.3
  %7 = load ptr, ptr %filters, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %7, i64 16
  %8 = load i64, ptr %arrayidx31, align 8
  %cmp33.not = icmp eq i64 %8, -1
  br i1 %cmp33.not, label %for.end, label %for.body.1

for.body.1:                                       ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %add37) #4
  %call39.1 = call i32 @lzma_filter_flags_size(ptr noundef nonnull %add37, ptr noundef nonnull %arrayidx31) #4
  %cmp40.not.1 = icmp eq i32 %call39.1, 0
  %9 = load i32, ptr %add37, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %add37) #4
  br i1 %cmp40.not.1, label %for.inc.1, label %return

for.inc.1:                                        ; preds = %for.body.1
  %add46.1 = add i32 %9, %add46
  %10 = load ptr, ptr %filters, align 8
  %arrayidx31.1 = getelementptr inbounds i8, ptr %10, i64 32
  %11 = load i64, ptr %arrayidx31.1, align 8
  %cmp33.not.1 = icmp eq i64 %11, -1
  br i1 %cmp33.not.1, label %for.end, label %for.body.2

for.body.2:                                       ; preds = %for.inc.1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %add37) #4
  %call39.2 = call i32 @lzma_filter_flags_size(ptr noundef nonnull %add37, ptr noundef nonnull %arrayidx31.1) #4
  %cmp40.not.2 = icmp eq i32 %call39.2, 0
  %12 = load i32, ptr %add37, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %add37) #4
  br i1 %cmp40.not.2, label %for.inc.2, label %return

for.inc.2:                                        ; preds = %for.body.2
  %add46.2 = add i32 %12, %add46.1
  %13 = load ptr, ptr %filters, align 8
  %arrayidx31.2 = getelementptr inbounds i8, ptr %13, i64 48
  %14 = load i64, ptr %arrayidx31.2, align 8
  %cmp33.not.2 = icmp eq i64 %14, -1
  br i1 %cmp33.not.2, label %for.end, label %for.body.3

for.body.3:                                       ; preds = %for.inc.2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %add37) #4
  %call39.3 = call i32 @lzma_filter_flags_size(ptr noundef nonnull %add37, ptr noundef nonnull %arrayidx31.2) #4
  %cmp40.not.3 = icmp eq i32 %call39.3, 0
  %15 = load i32, ptr %add37, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %add37) #4
  br i1 %cmp40.not.3, label %for.inc.3, label %return

for.inc.3:                                        ; preds = %for.body.3
  %add46.3 = add i32 %15, %add46.2
  %16 = load ptr, ptr %filters, align 8
  %arrayidx31.3 = getelementptr inbounds i8, ptr %16, i64 64
  %17 = load i64, ptr %arrayidx31.3, align 8
  %cmp33.not.3 = icmp eq i64 %17, -1
  br i1 %cmp33.not.3, label %for.end, label %return

for.end:                                          ; preds = %for.inc, %for.inc.1, %for.inc.2, %for.inc.3
  %add46.lcssa = phi i32 [ %add46, %for.inc ], [ %add46.1, %for.inc.1 ], [ %add46.2, %for.inc.2 ], [ %add46.3, %for.inc.3 ]
  %add52 = add i32 %add46.lcssa, 3
  %and = and i32 %add52, -4
  %header_size = getelementptr inbounds i8, ptr %block, i64 4
  store i32 %and, ptr %header_size, align 4
  br label %return

return:                                           ; preds = %for.body.preheader, %for.body.1, %for.body.2, %for.body.3, %for.inc.3, %if.then2, %for.end, %if.then12, %cleanup, %lor.lhs.false25, %if.end23, %entry
  %retval.8 = phi i32 [ 8, %entry ], [ 0, %for.end ], [ 11, %if.then12 ], [ 11, %cleanup ], [ 11, %lor.lhs.false25 ], [ 11, %if.end23 ], [ 11, %if.then2 ], [ %call39, %for.body.preheader ], [ %call39.1, %for.body.1 ], [ %call39.2, %for.body.2 ], [ %call39.3, %for.body.3 ], [ 11, %for.inc.3 ]
  ret i32 %retval.8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_filter_flags_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_header_encode(ptr noundef %block, ptr noundef %out) local_unnamed_addr #0 {
entry:
  %out_pos = alloca i64, align 8
  %call = tail call i64 @lzma_block_unpadded_size(ptr noundef %block) #4
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %uncompressed_size = getelementptr inbounds i8, ptr %block, i64 24
  %0 = load i64, ptr %uncompressed_size, align 8
  %or.cond = icmp sgt i64 %0, -2
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %header_size = getelementptr inbounds i8, ptr %block, i64 4
  %1 = load i32, ptr %header_size, align 4
  %sub = add i32 %1, -4
  %conv = zext i32 %sub to i64
  %div128 = lshr i32 %sub, 2
  %conv5 = trunc i32 %div128 to i8
  store i8 %conv5, ptr %out, align 1
  %arrayidx6 = getelementptr inbounds i8, ptr %out, i64 1
  store i8 0, ptr %arrayidx6, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_pos) #4
  store i64 2, ptr %out_pos, align 8
  %compressed_size = getelementptr inbounds i8, ptr %block, i64 16
  %2 = load i64, ptr %compressed_size, align 8
  %cmp7.not = icmp eq i64 %2, -1
  br i1 %cmp7.not, label %if.end19, label %do.body

do.body:                                          ; preds = %if.end
  %call11 = call i32 @lzma_vli_encode(i64 noundef %2, ptr noundef null, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #4
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %do.end, label %cleanup86

do.end:                                           ; preds = %do.body
  %3 = load i8, ptr %arrayidx6, align 1
  %4 = or i8 %3, 64
  store i8 %4, ptr %arrayidx6, align 1
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end
  %5 = load i64, ptr %uncompressed_size, align 8
  %cmp21.not = icmp eq i64 %5, -1
  br i1 %cmp21.not, label %if.end41, label %do.body24

do.body24:                                        ; preds = %if.end19
  %call27 = call i32 @lzma_vli_encode(i64 noundef %5, ptr noundef null, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #4
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %do.end36, label %cleanup86

do.end36:                                         ; preds = %do.body24
  %6 = load i8, ptr %arrayidx6, align 1
  %7 = or i8 %6, -128
  store i8 %7, ptr %arrayidx6, align 1
  br label %if.end41

if.end41:                                         ; preds = %do.end36, %if.end19
  %filters = getelementptr inbounds i8, ptr %block, i64 32
  %8 = load ptr, ptr %filters, align 8
  %cmp42 = icmp eq ptr %8, null
  br i1 %cmp42, label %cleanup86, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.end41
  %9 = load i64, ptr %8, align 8
  %cmp47 = icmp eq i64 %9, -1
  br i1 %cmp47, label %cleanup86, label %do.body51.preheader

do.body51.preheader:                              ; preds = %lor.lhs.false44
  %call59 = call i32 @lzma_filter_flags_encode(ptr noundef nonnull %8, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #4
  %cmp60.not = icmp eq i32 %call59, 0
  br i1 %cmp60.not, label %do.cond69, label %cleanup86

do.cond69:                                        ; preds = %do.body51.preheader
  %10 = load ptr, ptr %filters, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %10, i64 16
  %11 = load i64, ptr %arrayidx71, align 8
  %cmp73.not = icmp eq i64 %11, -1
  br i1 %cmp73.not, label %do.end75, label %do.body51.1

do.body51.1:                                      ; preds = %do.cond69
  %call59.1 = call i32 @lzma_filter_flags_encode(ptr noundef nonnull %arrayidx71, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #4
  %cmp60.not.1 = icmp eq i32 %call59.1, 0
  br i1 %cmp60.not.1, label %do.cond69.1, label %cleanup86

do.cond69.1:                                      ; preds = %do.body51.1
  %12 = load ptr, ptr %filters, align 8
  %arrayidx71.1 = getelementptr inbounds i8, ptr %12, i64 32
  %13 = load i64, ptr %arrayidx71.1, align 8
  %cmp73.not.1 = icmp eq i64 %13, -1
  br i1 %cmp73.not.1, label %do.end75, label %do.body51.2

do.body51.2:                                      ; preds = %do.cond69.1
  %call59.2 = call i32 @lzma_filter_flags_encode(ptr noundef nonnull %arrayidx71.1, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #4
  %cmp60.not.2 = icmp eq i32 %call59.2, 0
  br i1 %cmp60.not.2, label %do.cond69.2, label %cleanup86

do.cond69.2:                                      ; preds = %do.body51.2
  %14 = load ptr, ptr %filters, align 8
  %arrayidx71.2 = getelementptr inbounds i8, ptr %14, i64 48
  %15 = load i64, ptr %arrayidx71.2, align 8
  %cmp73.not.2 = icmp eq i64 %15, -1
  br i1 %cmp73.not.2, label %do.end75, label %do.body51.3

do.body51.3:                                      ; preds = %do.cond69.2
  %call59.3 = call i32 @lzma_filter_flags_encode(ptr noundef nonnull %arrayidx71.2, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #4
  %cmp60.not.3 = icmp eq i32 %call59.3, 0
  br i1 %cmp60.not.3, label %do.cond69.3, label %cleanup86

do.cond69.3:                                      ; preds = %do.body51.3
  %16 = load ptr, ptr %filters, align 8
  %arrayidx71.3 = getelementptr inbounds i8, ptr %16, i64 64
  %17 = load i64, ptr %arrayidx71.3, align 8
  %cmp73.not.3 = icmp eq i64 %17, -1
  br i1 %cmp73.not.3, label %do.end75, label %cleanup86

do.end75:                                         ; preds = %do.cond69.3, %do.cond69.2, %do.cond69.1, %do.cond69
  %filter_count.0.lcssa130 = phi i8 [ 0, %do.cond69 ], [ 1, %do.cond69.1 ], [ 2, %do.cond69.2 ], [ 3, %do.cond69.3 ]
  %18 = load i8, ptr %arrayidx6, align 1
  %conv80 = or i8 %18, %filter_count.0.lcssa130
  store i8 %conv80, ptr %arrayidx6, align 1
  %19 = load i64, ptr %out_pos, align 8
  %add.ptr81 = getelementptr inbounds i8, ptr %out, i64 %19
  %sub82 = sub i64 %conv, %19
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr81, i8 0, i64 %sub82, i1 false)
  %add.ptr83 = getelementptr inbounds i8, ptr %out, i64 %conv
  %call84 = call i32 @lzma_crc32(ptr noundef nonnull %out, i64 noundef %conv, i32 noundef 0) #4
  %conv.i = trunc i32 %call84 to i8
  store i8 %conv.i, ptr %add.ptr83, align 1
  %shr.i = lshr i32 %call84, 8
  %conv1.i = trunc i32 %shr.i to i8
  %arrayidx2.i = getelementptr inbounds i8, ptr %add.ptr83, i64 1
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %shr3.i = lshr i32 %call84, 16
  %conv4.i = trunc i32 %shr3.i to i8
  %arrayidx5.i = getelementptr inbounds i8, ptr %add.ptr83, i64 2
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %shr6.i = lshr i32 %call84, 24
  %conv7.i = trunc nuw i32 %shr6.i to i8
  %arrayidx8.i = getelementptr inbounds i8, ptr %add.ptr83, i64 3
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  br label %cleanup86

cleanup86:                                        ; preds = %do.body51.preheader, %do.body51.1, %do.body51.2, %do.body51.3, %do.cond69.3, %do.end75, %if.end41, %lor.lhs.false44, %do.body, %do.body24
  %retval.7 = phi i32 [ %call27, %do.body24 ], [ %call11, %do.body ], [ 11, %lor.lhs.false44 ], [ 11, %if.end41 ], [ 0, %do.end75 ], [ %call59, %do.body51.preheader ], [ %call59.1, %do.body51.1 ], [ %call59.2, %do.body51.2 ], [ %call59.3, %do.body51.3 ], [ 11, %do.cond69.3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_pos) #4
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %cleanup86
  %retval.8 = phi i32 [ %retval.7, %cleanup86 ], [ 11, %lor.lhs.false ], [ 11, %entry ]
  ret i32 %retval.8
}

declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

declare i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lzma_filter_flags_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
