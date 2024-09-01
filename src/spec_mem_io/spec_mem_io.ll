; ModuleID = 'spec_mem_io/spec_mem_io.c'
source_filename = "spec_mem_io/spec_mem_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spec_fd_t = type { i64, i64, i64, i32, ptr }
%struct.sha512_state = type { i64, [8 x i64], i32, [128 x i8] }

@dbglvl = dso_local local_unnamed_addr global i32 3, align 4, !dbg !0
@.str = private unnamed_addr constant [52 x i8] c"spec_mem_init(fds=0x%p, fd_limit=%u, touch_all=%d)\0A\00", align 1, !dbg !29
@spec_fd = dso_local local_unnamed_addr global ptr null, align 8, !dbg !343
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"spec_mem_init: Overflow in requested size (%ld) for fd %d\0A\00", align 1, !dbg !34
@.str.2 = private unnamed_addr constant [56 x i8] c"spec_mem_init: Error mallocing %ld bytes for fd %d@%p!\0A\00", align 1, !dbg !39
@.str.3 = private unnamed_addr constant [50 x i8] c" fd[%d] limit is %ld bytes (%ld bytes allocated)\0A\00", align 1, !dbg !44
@.str.4 = private unnamed_addr constant [41 x i8] c"spec_mem_sum: Only SHA-512 is available\0A\00", align 1, !dbg !49
@.str.5 = private unnamed_addr constant [58 x i8] c"spec_mem_load: couldn't allocate %d chars for SHA-%d sum\0A\00", align 1, !dbg !54
@.str.6 = private unnamed_addr constant [77 x i8] c"spec_mem_load: in-mem fd tmpfd %d@%p is out of range: < 0 || >= fd_limit %u\0A\00", align 1, !dbg !59
@.str.7 = private unnamed_addr constant [75 x i8] c"spec_mem_load: in-mem fd num %d@%p is out of range: < 0 || >= fd_limit %u\0A\00", align 1, !dbg !64
@.str.8 = private unnamed_addr constant [24 x i8] c"Can't open file %s: %s\0A\00", align 1, !dbg !69
@.str.9 = private unnamed_addr constant [14 x i8] c"spec_mem_load\00", align 1, !dbg !74
@.str.10 = private unnamed_addr constant [27 x i8] c"Error reading from %s: %s\0A\00", align 1, !dbg !79
@.str.11 = private unnamed_addr constant [46 x i8] c"Compressed size: %ld; Uncompressed size: %ld\0A\00", align 1, !dbg !84
@.str.12 = private unnamed_addr constant [67 x i8] c"Computed SHA-%d sum for decompressed input did not match expected\0A\00", align 1, !dbg !89
@.str.13 = private unnamed_addr constant [14 x i8] c"  Generated: \00", align 1, !dbg !94
@.str.14 = private unnamed_addr constant [15 x i8] c"\0A   Expected: \00", align 1, !dbg !96
@.str.16 = private unnamed_addr constant [52 x i8] c"SHA-%d of decompressed data compared successfully!\0A\00", align 1, !dbg !106
@.str.17 = private unnamed_addr constant [63 x i8] c"Decompressed data too large; truncating to requested size %ld\0A\00", align 1, !dbg !108
@.str.18 = private unnamed_addr constant [23 x i8] c"Duplicating %ld bytes\0A\00", align 1, !dbg !113
@.str.19 = private unnamed_addr constant [23 x i8] c"SHA-%d of input file: \00", align 1, !dbg !118
@.str.20 = private unnamed_addr constant [33 x i8] c"spec_mem_read: %d@%p, %p, %ld = \00", align 1, !dbg !120
@.str.21 = private unnamed_addr constant [61 x i8] c"spec_mem_read: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1, !dbg !125
@.str.22 = private unnamed_addr constant [45 x i8] c"spec_mem_read(%p, %u, %d, %p, %ld) => EBADF\0A\00", align 1, !dbg !130
@.str.23 = private unnamed_addr constant [43 x i8] c"pos (%ld) => len (%ld); returning EOF (0)\0A\00", align 1, !dbg !135
@.str.24 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !140
@.str.25 = private unnamed_addr constant [44 x i8] c"spec_mem_read: new pos for fd %d@%p is %ld\0A\00", align 1, !dbg !145
@.str.26 = private unnamed_addr constant [47 x i8] c"spec_mem_fread(%p, %u, %p, (%ld x %d) fd %d) =\00", align 1, !dbg !150
@.str.27 = private unnamed_addr constant [62 x i8] c"spec_mem_fread: fd=%d@%p out of range: < 0 || > fd_limit %d!\0A\00", align 1, !dbg !155
@.str.28 = private unnamed_addr constant [38 x i8] c"spec_mem_fread: fd=%d@%p is not open\0A\00", align 1, !dbg !160
@.str.30 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1, !dbg !170
@.str.31 = private unnamed_addr constant [45 x i8] c"spec_mem_fread: new pos for fd %d@%p is %ld\0A\00", align 1, !dbg !172
@.str.32 = private unnamed_addr constant [29 x i8] c"spec_mem_getc(%p, %u, %d) = \00", align 1, !dbg !174
@.str.33 = private unnamed_addr constant [61 x i8] c"spec_mem_getc: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1, !dbg !179
@.str.34 = private unnamed_addr constant [37 x i8] c"spec_mem_getc: fd=%d@%p is not open\0A\00", align 1, !dbg !181
@.str.35 = private unnamed_addr constant [44 x i8] c"spec_mem_getc: new pos for fd %d@%p is %ld\0A\00", align 1, !dbg !186
@.str.36 = private unnamed_addr constant [39 x i8] c"spec_mem_ungetc(%p, %u, 0x%02x, %d) = \00", align 1, !dbg !188
@.str.37 = private unnamed_addr constant [63 x i8] c"spec_mem_ungetc: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1, !dbg !193
@.str.38 = private unnamed_addr constant [39 x i8] c"spec_mem_ungetc: fd=%d@%p is not open\0A\00", align 1, !dbg !195
@.str.39 = private unnamed_addr constant [31 x i8] c"spec_mem_ungetc: pos %ld <= 0\0A\00", align 1, !dbg !197
@.str.40 = private unnamed_addr constant [76 x i8] c"spec_mem_ungetc: can't unget something that wasn't what was in the buffer!\0A\00", align 1, !dbg !202
@.str.41 = private unnamed_addr constant [46 x i8] c"spec_mem_ungetc: new pos for fd %d@%p is %ld\0A\00", align 1, !dbg !207
@.str.42 = private unnamed_addr constant [62 x i8] c"spec_mem_lseek: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1, !dbg !209
@.str.43 = private unnamed_addr constant [46 x i8] c"spec_mem_lseek(%p, %u, %d, %ld, %d) => EBADF\0A\00", align 1, !dbg !211
@.str.44 = private unnamed_addr constant [82 x i8] c"spec_mem_lseek(%p, %u, fd=%d, offset=%ld, whence=0x%x): cur pos (%ld) => new pos \00", align 1, !dbg !213
@.str.45 = private unnamed_addr constant [32 x i8] c"(%ld) (WHENCE WAS BAD): EINVAL\0A\00", align 1, !dbg !218
@.str.46 = private unnamed_addr constant [39 x i8] c"(%ld) (NEW POS (%ld) WAS < 0): EINVAL\0A\00", align 1, !dbg !223
@.str.47 = private unnamed_addr constant [7 x i8] c"(%ld)\0A\00", align 1, !dbg !225
@.str.48 = private unnamed_addr constant [32 x i8] c"spec_rewind(%p, %u, %d) called\0A\00", align 1, !dbg !230
@.str.49 = private unnamed_addr constant [35 x i8] c"spec_mem_reset(%p, %u, %d) called\0A\00", align 1, !dbg !232
@.str.50 = private unnamed_addr constant [45 x i8] c"spec_mem_reset: new pos for fd %d@%p is %ld\0A\00", align 1, !dbg !237
@.str.51 = private unnamed_addr constant [45 x i8] c"spec_get_length(%p, %u, %d): file not open!\0A\00", align 1, !dbg !239
@.str.52 = private unnamed_addr constant [40 x i8] c"spec_mem_get_length(%p, %u, %d) => %ld\0A\00", align 1, !dbg !241
@.str.53 = private unnamed_addr constant [41 x i8] c"spec_mem_fopen(%p, %u, '%s', '%s') = %d\0A\00", align 1, !dbg !246
@.str.54 = private unnamed_addr constant [42 x i8] c"spec_mem_open(%p, %u, '%s', 0x%02x) = %d\0A\00", align 1, !dbg !248
@.str.55 = private unnamed_addr constant [66 x i8] c"spec_mem_write(fds=0x%p, fd_limit=%u, fd=%d, buf=0x%p, size=%ld)\0A\00", align 1, !dbg !253
@.str.56 = private unnamed_addr constant [62 x i8] c"spec_mem_write: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1, !dbg !258
@.str.57 = private unnamed_addr constant [46 x i8] c"spec_mem_write(%p, %u, %d, %p, %ld) => EBADF\0A\00", align 1, !dbg !260
@.str.58 = private unnamed_addr constant [15 x i8] c"spec_mem_write\00", align 1, !dbg !262
@.str.59 = private unnamed_addr constant [58 x i8] c"  spec_mem_write returns %ld (len=%ld pos=%ld limit=%ld)\0A\00", align 1, !dbg !264
@.str.60 = private unnamed_addr constant [75 x i8] c"spec_mem_fwrite(fds=0x%p, fd_limit=%u, buf=0x%p, size=%ld, num=%d, fd=%d)\0A\00", align 1, !dbg !266
@.str.61 = private unnamed_addr constant [63 x i8] c"spec_mem_fwrite: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1, !dbg !268
@.str.62 = private unnamed_addr constant [39 x i8] c"spec_mem_fwrite: fd=%d@%p is not open\0A\00", align 1, !dbg !270
@.str.63 = private unnamed_addr constant [16 x i8] c"spec_mem_fwrite\00", align 1, !dbg !272
@.str.64 = private unnamed_addr constant [58 x i8] c"  spec_mem_fwrite returns %d (len=%ld pos=%ld limit=%ld)\0A\00", align 1, !dbg !277
@.str.65 = private unnamed_addr constant [52 x i8] c"spec_putc(fds=0x%p, fd_limit=%u, ch=0x%x, fd=%d) = \00", align 1, !dbg !279
@.str.66 = private unnamed_addr constant [61 x i8] c"spec_mem_putc: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1, !dbg !281
@.str.67 = private unnamed_addr constant [37 x i8] c"spec_mem_putc: fd=%d@%p is not open\0A\00", align 1, !dbg !283
@.str.68 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1, !dbg !285
@.str.69 = private unnamed_addr constant [44 x i8] c"spec_mem_putc: new pos for fd %d@%p is %ld\0A\00", align 1, !dbg !287
@.str.70 = private unnamed_addr constant [57 x i8] c"spec_feof: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1, !dbg !289
@.str.71 = private unnamed_addr constant [86 x i8] c"spec_mem_feof(fds=0x%p, fd_limit=%u, fd=%d) = %d (len = %ld; pos = %ld; limit = %ld)\0A\00", align 1, !dbg !294
@.str.72 = private unnamed_addr constant [62 x i8] c"spec_mem_close: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1, !dbg !299
@.str.73 = private unnamed_addr constant [37 x i8] c"spec_mem_close(%p, %u, %d) => EBADF\0A\00", align 1, !dbg !301
@.str.74 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1, !dbg !303
@.str.75 = private unnamed_addr constant [53 x i8] c"sum_str_to_hex: couldn't allocate %d chars for hash\0A\00", align 1, !dbg !305
@.str.76 = private unnamed_addr constant [62 x i8] c"Hash mismatch at %d: '%02x' (expected) != '%02x' (generated)\0A\00", align 1, !dbg !310
@.str.77 = private unnamed_addr constant [24 x i8] c"spec_mem_alloc_fds(%s)\0A\00", align 1, !dbg !312
@.str.78 = private unnamed_addr constant [12 x i8] c"MAX_SPEC_FD\00", align 1, !dbg !314
@.str.79 = private unnamed_addr constant [11 x i8] c"<variable>\00", align 1, !dbg !319
@.str.80 = private unnamed_addr constant [53 x i8] c"Error mallocing space for list of spec_fd_t structs\0A\00", align 1, !dbg !324
@.str.81 = private unnamed_addr constant [30 x i8] c"spec_mem_alloc_fds(%u) => %p\0A\00", align 1, !dbg !326
@.str.82 = private unnamed_addr constant [23 x i8] c"spec_mem_free_fds(%s)\0A\00", align 1, !dbg !331
@.str.83 = private unnamed_addr constant [8 x i8] c"spec_fd\00", align 1, !dbg !333
@.str.84 = private unnamed_addr constant [26 x i8] c"  +-> fds=%p fd_limit=%u\0A\00", align 1, !dbg !338
@.str.85 = private unnamed_addr constant [43 x i8] c"%s: Error growing buffer for fd %d@%p: %s\0A\00", align 1, !dbg !345
@.str.86 = private unnamed_addr constant [36 x i8] c"  grew buffer for fd%d@0x%p to %ld\0A\00", align 1, !dbg !347
@str.87 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @spec_mem_init(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %touch_all) local_unnamed_addr #0 !dbg !360 {
entry:
    #dbg_value(ptr %fds, !364, !DIExpression(), !373)
    #dbg_value(i32 %fd_limit, !365, !DIExpression(), !373)
    #dbg_value(i32 %touch_all, !366, !DIExpression(), !373)
  %0 = load i32, ptr @dbglvl, align 4, !dbg !374
  %cmp = icmp sgt i32 %0, 4, !dbg !374
  br i1 %cmp, label %if.then, label %if.end, !dbg !377

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @spec_fd, align 8, !dbg !378
  %cmp1 = icmp eq ptr %1, %fds, !dbg !378
  %cond = select i1 %cmp1, ptr null, ptr %fds, !dbg !378
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %cond, i32 noundef %fd_limit, i32 noundef %touch_all), !dbg !378
  %2 = load ptr, ptr @stdout, align 8, !dbg !378
  %call2 = tail call i32 @fflush(ptr noundef %2), !dbg !378
  br label %if.end, !dbg !378

if.end:                                           ; preds = %if.then, %entry
    #dbg_value(i32 0, !367, !DIExpression(), !373)
  %cmp386.not = icmp eq i32 %fd_limit, 0, !dbg !380
  br i1 %cmp386.not, label %for.end48, label %for.body.lr.ph, !dbg !381

for.body.lr.ph:                                   ; preds = %if.end
  %tobool.not = icmp eq i32 %touch_all, 0
  br i1 %tobool.not, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %if.end36.us
  %i.087.us = phi i32 [ %inc.us, %if.end36.us ], [ 0, %for.body.lr.ph ]
    #dbg_value(i32 %i.087.us, !367, !DIExpression(), !373)
  %idxprom.us = zext i32 %i.087.us to i64, !dbg !382
  %arrayidx.us = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom.us, !dbg !382
  %3 = load i64, ptr %arrayidx.us, align 8, !dbg !383
    #dbg_value(i64 %3, !369, !DIExpression(), !384)
  %4 = getelementptr inbounds i8, ptr %arrayidx.us, i64 8, !dbg !385
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 32, i1 false), !dbg !385
  store i64 %3, ptr %arrayidx.us, align 8, !dbg !386
  %cmp12.us = icmp slt i64 %3, 0, !dbg !387
  br i1 %cmp12.us, label %if.then13, label %if.end15.us, !dbg !389

if.end15.us:                                      ; preds = %for.body.us
  %add16.us = add nuw nsw i64 %3, 1048576, !dbg !390
  %call17.us = tail call noalias ptr @malloc(i64 noundef %add16.us) #19, !dbg !391
  %buf.us = getelementptr inbounds i8, ptr %arrayidx.us, i64 32, !dbg !392
  store ptr %call17.us, ptr %buf.us, align 8, !dbg !393
  %cmp23.us = icmp eq ptr %call17.us, null, !dbg !394
  br i1 %cmp23.us, label %if.then24, label %if.end27.us, !dbg !396

if.end27.us:                                      ; preds = %if.end15.us
  %5 = load i32, ptr @dbglvl, align 4, !dbg !397
  %cmp28.us = icmp sgt i32 %5, 4, !dbg !397
  br i1 %cmp28.us, label %if.then29.us, label %if.end36.us, !dbg !400

if.then29.us:                                     ; preds = %if.end27.us
  %call34.us = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.087.us, i64 noundef %3, i64 noundef %add16.us), !dbg !401
  %6 = load ptr, ptr @stdout, align 8, !dbg !401
  %call35.us = tail call i32 @fflush(ptr noundef %6), !dbg !401
  br label %if.end36.us, !dbg !401

if.end36.us:                                      ; preds = %if.then29.us, %if.end27.us
  %inc.us = add nuw i32 %i.087.us, 1, !dbg !403
    #dbg_value(i32 %inc.us, !367, !DIExpression(), !373)
  %exitcond105.not = icmp eq i32 %inc.us, %fd_limit, !dbg !380
  br i1 %exitcond105.not, label %for.end48, label %for.body.us, !dbg !381, !llvm.loop !404

for.body:                                         ; preds = %for.body.lr.ph, %if.end46.loopexit
  %i.087 = phi i32 [ %inc, %if.end46.loopexit ], [ 0, %for.body.lr.ph ]
    #dbg_value(i32 %i.087, !367, !DIExpression(), !373)
  %idxprom = zext i32 %i.087 to i64, !dbg !382
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !382
  %7 = load i64, ptr %arrayidx, align 8, !dbg !383
    #dbg_value(i64 %7, !369, !DIExpression(), !384)
  %8 = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !385
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 32, i1 false), !dbg !385
  store i64 %7, ptr %arrayidx, align 8, !dbg !386
  %cmp12 = icmp slt i64 %7, 0, !dbg !387
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !389

if.then13:                                        ; preds = %for.body, %for.body.us
  %.us-phi = phi i64 [ %3, %for.body.us ], [ %7, %for.body ], !dbg !406
  %.us-phi88 = phi i32 [ %i.087.us, %for.body.us ], [ %i.087, %for.body ], !dbg !406
  %9 = load ptr, ptr @stderr, align 8, !dbg !406
  %add = add nsw i64 %.us-phi, 1048576, !dbg !408
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.1, i64 noundef %add, i32 noundef %.us-phi88) #20, !dbg !409
  tail call void @exit(i32 noundef 1) #21, !dbg !410
  unreachable, !dbg !410

if.end15:                                         ; preds = %for.body
  %add16 = add nuw nsw i64 %7, 1048576, !dbg !390
  %call17 = tail call noalias ptr @malloc(i64 noundef %add16) #19, !dbg !391
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32, !dbg !392
  store ptr %call17, ptr %buf, align 8, !dbg !393
  %cmp23 = icmp eq ptr %call17, null, !dbg !394
  br i1 %cmp23, label %if.then24, label %if.end27, !dbg !396

if.then24:                                        ; preds = %if.end15, %if.end15.us
  %.us-phi89 = phi i64 [ %add16.us, %if.end15.us ], [ %add16, %if.end15 ], !dbg !411
  %.us-phi90 = phi i32 [ %i.087.us, %if.end15.us ], [ %i.087, %if.end15 ], !dbg !411
  %10 = load ptr, ptr @stderr, align 8, !dbg !411
  %call26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.2, i64 noundef %.us-phi89, i32 noundef %.us-phi90, ptr noundef nonnull %fds) #20, !dbg !413
  tail call void @exit(i32 noundef 1) #21, !dbg !414
  unreachable, !dbg !414

if.end27:                                         ; preds = %if.end15
  %11 = load i32, ptr @dbglvl, align 4, !dbg !397
  %cmp28 = icmp sgt i32 %11, 4, !dbg !397
  br i1 %cmp28, label %if.then29, label %if.end36, !dbg !400

if.then29:                                        ; preds = %if.end27
  %call34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.087, i64 noundef %7, i64 noundef %add16), !dbg !401
  %12 = load ptr, ptr @stdout, align 8, !dbg !401
  %call35 = tail call i32 @fflush(ptr noundef %12), !dbg !401
  br label %if.end36, !dbg !401

if.end36:                                         ; preds = %if.then29, %if.end27
    #dbg_value(i64 0, !368, !DIExpression(), !373)
  %cmp3984.not = icmp eq i64 %7, 0, !dbg !415
  br i1 %cmp3984.not, label %if.end46.loopexit, label %for.body40, !dbg !419

for.body40:                                       ; preds = %if.end36, %for.body40
  %j.085 = phi i64 [ %add45, %for.body40 ], [ 0, %if.end36 ]
    #dbg_value(i64 %j.085, !368, !DIExpression(), !373)
  %13 = load ptr, ptr %buf, align 8, !dbg !420
  %arrayidx44 = getelementptr inbounds i8, ptr %13, i64 %j.085, !dbg !422
  store i8 0, ptr %arrayidx44, align 1, !dbg !423
  %add45 = add nuw nsw i64 %j.085, 1024, !dbg !424
    #dbg_value(i64 %add45, !368, !DIExpression(), !373)
  %cmp39 = icmp slt i64 %add45, %7, !dbg !415
  br i1 %cmp39, label %for.body40, label %if.end46.loopexit, !dbg !419, !llvm.loop !425

if.end46.loopexit:                                ; preds = %for.body40, %if.end36
  %inc = add nuw i32 %i.087, 1, !dbg !403
    #dbg_value(i32 %inc, !367, !DIExpression(), !373)
  %exitcond.not = icmp eq i32 %inc, %fd_limit, !dbg !380
  br i1 %exitcond.not, label %for.end48, label %for.body, !dbg !381, !llvm.loop !404

for.end48:                                        ; preds = %if.end46.loopexit, %if.end36.us, %if.end
  ret i32 0, !dbg !427
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare !dbg !428 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !435 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare !dbg !495 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare !dbg !499 void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !503 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @spec_mem_sum(ptr nocapture noundef readonly %fd, ptr noundef returned %sum, i32 noundef %bits) local_unnamed_addr #0 !dbg !506 {
entry:
  %ctx = alloca %struct.sha512_state, align 8, !DIAssignID !533
    #dbg_assign(i1 undef, !513, !DIExpression(), !533, ptr %ctx, !DIExpression(), !534)
    #dbg_value(ptr %fd, !510, !DIExpression(), !534)
    #dbg_value(ptr %sum, !511, !DIExpression(), !534)
    #dbg_value(i32 %bits, !512, !DIExpression(), !534)
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %ctx) #22, !dbg !535
    #dbg_value(i64 0, !531, !DIExpression(), !534)
    #dbg_value(i64 0, !532, !DIExpression(), !534)
  %cmp.not = icmp eq i32 %bits, 512, !dbg !536
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !538

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !539
  %1 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 40, i64 1, ptr %0) #23, !dbg !541
  tail call void @exit(i32 noundef 1) #21, !dbg !542
  unreachable, !dbg !542

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq ptr %sum, null, !dbg !543
  br i1 %cmp1.not, label %if.end10, label %if.then2, !dbg !545

if.then2:                                         ; preds = %if.end
  call void @sha_init(ptr noundef nonnull %ctx) #22, !dbg !546
    #dbg_value(i64 0, !531, !DIExpression(), !534)
    #dbg_value(i64 2147483647, !532, !DIExpression(), !534)
  %len = getelementptr inbounds i8, ptr %fd, i64 8
    #dbg_value(i64 2147483647, !532, !DIExpression(), !534)
    #dbg_value(i64 0, !531, !DIExpression(), !534)
  %2 = load i64, ptr %len, align 8, !dbg !548
  %cmp322 = icmp sgt i64 %2, 0, !dbg !551
  br i1 %cmp322, label %for.body.lr.ph, label %for.end, !dbg !552

for.body.lr.ph:                                   ; preds = %if.then2
  %buf = getelementptr inbounds i8, ptr %fd, i64 32
  br label %for.body, !dbg !552

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %3 = phi i64 [ %2, %for.body.lr.ph ], [ %5, %for.body ]
  %chunk.024 = phi i64 [ 2147483647, %for.body.lr.ph ], [ %spec.select, %for.body ]
  %currpos.023 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
    #dbg_value(i64 %chunk.024, !532, !DIExpression(), !534)
    #dbg_value(i64 %currpos.023, !531, !DIExpression(), !534)
  %sub = sub nsw i64 %3, %currpos.023, !dbg !553
  %spec.select = call i64 @llvm.smin.i64(i64 %sub, i64 %chunk.024), !dbg !556
    #dbg_value(i64 %spec.select, !532, !DIExpression(), !534)
  %4 = load ptr, ptr %buf, align 8, !dbg !557
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %currpos.023, !dbg !558
  %conv = trunc i64 %spec.select to i32, !dbg !559
  call void @sha_process(ptr noundef nonnull %ctx, ptr noundef %add.ptr, i32 noundef %conv) #22, !dbg !560
  %add = add nsw i64 %spec.select, %currpos.023, !dbg !561
    #dbg_value(i64 %add, !531, !DIExpression(), !534)
  %5 = load i64, ptr %len, align 8, !dbg !548
  %cmp3 = icmp slt i64 %add, %5, !dbg !551
  br i1 %cmp3, label %for.body, label %for.end, !dbg !552, !llvm.loop !562

for.end:                                          ; preds = %for.body, %if.then2
  call void @sha_done(ptr noundef nonnull %ctx, ptr noundef nonnull %sum) #22, !dbg !564
  br label %if.end10, !dbg !565

if.end10:                                         ; preds = %for.end, %if.end
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ctx) #22, !dbg !566
  ret ptr %sum, !dbg !567
}

declare !dbg !568 void @sha_init(ptr noundef) local_unnamed_addr #6

declare !dbg !572 void @sha_process(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !577 void @sha_done(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @spec_mem_load(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %num, ptr noundef %filename, i64 noundef %size, i32 noundef %tmpfd, ptr noundef readonly %sum, i32 noundef %bits) local_unnamed_addr #0 !dbg !580 {
entry:
  %ctx.i269 = alloca %struct.sha512_state, align 8, !DIAssignID !598
  %ctx.i = alloca %struct.sha512_state, align 8, !DIAssignID !599
    #dbg_value(ptr %fds, !584, !DIExpression(), !600)
    #dbg_value(i32 %fd_limit, !585, !DIExpression(), !600)
    #dbg_value(i32 %num, !586, !DIExpression(), !600)
    #dbg_value(ptr %filename, !587, !DIExpression(), !600)
    #dbg_value(i64 %size, !588, !DIExpression(), !600)
    #dbg_value(i32 %tmpfd, !589, !DIExpression(), !600)
    #dbg_value(ptr %sum, !590, !DIExpression(), !600)
    #dbg_value(i32 %bits, !591, !DIExpression(), !600)
  %conv = sext i32 %bits to i64, !dbg !601
  %div265 = lshr i64 %conv, 3, !dbg !602
  %call = tail call noalias ptr @malloc(i64 noundef %div265) #19, !dbg !603
    #dbg_value(ptr %call, !595, !DIExpression(), !600)
  %cmp = icmp eq ptr %call, null, !dbg !604
  br i1 %cmp, label %if.then, label %if.end, !dbg !606

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !607
  %div2 = sdiv i32 %bits, 8, !dbg !609
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %div2, i32 noundef %bits) #20, !dbg !610
  tail call void @exit(i32 noundef 1) #21, !dbg !611
  unreachable, !dbg !611

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %tmpfd, -1, !dbg !612
  %cmp6.not = icmp ult i32 %tmpfd, %fd_limit
  %or.cond = and i1 %cmp4, %cmp6.not, !dbg !614
  br i1 %or.cond, label %if.end10, label %if.then8, !dbg !614

if.then8:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !615
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %tmpfd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !617
  tail call void @exit(i32 noundef 1) #21, !dbg !618
  unreachable, !dbg !618

if.end10:                                         ; preds = %if.end
  %cmp11 = icmp sgt i32 %num, -1, !dbg !619
  %cmp14.not = icmp ult i32 %num, %fd_limit
  %or.cond266 = and i1 %cmp11, %cmp14.not, !dbg !621
  br i1 %or.cond266, label %if.end18, label %if.then16, !dbg !621

if.then16:                                        ; preds = %if.end10
  %2 = load ptr, ptr @stderr, align 8, !dbg !622
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %num, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !624
  tail call void @exit(i32 noundef 1) #21, !dbg !625
  unreachable, !dbg !625

if.end18:                                         ; preds = %if.end10
  %call19 = tail call i32 (ptr, i32, ...) @open(ptr noundef %filename, i32 noundef 0) #22, !dbg !626
    #dbg_value(i32 %call19, !592, !DIExpression(), !600)
  %cmp20 = icmp slt i32 %call19, 0, !dbg !627
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !629

if.then22:                                        ; preds = %if.end18
  %3 = load ptr, ptr @stderr, align 8, !dbg !630
  %call23 = tail call ptr @__errno_location() #24, !dbg !632
  %4 = load i32, ptr %call23, align 4, !dbg !632
  %call24 = tail call ptr @strerror(i32 noundef %4) #22, !dbg !633
  %call25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef %filename, ptr noundef %call24) #20, !dbg !634
  tail call void @exit(i32 noundef 0) #21, !dbg !635
  unreachable, !dbg !635

if.end26:                                         ; preds = %if.end18
  %idxprom = zext nneg i32 %tmpfd to i64, !dbg !636
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !636
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !637
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %len, i8 0, i64 20, i1 false), !dbg !638
  %5 = load ptr, ptr %buf, align 8, !dbg !639
  %call36311 = tail call i64 @read(i32 noundef %call19, ptr noundef %5, i64 noundef 266338304) #22, !dbg !640
  %cmp37312 = icmp sgt i64 %call36311, 0, !dbg !641
  br i1 %cmp37312, label %while.body, label %while.end, !dbg !642

while.body:                                       ; preds = %if.end26, %if.end55
  %call36313 = phi i64 [ %call36, %if.end55 ], [ %call36311, %if.end26 ]
  %6 = load i64, ptr %len, align 8, !dbg !643
  %add = add nsw i64 %6, %call36313, !dbg !643
  store i64 %add, ptr %len, align 8, !dbg !643
  %cmp42 = icmp ult i64 %call36313, 266338304, !dbg !645
  br i1 %cmp42, label %if.end62, label %if.end45, !dbg !647

if.end45:                                         ; preds = %while.body
  %add49 = add nsw i64 %add, 266338304, !dbg !648
  %7 = load i64, ptr %arrayidx, align 8, !dbg !650
  %cmp52 = icmp sgt i64 %add49, %7, !dbg !651
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !652

if.then54:                                        ; preds = %if.end45
  tail call fastcc void @fd_grow(ptr noundef nonnull %fds, i32 noundef %tmpfd, ptr noundef nonnull @.str.9), !dbg !653
  %.pre = load i64, ptr %len, align 8, !dbg !655
  br label %if.end55, !dbg !656

if.end55:                                         ; preds = %if.then54, %if.end45
  %8 = phi i64 [ %.pre, %if.then54 ], [ %add, %if.end45 ], !dbg !655
  %9 = load ptr, ptr %buf, align 8, !dbg !639
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %8, !dbg !657
  %call36 = tail call i64 @read(i32 noundef %call19, ptr noundef %add.ptr, i64 noundef 266338304) #22, !dbg !640
    #dbg_value(i64 %call36, !594, !DIExpression(), !600)
  %cmp37 = icmp sgt i64 %call36, 0, !dbg !641
  br i1 %cmp37, label %while.body, label %while.end, !dbg !642, !llvm.loop !658

while.end:                                        ; preds = %if.end55, %if.end26
  %call36.lcssa = phi i64 [ %call36311, %if.end26 ], [ %call36, %if.end55 ], !dbg !640
  %cmp56 = icmp slt i64 %call36.lcssa, 0, !dbg !660
  br i1 %cmp56, label %if.then58, label %if.end62, !dbg !662

if.then58:                                        ; preds = %while.end
  %10 = load ptr, ptr @stderr, align 8, !dbg !663
  %call59 = tail call ptr @__errno_location() #24, !dbg !665
  %11 = load i32, ptr %call59, align 4, !dbg !665
  %call60 = tail call ptr @strerror(i32 noundef %11) #22, !dbg !666
  %call61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef %filename, ptr noundef %call60) #20, !dbg !667
  tail call void @exit(i32 noundef 1) #21, !dbg !668
  unreachable, !dbg !668

if.end62:                                         ; preds = %while.body, %while.end
  %call63 = tail call i32 @close(i32 noundef %call19) #22, !dbg !669
  %idxprom64 = zext nneg i32 %num to i64, !dbg !670
  %arrayidx65 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom64, !dbg !670
  %len66 = getelementptr inbounds i8, ptr %arrayidx65, i64 8, !dbg !671
  %pos69 = getelementptr inbounds i8, ptr %arrayidx65, i64 16, !dbg !672
    #dbg_value(i32 %tmpfd, !673, !DIExpression(), !681)
    #dbg_value(i32 %num, !678, !DIExpression(), !681)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len66, i8 0, i64 16, i1 false), !dbg !683
  %12 = load ptr, ptr @spec_fd, align 8, !dbg !684
  %open.i = getelementptr inbounds %struct.spec_fd_t, ptr %12, i64 %idxprom, i32 3, !dbg !685
  %13 = load i32, ptr %open.i, align 8, !dbg !685
    #dbg_value(i32 %13, !679, !DIExpression(), !681)
  %open3.i = getelementptr inbounds %struct.spec_fd_t, ptr %12, i64 %idxprom64, i32 3, !dbg !686
  %14 = load i32, ptr %open3.i, align 8, !dbg !686
    #dbg_value(i32 %14, !680, !DIExpression(), !681)
  store i32 1, ptr %open3.i, align 8, !dbg !687
  %15 = load ptr, ptr @spec_fd, align 8, !dbg !688
  %open9.i = getelementptr inbounds %struct.spec_fd_t, ptr %15, i64 %idxprom, i32 3, !dbg !689
  store i32 1, ptr %open9.i, align 8, !dbg !690
  tail call void @uncompressStream(i32 noundef %tmpfd, i32 noundef %num) #22, !dbg !691
  %16 = load ptr, ptr @spec_fd, align 8, !dbg !692
  %open12.i = getelementptr inbounds %struct.spec_fd_t, ptr %16, i64 %idxprom, i32 3, !dbg !693
  store i32 %13, ptr %open12.i, align 8, !dbg !694
  %17 = load ptr, ptr @spec_fd, align 8, !dbg !695
  %open15.i = getelementptr inbounds %struct.spec_fd_t, ptr %17, i64 %idxprom64, i32 3, !dbg !696
  store i32 %14, ptr %open15.i, align 8, !dbg !697
  %18 = load i32, ptr @dbglvl, align 4, !dbg !698
  %cmp70 = icmp sgt i32 %18, 1, !dbg !698
  br i1 %cmp70, label %if.then72, label %if.end81, !dbg !701

if.then72:                                        ; preds = %if.end62
  %19 = load i64, ptr %len, align 8, !dbg !702
  %20 = load i64, ptr %len66, align 8, !dbg !702
  %call79 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i64 noundef %19, i64 noundef %20), !dbg !702
  %21 = load ptr, ptr @stdout, align 8, !dbg !702
  %call80 = tail call i32 @fflush(ptr noundef %21), !dbg !702
  br label %if.end81, !dbg !702

if.end81:                                         ; preds = %if.then72, %if.end62
    #dbg_assign(i1 undef, !513, !DIExpression(), !599, ptr %ctx.i, !DIExpression(), !704)
    #dbg_value(ptr %arrayidx65, !510, !DIExpression(), !704)
    #dbg_value(ptr %call, !511, !DIExpression(), !704)
    #dbg_value(i32 %bits, !512, !DIExpression(), !704)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len, i8 0, i64 16, i1 false), !dbg !706
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %ctx.i) #22, !dbg !707
    #dbg_value(i64 0, !531, !DIExpression(), !704)
    #dbg_value(i64 0, !532, !DIExpression(), !704)
  %cmp.not.i = icmp eq i32 %bits, 512, !dbg !708
  br i1 %cmp.not.i, label %if.then2.i, label %if.then.i, !dbg !709

if.then.i:                                        ; preds = %if.end81
  %22 = load ptr, ptr @stderr, align 8, !dbg !710
  %23 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 40, i64 1, ptr %22) #23, !dbg !711
  tail call void @exit(i32 noundef 1) #21, !dbg !712
  unreachable, !dbg !712

if.then2.i:                                       ; preds = %if.end81
  call void @sha_init(ptr noundef nonnull %ctx.i) #22, !dbg !713
    #dbg_value(i64 2147483647, !532, !DIExpression(), !704)
    #dbg_value(i64 0, !531, !DIExpression(), !704)
  %24 = load i64, ptr %len66, align 8, !dbg !714
  %cmp322.i = icmp sgt i64 %24, 0, !dbg !715
  br i1 %cmp322.i, label %for.body.lr.ph.i, label %spec_mem_sum.exit.thread, !dbg !716

for.body.lr.ph.i:                                 ; preds = %if.then2.i
  %buf.i = getelementptr inbounds i8, ptr %arrayidx65, i64 32
  br label %for.body.i, !dbg !716

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %25 = phi i64 [ %24, %for.body.lr.ph.i ], [ %27, %for.body.i ]
  %chunk.024.i = phi i64 [ 2147483647, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i ]
  %currpos.023.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
    #dbg_value(i64 %chunk.024.i, !532, !DIExpression(), !704)
    #dbg_value(i64 %currpos.023.i, !531, !DIExpression(), !704)
  %sub.i = sub nsw i64 %25, %currpos.023.i, !dbg !717
  %spec.select.i = call i64 @llvm.smin.i64(i64 %sub.i, i64 %chunk.024.i), !dbg !718
    #dbg_value(i64 %spec.select.i, !532, !DIExpression(), !704)
  %26 = load ptr, ptr %buf.i, align 8, !dbg !719
  %add.ptr.i = getelementptr inbounds i8, ptr %26, i64 %currpos.023.i, !dbg !720
  %conv.i = trunc i64 %spec.select.i to i32, !dbg !721
  call void @sha_process(ptr noundef nonnull %ctx.i, ptr noundef %add.ptr.i, i32 noundef %conv.i) #22, !dbg !722
  %add.i = add nsw i64 %spec.select.i, %currpos.023.i, !dbg !723
    #dbg_value(i64 %add.i, !531, !DIExpression(), !704)
  %27 = load i64, ptr %len66, align 8, !dbg !714
  %cmp3.i = icmp slt i64 %add.i, %27, !dbg !715
  br i1 %cmp3.i, label %for.body.i, label %spec_mem_sum.exit, !dbg !716, !llvm.loop !724

spec_mem_sum.exit:                                ; preds = %for.body.i
  call void @sha_done(ptr noundef nonnull %ctx.i, ptr noundef nonnull %call) #22, !dbg !726
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ctx.i) #22, !dbg !727
    #dbg_value(ptr %sum, !728, !DIExpression(), !737)
    #dbg_value(ptr %call, !733, !DIExpression(), !737)
    #dbg_value(i32 %bits, !734, !DIExpression(), !737)
  %cmp.i = icmp eq ptr %sum, null, !dbg !740
  br i1 %cmp.i, label %if.then91, label %for.body.i267.preheader, !dbg !742

spec_mem_sum.exit.thread:                         ; preds = %if.then2.i
  call void @sha_done(ptr noundef nonnull %ctx.i, ptr noundef nonnull %call) #22, !dbg !726
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ctx.i) #22, !dbg !727
    #dbg_value(ptr %sum, !728, !DIExpression(), !737)
    #dbg_value(ptr %call, !733, !DIExpression(), !737)
    #dbg_value(i32 %bits, !734, !DIExpression(), !737)
  %cmp.i301 = icmp eq ptr %sum, null, !dbg !740
  br i1 %cmp.i301, label %if.then91, label %for.body.i267.preheader, !dbg !742

for.body.i267.preheader:                          ; preds = %spec_mem_sum.exit, %spec_mem_sum.exit.thread
  br label %for.body.i267, !dbg !743

for.body.i267:                                    ; preds = %for.inc.i.3, %for.body.i267.preheader
  %indvars.iv.i = phi i64 [ 0, %for.body.i267.preheader ], [ %indvars.iv.next.i.3, %for.inc.i.3 ]
    #dbg_value(i64 %indvars.iv.i, !735, !DIExpression(), !744)
  %arrayidx.i = getelementptr inbounds i8, ptr %sum, i64 %indvars.iv.i, !dbg !745
  %28 = load i8, ptr %arrayidx.i, align 1, !dbg !745
  %arrayidx4.i = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.i, !dbg !749
  %29 = load i8, ptr %arrayidx4.i, align 1, !dbg !749
  %cmp6.not.i = icmp eq i8 %28, %29, !dbg !750
  br i1 %cmp6.not.i, label %for.inc.i, label %if.then8.i, !dbg !751

if.then8.i:                                       ; preds = %for.inc.i.2, %for.inc.i.1, %for.inc.i, %for.body.i267
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %for.body.i267 ], [ %indvars.iv.next.i, %for.inc.i ], [ %indvars.iv.next.i.1, %for.inc.i.1 ], [ %indvars.iv.next.i.2, %for.inc.i.2 ]
  %.lcssa333 = phi i8 [ %28, %for.body.i267 ], [ %32, %for.inc.i ], [ %34, %for.inc.i.1 ], [ %36, %for.inc.i.2 ], !dbg !745
  %.lcssa = phi i8 [ %29, %for.body.i267 ], [ %33, %for.inc.i ], [ %35, %for.inc.i.1 ], [ %37, %for.inc.i.2 ], !dbg !749
  %30 = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  %conv5.i = zext i8 %.lcssa to i32, !dbg !749
  %conv.i268 = zext i8 %.lcssa333 to i32, !dbg !745
  %31 = load ptr, ptr @stderr, align 8, !dbg !752
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.76, i32 noundef %30, i32 noundef %conv.i268, i32 noundef %conv5.i) #20, !dbg !754
  br label %if.then91, !dbg !755

for.inc.i:                                        ; preds = %for.body.i267
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1, !dbg !756
    #dbg_value(i64 %indvars.iv.next.i, !735, !DIExpression(), !744)
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %sum, i64 %indvars.iv.next.i, !dbg !745
  %32 = load i8, ptr %arrayidx.i.1, align 1, !dbg !745
  %arrayidx4.i.1 = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.next.i, !dbg !749
  %33 = load i8, ptr %arrayidx4.i.1, align 1, !dbg !749
  %cmp6.not.i.1 = icmp eq i8 %32, %33, !dbg !750
  br i1 %cmp6.not.i.1, label %for.inc.i.1, label %if.then8.i, !dbg !751

for.inc.i.1:                                      ; preds = %for.inc.i
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2, !dbg !756
    #dbg_value(i64 %indvars.iv.next.i.1, !735, !DIExpression(), !744)
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %sum, i64 %indvars.iv.next.i.1, !dbg !745
  %34 = load i8, ptr %arrayidx.i.2, align 1, !dbg !745
  %arrayidx4.i.2 = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.next.i.1, !dbg !749
  %35 = load i8, ptr %arrayidx4.i.2, align 1, !dbg !749
  %cmp6.not.i.2 = icmp eq i8 %34, %35, !dbg !750
  br i1 %cmp6.not.i.2, label %for.inc.i.2, label %if.then8.i, !dbg !751

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3, !dbg !756
    #dbg_value(i64 %indvars.iv.next.i.2, !735, !DIExpression(), !744)
  %arrayidx.i.3 = getelementptr inbounds i8, ptr %sum, i64 %indvars.iv.next.i.2, !dbg !745
  %36 = load i8, ptr %arrayidx.i.3, align 1, !dbg !745
  %arrayidx4.i.3 = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.next.i.2, !dbg !749
  %37 = load i8, ptr %arrayidx4.i.3, align 1, !dbg !749
  %cmp6.not.i.3 = icmp eq i8 %36, %37, !dbg !750
  br i1 %cmp6.not.i.3, label %for.inc.i.3, label %if.then8.i, !dbg !751

for.inc.i.3:                                      ; preds = %for.inc.i.2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4, !dbg !756
    #dbg_value(i64 %indvars.iv.next.i.3, !735, !DIExpression(), !744)
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 64, !dbg !757
  br i1 %exitcond.not.i.3, label %if.end96, label %for.body.i267, !dbg !743, !llvm.loop !758

if.then91:                                        ; preds = %spec_mem_sum.exit, %if.then8.i, %spec_mem_sum.exit.thread
  %38 = load ptr, ptr @stderr, align 8, !dbg !760
  %call92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.12, i32 noundef 512) #20, !dbg !762
  %39 = load ptr, ptr @stderr, align 8, !dbg !763
  %40 = call i64 @fwrite(ptr nonnull @.str.13, i64 13, i64 1, ptr %39) #23, !dbg !764
  %41 = load ptr, ptr @stderr, align 8, !dbg !765
  call void @print_sum(ptr noundef %41, ptr noundef nonnull %call, i32 noundef 512), !dbg !766
  %42 = load ptr, ptr @stderr, align 8, !dbg !767
  %43 = call i64 @fwrite(ptr nonnull @.str.14, i64 14, i64 1, ptr %42) #23, !dbg !768
  %44 = load ptr, ptr @stderr, align 8, !dbg !769
  call void @print_sum(ptr noundef %44, ptr noundef %sum, i32 noundef 512), !dbg !770
  %45 = load ptr, ptr @stderr, align 8, !dbg !771
  %fputc = call i32 @fputc(i32 10, ptr %45), !dbg !772
  call void @exit(i32 noundef 1) #21, !dbg !773
  unreachable, !dbg !773

if.end96:                                         ; preds = %for.inc.i.3
  %46 = load i32, ptr @dbglvl, align 4, !dbg !774
  %cmp97 = icmp sgt i32 %46, 1, !dbg !774
  br i1 %cmp97, label %if.then99, label %if.end102, !dbg !777

if.then99:                                        ; preds = %if.end96
  %call100 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef 512), !dbg !778
  %47 = load ptr, ptr @stdout, align 8, !dbg !778
  %call101 = call i32 @fflush(ptr noundef %47), !dbg !778
  br label %if.end102, !dbg !778

if.end102:                                        ; preds = %if.then99, %if.end96
  %48 = load i64, ptr %len66, align 8, !dbg !780
  %cmp106 = icmp sgt i64 %48, %size, !dbg !782
  br i1 %cmp106, label %if.then108, label %if.end118, !dbg !783

if.then108:                                       ; preds = %if.end102
  %49 = load i32, ptr @dbglvl, align 4, !dbg !784
  %cmp109 = icmp sgt i32 %49, 1, !dbg !784
  br i1 %cmp109, label %if.then111, label %if.end118.thread, !dbg !788

if.then111:                                       ; preds = %if.then108
  %call112 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i64 noundef %size), !dbg !789
  %50 = load ptr, ptr @stdout, align 8, !dbg !789
  %call113 = call i32 @fflush(ptr noundef %50), !dbg !789
  br label %if.end118.thread, !dbg !789

if.end118.thread:                                 ; preds = %if.then108, %if.then111
  store i64 %size, ptr %len66, align 8, !dbg !791
  store i64 0, ptr %pos69, align 8, !dbg !792
  br label %if.then2.i274, !dbg !793

if.end118:                                        ; preds = %if.end102
  store i64 0, ptr %pos69, align 8, !dbg !792
  %cmp126314 = icmp slt i64 %48, %size, !dbg !794
  br i1 %cmp126314, label %while.body128.lr.ph, label %if.then2.i274, !dbg !793

while.body128.lr.ph:                              ; preds = %if.end118
  %buf150 = getelementptr inbounds i8, ptr %arrayidx65, i64 32
  br label %while.body128, !dbg !793

while.body128:                                    ; preds = %while.body128.lr.ph, %if.end147
  %51 = phi i64 [ %48, %while.body128.lr.ph ], [ %add161, %if.end147 ]
  %sub = sub nsw i64 %size, %51, !dbg !795
    #dbg_value(i64 %sub, !596, !DIExpression(), !796)
  %spec.select = call i64 @llvm.smin.i64(i64 %sub, i64 %51), !dbg !797
    #dbg_value(i64 %spec.select, !596, !DIExpression(), !796)
  %52 = load i32, ptr @dbglvl, align 4, !dbg !798
  %cmp142 = icmp sgt i32 %52, 3, !dbg !798
  br i1 %cmp142, label %if.then144, label %if.end147, !dbg !801

if.then144:                                       ; preds = %while.body128
  %call145 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %spec.select), !dbg !802
  %53 = load ptr, ptr @stdout, align 8, !dbg !802
  %call146 = call i32 @fflush(ptr noundef %53), !dbg !802
  %.pre320 = load i64, ptr %len66, align 8, !dbg !804
  br label %if.end147, !dbg !802

if.end147:                                        ; preds = %if.then144, %while.body128
  %54 = phi i64 [ %.pre320, %if.then144 ], [ %51, %while.body128 ], !dbg !804
  %55 = load ptr, ptr %buf150, align 8, !dbg !805
  %add.ptr154 = getelementptr inbounds i8, ptr %55, i64 %54, !dbg !806
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr154, ptr align 1 %55, i64 %spec.select, i1 false), !dbg !807
  %56 = load i64, ptr %len66, align 8, !dbg !808
  %add161 = add nsw i64 %56, %spec.select, !dbg !808
  store i64 %add161, ptr %len66, align 8, !dbg !808
  %cmp126 = icmp slt i64 %add161, %size, !dbg !794
  br i1 %cmp126, label %while.body128, label %if.then2.i274, !dbg !793, !llvm.loop !809

if.then2.i274:                                    ; preds = %if.end147, %if.end118.thread, %if.end118
    #dbg_assign(i1 undef, !513, !DIExpression(), !598, ptr %ctx.i269, !DIExpression(), !811)
    #dbg_value(ptr %arrayidx65, !510, !DIExpression(), !811)
    #dbg_value(ptr %call, !511, !DIExpression(), !811)
    #dbg_value(i32 %bits, !512, !DIExpression(), !811)
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %ctx.i269) #22, !dbg !813
    #dbg_value(i64 0, !531, !DIExpression(), !811)
    #dbg_value(i64 0, !532, !DIExpression(), !811)
  call void @sha_init(ptr noundef nonnull %ctx.i269) #22, !dbg !814
    #dbg_value(i64 2147483647, !532, !DIExpression(), !811)
  %57 = load i64, ptr %len66, align 8, !dbg !815
  %cmp322.i276 = icmp sgt i64 %57, 0, !dbg !816
  br i1 %cmp322.i276, label %for.body.lr.ph.i278, label %spec_mem_sum.exit289, !dbg !817

for.body.lr.ph.i278:                              ; preds = %if.then2.i274
  %buf.i279 = getelementptr inbounds i8, ptr %arrayidx65, i64 32
  br label %for.body.i280, !dbg !817

for.body.i280:                                    ; preds = %for.body.i280, %for.body.lr.ph.i278
  %58 = phi i64 [ %57, %for.body.lr.ph.i278 ], [ %60, %for.body.i280 ]
  %chunk.024.i281 = phi i64 [ 2147483647, %for.body.lr.ph.i278 ], [ %spec.select.i284, %for.body.i280 ]
  %currpos.023.i282 = phi i64 [ 0, %for.body.lr.ph.i278 ], [ %add.i287, %for.body.i280 ]
    #dbg_value(i64 %chunk.024.i281, !532, !DIExpression(), !811)
    #dbg_value(i64 %currpos.023.i282, !531, !DIExpression(), !811)
  %sub.i283 = sub nsw i64 %58, %currpos.023.i282, !dbg !818
  %spec.select.i284 = call i64 @llvm.smin.i64(i64 %sub.i283, i64 %chunk.024.i281), !dbg !819
    #dbg_value(i64 %spec.select.i284, !532, !DIExpression(), !811)
  %59 = load ptr, ptr %buf.i279, align 8, !dbg !820
  %add.ptr.i285 = getelementptr inbounds i8, ptr %59, i64 %currpos.023.i282, !dbg !821
  %conv.i286 = trunc i64 %spec.select.i284 to i32, !dbg !822
  call void @sha_process(ptr noundef nonnull %ctx.i269, ptr noundef %add.ptr.i285, i32 noundef %conv.i286) #22, !dbg !823
  %add.i287 = add nsw i64 %spec.select.i284, %currpos.023.i282, !dbg !824
    #dbg_value(i64 %add.i287, !531, !DIExpression(), !811)
  %60 = load i64, ptr %len66, align 8, !dbg !815
  %cmp3.i288 = icmp slt i64 %add.i287, %60, !dbg !816
  br i1 %cmp3.i288, label %for.body.i280, label %spec_mem_sum.exit289, !dbg !817, !llvm.loop !825

spec_mem_sum.exit289:                             ; preds = %for.body.i280, %if.then2.i274
  call void @sha_done(ptr noundef nonnull %ctx.i269, ptr noundef nonnull %call) #22, !dbg !827
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ctx.i269) #22, !dbg !828
  %call166 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef 512), !dbg !829
  %61 = load ptr, ptr @stdout, align 8, !dbg !830
    #dbg_value(ptr %61, !831, !DIExpression(), !840)
    #dbg_value(ptr %call, !836, !DIExpression(), !840)
    #dbg_value(i32 %bits, !837, !DIExpression(), !840)
    #dbg_value(i32 0, !838, !DIExpression(), !842)
  br label %for.body.i293, !dbg !843

for.body.i293:                                    ; preds = %for.body.i293, %spec_mem_sum.exit289
  %indvars.iv.i294 = phi i64 [ 0, %spec_mem_sum.exit289 ], [ %indvars.iv.next.i298, %for.body.i293 ]
    #dbg_value(i64 %indvars.iv.i294, !838, !DIExpression(), !842)
  %arrayidx.i295 = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.i294, !dbg !844
  %62 = load i8, ptr %arrayidx.i295, align 1, !dbg !844
  %conv.i296 = zext i8 %62 to i32, !dbg !844
  %call.i297 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.74, i32 noundef %conv.i296) #22, !dbg !847
  %indvars.iv.next.i298 = add nuw nsw i64 %indvars.iv.i294, 1, !dbg !848
    #dbg_value(i64 %indvars.iv.next.i298, !838, !DIExpression(), !842)
  %exitcond.not.i299 = icmp eq i64 %indvars.iv.next.i298, 64, !dbg !849
  br i1 %exitcond.not.i299, label %print_sum.exit, label %for.body.i293, !dbg !843, !llvm.loop !850

print_sum.exit:                                   ; preds = %for.body.i293
  %putchar = call i32 @putchar(i32 10), !dbg !852
  ret ptr %call, !dbg !853
}

; Function Attrs: nofree
declare !dbg !854 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !858 ptr @strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !862 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree
declare !dbg !867 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @fd_grow(ptr noundef %fds, i32 noundef %fd, ptr noundef %funcname) unnamed_addr #0 !dbg !873 {
entry:
    #dbg_value(ptr %fds, !877, !DIExpression(), !880)
    #dbg_value(i32 %fd, !878, !DIExpression(), !880)
    #dbg_value(ptr %funcname, !879, !DIExpression(), !880)
  %idxprom = zext nneg i32 %fd to i64, !dbg !881
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !881
  %0 = load i64, ptr %arrayidx, align 8, !dbg !882
  %mul = shl nsw i64 %0, 1, !dbg !882
  store i64 %mul, ptr %arrayidx, align 8, !dbg !882
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32, !dbg !883
  %1 = load ptr, ptr %buf, align 8, !dbg !883
  %call = tail call ptr @realloc(ptr noundef %1, i64 noundef %mul) #25, !dbg !884
  store ptr %call, ptr %buf, align 8, !dbg !885
  %cmp = icmp eq ptr %call, null, !dbg !886
  br i1 %cmp, label %if.then, label %if.end, !dbg !888

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !dbg !889
  %call12 = tail call ptr @__errno_location() #24, !dbg !891
  %3 = load i32, ptr %call12, align 4, !dbg !891
  %call13 = tail call ptr @strerror(i32 noundef %3) #22, !dbg !892
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.85, ptr noundef %funcname, i32 noundef %fd, ptr noundef nonnull %fds, ptr noundef %call13) #20, !dbg !893
  tail call void @exit(i32 noundef 1) #21, !dbg !894
  unreachable, !dbg !894

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @dbglvl, align 4, !dbg !895
  %cmp15 = icmp sgt i32 %4, 5, !dbg !895
  br i1 %cmp15, label %if.then16, label %if.end22, !dbg !898

if.then16:                                        ; preds = %if.end
  %5 = load i64, ptr %arrayidx, align 8, !dbg !899
  %call20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %5), !dbg !899
  %6 = load ptr, ptr @stdout, align 8, !dbg !899
  %call21 = tail call i32 @fflush(ptr noundef %6), !dbg !899
  br label %if.end22, !dbg !899

if.end22:                                         ; preds = %if.then16, %if.end
  ret void, !dbg !901
}

declare !dbg !902 i32 @close(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @spec_uncompress(i32 noundef %in, i32 noundef %out) local_unnamed_addr #0 !dbg !674 {
entry:
    #dbg_value(i32 %in, !673, !DIExpression(), !905)
    #dbg_value(i32 %out, !678, !DIExpression(), !905)
  %0 = load ptr, ptr @spec_fd, align 8, !dbg !906
  %idxprom = sext i32 %in to i64, !dbg !906
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %idxprom, i32 3, !dbg !907
  %1 = load i32, ptr %open, align 8, !dbg !907
    #dbg_value(i32 %1, !679, !DIExpression(), !905)
  %idxprom1 = sext i32 %out to i64, !dbg !908
  %open3 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %idxprom1, i32 3, !dbg !909
  %2 = load i32, ptr %open3, align 8, !dbg !909
    #dbg_value(i32 %2, !680, !DIExpression(), !905)
  store i32 1, ptr %open3, align 8, !dbg !910
  %3 = load ptr, ptr @spec_fd, align 8, !dbg !911
  %open9 = getelementptr inbounds %struct.spec_fd_t, ptr %3, i64 %idxprom, i32 3, !dbg !912
  store i32 1, ptr %open9, align 8, !dbg !913
  tail call void @uncompressStream(i32 noundef %in, i32 noundef %out) #22, !dbg !914
  %4 = load ptr, ptr @spec_fd, align 8, !dbg !915
  %open12 = getelementptr inbounds %struct.spec_fd_t, ptr %4, i64 %idxprom, i32 3, !dbg !916
  store i32 %1, ptr %open12, align 8, !dbg !917
  %5 = load ptr, ptr @spec_fd, align 8, !dbg !918
  %open15 = getelementptr inbounds %struct.spec_fd_t, ptr %5, i64 %idxprom1, i32 3, !dbg !919
  store i32 %2, ptr %open15, align 8, !dbg !920
  ret void, !dbg !921
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @compare_sum(ptr noundef readonly %ref_sum, ptr noundef readonly %generated, i32 noundef %bits) local_unnamed_addr #10 !dbg !729 {
entry:
    #dbg_value(ptr %ref_sum, !728, !DIExpression(), !922)
    #dbg_value(ptr %generated, !733, !DIExpression(), !922)
    #dbg_value(i32 %bits, !734, !DIExpression(), !922)
  %cmp = icmp eq ptr %ref_sum, null, !dbg !923
  %cmp1 = icmp eq ptr %generated, null
  %or.cond = or i1 %cmp, %cmp1, !dbg !924
  br i1 %or.cond, label %return, label %for.cond.preheader, !dbg !924

for.cond.preheader:                               ; preds = %entry
    #dbg_value(i32 0, !735, !DIExpression(), !925)
  %cmp2.not41 = icmp sgt i32 %bits, 7, !dbg !926
  br i1 %cmp2.not41, label %for.body.preheader, label %return, !dbg !927

for.body.preheader:                               ; preds = %for.cond.preheader
  %div4958 = lshr i32 %bits, 3
  %wide.trip.count = zext nneg i32 %div4958 to i64, !dbg !926
  br label %for.body, !dbg !927

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
    #dbg_value(i64 %indvars.iv, !735, !DIExpression(), !925)
  %arrayidx = getelementptr inbounds i8, ptr %ref_sum, i64 %indvars.iv, !dbg !928
  %0 = load i8, ptr %arrayidx, align 1, !dbg !928
  %arrayidx4 = getelementptr inbounds i8, ptr %generated, i64 %indvars.iv, !dbg !929
  %1 = load i8, ptr %arrayidx4, align 1, !dbg !929
  %cmp6.not = icmp eq i8 %0, %1, !dbg !930
  br i1 %cmp6.not, label %for.inc, label %if.then8, !dbg !931

if.then8:                                         ; preds = %for.body
  %arrayidx.le = getelementptr inbounds i8, ptr %ref_sum, i64 %indvars.iv
  %arrayidx4.le = getelementptr inbounds i8, ptr %generated, i64 %indvars.iv
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  %conv5 = zext i8 %1 to i32, !dbg !929
  %conv = zext i8 %0 to i32, !dbg !928
  %3 = load ptr, ptr @stderr, align 8, !dbg !932
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.76, i32 noundef %2, i32 noundef %conv, i32 noundef %conv5) #20, !dbg !933
  %4 = load i8, ptr %arrayidx.le, align 1, !dbg !934
  %5 = load i8, ptr %arrayidx4.le, align 1, !dbg !935
  %cmp21 = icmp ult i8 %4, %5, !dbg !936
  %cond = select i1 %cmp21, i32 -1, i32 1, !dbg !937
  br label %return, !dbg !938

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !939
    #dbg_value(i64 %indvars.iv.next, !735, !DIExpression(), !925)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !926
  br i1 %exitcond.not, label %return, label %for.body, !dbg !927, !llvm.loop !940

return:                                           ; preds = %for.inc, %for.cond.preheader, %if.then8, %entry
  %retval.1 = phi i32 [ -1, %entry ], [ %cond, %if.then8 ], [ 0, %for.cond.preheader ], [ 0, %for.inc ], !dbg !922
  ret i32 %retval.1, !dbg !942
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_sum(ptr nocapture noundef %out, ptr nocapture noundef readonly %sum, i32 noundef %bits) local_unnamed_addr #10 !dbg !832 {
entry:
    #dbg_value(ptr %out, !831, !DIExpression(), !943)
    #dbg_value(ptr %sum, !836, !DIExpression(), !943)
    #dbg_value(i32 %bits, !837, !DIExpression(), !943)
    #dbg_value(i32 0, !838, !DIExpression(), !944)
    #dbg_value(i32 0, !838, !DIExpression(), !944)
  %cmp3 = icmp sgt i32 %bits, 7, !dbg !945
  br i1 %cmp3, label %for.body.preheader, label %for.cond.cleanup, !dbg !946

for.body.preheader:                               ; preds = %entry
  %div67 = lshr i32 %bits, 3
  %wide.trip.count = zext nneg i32 %div67 to i64, !dbg !945
  br label %for.body, !dbg !946

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void, !dbg !947

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
    #dbg_value(i64 %indvars.iv, !838, !DIExpression(), !944)
  %arrayidx = getelementptr inbounds i8, ptr %sum, i64 %indvars.iv, !dbg !948
  %0 = load i8, ptr %arrayidx, align 1, !dbg !948
  %conv = zext i8 %0 to i32, !dbg !948
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %out, ptr noundef nonnull @.str.74, i32 noundef %conv) #22, !dbg !949
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !950
    #dbg_value(i64 %indvars.iv.next, !838, !DIExpression(), !944)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !945
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !946, !llvm.loop !951
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @spec_mem_read(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size) local_unnamed_addr #0 !dbg !953 {
entry:
    #dbg_value(ptr %fds, !957, !DIExpression(), !963)
    #dbg_value(i32 %fd_limit, !958, !DIExpression(), !963)
    #dbg_value(i32 %fd, !959, !DIExpression(), !963)
    #dbg_value(ptr %buf, !960, !DIExpression(), !963)
    #dbg_value(i64 %size, !961, !DIExpression(), !963)
    #dbg_value(i32 0, !962, !DIExpression(), !963)
  %0 = load i32, ptr @dbglvl, align 4, !dbg !964
  %cmp = icmp sgt i32 %0, 5, !dbg !964
  br i1 %cmp, label %if.then, label %if.end, !dbg !967

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %fd, ptr noundef %fds, ptr noundef %buf, i64 noundef %size), !dbg !968
  %1 = load ptr, ptr @stdout, align 8, !dbg !968
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !968
  br label %if.end, !dbg !968

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1, !dbg !970
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not, !dbg !972
  br i1 %or.cond, label %if.end6, label %if.then4, !dbg !972

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !973
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !975
  tail call void @exit(i32 noundef 1) #21, !dbg !976
  unreachable, !dbg !976

if.end6:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64, !dbg !977
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !977
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24, !dbg !979
  %3 = load i32, ptr %open, align 8, !dbg !979
  %cmp7.not = icmp eq i32 %3, 1, !dbg !980
  br i1 %cmp7.not, label %if.end11, label %if.then8, !dbg !981

if.then8:                                         ; preds = %if.end6
  %4 = load ptr, ptr @stderr, align 8, !dbg !982
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size) #20, !dbg !984
  %call10 = tail call ptr @__errno_location() #24, !dbg !985
  store i32 9, ptr %call10, align 4, !dbg !986
  br label %cleanup, !dbg !987

if.end11:                                         ; preds = %if.end6
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16, !dbg !988
  %5 = load i64, ptr %pos, align 8, !dbg !988
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !990
  %6 = load i64, ptr %len, align 8, !dbg !990
  %cmp16.not = icmp slt i64 %5, %6, !dbg !991
  br i1 %cmp16.not, label %if.end29, label %if.then17, !dbg !992

if.then17:                                        ; preds = %if.end11
  %7 = load i32, ptr @dbglvl, align 4, !dbg !993
  %cmp18 = icmp sgt i32 %7, 4, !dbg !993
  br i1 %cmp18, label %if.then19, label %cleanup, !dbg !997

if.then19:                                        ; preds = %if.then17
  %call26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i64 noundef %5, i64 noundef %6), !dbg !998
  %8 = load ptr, ptr @stdout, align 8, !dbg !998
  %call27 = tail call i32 @fflush(ptr noundef %8), !dbg !998
  br label %cleanup, !dbg !998

if.end29:                                         ; preds = %if.end11
  %add = add nsw i64 %5, %size, !dbg !1000
  %cmp36.not = icmp slt i64 %add, %6, !dbg !1002
  %sub = sub nsw i64 %6, %5, !dbg !1003
  %rc.0.in = select i1 %cmp36.not, i64 %size, i64 %sub, !dbg !1003
    #dbg_value(i64 %rc.0.in, !962, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !963)
  %buf48 = getelementptr inbounds i8, ptr %arrayidx, i64 32, !dbg !1004
  %9 = load ptr, ptr %buf48, align 8, !dbg !1004
  %arrayidx52 = getelementptr inbounds i8, ptr %9, i64 %5, !dbg !1005
  %sext = shl i64 %rc.0.in, 32, !dbg !1006
  %conv53 = ashr exact i64 %sext, 32, !dbg !1006
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %buf, ptr align 1 %arrayidx52, i64 %conv53, i1 false), !dbg !1007
  %10 = load i64, ptr %pos, align 8, !dbg !1008
  %add58 = add nsw i64 %10, %conv53, !dbg !1008
  store i64 %add58, ptr %pos, align 8, !dbg !1008
  %11 = load i32, ptr @dbglvl, align 4, !dbg !1009
  %cmp59 = icmp sgt i32 %11, 5, !dbg !1009
  br i1 %cmp59, label %if.end64, label %cleanup, !dbg !1012

if.end64:                                         ; preds = %if.end29
  %rc.0 = trunc i64 %rc.0.in to i32, !dbg !1013
    #dbg_value(i32 %rc.0, !962, !DIExpression(), !963)
  %call62 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %rc.0), !dbg !1014
  %12 = load ptr, ptr @stdout, align 8, !dbg !1014
  %call63 = tail call i32 @fflush(ptr noundef %12), !dbg !1014
  %.pr = load i32, ptr @dbglvl, align 4, !dbg !1016
  %cmp65 = icmp sgt i32 %.pr, 5, !dbg !1016
  br i1 %cmp65, label %if.then67, label %cleanup, !dbg !1019

if.then67:                                        ; preds = %if.end64
  %13 = load i64, ptr %pos, align 8, !dbg !1020
  %call71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %13), !dbg !1020
  %14 = load ptr, ptr @stdout, align 8, !dbg !1020
  %call72 = tail call i32 @fflush(ptr noundef %14), !dbg !1020
  br label %cleanup, !dbg !1020

cleanup:                                          ; preds = %if.end29, %if.end64, %if.then67, %if.then17, %if.then19, %if.then8
  %retval.0 = phi i64 [ -1, %if.then8 ], [ 0, %if.then19 ], [ 0, %if.then17 ], [ %conv53, %if.then67 ], [ %conv53, %if.end64 ], [ %conv53, %if.end29 ], !dbg !963
  ret i64 %retval.0, !dbg !1022
}

; Function Attrs: nounwind uwtable
define dso_local i64 @spec_mem_fread(ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %buf, i64 noundef %size, i32 noundef %num, i32 noundef %fd) local_unnamed_addr #0 !dbg !1023 {
entry:
    #dbg_value(ptr %fds, !1027, !DIExpression(), !1034)
    #dbg_value(i32 %fd_limit, !1028, !DIExpression(), !1034)
    #dbg_value(ptr %buf, !1029, !DIExpression(), !1034)
    #dbg_value(i64 %size, !1030, !DIExpression(), !1034)
    #dbg_value(i32 %num, !1031, !DIExpression(), !1034)
    #dbg_value(i32 %fd, !1032, !DIExpression(), !1034)
    #dbg_value(i64 0, !1033, !DIExpression(), !1034)
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1035
  %cmp = icmp sgt i32 %0, 5, !dbg !1035
  br i1 %cmp, label %if.then, label %if.end, !dbg !1038

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %buf, i64 noundef %size, i32 noundef %num, i32 noundef %fd), !dbg !1039
  %1 = load ptr, ptr @stdout, align 8, !dbg !1039
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !1039
  br label %if.end, !dbg !1039

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1, !dbg !1041
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not, !dbg !1043
  br i1 %or.cond, label %if.end6, label %if.then4, !dbg !1043

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1044
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1046
  tail call void @exit(i32 noundef 1) #21, !dbg !1047
  unreachable, !dbg !1047

if.end6:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64, !dbg !1048
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !1048
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24, !dbg !1050
  %3 = load i32, ptr %open, align 8, !dbg !1050
  %cmp7.not = icmp eq i32 %3, 1, !dbg !1051
  br i1 %cmp7.not, label %if.end10, label %if.then8, !dbg !1052

if.then8:                                         ; preds = %if.end6
  %4 = load ptr, ptr @stderr, align 8, !dbg !1053
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef %fd, ptr noundef nonnull %fds) #20, !dbg !1055
  tail call void @exit(i32 noundef 1) #21, !dbg !1056
  unreachable, !dbg !1056

if.end10:                                         ; preds = %if.end6
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16, !dbg !1057
  %5 = load i64, ptr %pos, align 8, !dbg !1057
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1059
  %6 = load i64, ptr %len, align 8, !dbg !1059
  %cmp15.not = icmp slt i64 %5, %6, !dbg !1060
  br i1 %cmp15.not, label %if.end22, label %if.then16, !dbg !1061

if.then16:                                        ; preds = %if.end10
  %7 = load i32, ptr @dbglvl, align 4, !dbg !1062
  %cmp17 = icmp sgt i32 %7, 5, !dbg !1062
  br i1 %cmp17, label %if.then18, label %cleanup, !dbg !1066

if.then18:                                        ; preds = %if.then16
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.87), !dbg !1067
  br label %cleanup.sink.split, !dbg !1067

if.end22:                                         ; preds = %if.end10
  %conv = sext i32 %num to i64, !dbg !1069
  %mul = mul nsw i64 %conv, %size, !dbg !1071
  %add = add nsw i64 %5, %mul, !dbg !1072
  %cmp29.not = icmp slt i64 %add, %6, !dbg !1073
  br i1 %cmp29.not, label %if.end39, label %if.then31, !dbg !1074

if.then31:                                        ; preds = %if.end22
  %sub = sub nsw i64 %6, %5, !dbg !1075
  %div = sdiv i64 %sub, %size, !dbg !1077
    #dbg_value(i64 %div, !1033, !DIExpression(), !1034)
  %.pre = mul nsw i64 %div, %size, !dbg !1078
  br label %if.end39, !dbg !1079

if.end39:                                         ; preds = %if.end22, %if.then31
  %mul47.pre-phi = phi i64 [ %mul, %if.end22 ], [ %.pre, %if.then31 ], !dbg !1078
  %rc.0 = phi i64 [ %conv, %if.end22 ], [ %div, %if.then31 ], !dbg !1080
    #dbg_value(i64 %rc.0, !1033, !DIExpression(), !1034)
  %buf42 = getelementptr inbounds i8, ptr %arrayidx, i64 32, !dbg !1081
  %8 = load ptr, ptr %buf42, align 8, !dbg !1081
  %arrayidx46 = getelementptr inbounds i8, ptr %8, i64 %5, !dbg !1082
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %buf, ptr align 1 %arrayidx46, i64 %rc.0, i1 false), !dbg !1083
  %9 = load i64, ptr %pos, align 8, !dbg !1084
  %add51 = add nsw i64 %9, %mul47.pre-phi, !dbg !1084
  store i64 %add51, ptr %pos, align 8, !dbg !1084
  %10 = load i32, ptr @dbglvl, align 4, !dbg !1085
  %cmp52 = icmp sgt i32 %10, 5, !dbg !1085
  br i1 %cmp52, label %if.end58, label %cleanup, !dbg !1088

if.end58:                                         ; preds = %if.end39
  %call56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %mul47.pre-phi), !dbg !1089
  %11 = load ptr, ptr @stdout, align 8, !dbg !1089
  %call57 = tail call i32 @fflush(ptr noundef %11), !dbg !1089
  %.pr = load i32, ptr @dbglvl, align 4, !dbg !1091
  %cmp59 = icmp sgt i32 %.pr, 5, !dbg !1091
  br i1 %cmp59, label %if.then61, label %cleanup, !dbg !1094

if.then61:                                        ; preds = %if.end58
  %12 = load i64, ptr %pos, align 8, !dbg !1095
  %call65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %12), !dbg !1095
  br label %cleanup.sink.split, !dbg !1095

cleanup.sink.split:                               ; preds = %if.then18, %if.then61
  %retval.0.ph = phi i64 [ %rc.0, %if.then61 ], [ 0, %if.then18 ]
  %13 = load ptr, ptr @stdout, align 8, !dbg !1034
  %call66 = tail call i32 @fflush(ptr noundef %13), !dbg !1034
  br label %cleanup, !dbg !1097

cleanup:                                          ; preds = %cleanup.sink.split, %if.end39, %if.end58, %if.then16
  %retval.0 = phi i64 [ 0, %if.then16 ], [ %rc.0, %if.end58 ], [ %rc.0, %if.end39 ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !1034
  ret i64 %retval.0, !dbg !1097
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @spec_mem_getc(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #0 !dbg !1098 {
entry:
    #dbg_value(ptr %fds, !1102, !DIExpression(), !1106)
    #dbg_value(i32 %fd_limit, !1103, !DIExpression(), !1106)
    #dbg_value(i32 %fd, !1104, !DIExpression(), !1106)
    #dbg_value(i32 0, !1105, !DIExpression(), !1106)
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1107
  %cmp = icmp sgt i32 %0, 6, !dbg !1107
  br i1 %cmp, label %if.then, label %if.end, !dbg !1110

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd), !dbg !1111
  %1 = load ptr, ptr @stdout, align 8, !dbg !1111
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !1111
  br label %if.end, !dbg !1111

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1, !dbg !1113
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not, !dbg !1115
  br i1 %or.cond, label %if.end6, label %if.then4, !dbg !1115

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1116
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.33, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1118
  tail call void @exit(i32 noundef 1) #21, !dbg !1119
  unreachable, !dbg !1119

if.end6:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64, !dbg !1120
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !1120
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24, !dbg !1122
  %3 = load i32, ptr %open, align 8, !dbg !1122
  %cmp7.not = icmp eq i32 %3, 1, !dbg !1123
  br i1 %cmp7.not, label %if.end10, label %if.then8, !dbg !1124

if.then8:                                         ; preds = %if.end6
  %4 = load ptr, ptr @stderr, align 8, !dbg !1125
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.34, i32 noundef %fd, ptr noundef nonnull %fds) #20, !dbg !1127
  tail call void @exit(i32 noundef 1) #21, !dbg !1128
  unreachable, !dbg !1128

if.end10:                                         ; preds = %if.end6
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16, !dbg !1129
  %5 = load i64, ptr %pos, align 8, !dbg !1129
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1131
  %6 = load i64, ptr %len, align 8, !dbg !1131
  %cmp15.not = icmp slt i64 %5, %6, !dbg !1132
  br i1 %cmp15.not, label %if.end22, label %if.then16, !dbg !1133

if.then16:                                        ; preds = %if.end10
  %7 = load i32, ptr @dbglvl, align 4, !dbg !1134
  %cmp17 = icmp sgt i32 %7, 6, !dbg !1134
  br i1 %cmp17, label %if.then18, label %cleanup, !dbg !1138

if.then18:                                        ; preds = %if.then16
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.87), !dbg !1139
  br label %cleanup.sink.split, !dbg !1139

if.end22:                                         ; preds = %if.end10
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32, !dbg !1141
  %8 = load ptr, ptr %buf, align 8, !dbg !1141
  %inc = add nsw i64 %5, 1, !dbg !1142
  store i64 %inc, ptr %pos, align 8, !dbg !1142
  %arrayidx28 = getelementptr inbounds i8, ptr %8, i64 %5, !dbg !1143
  %9 = load i8, ptr %arrayidx28, align 1, !dbg !1143
  %conv = zext i8 %9 to i32, !dbg !1143
    #dbg_value(i32 %conv, !1105, !DIExpression(), !1106)
  %10 = load i32, ptr @dbglvl, align 4, !dbg !1144
  %cmp29 = icmp sgt i32 %10, 6, !dbg !1144
  br i1 %cmp29, label %if.then31, label %if.end34, !dbg !1147

if.then31:                                        ; preds = %if.end22
  %call32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %conv), !dbg !1148
  %11 = load ptr, ptr @stdout, align 8, !dbg !1148
  %call33 = tail call i32 @fflush(ptr noundef %11), !dbg !1148
  %.pr = load i32, ptr @dbglvl, align 4, !dbg !1150
  br label %if.end34, !dbg !1148

if.end34:                                         ; preds = %if.then31, %if.end22
  %12 = phi i32 [ %.pr, %if.then31 ], [ %10, %if.end22 ], !dbg !1150
  %cmp35 = icmp sgt i32 %12, 5, !dbg !1150
  br i1 %cmp35, label %if.then37, label %cleanup, !dbg !1153

if.then37:                                        ; preds = %if.end34
  %13 = load i64, ptr %pos, align 8, !dbg !1154
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %13), !dbg !1154
  br label %cleanup.sink.split, !dbg !1154

cleanup.sink.split:                               ; preds = %if.then18, %if.then37
  %retval.0.ph = phi i32 [ %conv, %if.then37 ], [ -1, %if.then18 ]
  %14 = load ptr, ptr @stdout, align 8, !dbg !1106
  %call42 = tail call i32 @fflush(ptr noundef %14), !dbg !1106
  br label %cleanup, !dbg !1156

cleanup:                                          ; preds = %cleanup.sink.split, %if.end34, %if.then16
  %retval.0 = phi i32 [ -1, %if.then16 ], [ %conv, %if.end34 ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !1106
  ret i32 %retval.0, !dbg !1156
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 256) i32 @spec_mem_ungetc(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef returned %ch, i32 noundef %fd) local_unnamed_addr #0 !dbg !1157 {
entry:
    #dbg_value(ptr %fds, !1161, !DIExpression(), !1166)
    #dbg_value(i32 %fd_limit, !1162, !DIExpression(), !1166)
    #dbg_value(i32 %ch, !1163, !DIExpression(), !1166)
    #dbg_value(i32 %fd, !1164, !DIExpression(), !1166)
    #dbg_value(i32 0, !1165, !DIExpression(), !1166)
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1167
  %cmp = icmp sgt i32 %0, 6, !dbg !1167
  br i1 %cmp, label %if.then, label %if.end, !dbg !1170

if.then:                                          ; preds = %entry
  %conv1 = and i32 %ch, 255, !dbg !1171
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %conv1, i32 noundef %fd), !dbg !1171
  %1 = load ptr, ptr @stdout, align 8, !dbg !1171
  %call2 = tail call i32 @fflush(ptr noundef %1), !dbg !1171
  br label %if.end, !dbg !1171

if.end:                                           ; preds = %if.then, %entry
  %cmp3 = icmp sgt i32 %fd, -1, !dbg !1173
  %cmp5.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp3, %cmp5.not, !dbg !1175
  br i1 %or.cond, label %if.end9, label %if.then7, !dbg !1175

if.then7:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1176
  %call8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1178
  tail call void @exit(i32 noundef 1) #21, !dbg !1179
  unreachable, !dbg !1179

if.end9:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64, !dbg !1180
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !1180
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24, !dbg !1182
  %3 = load i32, ptr %open, align 8, !dbg !1182
  %cmp10.not = icmp eq i32 %3, 1, !dbg !1183
  br i1 %cmp10.not, label %if.end14, label %if.then12, !dbg !1184

if.then12:                                        ; preds = %if.end9
  %4 = load ptr, ptr @stderr, align 8, !dbg !1185
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.38, i32 noundef %fd, ptr noundef nonnull %fds) #20, !dbg !1187
  tail call void @exit(i32 noundef 1) #21, !dbg !1188
  unreachable, !dbg !1188

if.end14:                                         ; preds = %if.end9
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16, !dbg !1189
  %5 = load i64, ptr %pos, align 8, !dbg !1189
  %cmp17 = icmp slt i64 %5, 1, !dbg !1191
  br i1 %cmp17, label %if.then19, label %if.end24, !dbg !1192

if.then19:                                        ; preds = %if.end14
  %6 = load ptr, ptr @stderr, align 8, !dbg !1193
  %call23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.39, i64 noundef %5) #20, !dbg !1195
  tail call void @exit(i32 noundef 1) #21, !dbg !1196
  unreachable, !dbg !1196

if.end24:                                         ; preds = %if.end14
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32, !dbg !1197
  %7 = load ptr, ptr %buf, align 8, !dbg !1197
  %dec = add nsw i64 %5, -1, !dbg !1199
  store i64 %dec, ptr %pos, align 8, !dbg !1199
  %arrayidx30 = getelementptr inbounds i8, ptr %7, i64 %dec, !dbg !1200
  %8 = load i8, ptr %arrayidx30, align 1, !dbg !1200
  %conv31 = zext i8 %8 to i32, !dbg !1200
  %cmp32.not = icmp eq i32 %conv31, %ch, !dbg !1201
  br i1 %cmp32.not, label %if.end36, label %if.then34, !dbg !1202

if.then34:                                        ; preds = %if.end24
  %9 = load ptr, ptr @stderr, align 8, !dbg !1203
  %10 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 75, i64 1, ptr %9) #23, !dbg !1205
  tail call void @exit(i32 noundef 1) #21, !dbg !1206
  unreachable, !dbg !1206

if.end36:                                         ; preds = %if.end24
  %11 = load i32, ptr @dbglvl, align 4, !dbg !1207
  %cmp37 = icmp sgt i32 %11, 6, !dbg !1207
  br i1 %cmp37, label %if.then39, label %if.end42, !dbg !1210

if.then39:                                        ; preds = %if.end36
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef 0), !dbg !1211
  %12 = load ptr, ptr @stdout, align 8, !dbg !1211
  %call41 = tail call i32 @fflush(ptr noundef %12), !dbg !1211
  %.pr = load i32, ptr @dbglvl, align 4, !dbg !1213
  br label %if.end42, !dbg !1211

if.end42:                                         ; preds = %if.then39, %if.end36
  %13 = phi i32 [ %.pr, %if.then39 ], [ %11, %if.end36 ], !dbg !1213
  %cmp43 = icmp sgt i32 %13, 5, !dbg !1213
  br i1 %cmp43, label %if.then45, label %if.end51, !dbg !1216

if.then45:                                        ; preds = %if.end42
  %14 = load i64, ptr %pos, align 8, !dbg !1217
  %call49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %14), !dbg !1217
  %15 = load ptr, ptr @stdout, align 8, !dbg !1217
  %call50 = tail call i32 @fflush(ptr noundef %15), !dbg !1217
  br label %if.end51, !dbg !1217

if.end51:                                         ; preds = %if.then45, %if.end42
  ret i32 %ch, !dbg !1219
}

; Function Attrs: nounwind uwtable
define dso_local i64 @spec_mem_lseek(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef %offset, i32 noundef %whence) local_unnamed_addr #0 !dbg !1220 {
entry:
    #dbg_value(ptr %fds, !1224, !DIExpression(), !1230)
    #dbg_value(i32 %fd_limit, !1225, !DIExpression(), !1230)
    #dbg_value(i32 %fd, !1226, !DIExpression(), !1230)
    #dbg_value(i64 %offset, !1227, !DIExpression(), !1230)
    #dbg_value(i32 %whence, !1228, !DIExpression(), !1230)
    #dbg_value(i64 -1, !1229, !DIExpression(), !1230)
  %cmp = icmp sgt i32 %fd, -1, !dbg !1231
  %cmp1.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp, %cmp1.not, !dbg !1233
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1233

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !1234
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1236
  tail call void @exit(i32 noundef 1) #21, !dbg !1237
  unreachable, !dbg !1237

if.end:                                           ; preds = %entry
  %idxprom = zext nneg i32 %fd to i64, !dbg !1238
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !1238
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24, !dbg !1240
  %1 = load i32, ptr %open, align 8, !dbg !1240
  %cmp2.not = icmp eq i32 %1, 1, !dbg !1241
  br i1 %cmp2.not, label %if.end6, label %if.then3, !dbg !1242

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1243
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.43, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef %offset, i32 noundef %whence) #20, !dbg !1245
  %call5 = tail call ptr @__errno_location() #24, !dbg !1246
  store i32 9, ptr %call5, align 4, !dbg !1247
  br label %cleanup, !dbg !1248

if.end6:                                          ; preds = %if.end
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16, !dbg !1249
  %3 = load i64, ptr %pos, align 8, !dbg !1249
    #dbg_value(i64 %3, !1229, !DIExpression(), !1230)
  %4 = load i32, ptr @dbglvl, align 4, !dbg !1250
  %cmp9 = icmp sgt i32 %4, 4, !dbg !1250
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !1253

if.then10:                                        ; preds = %if.end6
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef %offset, i32 noundef %whence, i64 noundef %3), !dbg !1254
  %5 = load ptr, ptr @stdout, align 8, !dbg !1254
  %call12 = tail call i32 @fflush(ptr noundef %5), !dbg !1254
  br label %if.end13, !dbg !1254

if.end13:                                         ; preds = %if.then10, %if.end6
  switch i32 %whence, label %if.else33 [
    i32 0, label %if.end45
    i32 1, label %if.end45.sink.split
    i32 2, label %if.then26
  ], !dbg !1256

if.then26:                                        ; preds = %if.end13
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1257
  br label %if.end45.sink.split

if.else33:                                        ; preds = %if.end13
  %6 = load i32, ptr @dbglvl, align 4, !dbg !1261
  %cmp34 = icmp sgt i32 %6, 4, !dbg !1261
  br i1 %cmp34, label %if.then35, label %if.end41, !dbg !1265

if.then35:                                        ; preds = %if.else33
  %7 = load i64, ptr %pos, align 8, !dbg !1266
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i64 noundef %7), !dbg !1266
  %8 = load ptr, ptr @stdout, align 8, !dbg !1266
  %call40 = tail call i32 @fflush(ptr noundef %8), !dbg !1266
  br label %if.end41, !dbg !1266

if.end41:                                         ; preds = %if.then35, %if.else33
  %call42 = tail call ptr @__errno_location() #24, !dbg !1268
  store i32 22, ptr %call42, align 4, !dbg !1269
  br label %cleanup, !dbg !1270

if.end45.sink.split:                              ; preds = %if.end13, %if.then26
  %pos.sink = phi ptr [ %len, %if.then26 ], [ %pos, %if.end13 ]
  %9 = load i64, ptr %pos.sink, align 8, !dbg !1271
  %add = add nsw i64 %9, %offset, !dbg !1271
  br label %if.end45, !dbg !1272

if.end45:                                         ; preds = %if.end45.sink.split, %if.end13
  %add.sink = phi i64 [ %offset, %if.end13 ], [ %add, %if.end45.sink.split ]
  store i64 %add.sink, ptr %pos, align 8, !dbg !1272
  %cmp49 = icmp slt i64 %add.sink, 0, !dbg !1273
  %10 = load i32, ptr @dbglvl, align 4, !dbg !1230
  %cmp51 = icmp sgt i32 %10, 4, !dbg !1230
  br i1 %cmp49, label %if.then50, label %if.end63, !dbg !1275

if.then50:                                        ; preds = %if.end45
  br i1 %cmp51, label %if.then52, label %if.end58, !dbg !1276

if.then52:                                        ; preds = %if.then50
  %call56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i64 noundef %3, i64 noundef %add.sink), !dbg !1279
  %11 = load ptr, ptr @stdout, align 8, !dbg !1279
  %call57 = tail call i32 @fflush(ptr noundef %11), !dbg !1279
  br label %if.end58, !dbg !1279

if.end58:                                         ; preds = %if.then52, %if.then50
  store i64 %3, ptr %pos, align 8, !dbg !1282
  %call62 = tail call ptr @__errno_location() #24, !dbg !1283
  store i32 22, ptr %call62, align 4, !dbg !1284
  br label %cleanup, !dbg !1285

if.end63:                                         ; preds = %if.end45
  br i1 %cmp51, label %if.then65, label %cleanup, !dbg !1286

if.then65:                                        ; preds = %if.end63
  %call69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i64 noundef %add.sink), !dbg !1288
  %12 = load ptr, ptr @stdout, align 8, !dbg !1288
  %call70 = tail call i32 @fflush(ptr noundef %12), !dbg !1288
  %.pre = load i64, ptr %pos, align 8, !dbg !1291
  br label %cleanup, !dbg !1288

cleanup:                                          ; preds = %if.end63, %if.then65, %if.end58, %if.end41, %if.then3
  %retval.0 = phi i64 [ -1, %if.then3 ], [ -1, %if.end58 ], [ -1, %if.end41 ], [ %.pre, %if.then65 ], [ %add.sink, %if.end63 ], !dbg !1230
  ret i64 %retval.0, !dbg !1292
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @spec_mem_rewind(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #0 !dbg !1293 {
entry:
    #dbg_value(ptr %fds, !1295, !DIExpression(), !1298)
    #dbg_value(i32 %fd_limit, !1296, !DIExpression(), !1298)
    #dbg_value(i32 %fd, !1297, !DIExpression(), !1298)
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1299
  %cmp = icmp sgt i32 %0, 4, !dbg !1299
  br i1 %cmp, label %if.then, label %if.end, !dbg !1302

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd), !dbg !1303
  %1 = load ptr, ptr @stdout, align 8, !dbg !1303
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !1303
  br label %if.end, !dbg !1303

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call i64 @spec_mem_lseek(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef 0, i32 noundef 0), !dbg !1305
  ret i32 0, !dbg !1306
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @spec_mem_reset(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #10 !dbg !1307 {
entry:
    #dbg_value(ptr %fds, !1309, !DIExpression(), !1312)
    #dbg_value(i32 %fd_limit, !1310, !DIExpression(), !1312)
    #dbg_value(i32 %fd, !1311, !DIExpression(), !1312)
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1313
  %cmp = icmp sgt i32 %0, 4, !dbg !1313
  br i1 %cmp, label %if.then, label %if.end, !dbg !1316

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd), !dbg !1317
  %1 = load ptr, ptr @stdout, align 8, !dbg !1317
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !1317
  br label %if.end, !dbg !1317

if.end:                                           ; preds = %if.then, %entry
  %idxprom = sext i32 %fd to i64, !dbg !1319
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !1319
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32, !dbg !1320
  %2 = load ptr, ptr %buf, align 8, !dbg !1320
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1321
  %3 = load i64, ptr %len, align 8, !dbg !1321
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %3, i1 false), !dbg !1322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len, i8 0, i64 16, i1 false), !dbg !1323
  %4 = load i32, ptr @dbglvl, align 4, !dbg !1324
  %cmp9 = icmp sgt i32 %4, 5, !dbg !1324
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !1327

if.then10:                                        ; preds = %if.end
  %call14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef 0), !dbg !1328
  %5 = load ptr, ptr @stdout, align 8, !dbg !1328
  %call15 = tail call i32 @fflush(ptr noundef %5), !dbg !1328
  br label %if.end16, !dbg !1328

if.end16:                                         ; preds = %if.then10, %if.end
  ret i32 0, !dbg !1330
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @spec_mem_get_length(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #10 !dbg !1331 {
entry:
    #dbg_value(ptr %fds, !1335, !DIExpression(), !1338)
    #dbg_value(i32 %fd_limit, !1336, !DIExpression(), !1338)
    #dbg_value(i32 %fd, !1337, !DIExpression(), !1338)
  %idxprom = sext i32 %fd to i64, !dbg !1339
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !1339
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24, !dbg !1341
  %0 = load i32, ptr %open, align 8, !dbg !1341
  %cmp.not = icmp eq i32 %0, 1, !dbg !1342
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1343

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !1344
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.51, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd) #20, !dbg !1346
  br label %return, !dbg !1347

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @dbglvl, align 4, !dbg !1348
  %cmp1 = icmp sgt i32 %2, 4, !dbg !1348
  br i1 %cmp1, label %if.then2, label %if.end7, !dbg !1351

if.then2:                                         ; preds = %if.end
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1352
  %3 = load i64, ptr %len, align 8, !dbg !1352
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef %3), !dbg !1352
  %4 = load ptr, ptr @stdout, align 8, !dbg !1352
  %call6 = tail call i32 @fflush(ptr noundef %4), !dbg !1352
  br label %if.end7, !dbg !1352

if.end7:                                          ; preds = %if.then2, %if.end
  %len10 = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1354
  %5 = load i64, ptr %len10, align 8, !dbg !1354
  br label %return, !dbg !1355

return:                                           ; preds = %if.end7, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ %5, %if.end7 ], !dbg !1338
  ret i64 %retval.0, !dbg !1356
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @spec_mem_fopen(ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %filename, ptr noundef %mode) local_unnamed_addr #0 !dbg !1357 {
entry:
    #dbg_value(ptr %fds, !1361, !DIExpression(), !1366)
    #dbg_value(i32 %fd_limit, !1362, !DIExpression(), !1366)
    #dbg_value(ptr %filename, !1363, !DIExpression(), !1366)
    #dbg_value(ptr %mode, !1364, !DIExpression(), !1366)
  %call = tail call i64 @strtol(ptr nocapture noundef %filename, ptr noundef null, i32 noundef 10) #22, !dbg !1367
  %conv = trunc i64 %call to i32, !dbg !1368
    #dbg_value(i32 %conv, !1365, !DIExpression(), !1366)
  %cmp = icmp sgt i32 %conv, -1, !dbg !1369
  %cmp2.not = icmp ult i32 %conv, %fd_limit
  %or.cond = and i1 %cmp, %cmp2.not, !dbg !1371
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1371

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @__errno_location() #24, !dbg !1372
  store i32 2, ptr %call4, align 4, !dbg !1374
  br label %cleanup, !dbg !1375

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1376
  %cmp5 = icmp sgt i32 %0, 4, !dbg !1376
  br i1 %cmp5, label %if.then7, label %if.end10, !dbg !1379

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %filename, ptr noundef %mode, i32 noundef %conv), !dbg !1380
  %1 = load ptr, ptr @stdout, align 8, !dbg !1380
  %call9 = tail call i32 @fflush(ptr noundef %1), !dbg !1380
  br label %if.end10, !dbg !1380

if.end10:                                         ; preds = %if.then7, %if.end
  %idxprom = and i64 %call, 2147483647, !dbg !1382
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !1382
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24, !dbg !1383
  store i32 1, ptr %open, align 8, !dbg !1384
  %2 = load i8, ptr %mode, align 1, !dbg !1385
  switch i8 %2, label %cleanup [
    i8 119, label %if.then15
    i8 114, label %if.then31
  ], !dbg !1387

if.then15:                                        ; preds = %if.end10
  %arrayidx16 = getelementptr inbounds i8, ptr %mode, i64 1, !dbg !1388
  %3 = load i8, ptr %arrayidx16, align 1, !dbg !1388
  %cmp18 = icmp eq i8 %3, 43, !dbg !1391
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !1392

if.then20:                                        ; preds = %if.then15
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16, !dbg !1393
  %4 = load i64, ptr %pos, align 8, !dbg !1393
  %call23 = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef %4, i32 noundef 0), !dbg !1394
  br label %cleanup, !dbg !1394

if.else:                                          ; preds = %if.then15
    #dbg_value(ptr %fds, !1309, !DIExpression(), !1395)
    #dbg_value(i32 %fd_limit, !1310, !DIExpression(), !1395)
    #dbg_value(i32 %conv, !1311, !DIExpression(), !1395)
  %5 = load i32, ptr @dbglvl, align 4, !dbg !1397
  %cmp.i = icmp sgt i32 %5, 4, !dbg !1397
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1398

if.then.i:                                        ; preds = %if.else
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv), !dbg !1399
  %6 = load ptr, ptr @stdout, align 8, !dbg !1399
  %call1.i = tail call i32 @fflush(ptr noundef %6), !dbg !1399
  br label %if.end.i, !dbg !1399

if.end.i:                                         ; preds = %if.then.i, %if.else
  %buf.i = getelementptr inbounds i8, ptr %arrayidx, i64 32, !dbg !1400
  %7 = load ptr, ptr %buf.i, align 8, !dbg !1400
  %len.i = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1401
  %8 = load i64, ptr %len.i, align 8, !dbg !1401
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %8, i1 false), !dbg !1402
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len.i, i8 0, i64 16, i1 false), !dbg !1403
  %9 = load i32, ptr @dbglvl, align 4, !dbg !1404
  %cmp9.i = icmp sgt i32 %9, 5, !dbg !1404
  br i1 %cmp9.i, label %if.then10.i, label %cleanup, !dbg !1405

if.then10.i:                                      ; preds = %if.end.i
  %call14.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %conv, ptr noundef nonnull %fds, i64 noundef 0), !dbg !1406
  %10 = load ptr, ptr @stdout, align 8, !dbg !1406
  %call15.i = tail call i32 @fflush(ptr noundef %10), !dbg !1406
  br label %cleanup, !dbg !1406

if.then31:                                        ; preds = %if.end10
    #dbg_value(ptr %fds, !1295, !DIExpression(), !1407)
    #dbg_value(i32 %fd_limit, !1296, !DIExpression(), !1407)
    #dbg_value(i32 %conv, !1297, !DIExpression(), !1407)
  %11 = load i32, ptr @dbglvl, align 4, !dbg !1410
  %cmp.i56 = icmp sgt i32 %11, 4, !dbg !1410
  br i1 %cmp.i56, label %if.then.i58, label %spec_mem_rewind.exit, !dbg !1411

if.then.i58:                                      ; preds = %if.then31
  %call.i59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv), !dbg !1412
  %12 = load ptr, ptr @stdout, align 8, !dbg !1412
  %call1.i60 = tail call i32 @fflush(ptr noundef %12), !dbg !1412
  br label %spec_mem_rewind.exit, !dbg !1412

spec_mem_rewind.exit:                             ; preds = %if.then31, %if.then.i58
  %call2.i = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef 0, i32 noundef 0), !dbg !1413
  br label %cleanup, !dbg !1414

cleanup:                                          ; preds = %if.then10.i, %if.end.i, %if.then20, %spec_mem_rewind.exit, %if.end10, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %conv, %if.end10 ], [ %conv, %spec_mem_rewind.exit ], [ %conv, %if.then20 ], [ %conv, %if.end.i ], [ %conv, %if.then10.i ], !dbg !1366
  ret i32 %retval.0, !dbg !1415
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !1416 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @spec_mem_open(ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %filename, i32 noundef %mode) local_unnamed_addr #0 !dbg !1420 {
entry:
    #dbg_value(ptr %fds, !1424, !DIExpression(), !1429)
    #dbg_value(i32 %fd_limit, !1425, !DIExpression(), !1429)
    #dbg_value(ptr %filename, !1426, !DIExpression(), !1429)
    #dbg_value(i32 %mode, !1427, !DIExpression(), !1429)
  %call = tail call i64 @strtol(ptr nocapture noundef %filename, ptr noundef null, i32 noundef 10) #22, !dbg !1430
  %conv = trunc i64 %call to i32, !dbg !1431
    #dbg_value(i32 %conv, !1428, !DIExpression(), !1429)
  %cmp = icmp sgt i32 %conv, -1, !dbg !1432
  %cmp2.not = icmp ult i32 %conv, %fd_limit
  %or.cond = and i1 %cmp, %cmp2.not, !dbg !1434
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1434

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @__errno_location() #24, !dbg !1435
  store i32 2, ptr %call4, align 4, !dbg !1437
  br label %cleanup, !dbg !1438

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1439
  %cmp5 = icmp sgt i32 %0, 4, !dbg !1439
  br i1 %cmp5, label %if.then7, label %if.end10, !dbg !1442

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %filename, i32 noundef %mode, i32 noundef %conv), !dbg !1443
  %1 = load ptr, ptr @stdout, align 8, !dbg !1443
  %call9 = tail call i32 @fflush(ptr noundef %1), !dbg !1443
  br label %if.end10, !dbg !1443

if.end10:                                         ; preds = %if.then7, %if.end
  %idxprom = and i64 %call, 2147483647, !dbg !1445
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !1445
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24, !dbg !1446
  store i32 1, ptr %open, align 8, !dbg !1447
  %2 = and i32 %mode, 3, !dbg !1448
  %or.cond56 = icmp eq i32 %2, 0, !dbg !1448
  br i1 %or.cond56, label %if.else28, label %if.then14, !dbg !1448

if.then14:                                        ; preds = %if.end10
  %and15 = and i32 %mode, 512, !dbg !1450
  %tobool16.not = icmp eq i32 %and15, 0, !dbg !1450
  br i1 %tobool16.not, label %if.end19, label %if.then17, !dbg !1453

if.then17:                                        ; preds = %if.then14
    #dbg_value(ptr %fds, !1309, !DIExpression(), !1454)
    #dbg_value(i32 %fd_limit, !1310, !DIExpression(), !1454)
    #dbg_value(i32 %conv, !1311, !DIExpression(), !1454)
  %3 = load i32, ptr @dbglvl, align 4, !dbg !1456
  %cmp.i = icmp sgt i32 %3, 4, !dbg !1456
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1457

if.then.i:                                        ; preds = %if.then17
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv), !dbg !1458
  %4 = load ptr, ptr @stdout, align 8, !dbg !1458
  %call1.i = tail call i32 @fflush(ptr noundef %4), !dbg !1458
  br label %if.end.i, !dbg !1458

if.end.i:                                         ; preds = %if.then.i, %if.then17
  %buf.i = getelementptr inbounds i8, ptr %arrayidx, i64 32, !dbg !1459
  %5 = load ptr, ptr %buf.i, align 8, !dbg !1459
  %len.i = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1460
  %6 = load i64, ptr %len.i, align 8, !dbg !1460
  tail call void @llvm.memset.p0.i64(ptr align 1 %5, i8 0, i64 %6, i1 false), !dbg !1461
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len.i, i8 0, i64 16, i1 false), !dbg !1462
  %7 = load i32, ptr @dbglvl, align 4, !dbg !1463
  %cmp9.i = icmp sgt i32 %7, 5, !dbg !1463
  br i1 %cmp9.i, label %if.then10.i, label %if.end19, !dbg !1464

if.then10.i:                                      ; preds = %if.end.i
  %call14.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %conv, ptr noundef nonnull %fds, i64 noundef 0), !dbg !1465
  %8 = load ptr, ptr @stdout, align 8, !dbg !1465
  %call15.i = tail call i32 @fflush(ptr noundef %8), !dbg !1465
  br label %if.end19, !dbg !1465

if.end19:                                         ; preds = %if.then10.i, %if.end.i, %if.then14
  %and20 = and i32 %mode, 1024, !dbg !1466
  %tobool21.not = icmp eq i32 %and20, 0, !dbg !1466
  br i1 %tobool21.not, label %if.else, label %if.then22, !dbg !1468

if.then22:                                        ; preds = %if.end19
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16, !dbg !1469
  %9 = load i64, ptr %pos, align 8, !dbg !1469
  %call25 = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef %9, i32 noundef 0), !dbg !1470
  br label %cleanup, !dbg !1470

if.else:                                          ; preds = %if.end19
    #dbg_value(ptr %fds, !1295, !DIExpression(), !1471)
    #dbg_value(i32 %fd_limit, !1296, !DIExpression(), !1471)
    #dbg_value(i32 %conv, !1297, !DIExpression(), !1471)
  %10 = load i32, ptr @dbglvl, align 4, !dbg !1473
  %cmp.i57 = icmp sgt i32 %10, 4, !dbg !1473
  br i1 %cmp.i57, label %if.then.i59, label %spec_mem_rewind.exit, !dbg !1474

if.then.i59:                                      ; preds = %if.else
  %call.i60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv), !dbg !1475
  %11 = load ptr, ptr @stdout, align 8, !dbg !1475
  %call1.i61 = tail call i32 @fflush(ptr noundef %11), !dbg !1475
  br label %spec_mem_rewind.exit, !dbg !1475

spec_mem_rewind.exit:                             ; preds = %if.else, %if.then.i59
  %call2.i = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef 0, i32 noundef 0), !dbg !1476
  br label %cleanup

if.else28:                                        ; preds = %if.end10
    #dbg_value(ptr %fds, !1295, !DIExpression(), !1477)
    #dbg_value(i32 %fd_limit, !1296, !DIExpression(), !1477)
    #dbg_value(i32 %conv, !1297, !DIExpression(), !1477)
  %12 = load i32, ptr @dbglvl, align 4, !dbg !1479
  %cmp.i62 = icmp sgt i32 %12, 4, !dbg !1479
  br i1 %cmp.i62, label %if.then.i65, label %spec_mem_rewind.exit68, !dbg !1480

if.then.i65:                                      ; preds = %if.else28
  %call.i66 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv), !dbg !1481
  %13 = load ptr, ptr @stdout, align 8, !dbg !1481
  %call1.i67 = tail call i32 @fflush(ptr noundef %13), !dbg !1481
  br label %spec_mem_rewind.exit68, !dbg !1481

spec_mem_rewind.exit68:                           ; preds = %if.else28, %if.then.i65
  %call2.i64 = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef 0, i32 noundef 0), !dbg !1482
  br label %cleanup

cleanup:                                          ; preds = %spec_mem_rewind.exit68, %spec_mem_rewind.exit, %if.then22, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %conv, %if.then22 ], [ %conv, %spec_mem_rewind.exit ], [ %conv, %spec_mem_rewind.exit68 ], !dbg !1429
  ret i32 %retval.0, !dbg !1483
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @spec_mem_write(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size) local_unnamed_addr #0 !dbg !1484 {
entry:
    #dbg_value(ptr %fds, !1486, !DIExpression(), !1491)
    #dbg_value(i32 %fd_limit, !1487, !DIExpression(), !1491)
    #dbg_value(i32 %fd, !1488, !DIExpression(), !1491)
    #dbg_value(ptr %buf, !1489, !DIExpression(), !1491)
    #dbg_value(i64 %size, !1490, !DIExpression(), !1491)
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1492
  %cmp = icmp sgt i32 %0, 5, !dbg !1492
  br i1 %cmp, label %if.then, label %if.end, !dbg !1495

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size), !dbg !1496
  %1 = load ptr, ptr @stdout, align 8, !dbg !1496
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !1496
  br label %if.end, !dbg !1496

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1, !dbg !1498
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not, !dbg !1500
  br i1 %or.cond, label %if.end6, label %if.then4, !dbg !1500

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1501
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.56, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1503
  tail call void @exit(i32 noundef 1) #21, !dbg !1504
  unreachable, !dbg !1504

if.end6:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64, !dbg !1505
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !1505
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24, !dbg !1507
  %3 = load i32, ptr %open, align 8, !dbg !1507
  %cmp7.not = icmp eq i32 %3, 1, !dbg !1508
  br i1 %cmp7.not, label %while.cond.preheader, label %if.then8, !dbg !1509

while.cond.preheader:                             ; preds = %if.end6
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %4 = load i64, ptr %pos, align 8, !dbg !1510
  %add100 = add nsw i64 %4, %size, !dbg !1511
  %5 = load i64, ptr %arrayidx, align 8, !dbg !1512
  %cmp16101 = icmp sgt i64 %add100, %5, !dbg !1513
  br i1 %cmp16101, label %while.body, label %while.end, !dbg !1514

if.then8:                                         ; preds = %if.end6
  %6 = load ptr, ptr @stderr, align 8, !dbg !1515
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.57, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size) #20, !dbg !1517
  %call10 = tail call ptr @__errno_location() #24, !dbg !1518
  store i32 9, ptr %call10, align 4, !dbg !1519
  br label %return, !dbg !1520

while.body:                                       ; preds = %while.cond.preheader, %while.body
  tail call fastcc void @fd_grow(ptr noundef nonnull %fds, i32 noundef %fd, ptr noundef nonnull @.str.58), !dbg !1521
  %7 = load i64, ptr %pos, align 8, !dbg !1510
  %add = add nsw i64 %7, %size, !dbg !1511
  %8 = load i64, ptr %arrayidx, align 8, !dbg !1512
  %cmp16 = icmp sgt i64 %add, %8, !dbg !1513
  br i1 %cmp16, label %while.body, label %while.end, !dbg !1514, !llvm.loop !1523

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %.lcssa = phi i64 [ %4, %while.cond.preheader ], [ %7, %while.body ], !dbg !1510
  %buf19 = getelementptr inbounds i8, ptr %arrayidx, i64 32, !dbg !1525
  %9 = load ptr, ptr %buf19, align 8, !dbg !1525
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %.lcssa, !dbg !1526
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %buf, i64 %size, i1 false), !dbg !1527
  %10 = load i64, ptr %pos, align 8, !dbg !1528
  %add26 = add nsw i64 %10, %size, !dbg !1528
  store i64 %add26, ptr %pos, align 8, !dbg !1528
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1529
  %11 = load i64, ptr %len, align 8, !dbg !1529
  %cmp32 = icmp sgt i64 %add26, %11, !dbg !1531
  br i1 %cmp32, label %if.then33, label %if.end40, !dbg !1532

if.then33:                                        ; preds = %while.end
  store i64 %add26, ptr %len, align 8, !dbg !1533
  br label %if.end40, !dbg !1534

if.end40:                                         ; preds = %if.then33, %while.end
  %12 = phi i64 [ %add26, %if.then33 ], [ %11, %while.end ]
  %13 = load i32, ptr @dbglvl, align 4, !dbg !1535
  %cmp41 = icmp sgt i32 %13, 5, !dbg !1535
  br i1 %cmp41, label %if.then42, label %return, !dbg !1538

if.then42:                                        ; preds = %if.end40
  %14 = load i64, ptr %arrayidx, align 8, !dbg !1539
  %call52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i64 noundef %size, i64 noundef %12, i64 noundef %add26, i64 noundef %14), !dbg !1539
  %15 = load ptr, ptr @stdout, align 8, !dbg !1539
  %call53 = tail call i32 @fflush(ptr noundef %15), !dbg !1539
  br label %return, !dbg !1539

return:                                           ; preds = %if.end40, %if.then42, %if.then8
  %retval.0 = phi i64 [ -1, %if.then8 ], [ %size, %if.then42 ], [ %size, %if.end40 ], !dbg !1491
  ret i64 %retval.0, !dbg !1541
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @spec_mem_fwrite(ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %buf, i64 noundef %size, i32 noundef %num, i32 noundef %fd) local_unnamed_addr #0 !dbg !1542 {
entry:
    #dbg_value(ptr %fds, !1544, !DIExpression(), !1550)
    #dbg_value(i32 %fd_limit, !1545, !DIExpression(), !1550)
    #dbg_value(ptr %buf, !1546, !DIExpression(), !1550)
    #dbg_value(i64 %size, !1547, !DIExpression(), !1550)
    #dbg_value(i32 %num, !1548, !DIExpression(), !1550)
    #dbg_value(i32 %fd, !1549, !DIExpression(), !1550)
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1551
  %cmp = icmp sgt i32 %0, 5, !dbg !1551
  br i1 %cmp, label %if.then, label %if.end, !dbg !1554

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %buf, i64 noundef %size, i32 noundef %num, i32 noundef %fd), !dbg !1555
  %1 = load ptr, ptr @stdout, align 8, !dbg !1555
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !1555
  br label %if.end, !dbg !1555

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1, !dbg !1557
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not, !dbg !1559
  br i1 %or.cond, label %if.end6, label %if.then4, !dbg !1559

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1560
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.61, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1562
  tail call void @exit(i32 noundef 1) #21, !dbg !1563
  unreachable, !dbg !1563

if.end6:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64, !dbg !1564
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !1564
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24, !dbg !1566
  %3 = load i32, ptr %open, align 8, !dbg !1566
  %cmp7.not = icmp eq i32 %3, 1, !dbg !1567
  br i1 %cmp7.not, label %while.cond.preheader, label %if.then8, !dbg !1568

while.cond.preheader:                             ; preds = %if.end6
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %conv = sext i32 %num to i64
  %mul = mul nsw i64 %conv, %size
  %4 = load i64, ptr %pos, align 8, !dbg !1569
  %add107 = add nsw i64 %4, %mul, !dbg !1570
  %5 = load i64, ptr %arrayidx, align 8, !dbg !1571
  %cmp15108 = icmp sgt i64 %add107, %5, !dbg !1572
  br i1 %cmp15108, label %while.body, label %while.end, !dbg !1573

if.then8:                                         ; preds = %if.end6
  %6 = load ptr, ptr @stderr, align 8, !dbg !1574
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.62, i32 noundef %fd, ptr noundef nonnull %fds) #20, !dbg !1576
  tail call void @exit(i32 noundef 1) #21, !dbg !1577
  unreachable, !dbg !1577

while.body:                                       ; preds = %while.cond.preheader, %while.body
  tail call fastcc void @fd_grow(ptr noundef nonnull %fds, i32 noundef %fd, ptr noundef nonnull @.str.63), !dbg !1578
  %7 = load i64, ptr %pos, align 8, !dbg !1569
  %add = add nsw i64 %7, %mul, !dbg !1570
  %8 = load i64, ptr %arrayidx, align 8, !dbg !1571
  %cmp15 = icmp sgt i64 %add, %8, !dbg !1572
  br i1 %cmp15, label %while.body, label %while.end, !dbg !1573, !llvm.loop !1580

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %.lcssa = phi i64 [ %4, %while.cond.preheader ], [ %7, %while.body ], !dbg !1569
  %buf19 = getelementptr inbounds i8, ptr %arrayidx, i64 32, !dbg !1582
  %9 = load ptr, ptr %buf19, align 8, !dbg !1582
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %.lcssa, !dbg !1583
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %buf, i64 %mul, i1 false), !dbg !1584
  %10 = load i64, ptr %pos, align 8, !dbg !1585
  %add30 = add nsw i64 %10, %mul, !dbg !1585
  store i64 %add30, ptr %pos, align 8, !dbg !1585
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1586
  %11 = load i64, ptr %len, align 8, !dbg !1586
  %cmp36 = icmp sgt i64 %add30, %11, !dbg !1588
  br i1 %cmp36, label %if.then38, label %if.end45, !dbg !1589

if.then38:                                        ; preds = %while.end
  store i64 %add30, ptr %len, align 8, !dbg !1590
  br label %if.end45, !dbg !1591

if.end45:                                         ; preds = %if.then38, %while.end
  %12 = phi i64 [ %add30, %if.then38 ], [ %11, %while.end ]
  %13 = load i32, ptr @dbglvl, align 4, !dbg !1592
  %cmp46 = icmp sgt i32 %13, 5, !dbg !1592
  br i1 %cmp46, label %if.then48, label %if.end60, !dbg !1595

if.then48:                                        ; preds = %if.end45
  %14 = load i64, ptr %arrayidx, align 8, !dbg !1596
  %call58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %num, i64 noundef %12, i64 noundef %add30, i64 noundef %14), !dbg !1596
  %15 = load ptr, ptr @stdout, align 8, !dbg !1596
  %call59 = tail call i32 @fflush(ptr noundef %15), !dbg !1596
  br label %if.end60, !dbg !1596

if.end60:                                         ; preds = %if.then48, %if.end45
  ret i64 %conv, !dbg !1598
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @spec_mem_putc(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef returned %ch, i32 noundef %fd) local_unnamed_addr #0 !dbg !1599 {
entry:
    #dbg_value(ptr %fds, !1601, !DIExpression(), !1605)
    #dbg_value(i32 %fd_limit, !1602, !DIExpression(), !1605)
    #dbg_value(i32 %ch, !1603, !DIExpression(), !1605)
    #dbg_value(i32 %fd, !1604, !DIExpression(), !1605)
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1606
  %cmp = icmp sgt i32 %0, 4, !dbg !1606
  br i1 %cmp, label %if.then, label %if.end, !dbg !1609

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %ch, i32 noundef %fd), !dbg !1610
  %1 = load ptr, ptr @stdout, align 8, !dbg !1610
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !1610
  br label %if.end, !dbg !1610

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1, !dbg !1612
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not, !dbg !1614
  br i1 %or.cond, label %if.end6, label %if.then4, !dbg !1614

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1615
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.66, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1617
  tail call void @exit(i32 noundef 1) #21, !dbg !1618
  unreachable, !dbg !1618

if.end6:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64, !dbg !1619
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !1619
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24, !dbg !1621
  %3 = load i32, ptr %open, align 8, !dbg !1621
  %cmp7.not = icmp eq i32 %3, 1, !dbg !1622
  br i1 %cmp7.not, label %if.end10, label %if.then8, !dbg !1623

if.then8:                                         ; preds = %if.end6
  %4 = load ptr, ptr @stderr, align 8, !dbg !1624
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.67, i32 noundef %fd, ptr noundef nonnull %fds) #20, !dbg !1626
  tail call void @exit(i32 noundef 1) #21, !dbg !1627
  unreachable, !dbg !1627

if.end10:                                         ; preds = %if.end6
  %conv = trunc i32 %ch to i8, !dbg !1628
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32, !dbg !1629
  %5 = load ptr, ptr %buf, align 8, !dbg !1629
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16, !dbg !1630
  %6 = load i64, ptr %pos, align 8, !dbg !1631
  %inc = add nsw i64 %6, 1, !dbg !1631
  store i64 %inc, ptr %pos, align 8, !dbg !1631
  %arrayidx15 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !1632
  store i8 %conv, ptr %arrayidx15, align 1, !dbg !1633
  %7 = load i64, ptr %pos, align 8, !dbg !1634
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1636
  %8 = load i64, ptr %len, align 8, !dbg !1636
  %cmp21 = icmp sgt i64 %7, %8, !dbg !1637
  br i1 %cmp21, label %if.then23, label %if.end30, !dbg !1638

if.then23:                                        ; preds = %if.end10
  store i64 %7, ptr %len, align 8, !dbg !1639
  br label %if.end30, !dbg !1640

if.end30:                                         ; preds = %if.then23, %if.end10
  %9 = load i32, ptr @dbglvl, align 4, !dbg !1641
  %cmp31 = icmp sgt i32 %9, 4, !dbg !1641
  br i1 %cmp31, label %if.end36, label %if.end45, !dbg !1644

if.end36:                                         ; preds = %if.end30
  %call34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %ch), !dbg !1645
  %10 = load ptr, ptr @stdout, align 8, !dbg !1645
  %call35 = tail call i32 @fflush(ptr noundef %10), !dbg !1645
  %.pr = load i32, ptr @dbglvl, align 4, !dbg !1647
  %cmp37 = icmp sgt i32 %.pr, 5, !dbg !1647
  br i1 %cmp37, label %if.then39, label %if.end45, !dbg !1650

if.then39:                                        ; preds = %if.end36
  %11 = load i64, ptr %pos, align 8, !dbg !1651
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %11), !dbg !1651
  %12 = load ptr, ptr @stdout, align 8, !dbg !1651
  %call44 = tail call i32 @fflush(ptr noundef %12), !dbg !1651
  br label %if.end45, !dbg !1651

if.end45:                                         ; preds = %if.end30, %if.then39, %if.end36
  ret i32 %ch, !dbg !1653
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @spec_mem_feof(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #0 !dbg !1654 {
entry:
    #dbg_value(ptr %fds, !1656, !DIExpression(), !1659)
    #dbg_value(i32 %fd_limit, !1657, !DIExpression(), !1659)
    #dbg_value(i32 %fd, !1658, !DIExpression(), !1659)
  %cmp = icmp sgt i32 %fd, -1, !dbg !1660
  %cmp1.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp, %cmp1.not, !dbg !1662
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1662

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !1663
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.70, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1665
  tail call void @exit(i32 noundef 1) #21, !dbg !1666
  unreachable, !dbg !1666

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @dbglvl, align 4, !dbg !1667
  %cmp2 = icmp sgt i32 %1, 4, !dbg !1667
  %idxprom = zext nneg i32 %fd to i64, !dbg !1659
  br i1 %cmp2, label %if.then3, label %if.end17, !dbg !1670

if.then3:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !1671
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16, !dbg !1671
  %2 = load i64, ptr %pos, align 8, !dbg !1671
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1671
  %3 = load i64, ptr %len, align 8, !dbg !1671
  %cmp6 = icmp sge i64 %2, %3, !dbg !1671
  %conv = zext i1 %cmp6 to i32, !dbg !1671
  %4 = load i64, ptr %arrayidx, align 8, !dbg !1671
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, i32 noundef %conv, i64 noundef %3, i64 noundef %2, i64 noundef %4), !dbg !1671
  %5 = load ptr, ptr @stdout, align 8, !dbg !1671
  %call16 = tail call i32 @fflush(ptr noundef %5), !dbg !1671
  br label %if.end17, !dbg !1671

if.end17:                                         ; preds = %if.end, %if.then3
  %arrayidx19 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, !dbg !1673
  %pos20 = getelementptr inbounds i8, ptr %arrayidx19, i64 16, !dbg !1674
  %6 = load i64, ptr %pos20, align 8, !dbg !1674
  %len23 = getelementptr inbounds i8, ptr %arrayidx19, i64 8, !dbg !1675
  %7 = load i64, ptr %len23, align 8, !dbg !1675
  %cmp24 = icmp sge i64 %6, %7, !dbg !1676
  %conv25 = zext i1 %cmp24 to i32, !dbg !1676
  ret i32 %conv25, !dbg !1677
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @spec_mem_close(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #0 !dbg !1678 {
entry:
    #dbg_value(ptr %fds, !1680, !DIExpression(), !1683)
    #dbg_value(i32 %fd_limit, !1681, !DIExpression(), !1683)
    #dbg_value(i32 %fd, !1682, !DIExpression(), !1683)
  %cmp = icmp sgt i32 %fd, -1, !dbg !1684
  %cmp1.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp, %cmp1.not, !dbg !1686
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1686

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !1687
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.72, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20, !dbg !1689
  tail call void @exit(i32 noundef 1) #21, !dbg !1690
  unreachable, !dbg !1690

if.end:                                           ; preds = %entry
  %idxprom = zext nneg i32 %fd to i64, !dbg !1691
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 3, !dbg !1693
  %1 = load i32, ptr %open, align 8, !dbg !1693
  %cmp2.not = icmp eq i32 %1, 1, !dbg !1694
  br i1 %cmp2.not, label %if.end6, label %if.then3, !dbg !1695

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1696
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.73, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd) #20, !dbg !1698
  %call5 = tail call ptr @__errno_location() #24, !dbg !1699
  store i32 9, ptr %call5, align 4, !dbg !1700
  br label %return, !dbg !1701

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %open, align 8, !dbg !1702
  br label %return, !dbg !1703

return:                                           ; preds = %if.end6, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ 0, %if.end6 ], !dbg !1683
  ret i32 %retval.0, !dbg !1704
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @spec_empty(i32 noundef %fd) local_unnamed_addr #13 !dbg !1705 {
entry:
    #dbg_value(i32 %fd, !1707, !DIExpression(), !1708)
  ret i32 0, !dbg !1709
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @spec_initbufs() local_unnamed_addr #13 !dbg !1710 {
entry:
  ret void, !dbg !1713
}

; Function Attrs: nounwind uwtable
define dso_local void @spec_compress(i32 noundef %in, i32 noundef %out, i32 noundef %lev) local_unnamed_addr #0 !dbg !1714 {
entry:
    #dbg_value(i32 %in, !1718, !DIExpression(), !1723)
    #dbg_value(i32 %out, !1719, !DIExpression(), !1723)
    #dbg_value(i32 %lev, !1720, !DIExpression(), !1723)
  %0 = load ptr, ptr @spec_fd, align 8, !dbg !1724
  %idxprom = sext i32 %in to i64, !dbg !1724
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %idxprom, i32 3, !dbg !1725
  %1 = load i32, ptr %open, align 8, !dbg !1725
    #dbg_value(i32 %1, !1721, !DIExpression(), !1723)
  %idxprom1 = sext i32 %out to i64, !dbg !1726
  %open3 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %idxprom1, i32 3, !dbg !1727
  %2 = load i32, ptr %open3, align 8, !dbg !1727
    #dbg_value(i32 %2, !1722, !DIExpression(), !1723)
  store i32 1, ptr %open3, align 8, !dbg !1728
  %3 = load ptr, ptr @spec_fd, align 8, !dbg !1729
  %open9 = getelementptr inbounds %struct.spec_fd_t, ptr %3, i64 %idxprom, i32 3, !dbg !1730
  store i32 1, ptr %open9, align 8, !dbg !1731
  tail call void @compressStream(i32 noundef %in, i32 noundef %out, i32 noundef %lev) #22, !dbg !1732
  %4 = load ptr, ptr @spec_fd, align 8, !dbg !1733
  %open12 = getelementptr inbounds %struct.spec_fd_t, ptr %4, i64 %idxprom, i32 3, !dbg !1734
  store i32 %1, ptr %open12, align 8, !dbg !1735
  %5 = load ptr, ptr @spec_fd, align 8, !dbg !1736
  %open15 = getelementptr inbounds %struct.spec_fd_t, ptr %5, i64 %idxprom1, i32 3, !dbg !1737
  store i32 %2, ptr %open15, align 8, !dbg !1738
  ret void, !dbg !1739
}

declare !dbg !1740 void @compressStream(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !1743 void @uncompressStream(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @debug_time() local_unnamed_addr #13 !dbg !1744 {
entry:
  ret i32 0, !dbg !1747
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @sum_str_to_hex(ptr nocapture noundef readonly %sum, i32 noundef %bits) local_unnamed_addr #0 !dbg !1748 {
entry:
    #dbg_value(ptr %sum, !1752, !DIExpression(), !1756)
    #dbg_value(i32 %bits, !1753, !DIExpression(), !1756)
    #dbg_value(i32 0, !1754, !DIExpression(), !1756)
  %conv = sext i32 %bits to i64, !dbg !1757
  %div27 = lshr i64 %conv, 3, !dbg !1758
  %call = tail call noalias ptr @malloc(i64 noundef %div27) #19, !dbg !1759
    #dbg_value(ptr %call, !1755, !DIExpression(), !1756)
  %cmp = icmp eq ptr %call, null, !dbg !1760
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !1762

for.cond.preheader:                               ; preds = %entry
    #dbg_value(i32 0, !1754, !DIExpression(), !1756)
  %cmp538 = icmp sgt i32 %bits, 7, !dbg !1763
  br i1 %cmp538, label %for.body.preheader, label %for.end, !dbg !1766

for.body.preheader:                               ; preds = %for.cond.preheader
  %div44344 = lshr i32 %bits, 3
  %wide.trip.count = zext nneg i32 %div44344 to i64, !dbg !1763
  br label %for.body, !dbg !1766

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !1767
  %div2 = sdiv i32 %bits, 8, !dbg !1769
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %div2) #20, !dbg !1770
  tail call void @exit(i32 noundef 1) #21, !dbg !1771
  unreachable, !dbg !1771

for.body:                                         ; preds = %for.body.preheader, %hex_char_to_num.exit37
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %hex_char_to_num.exit37 ]
    #dbg_value(i64 %indvars.iv, !1754, !DIExpression(), !1756)
  %1 = shl nuw nsw i64 %indvars.iv, 1, !dbg !1772
  %arrayidx = getelementptr inbounds i8, ptr %sum, i64 %1, !dbg !1774
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1774
    #dbg_value(i8 %2, !1775, !DIExpression(), !1783)
  %cmp.i = icmp sgt i8 %2, 57, !dbg !1785
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !1786

if.then.i:                                        ; preds = %for.body
  %call.i = tail call ptr @__ctype_tolower_loc() #24, !dbg !1787
  %3 = load ptr, ptr %call.i, align 8, !dbg !1787
  %idxprom.i = zext nneg i8 %2 to i64, !dbg !1787
  %arrayidx.i = getelementptr inbounds i32, ptr %3, i64 %idxprom.i, !dbg !1787
  %4 = load i32, ptr %arrayidx.i, align 4, !dbg !1787
    #dbg_value(i32 %4, !1780, !DIExpression(), !1789)
  %5 = trunc i32 %4 to i8, !dbg !1790
  %conv4.i = add i8 %5, -87, !dbg !1790
  br label %hex_char_to_num.exit, !dbg !1791

if.else.i:                                        ; preds = %for.body
  %sub.i = add i8 %2, -48, !dbg !1792
  br label %hex_char_to_num.exit, !dbg !1793

hex_char_to_num.exit:                             ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i8 [ %conv4.i, %if.then.i ], [ %sub.i, %if.else.i ], !dbg !1794
  %shl = shl i8 %retval.0.i, 4, !dbg !1795
  %6 = or disjoint i64 %1, 1, !dbg !1796
  %arrayidx12 = getelementptr inbounds i8, ptr %sum, i64 %6, !dbg !1797
  %7 = load i8, ptr %arrayidx12, align 1, !dbg !1797
    #dbg_value(i8 %7, !1775, !DIExpression(), !1798)
  %cmp.i28 = icmp sgt i8 %7, 57, !dbg !1800
  br i1 %cmp.i28, label %if.then.i32, label %if.else.i29, !dbg !1801

if.then.i32:                                      ; preds = %hex_char_to_num.exit
  %call.i33 = tail call ptr @__ctype_tolower_loc() #24, !dbg !1802
  %8 = load ptr, ptr %call.i33, align 8, !dbg !1802
  %idxprom.i34 = zext nneg i8 %7 to i64, !dbg !1802
  %arrayidx.i35 = getelementptr inbounds i32, ptr %8, i64 %idxprom.i34, !dbg !1802
  %9 = load i32, ptr %arrayidx.i35, align 4, !dbg !1802
    #dbg_value(i32 %9, !1780, !DIExpression(), !1803)
  %10 = trunc i32 %9 to i8, !dbg !1804
  %conv4.i36 = add i8 %10, -87, !dbg !1804
  br label %hex_char_to_num.exit37, !dbg !1805

if.else.i29:                                      ; preds = %hex_char_to_num.exit
  %sub.i30 = add i8 %7, -48, !dbg !1806
  br label %hex_char_to_num.exit37, !dbg !1807

hex_char_to_num.exit37:                           ; preds = %if.then.i32, %if.else.i29
  %retval.0.i31 = phi i8 [ %conv4.i36, %if.then.i32 ], [ %sub.i30, %if.else.i29 ], !dbg !1808
  %or = or i8 %retval.0.i31, %shl, !dbg !1809
  %arrayidx17 = getelementptr inbounds i8, ptr %call, i64 %indvars.iv, !dbg !1810
  store i8 %or, ptr %arrayidx17, align 1, !dbg !1811
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1812
    #dbg_value(i64 %indvars.iv.next, !1754, !DIExpression(), !1756)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1763
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1766, !llvm.loop !1813

for.end:                                          ; preds = %hex_char_to_num.exit37, %for.cond.preheader
  ret ptr %call, !dbg !1815
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @spec_mem_alloc_fds(i32 noundef %fd_limit) local_unnamed_addr #10 !dbg !1816 {
entry:
    #dbg_value(i32 %fd_limit, !1820, !DIExpression(), !1822)
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1823
  %cmp = icmp sgt i32 %0, 3, !dbg !1823
  br i1 %cmp, label %if.then, label %if.end, !dbg !1826

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %fd_limit, 3, !dbg !1827
  %cond = select i1 %cmp1, ptr @.str.78, ptr @.str.79, !dbg !1827
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, ptr noundef nonnull %cond), !dbg !1827
  %1 = load ptr, ptr @stdout, align 8, !dbg !1827
  %call2 = tail call i32 @fflush(ptr noundef %1), !dbg !1827
  br label %if.end, !dbg !1827

if.end:                                           ; preds = %if.then, %entry
  %add = add i32 %fd_limit, 1, !dbg !1829
  %conv = zext i32 %add to i64, !dbg !1830
  %mul = mul nuw nsw i64 %conv, 40, !dbg !1831
  %calloc = tail call ptr @calloc(i64 1, i64 %mul), !dbg !1832
    #dbg_value(ptr %calloc, !1821, !DIExpression(), !1822)
  %cmp4 = icmp eq ptr %calloc, null, !dbg !1833
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !1835

if.then6:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1836
  %3 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 52, i64 1, ptr %2) #23, !dbg !1838
  br label %cleanup, !dbg !1839

if.end8:                                          ; preds = %if.end
  %4 = load i32, ptr @dbglvl, align 4, !dbg !1840
  %cmp12 = icmp sgt i32 %4, 4, !dbg !1840
  br i1 %cmp12, label %if.then14, label %cleanup, !dbg !1843

if.then14:                                        ; preds = %if.end8
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %fd_limit, ptr noundef nonnull %calloc), !dbg !1844
  %5 = load ptr, ptr @stdout, align 8, !dbg !1844
  %call16 = tail call i32 @fflush(ptr noundef %5), !dbg !1844
  br label %cleanup, !dbg !1844

cleanup:                                          ; preds = %if.end8, %if.then14, %if.then6
  ret ptr %calloc, !dbg !1846
}

; Function Attrs: nounwind uwtable
define dso_local void @spec_mem_free_fds(ptr noundef %fds, i32 noundef %fd_limit) local_unnamed_addr #0 !dbg !1847 {
entry:
    #dbg_value(ptr %fds, !1851, !DIExpression(), !1854)
    #dbg_value(i32 %fd_limit, !1852, !DIExpression(), !1854)
  %0 = load i32, ptr @dbglvl, align 4, !dbg !1855
  %cmp = icmp sgt i32 %0, 3, !dbg !1855
  br i1 %cmp, label %if.end, label %if.end7, !dbg !1858

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @spec_fd, align 8, !dbg !1859
  %cmp1 = icmp eq ptr %1, %fds, !dbg !1859
  %cond = select i1 %cmp1, ptr @.str.83, ptr @.str.79, !dbg !1859
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %cond), !dbg !1859
  %2 = load ptr, ptr @stdout, align 8, !dbg !1859
  %call2 = tail call i32 @fflush(ptr noundef %2), !dbg !1859
  %.pr = load i32, ptr @dbglvl, align 4, !dbg !1861
  %cmp3 = icmp sgt i32 %.pr, 4, !dbg !1861
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !1864

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef %fds, i32 noundef %fd_limit), !dbg !1865
  %3 = load ptr, ptr @stdout, align 8, !dbg !1865
  %call6 = tail call i32 @fflush(ptr noundef %3), !dbg !1865
  br label %if.end7, !dbg !1865

if.end7:                                          ; preds = %entry, %if.then4, %if.end
  %cmp8.not = icmp ne ptr %fds, null, !dbg !1867
    #dbg_value(i32 0, !1853, !DIExpression(), !1854)
  %cmp1033 = icmp ne i32 %fd_limit, 0
  %or.cond = and i1 %cmp8.not, %cmp1033, !dbg !1869
  br i1 %or.cond, label %for.body.preheader, label %if.end20, !dbg !1869

for.body.preheader:                               ; preds = %if.end7
  %wide.trip.count = zext i32 %fd_limit to i64, !dbg !1870
  br label %for.body, !dbg !1873

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
    #dbg_value(i64 %indvars.iv, !1853, !DIExpression(), !1854)
  %buf = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %indvars.iv, i32 4, !dbg !1874
  %4 = load ptr, ptr %buf, align 8, !dbg !1874
  %cmp11.not = icmp eq ptr %4, null, !dbg !1877
  br i1 %cmp11.not, label %for.inc, label %if.then12, !dbg !1878

if.then12:                                        ; preds = %for.body
  tail call void @free(ptr noundef nonnull %4) #22, !dbg !1879
  store ptr null, ptr %buf, align 8, !dbg !1881
  br label %for.inc, !dbg !1882

for.inc:                                          ; preds = %for.body, %if.then12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1883
    #dbg_value(i64 %indvars.iv.next, !1853, !DIExpression(), !1854)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1870
  br i1 %exitcond.not, label %if.end20, label %for.body, !dbg !1873, !llvm.loop !1884

if.end20:                                         ; preds = %for.inc, %if.end7
  tail call void @free(ptr noundef %fds) #22, !dbg !1886
  ret void, !dbg !1887
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1888 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1891 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1894 ptr @__ctype_tolower_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!352, !353, !354, !355, !356, !357, !358}
!llvm.ident = !{!359}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dbglvl", scope: !2, file: !3, line: 26, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "spec_mem_io/spec_mem_io.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "047cbb8fb8ff391b745246463800d41f")
!4 = !{!5, !6, !8, !7, !9, !10, !13}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "spec_fd_t", file: !15, line: 40, baseType: !16)
!15 = !DIFile(filename: "spec_mem_io/spec_mem_io.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "20f82235716911ab040d2b344ceb3e0d")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 34, size: 320, elements: !17)
!17 = !{!18, !24, !25, !26, !27}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !16, file: !15, line: 35, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !20, line: 27, baseType: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !22, line: 44, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!23 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !16, file: !15, line: 36, baseType: !19, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !16, file: !15, line: 37, baseType: !19, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !16, file: !15, line: 38, baseType: !9, size: 32, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !16, file: !15, line: 39, baseType: !6, size: 64, offset: 256)
!28 = !{!0, !29, !34, !39, !44, !49, !54, !59, !64, !69, !74, !79, !84, !89, !94, !96, !101, !106, !108, !113, !118, !120, !125, !130, !135, !140, !145, !150, !155, !160, !165, !170, !172, !174, !179, !181, !186, !188, !193, !195, !197, !202, !207, !209, !211, !213, !218, !223, !225, !230, !232, !237, !239, !241, !246, !248, !253, !258, !260, !262, !264, !266, !268, !270, !272, !277, !279, !281, !283, !285, !287, !289, !294, !299, !301, !303, !305, !310, !312, !314, !319, !324, !326, !331, !333, !338, !343, !345, !347}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 416, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 52)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 472, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 59)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 448, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 56)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 400, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 50)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 328, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 41)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 464, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 58)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !3, line: 139, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 616, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 77)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 600, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 75)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !3, line: 153, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 192, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 24)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !3, line: 174, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 112, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 14)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 216, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 27)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 368, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 46)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !3, line: 191, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 536, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 67)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !76, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !3, line: 194, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 120, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 15)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 16, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 2)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !31, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 504, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 63)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 211, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 184, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 23)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !3, line: 218, type: !115, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !3, line: 227, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 264, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 33)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 488, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 61)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 233, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 360, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 45)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !3, line: 238, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 344, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 43)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 248, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 4)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 249, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 352, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 44)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 376, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 47)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 257, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 496, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 62)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 261, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 304, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 38)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !3, line: 265, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 40, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 5)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !167, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !132, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 282, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 232, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 29)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !127, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 296, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 37)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !147, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 312, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 39)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 305, type: !110, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !3, line: 309, type: !190, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !3, line: 313, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 248, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 31)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 317, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 608, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 76)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !86, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !157, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 333, type: !86, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 339, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 656, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 82)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 347, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 32)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 353, type: !190, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !3, line: 359, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 56, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 7)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !3, line: 364, type: !220, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !3, line: 370, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 280, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 35)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !3, line: 373, type: !132, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 379, type: !132, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 382, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 40)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 392, type: !51, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !3, line: 414, type: !250, isLocal: true, isDefinition: true)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 336, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 42)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !3, line: 430, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 528, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 66)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !3, line: 432, type: !157, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !3, line: 436, type: !86, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !3, line: 441, type: !98, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !3, line: 447, type: !56, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 452, type: !66, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !110, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !3, line: 458, type: !190, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !3, line: 462, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 16)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !3, line: 468, type: !56, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !3, line: 473, type: !31, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !3, line: 475, type: !127, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !3, line: 479, type: !183, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !3, line: 485, type: !142, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !3, line: 486, type: !147, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !3, line: 492, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 456, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 57)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !3, line: 495, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 688, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 86)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 501, type: !157, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !3, line: 505, type: !183, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 575, type: !167, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !3, line: 612, type: !307, isLocal: true, isDefinition: true)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 424, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 53)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !3, line: 630, type: !157, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !3, line: 642, type: !71, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !3, line: 642, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 96, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 12)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !3, line: 642, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 88, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 11)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !3, line: 646, type: !307, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !3, line: 651, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 240, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 30)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !3, line: 660, type: !115, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !3, line: 660, type: !335, isLocal: true, isDefinition: true)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 8)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !3, line: 661, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 208, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 26)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "spec_fd", scope: !2, file: !3, line: 22, type: !13, isLocal: false, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !3, line: 588, type: !137, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !3, line: 592, type: !349, isLocal: true, isDefinition: true)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 288, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 36)
!352 = !{i32 7, !"Dwarf Version", i32 5}
!353 = !{i32 2, !"Debug Info Version", i32 3}
!354 = !{i32 1, !"wchar_size", i32 4}
!355 = !{i32 8, !"PIC Level", i32 2}
!356 = !{i32 7, !"PIE Level", i32 2}
!357 = !{i32 7, !"uwtable", i32 2}
!358 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!359 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!360 = distinct !DISubprogram(name: "spec_mem_init", scope: !3, file: !3, line: 67, type: !361, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!361 = !DISubroutineType(types: !362)
!362 = !{!9, !13, !8, !8}
!363 = !{!364, !365, !366, !367, !368, !369}
!364 = !DILocalVariable(name: "fds", arg: 1, scope: !360, file: !3, line: 67, type: !13)
!365 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !360, file: !3, line: 67, type: !8)
!366 = !DILocalVariable(name: "touch_all", arg: 3, scope: !360, file: !3, line: 67, type: !8)
!367 = !DILocalVariable(name: "i", scope: !360, file: !3, line: 68, type: !8)
!368 = !DILocalVariable(name: "j", scope: !360, file: !3, line: 69, type: !19)
!369 = !DILocalVariable(name: "limit", scope: !370, file: !3, line: 77, type: !19)
!370 = distinct !DILexicalBlock(scope: !371, file: !3, line: 76, column: 36)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 76, column: 5)
!372 = distinct !DILexicalBlock(scope: !360, file: !3, line: 76, column: 5)
!373 = !DILocation(line: 0, scope: !360)
!374 = !DILocation(line: 71, column: 5, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 71, column: 5)
!376 = distinct !DILexicalBlock(scope: !360, file: !3, line: 71, column: 5)
!377 = !DILocation(line: 71, column: 5, scope: !376)
!378 = !DILocation(line: 71, column: 5, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !3, line: 71, column: 5)
!380 = !DILocation(line: 76, column: 19, scope: !371)
!381 = !DILocation(line: 76, column: 5, scope: !372)
!382 = !DILocation(line: 77, column: 18, scope: !370)
!383 = !DILocation(line: 77, column: 25, scope: !370)
!384 = !DILocation(line: 0, scope: !370)
!385 = !DILocation(line: 78, column: 9, scope: !370)
!386 = !DILocation(line: 79, column: 15, scope: !370)
!387 = !DILocation(line: 81, column: 12, scope: !388)
!388 = distinct !DILexicalBlock(scope: !370, file: !3, line: 81, column: 6)
!389 = !DILocation(line: 81, column: 6, scope: !370)
!390 = !DILocation(line: 86, column: 44, scope: !370)
!391 = !DILocation(line: 86, column: 32, scope: !370)
!392 = !DILocation(line: 86, column: 9, scope: !370)
!393 = !DILocation(line: 86, column: 13, scope: !370)
!394 = !DILocation(line: 87, column: 17, scope: !395)
!395 = distinct !DILexicalBlock(scope: !370, file: !3, line: 87, column: 6)
!396 = !DILocation(line: 87, column: 6, scope: !370)
!397 = !DILocation(line: 92, column: 9, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 92, column: 9)
!399 = distinct !DILexicalBlock(scope: !370, file: !3, line: 92, column: 9)
!400 = !DILocation(line: 92, column: 9, scope: !399)
!401 = !DILocation(line: 92, column: 9, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !3, line: 92, column: 9)
!403 = !DILocation(line: 76, column: 32, scope: !371)
!404 = distinct !{!404, !381, !405}
!405 = !DILocation(line: 97, column: 5, scope: !372)
!406 = !DILocation(line: 82, column: 14, scope: !407)
!407 = distinct !DILexicalBlock(scope: !388, file: !3, line: 81, column: 17)
!408 = !DILocation(line: 82, column: 98, scope: !407)
!409 = !DILocation(line: 82, column: 6, scope: !407)
!410 = !DILocation(line: 83, column: 6, scope: !407)
!411 = !DILocation(line: 88, column: 14, scope: !412)
!412 = distinct !DILexicalBlock(scope: !395, file: !3, line: 87, column: 26)
!413 = !DILocation(line: 88, column: 6, scope: !412)
!414 = !DILocation(line: 89, column: 6, scope: !412)
!415 = !DILocation(line: 94, column: 27, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 94, column: 13)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 94, column: 13)
!418 = distinct !DILexicalBlock(scope: !370, file: !3, line: 93, column: 13)
!419 = !DILocation(line: 94, column: 13, scope: !417)
!420 = !DILocation(line: 95, column: 24, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !3, line: 94, column: 47)
!422 = !DILocation(line: 95, column: 17, scope: !421)
!423 = !DILocation(line: 95, column: 31, scope: !421)
!424 = !DILocation(line: 94, column: 38, scope: !416)
!425 = distinct !{!425, !419, !426}
!426 = !DILocation(line: 96, column: 13, scope: !417)
!427 = !DILocation(line: 98, column: 5, scope: !360)
!428 = !DISubprogram(name: "printf", scope: !429, file: !429, line: 356, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!429 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!430 = !DISubroutineType(types: !431)
!431 = !{!9, !432, null}
!432 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!435 = !DISubprogram(name: "fflush", scope: !429, file: !429, line: 230, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DISubroutineType(types: !437)
!437 = !{!9, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !440, line: 7, baseType: !441)
!440 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !442, line: 49, size: 1728, elements: !443)
!442 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !459, !461, !462, !463, !465, !467, !469, !473, !476, !478, !481, !484, !485, !486, !490, !491}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !441, file: !442, line: 51, baseType: !9, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !441, file: !442, line: 54, baseType: !11, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !441, file: !442, line: 55, baseType: !11, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !441, file: !442, line: 56, baseType: !11, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !441, file: !442, line: 57, baseType: !11, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !441, file: !442, line: 58, baseType: !11, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !441, file: !442, line: 59, baseType: !11, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !441, file: !442, line: 60, baseType: !11, size: 64, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !441, file: !442, line: 61, baseType: !11, size: 64, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !441, file: !442, line: 64, baseType: !11, size: 64, offset: 576)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !441, file: !442, line: 65, baseType: !11, size: 64, offset: 640)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !441, file: !442, line: 66, baseType: !11, size: 64, offset: 704)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !441, file: !442, line: 68, baseType: !457, size: 64, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !442, line: 36, flags: DIFlagFwdDecl)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !441, file: !442, line: 70, baseType: !460, size: 64, offset: 832)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !441, file: !442, line: 72, baseType: !9, size: 32, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !441, file: !442, line: 73, baseType: !9, size: 32, offset: 928)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !441, file: !442, line: 74, baseType: !464, size: 64, offset: 960)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !22, line: 152, baseType: !23)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !441, file: !442, line: 77, baseType: !466, size: 16, offset: 1024)
!466 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !441, file: !442, line: 78, baseType: !468, size: 8, offset: 1040)
!468 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !441, file: !442, line: 79, baseType: !470, size: 8, offset: 1048)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 1)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !441, file: !442, line: 81, baseType: !474, size: 64, offset: 1088)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !442, line: 43, baseType: null)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !441, file: !442, line: 89, baseType: !477, size: 64, offset: 1152)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !22, line: 153, baseType: !23)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !441, file: !442, line: 91, baseType: !479, size: 64, offset: 1216)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !442, line: 37, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !441, file: !442, line: 92, baseType: !482, size: 64, offset: 1280)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !442, line: 38, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !441, file: !442, line: 93, baseType: !460, size: 64, offset: 1344)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !441, file: !442, line: 94, baseType: !5, size: 64, offset: 1408)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !441, file: !442, line: 95, baseType: !487, size: 64, offset: 1472)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !488, line: 18, baseType: !489)
!488 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!489 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !441, file: !442, line: 96, baseType: !9, size: 32, offset: 1536)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !441, file: !442, line: 98, baseType: !492, size: 160, offset: 1568)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 20)
!495 = !DISubprogram(name: "fprintf", scope: !429, file: !429, line: 350, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!496 = !DISubroutineType(types: !497)
!497 = !{!9, !498, !432, null}
!498 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !438)
!499 = !DISubprogram(name: "exit", scope: !500, file: !500, line: 624, type: !501, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!500 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!501 = !DISubroutineType(types: !502)
!502 = !{null, !9}
!503 = !DISubprogram(name: "malloc", scope: !500, file: !500, line: 540, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!504 = !DISubroutineType(types: !505)
!505 = !{!5, !487}
!506 = distinct !DISubprogram(name: "spec_mem_sum", scope: !3, file: !3, line: 101, type: !507, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !509)
!507 = !DISubroutineType(types: !508)
!508 = !{!6, !13, !6, !9}
!509 = !{!510, !511, !512, !513, !531, !532}
!510 = !DILocalVariable(name: "fd", arg: 1, scope: !506, file: !3, line: 101, type: !13)
!511 = !DILocalVariable(name: "sum", arg: 2, scope: !506, file: !3, line: 101, type: !6)
!512 = !DILocalVariable(name: "bits", arg: 3, scope: !506, file: !3, line: 101, type: !9)
!513 = !DILocalVariable(name: "ctx", scope: !506, file: !3, line: 102, type: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha512_state", file: !515, line: 13, baseType: !516)
!515 = !DIFile(filename: "sha-2/sha512.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a9972f2f4bb45d8b6de350a024786c")
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !515, line: 7, size: 1664, elements: !517)
!517 = !{!518, !522, !524, !527}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !516, file: !515, line: 9, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !520, line: 27, baseType: !521)
!520 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !22, line: 45, baseType: !489)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !516, file: !515, line: 10, baseType: !523, size: 512, offset: 64)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 512, elements: !336)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "curlen", scope: !516, file: !515, line: 11, baseType: !525, size: 32, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !520, line: 26, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 42, baseType: !8)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !516, file: !515, line: 12, baseType: !528, size: 1024, offset: 608)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 128)
!531 = !DILocalVariable(name: "currpos", scope: !506, file: !3, line: 103, type: !19)
!532 = !DILocalVariable(name: "chunk", scope: !506, file: !3, line: 104, type: !23)
!533 = distinct !DIAssignID()
!534 = !DILocation(line: 0, scope: !506)
!535 = !DILocation(line: 102, column: 5, scope: !506)
!536 = !DILocation(line: 107, column: 14, scope: !537)
!537 = distinct !DILexicalBlock(scope: !506, file: !3, line: 107, column: 9)
!538 = !DILocation(line: 107, column: 9, scope: !506)
!539 = !DILocation(line: 108, column: 15, scope: !540)
!540 = distinct !DILexicalBlock(scope: !537, file: !3, line: 107, column: 22)
!541 = !DILocation(line: 108, column: 7, scope: !540)
!542 = !DILocation(line: 109, column: 7, scope: !540)
!543 = !DILocation(line: 112, column: 13, scope: !544)
!544 = distinct !DILexicalBlock(scope: !506, file: !3, line: 112, column: 9)
!545 = !DILocation(line: 112, column: 9, scope: !506)
!546 = !DILocation(line: 113, column: 9, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !3, line: 112, column: 22)
!548 = !DILocation(line: 114, column: 59, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !3, line: 114, column: 9)
!550 = distinct !DILexicalBlock(scope: !547, file: !3, line: 114, column: 9)
!551 = !DILocation(line: 114, column: 53, scope: !549)
!552 = !DILocation(line: 114, column: 9, scope: !550)
!553 = !DILocation(line: 115, column: 25, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !3, line: 115, column: 17)
!555 = distinct !DILexicalBlock(scope: !549, file: !3, line: 114, column: 82)
!556 = !DILocation(line: 115, column: 17, scope: !555)
!557 = !DILocation(line: 117, column: 35, scope: !555)
!558 = !DILocation(line: 117, column: 39, scope: !555)
!559 = !DILocation(line: 117, column: 50, scope: !555)
!560 = !DILocation(line: 117, column: 13, scope: !555)
!561 = !DILocation(line: 114, column: 72, scope: !549)
!562 = distinct !{!562, !552, !563}
!563 = !DILocation(line: 118, column: 9, scope: !550)
!564 = !DILocation(line: 119, column: 9, scope: !547)
!565 = !DILocation(line: 120, column: 5, scope: !547)
!566 = !DILocation(line: 122, column: 1, scope: !506)
!567 = !DILocation(line: 121, column: 5, scope: !506)
!568 = !DISubprogram(name: "sha_init", scope: !515, file: !515, line: 15, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!572 = !DISubprogram(name: "sha_process", scope: !515, file: !515, line: 16, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !571, !575, !525}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!577 = !DISubprogram(name: "sha_done", scope: !515, file: !515, line: 17, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !571, !5}
!580 = distinct !DISubprogram(name: "spec_mem_load", scope: !3, file: !3, line: 124, type: !581, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{!6, !13, !8, !9, !11, !19, !9, !6, !9}
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!584 = !DILocalVariable(name: "fds", arg: 1, scope: !580, file: !3, line: 124, type: !13)
!585 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !580, file: !3, line: 124, type: !8)
!586 = !DILocalVariable(name: "num", arg: 3, scope: !580, file: !3, line: 124, type: !9)
!587 = !DILocalVariable(name: "filename", arg: 4, scope: !580, file: !3, line: 124, type: !11)
!588 = !DILocalVariable(name: "size", arg: 5, scope: !580, file: !3, line: 124, type: !19)
!589 = !DILocalVariable(name: "tmpfd", arg: 6, scope: !580, file: !3, line: 124, type: !9)
!590 = !DILocalVariable(name: "sum", arg: 7, scope: !580, file: !3, line: 124, type: !6)
!591 = !DILocalVariable(name: "bits", arg: 8, scope: !580, file: !3, line: 124, type: !9)
!592 = !DILocalVariable(name: "fd", scope: !580, file: !3, line: 125, type: !9)
!593 = !DILocalVariable(name: "i", scope: !580, file: !3, line: 126, type: !19)
!594 = !DILocalVariable(name: "rc", scope: !580, file: !3, line: 126, type: !19)
!595 = !DILocalVariable(name: "gen_sum", scope: !580, file: !3, line: 127, type: !6)
!596 = !DILocalVariable(name: "tmp", scope: !597, file: !3, line: 209, type: !19)
!597 = distinct !DILexicalBlock(scope: !580, file: !3, line: 208, column: 33)
!598 = distinct !DIAssignID()
!599 = distinct !DIAssignID()
!600 = !DILocation(line: 0, scope: !580)
!601 = !DILocation(line: 131, column: 54, scope: !580)
!602 = !DILocation(line: 131, column: 59, scope: !580)
!603 = !DILocation(line: 131, column: 32, scope: !580)
!604 = !DILocation(line: 132, column: 17, scope: !605)
!605 = distinct !DILexicalBlock(scope: !580, file: !3, line: 132, column: 9)
!606 = !DILocation(line: 132, column: 9, scope: !580)
!607 = !DILocation(line: 133, column: 17, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !3, line: 132, column: 26)
!609 = !DILocation(line: 133, column: 92, scope: !608)
!610 = !DILocation(line: 133, column: 9, scope: !608)
!611 = !DILocation(line: 134, column: 9, scope: !608)
!612 = !DILocation(line: 138, column: 15, scope: !613)
!613 = distinct !DILexicalBlock(scope: !580, file: !3, line: 138, column: 9)
!614 = !DILocation(line: 138, column: 19, scope: !613)
!615 = !DILocation(line: 139, column: 17, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !3, line: 138, column: 51)
!617 = !DILocation(line: 139, column: 9, scope: !616)
!618 = !DILocation(line: 140, column: 9, scope: !616)
!619 = !DILocation(line: 142, column: 13, scope: !620)
!620 = distinct !DILexicalBlock(scope: !580, file: !3, line: 142, column: 9)
!621 = !DILocation(line: 142, column: 17, scope: !620)
!622 = !DILocation(line: 143, column: 17, scope: !623)
!623 = distinct !DILexicalBlock(scope: !620, file: !3, line: 142, column: 47)
!624 = !DILocation(line: 143, column: 9, scope: !623)
!625 = !DILocation(line: 144, column: 9, scope: !623)
!626 = !DILocation(line: 151, column: 10, scope: !580)
!627 = !DILocation(line: 152, column: 12, scope: !628)
!628 = distinct !DILexicalBlock(scope: !580, file: !3, line: 152, column: 9)
!629 = !DILocation(line: 152, column: 9, scope: !580)
!630 = !DILocation(line: 153, column: 10, scope: !631)
!631 = distinct !DILexicalBlock(scope: !628, file: !3, line: 152, column: 17)
!632 = !DILocation(line: 153, column: 65, scope: !631)
!633 = !DILocation(line: 153, column: 56, scope: !631)
!634 = !DILocation(line: 153, column: 2, scope: !631)
!635 = !DILocation(line: 154, column: 2, scope: !631)
!636 = !DILocation(line: 157, column: 39, scope: !580)
!637 = !DILocation(line: 157, column: 33, scope: !580)
!638 = !DILocation(line: 157, column: 37, scope: !580)
!639 = !DILocation(line: 158, column: 37, scope: !580)
!640 = !DILocation(line: 158, column: 17, scope: !580)
!641 = !DILocation(line: 158, column: 72, scope: !580)
!642 = !DILocation(line: 158, column: 5, scope: !580)
!643 = !DILocation(line: 159, column: 17, scope: !644)
!644 = distinct !DILexicalBlock(scope: !580, file: !3, line: 158, column: 77)
!645 = !DILocation(line: 160, column: 16, scope: !646)
!646 = distinct !DILexicalBlock(scope: !644, file: !3, line: 160, column: 13)
!647 = !DILocation(line: 160, column: 13, scope: !644)
!648 = !DILocation(line: 170, column: 28, scope: !649)
!649 = distinct !DILexicalBlock(scope: !644, file: !3, line: 170, column: 13)
!650 = !DILocation(line: 170, column: 54, scope: !649)
!651 = !DILocation(line: 170, column: 41, scope: !649)
!652 = !DILocation(line: 170, column: 13, scope: !644)
!653 = !DILocation(line: 174, column: 13, scope: !654)
!654 = distinct !DILexicalBlock(scope: !649, file: !3, line: 170, column: 61)
!655 = !DILocation(line: 158, column: 54, scope: !580)
!656 = !DILocation(line: 175, column: 9, scope: !654)
!657 = !DILocation(line: 158, column: 41, scope: !580)
!658 = distinct !{!658, !642, !659}
!659 = !DILocation(line: 176, column: 5, scope: !580)
!660 = !DILocation(line: 177, column: 12, scope: !661)
!661 = distinct !DILexicalBlock(scope: !580, file: !3, line: 177, column: 9)
!662 = !DILocation(line: 177, column: 9, scope: !580)
!663 = !DILocation(line: 178, column: 17, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !3, line: 177, column: 17)
!665 = !DILocation(line: 178, column: 75, scope: !664)
!666 = !DILocation(line: 178, column: 66, scope: !664)
!667 = !DILocation(line: 178, column: 9, scope: !664)
!668 = !DILocation(line: 179, column: 9, scope: !664)
!669 = !DILocation(line: 181, column: 5, scope: !580)
!670 = !DILocation(line: 184, column: 20, scope: !580)
!671 = !DILocation(line: 184, column: 29, scope: !580)
!672 = !DILocation(line: 184, column: 14, scope: !580)
!673 = !DILocalVariable(name: "in", arg: 1, scope: !674, file: !3, line: 547, type: !9)
!674 = distinct !DISubprogram(name: "spec_uncompress", scope: !3, file: !3, line: 547, type: !675, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !677)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !9, !9}
!677 = !{!673, !678, !679, !680}
!678 = !DILocalVariable(name: "out", arg: 2, scope: !674, file: !3, line: 547, type: !9)
!679 = !DILocalVariable(name: "in_open", scope: !674, file: !3, line: 549, type: !9)
!680 = !DILocalVariable(name: "out_open", scope: !674, file: !3, line: 550, type: !9)
!681 = !DILocation(line: 0, scope: !674, inlinedAt: !682)
!682 = distinct !DILocation(line: 185, column: 5, scope: !580)
!683 = !DILocation(line: 184, column: 18, scope: !580)
!684 = !DILocation(line: 549, column: 19, scope: !674, inlinedAt: !682)
!685 = !DILocation(line: 549, column: 31, scope: !674, inlinedAt: !682)
!686 = !DILocation(line: 550, column: 33, scope: !674, inlinedAt: !682)
!687 = !DILocation(line: 551, column: 42, scope: !674, inlinedAt: !682)
!688 = !DILocation(line: 551, column: 5, scope: !674, inlinedAt: !682)
!689 = !DILocation(line: 551, column: 17, scope: !674, inlinedAt: !682)
!690 = !DILocation(line: 551, column: 22, scope: !674, inlinedAt: !682)
!691 = !DILocation(line: 555, column: 5, scope: !674, inlinedAt: !682)
!692 = !DILocation(line: 557, column: 5, scope: !674, inlinedAt: !682)
!693 = !DILocation(line: 557, column: 17, scope: !674, inlinedAt: !682)
!694 = !DILocation(line: 557, column: 22, scope: !674, inlinedAt: !682)
!695 = !DILocation(line: 558, column: 5, scope: !674, inlinedAt: !682)
!696 = !DILocation(line: 558, column: 18, scope: !674, inlinedAt: !682)
!697 = !DILocation(line: 558, column: 23, scope: !674, inlinedAt: !682)
!698 = !DILocation(line: 186, column: 5, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 186, column: 5)
!700 = distinct !DILexicalBlock(scope: !580, file: !3, line: 186, column: 5)
!701 = !DILocation(line: 186, column: 5, scope: !700)
!702 = !DILocation(line: 186, column: 5, scope: !703)
!703 = distinct !DILexicalBlock(scope: !699, file: !3, line: 186, column: 5)
!704 = !DILocation(line: 0, scope: !506, inlinedAt: !705)
!705 = distinct !DILocation(line: 189, column: 5, scope: !580)
!706 = !DILocation(line: 187, column: 20, scope: !580)
!707 = !DILocation(line: 102, column: 5, scope: !506, inlinedAt: !705)
!708 = !DILocation(line: 107, column: 14, scope: !537, inlinedAt: !705)
!709 = !DILocation(line: 107, column: 9, scope: !506, inlinedAt: !705)
!710 = !DILocation(line: 108, column: 15, scope: !540, inlinedAt: !705)
!711 = !DILocation(line: 108, column: 7, scope: !540, inlinedAt: !705)
!712 = !DILocation(line: 109, column: 7, scope: !540, inlinedAt: !705)
!713 = !DILocation(line: 113, column: 9, scope: !547, inlinedAt: !705)
!714 = !DILocation(line: 114, column: 59, scope: !549, inlinedAt: !705)
!715 = !DILocation(line: 114, column: 53, scope: !549, inlinedAt: !705)
!716 = !DILocation(line: 114, column: 9, scope: !550, inlinedAt: !705)
!717 = !DILocation(line: 115, column: 25, scope: !554, inlinedAt: !705)
!718 = !DILocation(line: 115, column: 17, scope: !555, inlinedAt: !705)
!719 = !DILocation(line: 117, column: 35, scope: !555, inlinedAt: !705)
!720 = !DILocation(line: 117, column: 39, scope: !555, inlinedAt: !705)
!721 = !DILocation(line: 117, column: 50, scope: !555, inlinedAt: !705)
!722 = !DILocation(line: 117, column: 13, scope: !555, inlinedAt: !705)
!723 = !DILocation(line: 114, column: 72, scope: !549, inlinedAt: !705)
!724 = distinct !{!724, !716, !725}
!725 = !DILocation(line: 118, column: 9, scope: !550, inlinedAt: !705)
!726 = !DILocation(line: 119, column: 9, scope: !547, inlinedAt: !705)
!727 = !DILocation(line: 122, column: 1, scope: !506, inlinedAt: !705)
!728 = !DILocalVariable(name: "ref_sum", arg: 1, scope: !729, file: !3, line: 623, type: !6)
!729 = distinct !DISubprogram(name: "compare_sum", scope: !3, file: !3, line: 623, type: !730, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !732)
!730 = !DISubroutineType(types: !731)
!731 = !{!9, !6, !6, !9}
!732 = !{!728, !733, !734, !735}
!733 = !DILocalVariable(name: "generated", arg: 2, scope: !729, file: !3, line: 623, type: !6)
!734 = !DILocalVariable(name: "bits", arg: 3, scope: !729, file: !3, line: 623, type: !9)
!735 = !DILocalVariable(name: "i", scope: !736, file: !3, line: 628, type: !9)
!736 = distinct !DILexicalBlock(scope: !729, file: !3, line: 628, column: 5)
!737 = !DILocation(line: 0, scope: !729, inlinedAt: !738)
!738 = distinct !DILocation(line: 190, column: 9, scope: !739)
!739 = distinct !DILexicalBlock(scope: !580, file: !3, line: 190, column: 9)
!740 = !DILocation(line: 625, column: 17, scope: !741, inlinedAt: !738)
!741 = distinct !DILexicalBlock(scope: !729, file: !3, line: 625, column: 9)
!742 = !DILocation(line: 625, column: 25, scope: !741, inlinedAt: !738)
!743 = !DILocation(line: 628, column: 5, scope: !736, inlinedAt: !738)
!744 = !DILocation(line: 0, scope: !736, inlinedAt: !738)
!745 = !DILocation(line: 629, column: 13, scope: !746, inlinedAt: !738)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 629, column: 13)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 628, column: 39)
!748 = distinct !DILexicalBlock(scope: !736, file: !3, line: 628, column: 5)
!749 = !DILocation(line: 629, column: 27, scope: !746, inlinedAt: !738)
!750 = !DILocation(line: 629, column: 24, scope: !746, inlinedAt: !738)
!751 = !DILocation(line: 629, column: 13, scope: !747, inlinedAt: !738)
!752 = !DILocation(line: 630, column: 21, scope: !753, inlinedAt: !738)
!753 = distinct !DILexicalBlock(scope: !746, file: !3, line: 629, column: 41)
!754 = !DILocation(line: 630, column: 13, scope: !753, inlinedAt: !738)
!755 = !DILocation(line: 631, column: 13, scope: !753, inlinedAt: !738)
!756 = !DILocation(line: 628, column: 35, scope: !748, inlinedAt: !738)
!757 = !DILocation(line: 628, column: 22, scope: !748, inlinedAt: !738)
!758 = distinct !{!758, !743, !759}
!759 = !DILocation(line: 633, column: 5, scope: !736, inlinedAt: !738)
!760 = !DILocation(line: 191, column: 17, scope: !761)
!761 = distinct !DILexicalBlock(scope: !739, file: !3, line: 190, column: 42)
!762 = !DILocation(line: 191, column: 9, scope: !761)
!763 = !DILocation(line: 192, column: 17, scope: !761)
!764 = !DILocation(line: 192, column: 9, scope: !761)
!765 = !DILocation(line: 193, column: 19, scope: !761)
!766 = !DILocation(line: 193, column: 9, scope: !761)
!767 = !DILocation(line: 194, column: 17, scope: !761)
!768 = !DILocation(line: 194, column: 9, scope: !761)
!769 = !DILocation(line: 195, column: 19, scope: !761)
!770 = !DILocation(line: 195, column: 9, scope: !761)
!771 = !DILocation(line: 196, column: 17, scope: !761)
!772 = !DILocation(line: 196, column: 9, scope: !761)
!773 = !DILocation(line: 197, column: 9, scope: !761)
!774 = !DILocation(line: 199, column: 5, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 199, column: 5)
!776 = distinct !DILexicalBlock(scope: !580, file: !3, line: 199, column: 5)
!777 = !DILocation(line: 199, column: 5, scope: !776)
!778 = !DILocation(line: 199, column: 5, scope: !779)
!779 = distinct !DILexicalBlock(scope: !775, file: !3, line: 199, column: 5)
!780 = !DILocation(line: 201, column: 18, scope: !781)
!781 = distinct !DILexicalBlock(scope: !580, file: !3, line: 201, column: 9)
!782 = !DILocation(line: 201, column: 22, scope: !781)
!783 = !DILocation(line: 201, column: 9, scope: !580)
!784 = !DILocation(line: 203, column: 9, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 203, column: 9)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 203, column: 9)
!787 = distinct !DILexicalBlock(scope: !781, file: !3, line: 202, column: 5)
!788 = !DILocation(line: 203, column: 9, scope: !786)
!789 = !DILocation(line: 203, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !785, file: !3, line: 203, column: 9)
!791 = !DILocation(line: 204, column: 22, scope: !787)
!792 = !DILocation(line: 206, column: 18, scope: !580)
!793 = !DILocation(line: 208, column: 5, scope: !580)
!794 = !DILocation(line: 208, column: 25, scope: !580)
!795 = !DILocation(line: 209, column: 21, scope: !597)
!796 = !DILocation(line: 0, scope: !597)
!797 = !DILocation(line: 210, column: 6, scope: !597)
!798 = !DILocation(line: 211, column: 2, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 211, column: 2)
!800 = distinct !DILexicalBlock(scope: !597, file: !3, line: 211, column: 2)
!801 = !DILocation(line: 211, column: 2, scope: !800)
!802 = !DILocation(line: 211, column: 2, scope: !803)
!803 = distinct !DILexicalBlock(scope: !799, file: !3, line: 211, column: 2)
!804 = !DILocation(line: 212, column: 31, scope: !597)
!805 = !DILocation(line: 212, column: 18, scope: !597)
!806 = !DILocation(line: 212, column: 21, scope: !597)
!807 = !DILocation(line: 212, column: 2, scope: !597)
!808 = !DILocation(line: 213, column: 15, scope: !597)
!809 = distinct !{!809, !793, !810}
!810 = !DILocation(line: 214, column: 5, scope: !580)
!811 = !DILocation(line: 0, scope: !506, inlinedAt: !812)
!812 = distinct !DILocation(line: 217, column: 5, scope: !580)
!813 = !DILocation(line: 102, column: 5, scope: !506, inlinedAt: !812)
!814 = !DILocation(line: 113, column: 9, scope: !547, inlinedAt: !812)
!815 = !DILocation(line: 114, column: 59, scope: !549, inlinedAt: !812)
!816 = !DILocation(line: 114, column: 53, scope: !549, inlinedAt: !812)
!817 = !DILocation(line: 114, column: 9, scope: !550, inlinedAt: !812)
!818 = !DILocation(line: 115, column: 25, scope: !554, inlinedAt: !812)
!819 = !DILocation(line: 115, column: 17, scope: !555, inlinedAt: !812)
!820 = !DILocation(line: 117, column: 35, scope: !555, inlinedAt: !812)
!821 = !DILocation(line: 117, column: 39, scope: !555, inlinedAt: !812)
!822 = !DILocation(line: 117, column: 50, scope: !555, inlinedAt: !812)
!823 = !DILocation(line: 117, column: 13, scope: !555, inlinedAt: !812)
!824 = !DILocation(line: 114, column: 72, scope: !549, inlinedAt: !812)
!825 = distinct !{!825, !817, !826}
!826 = !DILocation(line: 118, column: 9, scope: !550, inlinedAt: !812)
!827 = !DILocation(line: 119, column: 9, scope: !547, inlinedAt: !812)
!828 = !DILocation(line: 122, column: 1, scope: !506, inlinedAt: !812)
!829 = !DILocation(line: 218, column: 5, scope: !580)
!830 = !DILocation(line: 219, column: 15, scope: !580)
!831 = !DILocalVariable(name: "out", arg: 1, scope: !832, file: !3, line: 572, type: !438)
!832 = distinct !DISubprogram(name: "print_sum", scope: !3, file: !3, line: 572, type: !833, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !835)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !438, !6, !9}
!835 = !{!831, !836, !837, !838}
!836 = !DILocalVariable(name: "sum", arg: 2, scope: !832, file: !3, line: 572, type: !6)
!837 = !DILocalVariable(name: "bits", arg: 3, scope: !832, file: !3, line: 572, type: !9)
!838 = !DILocalVariable(name: "i", scope: !839, file: !3, line: 574, type: !9)
!839 = distinct !DILexicalBlock(scope: !832, file: !3, line: 574, column: 3)
!840 = !DILocation(line: 0, scope: !832, inlinedAt: !841)
!841 = distinct !DILocation(line: 219, column: 5, scope: !580)
!842 = !DILocation(line: 0, scope: !839, inlinedAt: !841)
!843 = !DILocation(line: 574, column: 3, scope: !839, inlinedAt: !841)
!844 = !DILocation(line: 575, column: 26, scope: !845, inlinedAt: !841)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 574, column: 35)
!846 = distinct !DILexicalBlock(scope: !839, file: !3, line: 574, column: 3)
!847 = !DILocation(line: 575, column: 5, scope: !845, inlinedAt: !841)
!848 = !DILocation(line: 574, column: 31, scope: !846, inlinedAt: !841)
!849 = !DILocation(line: 574, column: 20, scope: !846, inlinedAt: !841)
!850 = distinct !{!850, !843, !851}
!851 = !DILocation(line: 576, column: 3, scope: !839, inlinedAt: !841)
!852 = !DILocation(line: 220, column: 5, scope: !580)
!853 = !DILocation(line: 222, column: 5, scope: !580)
!854 = !DISubprogram(name: "open", scope: !855, file: !855, line: 181, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!855 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!856 = !DISubroutineType(types: !857)
!857 = !{!9, !433, !9, null}
!858 = !DISubprogram(name: "strerror", scope: !859, file: !859, line: 419, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!859 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!860 = !DISubroutineType(types: !861)
!861 = !{!11, !9}
!862 = !DISubprogram(name: "__errno_location", scope: !863, file: !863, line: 37, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!863 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!864 = !DISubroutineType(types: !865)
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!867 = !DISubprogram(name: "read", scope: !868, file: !868, line: 371, type: !869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!868 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!869 = !DISubroutineType(types: !870)
!870 = !{!871, !9, !5, !487}
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !868, line: 220, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !22, line: 194, baseType: !23)
!873 = distinct !DISubprogram(name: "fd_grow", scope: !3, file: !3, line: 579, type: !874, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !13, !9, !433}
!876 = !{!877, !878, !879}
!877 = !DILocalVariable(name: "fds", arg: 1, scope: !873, file: !3, line: 579, type: !13)
!878 = !DILocalVariable(name: "fd", arg: 2, scope: !873, file: !3, line: 579, type: !9)
!879 = !DILocalVariable(name: "funcname", arg: 3, scope: !873, file: !3, line: 579, type: !433)
!880 = !DILocation(line: 0, scope: !873)
!881 = !DILocation(line: 583, column: 5, scope: !873)
!882 = !DILocation(line: 583, column: 19, scope: !873)
!883 = !DILocation(line: 585, column: 35, scope: !873)
!884 = !DILocation(line: 585, column: 19, scope: !873)
!885 = !DILocation(line: 585, column: 17, scope: !873)
!886 = !DILocation(line: 586, column: 21, scope: !887)
!887 = distinct !DILexicalBlock(scope: !873, file: !3, line: 586, column: 9)
!888 = !DILocation(line: 586, column: 9, scope: !873)
!889 = !DILocation(line: 588, column: 10, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !3, line: 587, column: 5)
!891 = !DILocation(line: 588, column: 101, scope: !890)
!892 = !DILocation(line: 588, column: 92, scope: !890)
!893 = !DILocation(line: 588, column: 2, scope: !890)
!894 = !DILocation(line: 589, column: 2, scope: !890)
!895 = !DILocation(line: 592, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 592, column: 5)
!897 = distinct !DILexicalBlock(scope: !873, file: !3, line: 592, column: 5)
!898 = !DILocation(line: 592, column: 5, scope: !897)
!899 = !DILocation(line: 592, column: 5, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !3, line: 592, column: 5)
!901 = !DILocation(line: 593, column: 1, scope: !873)
!902 = !DISubprogram(name: "close", scope: !868, file: !868, line: 358, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!903 = !DISubroutineType(types: !904)
!904 = !{!9, !9}
!905 = !DILocation(line: 0, scope: !674)
!906 = !DILocation(line: 549, column: 19, scope: !674)
!907 = !DILocation(line: 549, column: 31, scope: !674)
!908 = !DILocation(line: 550, column: 20, scope: !674)
!909 = !DILocation(line: 550, column: 33, scope: !674)
!910 = !DILocation(line: 551, column: 42, scope: !674)
!911 = !DILocation(line: 551, column: 5, scope: !674)
!912 = !DILocation(line: 551, column: 17, scope: !674)
!913 = !DILocation(line: 551, column: 22, scope: !674)
!914 = !DILocation(line: 555, column: 5, scope: !674)
!915 = !DILocation(line: 557, column: 5, scope: !674)
!916 = !DILocation(line: 557, column: 17, scope: !674)
!917 = !DILocation(line: 557, column: 22, scope: !674)
!918 = !DILocation(line: 558, column: 5, scope: !674)
!919 = !DILocation(line: 558, column: 18, scope: !674)
!920 = !DILocation(line: 558, column: 23, scope: !674)
!921 = !DILocation(line: 559, column: 1, scope: !674)
!922 = !DILocation(line: 0, scope: !729)
!923 = !DILocation(line: 625, column: 17, scope: !741)
!924 = !DILocation(line: 625, column: 25, scope: !741)
!925 = !DILocation(line: 0, scope: !736)
!926 = !DILocation(line: 628, column: 22, scope: !748)
!927 = !DILocation(line: 628, column: 5, scope: !736)
!928 = !DILocation(line: 629, column: 13, scope: !746)
!929 = !DILocation(line: 629, column: 27, scope: !746)
!930 = !DILocation(line: 629, column: 24, scope: !746)
!931 = !DILocation(line: 629, column: 13, scope: !747)
!932 = !DILocation(line: 630, column: 21, scope: !753)
!933 = !DILocation(line: 630, column: 13, scope: !753)
!934 = !DILocation(line: 631, column: 22, scope: !753)
!935 = !DILocation(line: 631, column: 35, scope: !753)
!936 = !DILocation(line: 631, column: 33, scope: !753)
!937 = !DILocation(line: 631, column: 21, scope: !753)
!938 = !DILocation(line: 631, column: 13, scope: !753)
!939 = !DILocation(line: 628, column: 35, scope: !748)
!940 = distinct !{!940, !927, !941}
!941 = !DILocation(line: 633, column: 5, scope: !736)
!942 = !DILocation(line: 636, column: 1, scope: !729)
!943 = !DILocation(line: 0, scope: !832)
!944 = !DILocation(line: 0, scope: !839)
!945 = !DILocation(line: 574, column: 20, scope: !846)
!946 = !DILocation(line: 574, column: 3, scope: !839)
!947 = !DILocation(line: 577, column: 1, scope: !832)
!948 = !DILocation(line: 575, column: 26, scope: !845)
!949 = !DILocation(line: 575, column: 5, scope: !845)
!950 = !DILocation(line: 574, column: 31, scope: !846)
!951 = distinct !{!951, !946, !952}
!952 = !DILocation(line: 576, column: 3, scope: !839)
!953 = distinct !DISubprogram(name: "spec_mem_read", scope: !3, file: !3, line: 225, type: !954, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !956)
!954 = !DISubroutineType(types: !955)
!955 = !{!19, !13, !8, !9, !6, !19}
!956 = !{!957, !958, !959, !960, !961, !962}
!957 = !DILocalVariable(name: "fds", arg: 1, scope: !953, file: !3, line: 225, type: !13)
!958 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !953, file: !3, line: 225, type: !8)
!959 = !DILocalVariable(name: "fd", arg: 3, scope: !953, file: !3, line: 225, type: !9)
!960 = !DILocalVariable(name: "buf", arg: 4, scope: !953, file: !3, line: 225, type: !6)
!961 = !DILocalVariable(name: "size", arg: 5, scope: !953, file: !3, line: 225, type: !19)
!962 = !DILocalVariable(name: "rc", scope: !953, file: !3, line: 226, type: !9)
!963 = !DILocation(line: 0, scope: !953)
!964 = !DILocation(line: 227, column: 5, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !3, line: 227, column: 5)
!966 = distinct !DILexicalBlock(scope: !953, file: !3, line: 227, column: 5)
!967 = !DILocation(line: 227, column: 5, scope: !966)
!968 = !DILocation(line: 227, column: 5, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !3, line: 227, column: 5)
!970 = !DILocation(line: 228, column: 12, scope: !971)
!971 = distinct !DILexicalBlock(scope: !953, file: !3, line: 228, column: 9)
!972 = !DILocation(line: 228, column: 16, scope: !971)
!973 = !DILocation(line: 229, column: 10, scope: !974)
!974 = distinct !DILexicalBlock(scope: !971, file: !3, line: 228, column: 45)
!975 = !DILocation(line: 229, column: 2, scope: !974)
!976 = !DILocation(line: 230, column: 2, scope: !974)
!977 = !DILocation(line: 232, column: 9, scope: !978)
!978 = distinct !DILexicalBlock(scope: !953, file: !3, line: 232, column: 9)
!979 = !DILocation(line: 232, column: 17, scope: !978)
!980 = !DILocation(line: 232, column: 22, scope: !978)
!981 = !DILocation(line: 232, column: 9, scope: !953)
!982 = !DILocation(line: 233, column: 17, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !3, line: 232, column: 28)
!984 = !DILocation(line: 233, column: 9, scope: !983)
!985 = !DILocation(line: 234, column: 2, scope: !983)
!986 = !DILocation(line: 234, column: 8, scope: !983)
!987 = !DILocation(line: 235, column: 2, scope: !983)
!988 = !DILocation(line: 237, column: 17, scope: !989)
!989 = distinct !DILexicalBlock(scope: !953, file: !3, line: 237, column: 9)
!990 = !DILocation(line: 237, column: 32, scope: !989)
!991 = !DILocation(line: 237, column: 21, scope: !989)
!992 = !DILocation(line: 237, column: 9, scope: !953)
!993 = !DILocation(line: 238, column: 2, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !3, line: 238, column: 2)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 238, column: 2)
!996 = distinct !DILexicalBlock(scope: !989, file: !3, line: 237, column: 37)
!997 = !DILocation(line: 238, column: 2, scope: !995)
!998 = !DILocation(line: 238, column: 2, scope: !999)
!999 = distinct !DILexicalBlock(scope: !994, file: !3, line: 238, column: 2)
!1000 = !DILocation(line: 241, column: 21, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !953, file: !3, line: 241, column: 9)
!1002 = !DILocation(line: 241, column: 28, scope: !1001)
!1003 = !DILocation(line: 241, column: 9, scope: !953)
!1004 = !DILocation(line: 246, column: 27, scope: !953)
!1005 = !DILocation(line: 246, column: 19, scope: !953)
!1006 = !DILocation(line: 246, column: 46, scope: !953)
!1007 = !DILocation(line: 246, column: 5, scope: !953)
!1008 = !DILocation(line: 247, column: 17, scope: !953)
!1009 = !DILocation(line: 248, column: 5, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 248, column: 5)
!1011 = distinct !DILexicalBlock(scope: !953, file: !3, line: 248, column: 5)
!1012 = !DILocation(line: 248, column: 5, scope: !1011)
!1013 = !DILocation(line: 0, scope: !1001)
!1014 = !DILocation(line: 248, column: 5, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 248, column: 5)
!1016 = !DILocation(line: 249, column: 5, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 249, column: 5)
!1018 = distinct !DILexicalBlock(scope: !953, file: !3, line: 249, column: 5)
!1019 = !DILocation(line: 249, column: 5, scope: !1018)
!1020 = !DILocation(line: 249, column: 5, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 249, column: 5)
!1022 = !DILocation(line: 251, column: 1, scope: !953)
!1023 = distinct !DISubprogram(name: "spec_mem_fread", scope: !3, file: !3, line: 253, type: !1024, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1026)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!19, !13, !8, !6, !19, !9, !9}
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032, !1033}
!1027 = !DILocalVariable(name: "fds", arg: 1, scope: !1023, file: !3, line: 253, type: !13)
!1028 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1023, file: !3, line: 253, type: !8)
!1029 = !DILocalVariable(name: "buf", arg: 3, scope: !1023, file: !3, line: 253, type: !6)
!1030 = !DILocalVariable(name: "size", arg: 4, scope: !1023, file: !3, line: 253, type: !19)
!1031 = !DILocalVariable(name: "num", arg: 5, scope: !1023, file: !3, line: 253, type: !9)
!1032 = !DILocalVariable(name: "fd", arg: 6, scope: !1023, file: !3, line: 253, type: !9)
!1033 = !DILocalVariable(name: "rc", scope: !1023, file: !3, line: 254, type: !19)
!1034 = !DILocation(line: 0, scope: !1023)
!1035 = !DILocation(line: 255, column: 5, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 255, column: 5)
!1037 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 255, column: 5)
!1038 = !DILocation(line: 255, column: 5, scope: !1037)
!1039 = !DILocation(line: 255, column: 5, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 255, column: 5)
!1041 = !DILocation(line: 256, column: 12, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 256, column: 9)
!1043 = !DILocation(line: 256, column: 16, scope: !1042)
!1044 = !DILocation(line: 257, column: 10, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 256, column: 45)
!1046 = !DILocation(line: 257, column: 2, scope: !1045)
!1047 = !DILocation(line: 258, column: 2, scope: !1045)
!1048 = !DILocation(line: 260, column: 9, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 260, column: 9)
!1050 = !DILocation(line: 260, column: 17, scope: !1049)
!1051 = !DILocation(line: 260, column: 22, scope: !1049)
!1052 = !DILocation(line: 260, column: 9, scope: !1023)
!1053 = !DILocation(line: 261, column: 10, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 260, column: 28)
!1055 = !DILocation(line: 261, column: 2, scope: !1054)
!1056 = !DILocation(line: 262, column: 2, scope: !1054)
!1057 = !DILocation(line: 264, column: 17, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 264, column: 9)
!1059 = !DILocation(line: 264, column: 32, scope: !1058)
!1060 = !DILocation(line: 264, column: 21, scope: !1058)
!1061 = !DILocation(line: 264, column: 9, scope: !1023)
!1062 = !DILocation(line: 265, column: 2, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 265, column: 2)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 265, column: 2)
!1065 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 264, column: 37)
!1066 = !DILocation(line: 265, column: 2, scope: !1064)
!1067 = !DILocation(line: 265, column: 2, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 265, column: 2)
!1069 = !DILocation(line: 268, column: 29, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 268, column: 9)
!1071 = !DILocation(line: 268, column: 28, scope: !1070)
!1072 = !DILocation(line: 268, column: 21, scope: !1070)
!1073 = !DILocation(line: 268, column: 34, scope: !1070)
!1074 = !DILocation(line: 268, column: 9, scope: !1023)
!1075 = !DILocation(line: 269, column: 20, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 268, column: 50)
!1077 = !DILocation(line: 269, column: 35, scope: !1076)
!1078 = !DILocation(line: 274, column: 23, scope: !1023)
!1079 = !DILocation(line: 270, column: 5, scope: !1076)
!1080 = !DILocation(line: 0, scope: !1070)
!1081 = !DILocation(line: 273, column: 27, scope: !1023)
!1082 = !DILocation(line: 273, column: 19, scope: !1023)
!1083 = !DILocation(line: 273, column: 5, scope: !1023)
!1084 = !DILocation(line: 274, column: 17, scope: !1023)
!1085 = !DILocation(line: 275, column: 5, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 275, column: 5)
!1087 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 275, column: 5)
!1088 = !DILocation(line: 275, column: 5, scope: !1087)
!1089 = !DILocation(line: 275, column: 5, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 275, column: 5)
!1091 = !DILocation(line: 276, column: 5, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 276, column: 5)
!1093 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 276, column: 5)
!1094 = !DILocation(line: 276, column: 5, scope: !1093)
!1095 = !DILocation(line: 276, column: 5, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 276, column: 5)
!1097 = !DILocation(line: 278, column: 1, scope: !1023)
!1098 = distinct !DISubprogram(name: "spec_mem_getc", scope: !3, file: !3, line: 280, type: !1099, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!9, !13, !8, !9}
!1101 = !{!1102, !1103, !1104, !1105}
!1102 = !DILocalVariable(name: "fds", arg: 1, scope: !1098, file: !3, line: 280, type: !13)
!1103 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1098, file: !3, line: 280, type: !8)
!1104 = !DILocalVariable(name: "fd", arg: 3, scope: !1098, file: !3, line: 280, type: !9)
!1105 = !DILocalVariable(name: "rc", scope: !1098, file: !3, line: 281, type: !9)
!1106 = !DILocation(line: 0, scope: !1098)
!1107 = !DILocation(line: 282, column: 5, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 282, column: 5)
!1109 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 282, column: 5)
!1110 = !DILocation(line: 282, column: 5, scope: !1109)
!1111 = !DILocation(line: 282, column: 5, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 282, column: 5)
!1113 = !DILocation(line: 283, column: 12, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 283, column: 9)
!1115 = !DILocation(line: 283, column: 16, scope: !1114)
!1116 = !DILocation(line: 284, column: 10, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 283, column: 45)
!1118 = !DILocation(line: 284, column: 2, scope: !1117)
!1119 = !DILocation(line: 285, column: 2, scope: !1117)
!1120 = !DILocation(line: 287, column: 9, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 287, column: 9)
!1122 = !DILocation(line: 287, column: 17, scope: !1121)
!1123 = !DILocation(line: 287, column: 22, scope: !1121)
!1124 = !DILocation(line: 287, column: 9, scope: !1098)
!1125 = !DILocation(line: 288, column: 10, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 287, column: 28)
!1127 = !DILocation(line: 288, column: 2, scope: !1126)
!1128 = !DILocation(line: 289, column: 2, scope: !1126)
!1129 = !DILocation(line: 291, column: 17, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 291, column: 9)
!1131 = !DILocation(line: 291, column: 32, scope: !1130)
!1132 = !DILocation(line: 291, column: 21, scope: !1130)
!1133 = !DILocation(line: 291, column: 9, scope: !1098)
!1134 = !DILocation(line: 292, column: 2, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 292, column: 2)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 292, column: 2)
!1137 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 291, column: 37)
!1138 = !DILocation(line: 292, column: 2, scope: !1136)
!1139 = !DILocation(line: 292, column: 2, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 292, column: 2)
!1141 = !DILocation(line: 295, column: 18, scope: !1098)
!1142 = !DILocation(line: 295, column: 33, scope: !1098)
!1143 = !DILocation(line: 295, column: 10, scope: !1098)
!1144 = !DILocation(line: 296, column: 5, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 296, column: 5)
!1146 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 296, column: 5)
!1147 = !DILocation(line: 296, column: 5, scope: !1146)
!1148 = !DILocation(line: 296, column: 5, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 296, column: 5)
!1150 = !DILocation(line: 297, column: 5, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 297, column: 5)
!1152 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 297, column: 5)
!1153 = !DILocation(line: 297, column: 5, scope: !1152)
!1154 = !DILocation(line: 297, column: 5, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 297, column: 5)
!1156 = !DILocation(line: 299, column: 1, scope: !1098)
!1157 = distinct !DISubprogram(name: "spec_mem_ungetc", scope: !3, file: !3, line: 301, type: !1158, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!9, !13, !8, !9, !9}
!1160 = !{!1161, !1162, !1163, !1164, !1165}
!1161 = !DILocalVariable(name: "fds", arg: 1, scope: !1157, file: !3, line: 301, type: !13)
!1162 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1157, file: !3, line: 301, type: !8)
!1163 = !DILocalVariable(name: "ch", arg: 3, scope: !1157, file: !3, line: 301, type: !9)
!1164 = !DILocalVariable(name: "fd", arg: 4, scope: !1157, file: !3, line: 301, type: !9)
!1165 = !DILocalVariable(name: "rc", scope: !1157, file: !3, line: 302, type: !9)
!1166 = !DILocation(line: 0, scope: !1157)
!1167 = !DILocation(line: 303, column: 5, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 303, column: 5)
!1169 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 303, column: 5)
!1170 = !DILocation(line: 303, column: 5, scope: !1169)
!1171 = !DILocation(line: 303, column: 5, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 303, column: 5)
!1173 = !DILocation(line: 304, column: 12, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 304, column: 9)
!1175 = !DILocation(line: 304, column: 16, scope: !1174)
!1176 = !DILocation(line: 305, column: 10, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 304, column: 45)
!1178 = !DILocation(line: 305, column: 2, scope: !1177)
!1179 = !DILocation(line: 306, column: 2, scope: !1177)
!1180 = !DILocation(line: 308, column: 9, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 308, column: 9)
!1182 = !DILocation(line: 308, column: 17, scope: !1181)
!1183 = !DILocation(line: 308, column: 22, scope: !1181)
!1184 = !DILocation(line: 308, column: 9, scope: !1157)
!1185 = !DILocation(line: 309, column: 10, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 308, column: 28)
!1187 = !DILocation(line: 309, column: 2, scope: !1186)
!1188 = !DILocation(line: 310, column: 2, scope: !1186)
!1189 = !DILocation(line: 312, column: 17, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 312, column: 9)
!1191 = !DILocation(line: 312, column: 21, scope: !1190)
!1192 = !DILocation(line: 312, column: 9, scope: !1157)
!1193 = !DILocation(line: 313, column: 10, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 312, column: 27)
!1195 = !DILocation(line: 313, column: 2, scope: !1194)
!1196 = !DILocation(line: 314, column: 2, scope: !1194)
!1197 = !DILocation(line: 316, column: 17, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 316, column: 9)
!1199 = !DILocation(line: 316, column: 21, scope: !1198)
!1200 = !DILocation(line: 316, column: 9, scope: !1198)
!1201 = !DILocation(line: 316, column: 36, scope: !1198)
!1202 = !DILocation(line: 316, column: 9, scope: !1157)
!1203 = !DILocation(line: 317, column: 10, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 316, column: 43)
!1205 = !DILocation(line: 317, column: 2, scope: !1204)
!1206 = !DILocation(line: 318, column: 2, scope: !1204)
!1207 = !DILocation(line: 320, column: 5, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 320, column: 5)
!1209 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 320, column: 5)
!1210 = !DILocation(line: 320, column: 5, scope: !1209)
!1211 = !DILocation(line: 320, column: 5, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 320, column: 5)
!1213 = !DILocation(line: 321, column: 5, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 321, column: 5)
!1215 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 321, column: 5)
!1216 = !DILocation(line: 321, column: 5, scope: !1215)
!1217 = !DILocation(line: 321, column: 5, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 321, column: 5)
!1219 = !DILocation(line: 322, column: 5, scope: !1157)
!1220 = distinct !DISubprogram(name: "spec_mem_lseek", scope: !3, file: !3, line: 325, type: !1221, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1223)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!19, !13, !8, !9, !19, !9}
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229}
!1224 = !DILocalVariable(name: "fds", arg: 1, scope: !1220, file: !3, line: 325, type: !13)
!1225 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1220, file: !3, line: 325, type: !8)
!1226 = !DILocalVariable(name: "fd", arg: 3, scope: !1220, file: !3, line: 325, type: !9)
!1227 = !DILocalVariable(name: "offset", arg: 4, scope: !1220, file: !3, line: 325, type: !19)
!1228 = !DILocalVariable(name: "whence", arg: 5, scope: !1220, file: !3, line: 325, type: !9)
!1229 = !DILocalVariable(name: "cur_pos", scope: !1220, file: !3, line: 326, type: !19)
!1230 = !DILocation(line: 0, scope: !1220)
!1231 = !DILocation(line: 328, column: 12, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 328, column: 9)
!1233 = !DILocation(line: 328, column: 16, scope: !1232)
!1234 = !DILocation(line: 329, column: 10, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 328, column: 45)
!1236 = !DILocation(line: 329, column: 2, scope: !1235)
!1237 = !DILocation(line: 330, column: 2, scope: !1235)
!1238 = !DILocation(line: 332, column: 9, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 332, column: 9)
!1240 = !DILocation(line: 332, column: 17, scope: !1239)
!1241 = !DILocation(line: 332, column: 22, scope: !1239)
!1242 = !DILocation(line: 332, column: 9, scope: !1220)
!1243 = !DILocation(line: 333, column: 17, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 332, column: 28)
!1245 = !DILocation(line: 333, column: 9, scope: !1244)
!1246 = !DILocation(line: 334, column: 2, scope: !1244)
!1247 = !DILocation(line: 334, column: 8, scope: !1244)
!1248 = !DILocation(line: 335, column: 2, scope: !1244)
!1249 = !DILocation(line: 338, column: 23, scope: !1220)
!1250 = !DILocation(line: 339, column: 5, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 339, column: 5)
!1252 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 339, column: 5)
!1253 = !DILocation(line: 339, column: 5, scope: !1252)
!1254 = !DILocation(line: 339, column: 5, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 339, column: 5)
!1256 = !DILocation(line: 340, column: 9, scope: !1220)
!1257 = !DILocation(line: 345, column: 31, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 344, column: 14)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 342, column: 14)
!1260 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 340, column: 9)
!1261 = !DILocation(line: 347, column: 9, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 347, column: 9)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 347, column: 9)
!1264 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 346, column: 10)
!1265 = !DILocation(line: 347, column: 9, scope: !1263)
!1266 = !DILocation(line: 347, column: 9, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 347, column: 9)
!1268 = !DILocation(line: 348, column: 9, scope: !1264)
!1269 = !DILocation(line: 348, column: 15, scope: !1264)
!1270 = !DILocation(line: 349, column: 9, scope: !1264)
!1271 = !DILocation(line: 0, scope: !1259)
!1272 = !DILocation(line: 0, scope: !1260)
!1273 = !DILocation(line: 352, column: 21, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 352, column: 9)
!1275 = !DILocation(line: 352, column: 9, scope: !1220)
!1276 = !DILocation(line: 353, column: 9, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 353, column: 9)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 352, column: 26)
!1279 = !DILocation(line: 353, column: 9, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 353, column: 9)
!1281 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 353, column: 9)
!1282 = !DILocation(line: 354, column: 21, scope: !1278)
!1283 = !DILocation(line: 355, column: 9, scope: !1278)
!1284 = !DILocation(line: 355, column: 15, scope: !1278)
!1285 = !DILocation(line: 356, column: 9, scope: !1278)
!1286 = !DILocation(line: 359, column: 5, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 359, column: 5)
!1288 = !DILocation(line: 359, column: 5, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 359, column: 5)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 359, column: 5)
!1291 = !DILocation(line: 360, column: 20, scope: !1220)
!1292 = !DILocation(line: 361, column: 1, scope: !1220)
!1293 = distinct !DISubprogram(name: "spec_mem_rewind", scope: !3, file: !3, line: 363, type: !1099, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1294)
!1294 = !{!1295, !1296, !1297}
!1295 = !DILocalVariable(name: "fds", arg: 1, scope: !1293, file: !3, line: 363, type: !13)
!1296 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1293, file: !3, line: 363, type: !8)
!1297 = !DILocalVariable(name: "fd", arg: 3, scope: !1293, file: !3, line: 363, type: !9)
!1298 = !DILocation(line: 0, scope: !1293)
!1299 = !DILocation(line: 364, column: 5, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 364, column: 5)
!1301 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 364, column: 5)
!1302 = !DILocation(line: 364, column: 5, scope: !1301)
!1303 = !DILocation(line: 364, column: 5, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 364, column: 5)
!1305 = !DILocation(line: 365, column: 5, scope: !1293)
!1306 = !DILocation(line: 366, column: 5, scope: !1293)
!1307 = distinct !DISubprogram(name: "spec_mem_reset", scope: !3, file: !3, line: 369, type: !1099, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1308)
!1308 = !{!1309, !1310, !1311}
!1309 = !DILocalVariable(name: "fds", arg: 1, scope: !1307, file: !3, line: 369, type: !13)
!1310 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1307, file: !3, line: 369, type: !8)
!1311 = !DILocalVariable(name: "fd", arg: 3, scope: !1307, file: !3, line: 369, type: !9)
!1312 = !DILocation(line: 0, scope: !1307)
!1313 = !DILocation(line: 370, column: 5, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 370, column: 5)
!1315 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 370, column: 5)
!1316 = !DILocation(line: 370, column: 5, scope: !1315)
!1317 = !DILocation(line: 370, column: 5, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 370, column: 5)
!1319 = !DILocation(line: 371, column: 12, scope: !1307)
!1320 = !DILocation(line: 371, column: 20, scope: !1307)
!1321 = !DILocation(line: 371, column: 36, scope: !1307)
!1322 = !DILocation(line: 371, column: 5, scope: !1307)
!1323 = !DILocation(line: 372, column: 17, scope: !1307)
!1324 = !DILocation(line: 373, column: 5, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 373, column: 5)
!1326 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 373, column: 5)
!1327 = !DILocation(line: 373, column: 5, scope: !1326)
!1328 = !DILocation(line: 373, column: 5, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 373, column: 5)
!1330 = !DILocation(line: 374, column: 5, scope: !1307)
!1331 = distinct !DISubprogram(name: "spec_mem_get_length", scope: !3, file: !3, line: 377, type: !1332, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1334)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!19, !13, !8, !9}
!1334 = !{!1335, !1336, !1337}
!1335 = !DILocalVariable(name: "fds", arg: 1, scope: !1331, file: !3, line: 377, type: !13)
!1336 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1331, file: !3, line: 377, type: !8)
!1337 = !DILocalVariable(name: "fd", arg: 3, scope: !1331, file: !3, line: 377, type: !9)
!1338 = !DILocation(line: 0, scope: !1331)
!1339 = !DILocation(line: 378, column: 9, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 378, column: 9)
!1341 = !DILocation(line: 378, column: 17, scope: !1340)
!1342 = !DILocation(line: 378, column: 22, scope: !1340)
!1343 = !DILocation(line: 378, column: 9, scope: !1331)
!1344 = !DILocation(line: 379, column: 10, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 378, column: 28)
!1346 = !DILocation(line: 379, column: 2, scope: !1345)
!1347 = !DILocation(line: 380, column: 2, scope: !1345)
!1348 = !DILocation(line: 382, column: 5, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 382, column: 5)
!1350 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 382, column: 5)
!1351 = !DILocation(line: 382, column: 5, scope: !1350)
!1352 = !DILocation(line: 382, column: 5, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 382, column: 5)
!1354 = !DILocation(line: 383, column: 20, scope: !1331)
!1355 = !DILocation(line: 383, column: 5, scope: !1331)
!1356 = !DILocation(line: 384, column: 1, scope: !1331)
!1357 = distinct !DISubprogram(name: "spec_mem_fopen", scope: !3, file: !3, line: 386, type: !1358, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1360)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!9, !13, !8, !433, !433}
!1360 = !{!1361, !1362, !1363, !1364, !1365}
!1361 = !DILocalVariable(name: "fds", arg: 1, scope: !1357, file: !3, line: 386, type: !13)
!1362 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1357, file: !3, line: 386, type: !8)
!1363 = !DILocalVariable(name: "filename", arg: 3, scope: !1357, file: !3, line: 386, type: !433)
!1364 = !DILocalVariable(name: "mode", arg: 4, scope: !1357, file: !3, line: 386, type: !433)
!1365 = !DILocalVariable(name: "fd", scope: !1357, file: !3, line: 387, type: !9)
!1366 = !DILocation(line: 0, scope: !1357)
!1367 = !DILocation(line: 387, column: 19, scope: !1357)
!1368 = !DILocation(line: 387, column: 14, scope: !1357)
!1369 = !DILocation(line: 388, column: 12, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 388, column: 9)
!1371 = !DILocation(line: 388, column: 16, scope: !1370)
!1372 = !DILocation(line: 389, column: 9, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 388, column: 45)
!1374 = !DILocation(line: 389, column: 15, scope: !1373)
!1375 = !DILocation(line: 390, column: 9, scope: !1373)
!1376 = !DILocation(line: 392, column: 5, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 392, column: 5)
!1378 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 392, column: 5)
!1379 = !DILocation(line: 392, column: 5, scope: !1378)
!1380 = !DILocation(line: 392, column: 5, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 392, column: 5)
!1382 = !DILocation(line: 393, column: 5, scope: !1357)
!1383 = !DILocation(line: 393, column: 13, scope: !1357)
!1384 = !DILocation(line: 393, column: 18, scope: !1357)
!1385 = !DILocation(line: 397, column: 9, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 397, column: 9)
!1387 = !DILocation(line: 397, column: 9, scope: !1357)
!1388 = !DILocation(line: 398, column: 13, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 398, column: 13)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 397, column: 25)
!1391 = !DILocation(line: 398, column: 21, scope: !1389)
!1392 = !DILocation(line: 398, column: 13, scope: !1390)
!1393 = !DILocation(line: 399, column: 55, scope: !1389)
!1394 = !DILocation(line: 399, column: 13, scope: !1389)
!1395 = !DILocation(line: 0, scope: !1307, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 401, column: 13, scope: !1389)
!1397 = !DILocation(line: 370, column: 5, scope: !1314, inlinedAt: !1396)
!1398 = !DILocation(line: 370, column: 5, scope: !1315, inlinedAt: !1396)
!1399 = !DILocation(line: 370, column: 5, scope: !1318, inlinedAt: !1396)
!1400 = !DILocation(line: 371, column: 20, scope: !1307, inlinedAt: !1396)
!1401 = !DILocation(line: 371, column: 36, scope: !1307, inlinedAt: !1396)
!1402 = !DILocation(line: 371, column: 5, scope: !1307, inlinedAt: !1396)
!1403 = !DILocation(line: 372, column: 17, scope: !1307, inlinedAt: !1396)
!1404 = !DILocation(line: 373, column: 5, scope: !1325, inlinedAt: !1396)
!1405 = !DILocation(line: 373, column: 5, scope: !1326, inlinedAt: !1396)
!1406 = !DILocation(line: 373, column: 5, scope: !1329, inlinedAt: !1396)
!1407 = !DILocation(line: 0, scope: !1293, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 403, column: 9, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 402, column: 16)
!1410 = !DILocation(line: 364, column: 5, scope: !1300, inlinedAt: !1408)
!1411 = !DILocation(line: 364, column: 5, scope: !1301, inlinedAt: !1408)
!1412 = !DILocation(line: 364, column: 5, scope: !1304, inlinedAt: !1408)
!1413 = !DILocation(line: 365, column: 5, scope: !1293, inlinedAt: !1408)
!1414 = !DILocation(line: 403, column: 9, scope: !1409)
!1415 = !DILocation(line: 406, column: 1, scope: !1357)
!1416 = !DISubprogram(name: "strtol", scope: !500, file: !500, line: 177, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!23, !432, !1419, !9}
!1419 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!1420 = distinct !DISubprogram(name: "spec_mem_open", scope: !3, file: !3, line: 408, type: !1421, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1423)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!9, !13, !8, !11, !9}
!1423 = !{!1424, !1425, !1426, !1427, !1428}
!1424 = !DILocalVariable(name: "fds", arg: 1, scope: !1420, file: !3, line: 408, type: !13)
!1425 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1420, file: !3, line: 408, type: !8)
!1426 = !DILocalVariable(name: "filename", arg: 3, scope: !1420, file: !3, line: 408, type: !11)
!1427 = !DILocalVariable(name: "mode", arg: 4, scope: !1420, file: !3, line: 408, type: !9)
!1428 = !DILocalVariable(name: "fd", scope: !1420, file: !3, line: 409, type: !9)
!1429 = !DILocation(line: 0, scope: !1420)
!1430 = !DILocation(line: 409, column: 19, scope: !1420)
!1431 = !DILocation(line: 409, column: 14, scope: !1420)
!1432 = !DILocation(line: 410, column: 12, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 410, column: 9)
!1434 = !DILocation(line: 410, column: 16, scope: !1433)
!1435 = !DILocation(line: 411, column: 9, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 410, column: 45)
!1437 = !DILocation(line: 411, column: 15, scope: !1436)
!1438 = !DILocation(line: 412, column: 9, scope: !1436)
!1439 = !DILocation(line: 414, column: 5, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 414, column: 5)
!1441 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 414, column: 5)
!1442 = !DILocation(line: 414, column: 5, scope: !1441)
!1443 = !DILocation(line: 414, column: 5, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 414, column: 5)
!1445 = !DILocation(line: 415, column: 5, scope: !1420)
!1446 = !DILocation(line: 415, column: 13, scope: !1420)
!1447 = !DILocation(line: 415, column: 18, scope: !1420)
!1448 = !DILocation(line: 416, column: 27, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 416, column: 9)
!1450 = !DILocation(line: 417, column: 18, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 417, column: 13)
!1452 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 416, column: 47)
!1453 = !DILocation(line: 417, column: 13, scope: !1452)
!1454 = !DILocation(line: 0, scope: !1307, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 418, column: 13, scope: !1451)
!1456 = !DILocation(line: 370, column: 5, scope: !1314, inlinedAt: !1455)
!1457 = !DILocation(line: 370, column: 5, scope: !1315, inlinedAt: !1455)
!1458 = !DILocation(line: 370, column: 5, scope: !1318, inlinedAt: !1455)
!1459 = !DILocation(line: 371, column: 20, scope: !1307, inlinedAt: !1455)
!1460 = !DILocation(line: 371, column: 36, scope: !1307, inlinedAt: !1455)
!1461 = !DILocation(line: 371, column: 5, scope: !1307, inlinedAt: !1455)
!1462 = !DILocation(line: 372, column: 17, scope: !1307, inlinedAt: !1455)
!1463 = !DILocation(line: 373, column: 5, scope: !1325, inlinedAt: !1455)
!1464 = !DILocation(line: 373, column: 5, scope: !1326, inlinedAt: !1455)
!1465 = !DILocation(line: 373, column: 5, scope: !1329, inlinedAt: !1455)
!1466 = !DILocation(line: 419, column: 18, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 419, column: 13)
!1468 = !DILocation(line: 419, column: 13, scope: !1452)
!1469 = !DILocation(line: 420, column: 55, scope: !1467)
!1470 = !DILocation(line: 420, column: 13, scope: !1467)
!1471 = !DILocation(line: 0, scope: !1293, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 422, column: 13, scope: !1467)
!1473 = !DILocation(line: 364, column: 5, scope: !1300, inlinedAt: !1472)
!1474 = !DILocation(line: 364, column: 5, scope: !1301, inlinedAt: !1472)
!1475 = !DILocation(line: 364, column: 5, scope: !1304, inlinedAt: !1472)
!1476 = !DILocation(line: 365, column: 5, scope: !1293, inlinedAt: !1472)
!1477 = !DILocation(line: 0, scope: !1293, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 424, column: 9, scope: !1449)
!1479 = !DILocation(line: 364, column: 5, scope: !1300, inlinedAt: !1478)
!1480 = !DILocation(line: 364, column: 5, scope: !1301, inlinedAt: !1478)
!1481 = !DILocation(line: 364, column: 5, scope: !1304, inlinedAt: !1478)
!1482 = !DILocation(line: 365, column: 5, scope: !1293, inlinedAt: !1478)
!1483 = !DILocation(line: 427, column: 1, scope: !1420)
!1484 = distinct !DISubprogram(name: "spec_mem_write", scope: !3, file: !3, line: 429, type: !954, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1485)
!1485 = !{!1486, !1487, !1488, !1489, !1490}
!1486 = !DILocalVariable(name: "fds", arg: 1, scope: !1484, file: !3, line: 429, type: !13)
!1487 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1484, file: !3, line: 429, type: !8)
!1488 = !DILocalVariable(name: "fd", arg: 3, scope: !1484, file: !3, line: 429, type: !9)
!1489 = !DILocalVariable(name: "buf", arg: 4, scope: !1484, file: !3, line: 429, type: !6)
!1490 = !DILocalVariable(name: "size", arg: 5, scope: !1484, file: !3, line: 429, type: !19)
!1491 = !DILocation(line: 0, scope: !1484)
!1492 = !DILocation(line: 430, column: 5, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 430, column: 5)
!1494 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 430, column: 5)
!1495 = !DILocation(line: 430, column: 5, scope: !1494)
!1496 = !DILocation(line: 430, column: 5, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 430, column: 5)
!1498 = !DILocation(line: 431, column: 12, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 431, column: 9)
!1500 = !DILocation(line: 431, column: 16, scope: !1499)
!1501 = !DILocation(line: 432, column: 10, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 431, column: 45)
!1503 = !DILocation(line: 432, column: 2, scope: !1502)
!1504 = !DILocation(line: 433, column: 2, scope: !1502)
!1505 = !DILocation(line: 435, column: 9, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 435, column: 9)
!1507 = !DILocation(line: 435, column: 17, scope: !1506)
!1508 = !DILocation(line: 435, column: 22, scope: !1506)
!1509 = !DILocation(line: 435, column: 9, scope: !1484)
!1510 = !DILocation(line: 440, column: 20, scope: !1484)
!1511 = !DILocation(line: 440, column: 24, scope: !1484)
!1512 = !DILocation(line: 440, column: 41, scope: !1484)
!1513 = !DILocation(line: 440, column: 31, scope: !1484)
!1514 = !DILocation(line: 440, column: 5, scope: !1484)
!1515 = !DILocation(line: 436, column: 17, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 435, column: 28)
!1517 = !DILocation(line: 436, column: 9, scope: !1516)
!1518 = !DILocation(line: 437, column: 2, scope: !1516)
!1519 = !DILocation(line: 437, column: 8, scope: !1516)
!1520 = !DILocation(line: 438, column: 2, scope: !1516)
!1521 = !DILocation(line: 441, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 440, column: 48)
!1523 = distinct !{!1523, !1514, !1524}
!1524 = !DILocation(line: 442, column: 5, scope: !1484)
!1525 = !DILocation(line: 443, column: 20, scope: !1484)
!1526 = !DILocation(line: 443, column: 24, scope: !1484)
!1527 = !DILocation(line: 443, column: 5, scope: !1484)
!1528 = !DILocation(line: 444, column: 17, scope: !1484)
!1529 = !DILocation(line: 445, column: 31, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 445, column: 9)
!1531 = !DILocation(line: 445, column: 21, scope: !1530)
!1532 = !DILocation(line: 445, column: 9, scope: !1484)
!1533 = !DILocation(line: 446, column: 21, scope: !1530)
!1534 = !DILocation(line: 446, column: 9, scope: !1530)
!1535 = !DILocation(line: 447, column: 5, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 447, column: 5)
!1537 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 447, column: 5)
!1538 = !DILocation(line: 447, column: 5, scope: !1537)
!1539 = !DILocation(line: 447, column: 5, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 447, column: 5)
!1541 = !DILocation(line: 449, column: 1, scope: !1484)
!1542 = distinct !DISubprogram(name: "spec_mem_fwrite", scope: !3, file: !3, line: 451, type: !1024, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1543)
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549}
!1544 = !DILocalVariable(name: "fds", arg: 1, scope: !1542, file: !3, line: 451, type: !13)
!1545 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1542, file: !3, line: 451, type: !8)
!1546 = !DILocalVariable(name: "buf", arg: 3, scope: !1542, file: !3, line: 451, type: !6)
!1547 = !DILocalVariable(name: "size", arg: 4, scope: !1542, file: !3, line: 451, type: !19)
!1548 = !DILocalVariable(name: "num", arg: 5, scope: !1542, file: !3, line: 451, type: !9)
!1549 = !DILocalVariable(name: "fd", arg: 6, scope: !1542, file: !3, line: 451, type: !9)
!1550 = !DILocation(line: 0, scope: !1542)
!1551 = !DILocation(line: 452, column: 5, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 452, column: 5)
!1553 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 452, column: 5)
!1554 = !DILocation(line: 452, column: 5, scope: !1553)
!1555 = !DILocation(line: 452, column: 5, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 452, column: 5)
!1557 = !DILocation(line: 453, column: 12, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 453, column: 9)
!1559 = !DILocation(line: 453, column: 16, scope: !1558)
!1560 = !DILocation(line: 454, column: 10, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 453, column: 45)
!1562 = !DILocation(line: 454, column: 2, scope: !1561)
!1563 = !DILocation(line: 455, column: 2, scope: !1561)
!1564 = !DILocation(line: 457, column: 9, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 457, column: 9)
!1566 = !DILocation(line: 457, column: 17, scope: !1565)
!1567 = !DILocation(line: 457, column: 22, scope: !1565)
!1568 = !DILocation(line: 457, column: 9, scope: !1542)
!1569 = !DILocation(line: 461, column: 20, scope: !1542)
!1570 = !DILocation(line: 461, column: 24, scope: !1542)
!1571 = !DILocation(line: 461, column: 49, scope: !1542)
!1572 = !DILocation(line: 461, column: 39, scope: !1542)
!1573 = !DILocation(line: 461, column: 5, scope: !1542)
!1574 = !DILocation(line: 458, column: 10, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 457, column: 28)
!1576 = !DILocation(line: 458, column: 2, scope: !1575)
!1577 = !DILocation(line: 459, column: 2, scope: !1575)
!1578 = !DILocation(line: 462, column: 9, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 461, column: 56)
!1580 = distinct !{!1580, !1573, !1581}
!1581 = !DILocation(line: 463, column: 5, scope: !1542)
!1582 = !DILocation(line: 464, column: 20, scope: !1542)
!1583 = !DILocation(line: 464, column: 24, scope: !1542)
!1584 = !DILocation(line: 464, column: 5, scope: !1542)
!1585 = !DILocation(line: 465, column: 17, scope: !1542)
!1586 = !DILocation(line: 466, column: 31, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 466, column: 9)
!1588 = !DILocation(line: 466, column: 21, scope: !1587)
!1589 = !DILocation(line: 466, column: 9, scope: !1542)
!1590 = !DILocation(line: 467, column: 21, scope: !1587)
!1591 = !DILocation(line: 467, column: 9, scope: !1587)
!1592 = !DILocation(line: 468, column: 5, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 468, column: 5)
!1594 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 468, column: 5)
!1595 = !DILocation(line: 468, column: 5, scope: !1594)
!1596 = !DILocation(line: 468, column: 5, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 468, column: 5)
!1598 = !DILocation(line: 469, column: 5, scope: !1542)
!1599 = distinct !DISubprogram(name: "spec_mem_putc", scope: !3, file: !3, line: 472, type: !1158, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1600)
!1600 = !{!1601, !1602, !1603, !1604}
!1601 = !DILocalVariable(name: "fds", arg: 1, scope: !1599, file: !3, line: 472, type: !13)
!1602 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1599, file: !3, line: 472, type: !8)
!1603 = !DILocalVariable(name: "ch", arg: 3, scope: !1599, file: !3, line: 472, type: !9)
!1604 = !DILocalVariable(name: "fd", arg: 4, scope: !1599, file: !3, line: 472, type: !9)
!1605 = !DILocation(line: 0, scope: !1599)
!1606 = !DILocation(line: 473, column: 5, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 473, column: 5)
!1608 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 473, column: 5)
!1609 = !DILocation(line: 473, column: 5, scope: !1608)
!1610 = !DILocation(line: 473, column: 5, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 473, column: 5)
!1612 = !DILocation(line: 474, column: 12, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 474, column: 9)
!1614 = !DILocation(line: 474, column: 16, scope: !1613)
!1615 = !DILocation(line: 475, column: 10, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 474, column: 45)
!1617 = !DILocation(line: 475, column: 2, scope: !1616)
!1618 = !DILocation(line: 476, column: 2, scope: !1616)
!1619 = !DILocation(line: 478, column: 9, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 478, column: 9)
!1621 = !DILocation(line: 478, column: 17, scope: !1620)
!1622 = !DILocation(line: 478, column: 22, scope: !1620)
!1623 = !DILocation(line: 478, column: 9, scope: !1599)
!1624 = !DILocation(line: 479, column: 10, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 478, column: 28)
!1626 = !DILocation(line: 479, column: 2, scope: !1625)
!1627 = !DILocation(line: 480, column: 2, scope: !1625)
!1628 = !DILocation(line: 482, column: 34, scope: !1599)
!1629 = !DILocation(line: 482, column: 13, scope: !1599)
!1630 = !DILocation(line: 482, column: 25, scope: !1599)
!1631 = !DILocation(line: 482, column: 28, scope: !1599)
!1632 = !DILocation(line: 482, column: 5, scope: !1599)
!1633 = !DILocation(line: 482, column: 32, scope: !1599)
!1634 = !DILocation(line: 483, column: 17, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 483, column: 9)
!1636 = !DILocation(line: 483, column: 31, scope: !1635)
!1637 = !DILocation(line: 483, column: 21, scope: !1635)
!1638 = !DILocation(line: 483, column: 9, scope: !1599)
!1639 = !DILocation(line: 484, column: 21, scope: !1635)
!1640 = !DILocation(line: 484, column: 9, scope: !1635)
!1641 = !DILocation(line: 485, column: 5, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 485, column: 5)
!1643 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 485, column: 5)
!1644 = !DILocation(line: 485, column: 5, scope: !1643)
!1645 = !DILocation(line: 485, column: 5, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 485, column: 5)
!1647 = !DILocation(line: 486, column: 5, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 486, column: 5)
!1649 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 486, column: 5)
!1650 = !DILocation(line: 486, column: 5, scope: !1649)
!1651 = !DILocation(line: 486, column: 5, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 486, column: 5)
!1653 = !DILocation(line: 487, column: 5, scope: !1599)
!1654 = distinct !DISubprogram(name: "spec_mem_feof", scope: !3, file: !3, line: 490, type: !1099, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1655)
!1655 = !{!1656, !1657, !1658}
!1656 = !DILocalVariable(name: "fds", arg: 1, scope: !1654, file: !3, line: 490, type: !13)
!1657 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1654, file: !3, line: 490, type: !8)
!1658 = !DILocalVariable(name: "fd", arg: 3, scope: !1654, file: !3, line: 490, type: !9)
!1659 = !DILocation(line: 0, scope: !1654)
!1660 = !DILocation(line: 491, column: 12, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 491, column: 9)
!1662 = !DILocation(line: 491, column: 16, scope: !1661)
!1663 = !DILocation(line: 492, column: 10, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 491, column: 45)
!1665 = !DILocation(line: 492, column: 2, scope: !1664)
!1666 = !DILocation(line: 493, column: 2, scope: !1664)
!1667 = !DILocation(line: 495, column: 5, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 495, column: 5)
!1669 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 495, column: 5)
!1670 = !DILocation(line: 495, column: 5, scope: !1669)
!1671 = !DILocation(line: 495, column: 5, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 495, column: 5)
!1673 = !DILocation(line: 496, column: 13, scope: !1654)
!1674 = !DILocation(line: 496, column: 21, scope: !1654)
!1675 = !DILocation(line: 496, column: 36, scope: !1654)
!1676 = !DILocation(line: 496, column: 25, scope: !1654)
!1677 = !DILocation(line: 496, column: 5, scope: !1654)
!1678 = distinct !DISubprogram(name: "spec_mem_close", scope: !3, file: !3, line: 499, type: !1099, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1679)
!1679 = !{!1680, !1681, !1682}
!1680 = !DILocalVariable(name: "fds", arg: 1, scope: !1678, file: !3, line: 499, type: !13)
!1681 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1678, file: !3, line: 499, type: !8)
!1682 = !DILocalVariable(name: "fd", arg: 3, scope: !1678, file: !3, line: 499, type: !9)
!1683 = !DILocation(line: 0, scope: !1678)
!1684 = !DILocation(line: 500, column: 12, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 500, column: 9)
!1686 = !DILocation(line: 500, column: 16, scope: !1685)
!1687 = !DILocation(line: 501, column: 10, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 500, column: 45)
!1689 = !DILocation(line: 501, column: 2, scope: !1688)
!1690 = !DILocation(line: 502, column: 2, scope: !1688)
!1691 = !DILocation(line: 504, column: 9, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 504, column: 9)
!1693 = !DILocation(line: 504, column: 17, scope: !1692)
!1694 = !DILocation(line: 504, column: 22, scope: !1692)
!1695 = !DILocation(line: 504, column: 9, scope: !1678)
!1696 = !DILocation(line: 505, column: 17, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 504, column: 28)
!1698 = !DILocation(line: 505, column: 9, scope: !1697)
!1699 = !DILocation(line: 506, column: 2, scope: !1697)
!1700 = !DILocation(line: 506, column: 8, scope: !1697)
!1701 = !DILocation(line: 507, column: 2, scope: !1697)
!1702 = !DILocation(line: 509, column: 18, scope: !1678)
!1703 = !DILocation(line: 511, column: 5, scope: !1678)
!1704 = !DILocation(line: 512, column: 1, scope: !1678)
!1705 = distinct !DISubprogram(name: "spec_empty", scope: !3, file: !3, line: 514, type: !903, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1706)
!1706 = !{!1707}
!1707 = !DILocalVariable(name: "fd", arg: 1, scope: !1705, file: !3, line: 514, type: !9)
!1708 = !DILocation(line: 0, scope: !1705)
!1709 = !DILocation(line: 515, column: 5, scope: !1705)
!1710 = distinct !DISubprogram(name: "spec_initbufs", scope: !3, file: !3, line: 518, type: !1711, scopeLine: 518, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null}
!1713 = !DILocation(line: 527, column: 1, scope: !1710)
!1714 = distinct !DISubprogram(name: "spec_compress", scope: !3, file: !3, line: 529, type: !1715, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1717)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !9, !9, !8}
!1717 = !{!1718, !1719, !1720, !1721, !1722}
!1718 = !DILocalVariable(name: "in", arg: 1, scope: !1714, file: !3, line: 529, type: !9)
!1719 = !DILocalVariable(name: "out", arg: 2, scope: !1714, file: !3, line: 529, type: !9)
!1720 = !DILocalVariable(name: "lev", arg: 3, scope: !1714, file: !3, line: 529, type: !8)
!1721 = !DILocalVariable(name: "in_open", scope: !1714, file: !3, line: 531, type: !9)
!1722 = !DILocalVariable(name: "out_open", scope: !1714, file: !3, line: 532, type: !9)
!1723 = !DILocation(line: 0, scope: !1714)
!1724 = !DILocation(line: 531, column: 19, scope: !1714)
!1725 = !DILocation(line: 531, column: 31, scope: !1714)
!1726 = !DILocation(line: 532, column: 20, scope: !1714)
!1727 = !DILocation(line: 532, column: 33, scope: !1714)
!1728 = !DILocation(line: 533, column: 42, scope: !1714)
!1729 = !DILocation(line: 533, column: 5, scope: !1714)
!1730 = !DILocation(line: 533, column: 17, scope: !1714)
!1731 = !DILocation(line: 533, column: 22, scope: !1714)
!1732 = !DILocation(line: 538, column: 5, scope: !1714)
!1733 = !DILocation(line: 543, column: 5, scope: !1714)
!1734 = !DILocation(line: 543, column: 17, scope: !1714)
!1735 = !DILocation(line: 543, column: 22, scope: !1714)
!1736 = !DILocation(line: 544, column: 5, scope: !1714)
!1737 = !DILocation(line: 544, column: 18, scope: !1714)
!1738 = !DILocation(line: 544, column: 23, scope: !1714)
!1739 = !DILocation(line: 545, column: 1, scope: !1714)
!1740 = !DISubprogram(name: "compressStream", scope: !3, file: !3, line: 46, type: !1741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !9, !9, !525}
!1743 = !DISubprogram(name: "uncompressStream", scope: !3, file: !3, line: 45, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1744 = distinct !DISubprogram(name: "debug_time", scope: !3, file: !3, line: 561, type: !1745, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!9}
!1747 = !DILocation(line: 569, column: 5, scope: !1744)
!1748 = distinct !DISubprogram(name: "sum_str_to_hex", scope: !3, file: !3, line: 603, type: !1749, scopeLine: 604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1751)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!6, !11, !9}
!1751 = !{!1752, !1753, !1754, !1755}
!1752 = !DILocalVariable(name: "sum", arg: 1, scope: !1748, file: !3, line: 603, type: !11)
!1753 = !DILocalVariable(name: "bits", arg: 2, scope: !1748, file: !3, line: 603, type: !9)
!1754 = !DILocalVariable(name: "i", scope: !1748, file: !3, line: 605, type: !9)
!1755 = !DILocalVariable(name: "gen_sum", scope: !1748, file: !3, line: 606, type: !6)
!1756 = !DILocation(line: 0, scope: !1748)
!1757 = !DILocation(line: 610, column: 63, scope: !1748)
!1758 = !DILocation(line: 610, column: 68, scope: !1748)
!1759 = !DILocation(line: 610, column: 32, scope: !1748)
!1760 = !DILocation(line: 611, column: 17, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 611, column: 9)
!1762 = !DILocation(line: 611, column: 9, scope: !1748)
!1763 = !DILocation(line: 616, column: 18, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 616, column: 5)
!1765 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 616, column: 5)
!1766 = !DILocation(line: 616, column: 5, scope: !1765)
!1767 = !DILocation(line: 612, column: 17, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 611, column: 26)
!1769 = !DILocation(line: 612, column: 87, scope: !1768)
!1770 = !DILocation(line: 612, column: 9, scope: !1768)
!1771 = !DILocation(line: 613, column: 9, scope: !1768)
!1772 = !DILocation(line: 617, column: 44, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 616, column: 35)
!1774 = !DILocation(line: 617, column: 39, scope: !1773)
!1775 = !DILocalVariable(name: "digit", arg: 1, scope: !1776, file: !3, line: 595, type: !12)
!1776 = distinct !DISubprogram(name: "hex_char_to_num", scope: !3, file: !3, line: 595, type: !1777, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1779)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!7, !12}
!1779 = !{!1775, !1780}
!1780 = !DILocalVariable(name: "__res", scope: !1781, file: !3, line: 598, type: !9)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 598, column: 14)
!1782 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 597, column: 9)
!1783 = !DILocation(line: 0, scope: !1776, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 617, column: 23, scope: !1773)
!1785 = !DILocation(line: 597, column: 21, scope: !1782, inlinedAt: !1784)
!1786 = !DILocation(line: 597, column: 9, scope: !1776, inlinedAt: !1784)
!1787 = !DILocation(line: 598, column: 14, scope: !1788, inlinedAt: !1784)
!1788 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 598, column: 14)
!1789 = !DILocation(line: 0, scope: !1781, inlinedAt: !1784)
!1790 = !DILocation(line: 598, column: 14, scope: !1782, inlinedAt: !1784)
!1791 = !DILocation(line: 598, column: 7, scope: !1782, inlinedAt: !1784)
!1792 = !DILocation(line: 597, column: 15, scope: !1782, inlinedAt: !1784)
!1793 = !DILocation(line: 600, column: 7, scope: !1782, inlinedAt: !1784)
!1794 = !DILocation(line: 0, scope: !1782, inlinedAt: !1784)
!1795 = !DILocation(line: 617, column: 49, scope: !1773)
!1796 = !DILocation(line: 617, column: 81, scope: !1773)
!1797 = !DILocation(line: 617, column: 73, scope: !1773)
!1798 = !DILocation(line: 0, scope: !1776, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 617, column: 57, scope: !1773)
!1800 = !DILocation(line: 597, column: 21, scope: !1782, inlinedAt: !1799)
!1801 = !DILocation(line: 597, column: 9, scope: !1776, inlinedAt: !1799)
!1802 = !DILocation(line: 598, column: 14, scope: !1788, inlinedAt: !1799)
!1803 = !DILocation(line: 0, scope: !1781, inlinedAt: !1799)
!1804 = !DILocation(line: 598, column: 14, scope: !1782, inlinedAt: !1799)
!1805 = !DILocation(line: 598, column: 7, scope: !1782, inlinedAt: !1799)
!1806 = !DILocation(line: 597, column: 15, scope: !1782, inlinedAt: !1799)
!1807 = !DILocation(line: 600, column: 7, scope: !1782, inlinedAt: !1799)
!1808 = !DILocation(line: 0, scope: !1782, inlinedAt: !1799)
!1809 = !DILocation(line: 617, column: 55, scope: !1773)
!1810 = !DILocation(line: 617, column: 9, scope: !1773)
!1811 = !DILocation(line: 617, column: 20, scope: !1773)
!1812 = !DILocation(line: 616, column: 31, scope: !1764)
!1813 = distinct !{!1813, !1766, !1814}
!1814 = !DILocation(line: 618, column: 5, scope: !1765)
!1815 = !DILocation(line: 620, column: 5, scope: !1748)
!1816 = distinct !DISubprogram(name: "spec_mem_alloc_fds", scope: !3, file: !3, line: 638, type: !1817, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!13, !8}
!1819 = !{!1820, !1821}
!1820 = !DILocalVariable(name: "fd_limit", arg: 1, scope: !1816, file: !3, line: 638, type: !8)
!1821 = !DILocalVariable(name: "fds", scope: !1816, file: !3, line: 639, type: !13)
!1822 = !DILocation(line: 0, scope: !1816)
!1823 = !DILocation(line: 642, column: 5, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 642, column: 5)
!1825 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 642, column: 5)
!1826 = !DILocation(line: 642, column: 5, scope: !1825)
!1827 = !DILocation(line: 642, column: 5, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 642, column: 5)
!1829 = !DILocation(line: 644, column: 61, scope: !1816)
!1830 = !DILocation(line: 644, column: 51, scope: !1816)
!1831 = !DILocation(line: 644, column: 49, scope: !1816)
!1832 = !DILocation(line: 644, column: 24, scope: !1816)
!1833 = !DILocation(line: 645, column: 13, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 645, column: 9)
!1835 = !DILocation(line: 645, column: 9, scope: !1816)
!1836 = !DILocation(line: 646, column: 17, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 645, column: 22)
!1838 = !DILocation(line: 646, column: 9, scope: !1837)
!1839 = !DILocation(line: 647, column: 9, scope: !1837)
!1840 = !DILocation(line: 651, column: 5, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 651, column: 5)
!1842 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 651, column: 5)
!1843 = !DILocation(line: 651, column: 5, scope: !1842)
!1844 = !DILocation(line: 651, column: 5, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 651, column: 5)
!1846 = !DILocation(line: 654, column: 1, scope: !1816)
!1847 = distinct !DISubprogram(name: "spec_mem_free_fds", scope: !3, file: !3, line: 656, type: !1848, scopeLine: 656, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !13, !8}
!1850 = !{!1851, !1852, !1853}
!1851 = !DILocalVariable(name: "fds", arg: 1, scope: !1847, file: !3, line: 656, type: !13)
!1852 = !DILocalVariable(name: "fd_limit", arg: 2, scope: !1847, file: !3, line: 656, type: !8)
!1853 = !DILocalVariable(name: "i", scope: !1847, file: !3, line: 657, type: !8)
!1854 = !DILocation(line: 0, scope: !1847)
!1855 = !DILocation(line: 660, column: 5, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 660, column: 5)
!1857 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 660, column: 5)
!1858 = !DILocation(line: 660, column: 5, scope: !1857)
!1859 = !DILocation(line: 660, column: 5, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 660, column: 5)
!1861 = !DILocation(line: 661, column: 5, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 661, column: 5)
!1863 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 661, column: 5)
!1864 = !DILocation(line: 661, column: 5, scope: !1863)
!1865 = !DILocation(line: 661, column: 5, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 661, column: 5)
!1867 = !DILocation(line: 662, column: 13, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 662, column: 9)
!1869 = !DILocation(line: 662, column: 9, scope: !1847)
!1870 = !DILocation(line: 663, column: 22, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 663, column: 9)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 663, column: 9)
!1873 = !DILocation(line: 663, column: 9, scope: !1872)
!1874 = !DILocation(line: 664, column: 24, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 664, column: 17)
!1876 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 663, column: 39)
!1877 = !DILocation(line: 664, column: 28, scope: !1875)
!1878 = !DILocation(line: 664, column: 17, scope: !1876)
!1879 = !DILocation(line: 666, column: 17, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 664, column: 37)
!1881 = !DILocation(line: 668, column: 28, scope: !1880)
!1882 = !DILocation(line: 669, column: 13, scope: !1880)
!1883 = !DILocation(line: 663, column: 35, scope: !1871)
!1884 = distinct !{!1884, !1873, !1885}
!1885 = !DILocation(line: 670, column: 9, scope: !1872)
!1886 = !DILocation(line: 673, column: 5, scope: !1847)
!1887 = !DILocation(line: 675, column: 1, scope: !1847)
!1888 = !DISubprogram(name: "free", scope: !500, file: !500, line: 555, type: !1889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !5}
!1891 = !DISubprogram(name: "realloc", scope: !500, file: !500, line: 551, type: !1892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!5, !5, !487}
!1894 = !DISubprogram(name: "__ctype_tolower_loc", scope: !1895, file: !1895, line: 81, type: !1896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1895 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1901)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !22, line: 41, baseType: !9)
