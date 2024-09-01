; ModuleID = 'spec.c'
source_filename = "spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"main: Error mallocing memory for SHA-%d sum!\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"Error: Supplied original hash value is not the correct length to be SHA-%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [127 x i8] c"Usage: %s <input filename> <input size> <input raw SHA-%d> <compressed minimum> <compressed maximum> <compression level, ...>\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"SPEC CPU XZ driver: input=%s insize=%ld\0A\00", align 1
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Error allocating in-memory file descriptors\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Input data %ld bytes in length\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Error: compression level '%s' is not valid\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Compressing Input Data, level %d%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" (extreme)\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Compressed data %ld bytes in length\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Compressed data length is %ld bytes in length\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Compressed data is between %ld and %ld bytes in length\0A\00", align 1
@.str.14 = private unnamed_addr constant [75 x i8] c"Compressed data length of %ld does not match expected length of %ld bytes\0A\00", align 1
@.str.15 = private unnamed_addr constant [82 x i8] c"Compressed data length of %ld is outside the allowable range of %ld to %ld bytes\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Uncompressed data %ld bytes in length\0A\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"Computed SHA-%d sum for decompression step did not match expected\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"  Generated: \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"   Expected: \00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Tested %ld MiB buffer: OK!\0A\00", align 1
@str = private unnamed_addr constant [19 x i8] c"Loading Input Data\00", align 1
@str.25 = private unnamed_addr constant [26 x i8] c"Finished compressing data\00", align 1
@str.26 = private unnamed_addr constant [41 x i8] c"Uncompressing previously compressed data\00", align 1
@str.27 = private unnamed_addr constant [37 x i8] c"Uncompressed data compared correctly\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 512)
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %cmp2 = icmp sgt i32 %argc, 1
  br i1 %cmp2, label %if.end4, label %if.end35.thread

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds i8, ptr %argv, i64 8
  %0 = load ptr, ptr %arrayidx, align 8
  %cmp5.not = icmp eq i32 %argc, 2
  br i1 %cmp5.not, label %if.end35.thread, label %if.end9

if.end9:                                          ; preds = %if.end4
  %arrayidx7 = getelementptr inbounds i8, ptr %argv, i64 16
  %1 = load ptr, ptr %arrayidx7, align 8
  %call8 = tail call i64 @strtol(ptr nocapture noundef %1, ptr noundef null, i32 noundef 10) #10
  %cmp10 = icmp ugt i32 %argc, 3
  br i1 %cmp10, label %if.then11, label %if.end35.thread

if.then11:                                        ; preds = %if.end9
  %arrayidx12 = getelementptr inbounds i8, ptr %argv, i64 24
  %2 = load ptr, ptr %arrayidx12, align 8
  %call13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #11
  %mul.mask = and i64 %call13, 4611686018427387903
  %cmp14.not = icmp eq i64 %mul.mask, 128
  br i1 %cmp14.not, label %if.end23, label %if.then15

if.then15:                                        ; preds = %if.then11
  %3 = load ptr, ptr @stderr, align 8
  %call16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 512) #12
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end23:                                         ; preds = %if.then11
  %call21 = tail call ptr @sum_str_to_hex(ptr noundef %2, i32 noundef 512) #10
  %cmp24.not = icmp eq i32 %argc, 4
  br i1 %cmp24.not, label %if.end35.thread, label %if.end29

if.end29:                                         ; preds = %if.end23
  %arrayidx27 = getelementptr inbounds i8, ptr %argv, i64 32
  %4 = load ptr, ptr %arrayidx27, align 8
  %call28 = tail call i64 @strtol(ptr nocapture noundef %4, ptr noundef null, i32 noundef 10) #10
  %cmp30 = icmp ugt i32 %argc, 5
  br i1 %cmp30, label %if.end35, label %if.end35.thread

if.end35:                                         ; preds = %if.end29
  %arrayidx33 = getelementptr inbounds i8, ptr %argv, i64 40
  %5 = load ptr, ptr %arrayidx33, align 8
  %call34 = tail call i64 @strtol(ptr nocapture noundef %5, ptr noundef null, i32 noundef 10) #10
  %call34.fr = freeze i64 %call34
  %cmp36 = icmp slt i64 %call34.fr, 0
  %spec.select = select i1 %cmp36, i64 %call28, i64 %call34.fr
  br label %if.end35.thread

if.end35.thread:                                  ; preds = %if.end35, %if.end, %if.end4, %if.end9, %if.end23, %if.end29
  %sha.0259265282 = phi ptr [ %call21, %if.end29 ], [ %call21, %if.end23 ], [ null, %if.end9 ], [ null, %if.end4 ], [ null, %if.end ], [ %call21, %if.end35 ]
  %input_name.0247251258266280 = phi ptr [ %0, %if.end29 ], [ %0, %if.end23 ], [ %0, %if.end9 ], [ %0, %if.end4 ], [ null, %if.end ], [ %0, %if.end35 ]
  %input_size.0252257267278 = phi i64 [ %call8, %if.end29 ], [ %call8, %if.end23 ], [ %call8, %if.end9 ], [ 0, %if.end4 ], [ 0, %if.end ], [ %call8, %if.end35 ]
  %compressed_min.0268276 = phi i64 [ %call28, %if.end29 ], [ -1, %if.end23 ], [ -1, %if.end9 ], [ -1, %if.end4 ], [ -1, %if.end ], [ %call28, %if.end35 ]
  %6 = phi i64 [ %call28, %if.end29 ], [ -1, %if.end23 ], [ -1, %if.end9 ], [ -1, %if.end4 ], [ -1, %if.end ], [ %spec.select, %if.end35 ]
  %cmp40 = icmp eq ptr %input_name.0247251258266280, null
  %cmp42 = icmp slt i64 %input_size.0252257267278, 1
  %or.cond = select i1 %cmp40, i1 true, i1 %cmp42
  %cmp45 = icmp eq ptr %sha.0259265282, null
  %or.cond183 = select i1 %or.cond, i1 true, i1 %cmp45
  %cmp48 = icmp eq i64 %compressed_min.0268276, 0
  %cmp51 = icmp eq i64 %6, 0
  %7 = or i1 %cmp48, %cmp51
  %or.cond185 = select i1 %or.cond183, i1 true, i1 %7
  %cmp54 = icmp slt i32 %argc, 6
  %or.cond186 = or i1 %cmp54, %or.cond185
  br i1 %or.cond186, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end35.thread
  %8 = load ptr, ptr %argv, align 8
  %call58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %8, i32 noundef 512)
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end59:                                         ; preds = %if.end35.thread
  %call60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %input_name.0247251258266280, i64 noundef %input_size.0252257267278)
  %call61 = tail call ptr @spec_mem_alloc_fds(i32 noundef 3) #10
  store ptr %call61, ptr @spec_fd, align 8
  %cmp62 = icmp eq ptr %call61, null
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end59
  %9 = load ptr, ptr @stderr, align 8
  %10 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 44, i64 1, ptr %9) #13
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end66:                                         ; preds = %if.end59
  %mul67 = shl nsw i64 %input_size.0252257267278, 20
  %cmp68 = icmp ult i64 %input_size.0252257267278, 254
  %spec.select292 = select i1 %cmp68, i64 266338304, i64 %mul67
  %11 = getelementptr inbounds i8, ptr %call61, i64 40
  store i64 %spec.select292, ptr %11, align 8
  store i64 %spec.select292, ptr %call61, align 8
  %12 = load ptr, ptr @spec_fd, align 8
  %call81 = tail call i32 @spec_mem_init(ptr noundef %12, i32 noundef 3, i32 noundef 1) #10
  %call82 = tail call i32 @debug_time() #10
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %13 = load ptr, ptr @spec_fd, align 8
  %call85 = tail call ptr @spec_mem_load(ptr noundef %13, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %input_name.0247251258266280, i64 noundef %mul67, i32 noundef 1, ptr noundef nonnull %sha.0259265282, i32 noundef 512) #10
  %14 = load ptr, ptr @spec_fd, align 8
  %len = getelementptr inbounds i8, ptr %14, i64 8
  %15 = load i64, ptr %len, align 8
  %call87 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %15)
  %16 = load ptr, ptr @spec_fd, align 8
  %open = getelementptr inbounds i8, ptr %16, i64 104
  store i32 1, ptr %open, align 8
  %open90 = getelementptr inbounds i8, ptr %16, i64 64
  store i32 1, ptr %open90, align 8
  %open92 = getelementptr inbounds i8, ptr %16, i64 24
  store i32 1, ptr %open92, align 8
  tail call void (...) @spec_initbufs() #10
  %cmp93285 = icmp ugt i32 %argc, 6
  br i1 %cmp93285, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end66
  %cmp125 = icmp sgt i64 %compressed_min.0268276, 0
  %cmp137 = icmp eq i64 %compressed_min.0268276, %6
  %wide.trip.count = zext nneg i32 %argc to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end176
  %indvars.iv = phi i64 [ 6, %for.body.lr.ph ], [ %indvars.iv.next, %if.end176 ]
  %arrayidx95 = getelementptr inbounds ptr, ptr %argv, i64 %indvars.iv
  %17 = load ptr, ptr %arrayidx95, align 8
  %18 = load i8, ptr %17, align 1
  %19 = add i8 %18, -58
  %or.cond187 = icmp ult i8 %19, -10
  br i1 %or.cond187, label %if.then112, label %if.end118

if.then112:                                       ; preds = %for.body
  %call115 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %17)
  %20 = load ptr, ptr %argv, align 8
  %call117 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %20, i32 noundef 512)
  tail call void @exit(i32 noundef 1) #9
  unreachable

if.end118:                                        ; preds = %for.body
  %arrayidx100 = getelementptr inbounds i8, ptr %17, i64 1
  %21 = load i8, ptr %arrayidx100, align 1
  %cmp102.not = icmp eq i8 %21, 101
  %. = select i1 %cmp102.not, i32 -2147483648, i32 0
  %conv97 = zext nneg i8 %18 to i32
  %sub = add nsw i32 %conv97, -48
  %call119 = tail call i32 @debug_time() #10
  %cond = select i1 %cmp102.not, ptr @.str.9, ptr @.str.10
  %call120 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %sub, ptr noundef nonnull %cond)
  %or = or disjoint i32 %., %sub
  tail call void @spec_compress(i32 noundef 0, i32 noundef 1, i32 noundef %or) #10
  %call121 = tail call i32 @debug_time() #10
  %22 = load ptr, ptr @stderr, align 8
  %23 = load ptr, ptr @spec_fd, align 8
  %len123 = getelementptr inbounds i8, ptr %23, i64 48
  %24 = load i64, ptr %len123, align 8
  %call124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.11, i64 noundef %24) #12
  br i1 %cmp125, label %if.then127, label %if.end157

if.then127:                                       ; preds = %if.end118
  %25 = load ptr, ptr @spec_fd, align 8
  %len129 = getelementptr inbounds i8, ptr %25, i64 48
  %26 = load i64, ptr %len129, align 8
  %cmp130.not = icmp slt i64 %26, %compressed_min.0268276
  %cmp134.not = icmp sgt i64 %26, %6
  %or.cond244 = select i1 %cmp130.not, i1 true, i1 %cmp134.not
  br i1 %or.cond244, label %if.else144, label %if.then136

if.then136:                                       ; preds = %if.then127
  br i1 %cmp137, label %if.then139, label %if.else141

if.then139:                                       ; preds = %if.then136
  %call140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %compressed_min.0268276)
  br label %if.end157

if.else141:                                       ; preds = %if.then136
  %call142 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i64 noundef %compressed_min.0268276, i64 noundef %6)
  br label %if.end157

if.else144:                                       ; preds = %if.then127
  br i1 %cmp137, label %if.then147, label %if.else151

if.then147:                                       ; preds = %if.else144
  %call150 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i64 noundef %26, i64 noundef %compressed_min.0268276)
  br label %if.end157

if.else151:                                       ; preds = %if.else144
  %call154 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %26, i64 noundef %compressed_min.0268276, i64 noundef %6)
  br label %if.end157

if.end157:                                        ; preds = %if.else141, %if.then139, %if.else151, %if.then147, %if.end118
  %puts240 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  %27 = load ptr, ptr @spec_fd, align 8
  %call159 = tail call i32 @spec_mem_reset(ptr noundef %27, i32 noundef 3, i32 noundef 0) #10
  %28 = load ptr, ptr @spec_fd, align 8
  %call160 = tail call i32 @spec_mem_rewind(ptr noundef %28, i32 noundef 3, i32 noundef 1) #10
  %call161 = tail call i32 @debug_time() #10
  %puts241 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  tail call void @spec_uncompress(i32 noundef 1, i32 noundef 0) #10
  %call163 = tail call i32 @debug_time() #10
  %29 = load ptr, ptr @spec_fd, align 8
  %len165 = getelementptr inbounds i8, ptr %29, i64 8
  %30 = load i64, ptr %len165, align 8
  %call166 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %30)
  %31 = load ptr, ptr @spec_fd, align 8
  %call167 = tail call ptr @spec_mem_sum(ptr noundef %31, ptr noundef nonnull %call, i32 noundef 512) #10
  %call168 = tail call i32 @compare_sum(ptr noundef %call85, ptr noundef nonnull %call, i32 noundef 512) #10
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end176, label %if.then170

if.then170:                                       ; preds = %if.end157
  %call171 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef 512)
  %call172 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20)
  %32 = load ptr, ptr @stdout, align 8
  tail call void @print_sum(ptr noundef %32, ptr noundef nonnull %call, i32 noundef 512) #10
  %putchar = tail call i32 @putchar(i32 10)
  %call174 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22)
  %33 = load ptr, ptr @stdout, align 8
  tail call void @print_sum(ptr noundef %33, ptr noundef %call85, i32 noundef 512) #10
  %putchar243 = tail call i32 @putchar(i32 10)
  tail call void @exit(i32 noundef 0) #9
  unreachable

if.end176:                                        ; preds = %if.end157
  %call177 = tail call i32 @debug_time() #10
  %puts242 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %34 = load ptr, ptr @spec_fd, align 8
  %call179 = tail call i32 @spec_mem_reset(ptr noundef %34, i32 noundef 3, i32 noundef 1) #10
  %35 = load ptr, ptr @spec_fd, align 8
  %call180 = tail call i32 @spec_mem_rewind(ptr noundef %35, i32 noundef 3, i32 noundef 0) #10
  %call181 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i64 noundef %input_size.0252257267278)
  %36 = load ptr, ptr @stdout, align 8
  %call182 = tail call i32 @fflush(ptr noundef %36)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end176, %if.end66
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare ptr @sum_str_to_hex(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @spec_mem_alloc_fds(i32 noundef) local_unnamed_addr #6

declare i32 @spec_mem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @debug_time() local_unnamed_addr #6

declare ptr @spec_mem_load(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @spec_initbufs(...) local_unnamed_addr #6

declare void @spec_compress(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @spec_mem_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @spec_mem_rewind(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @spec_uncompress(i32 noundef, i32 noundef) local_unnamed_addr #6

declare ptr @spec_mem_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @compare_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @print_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
