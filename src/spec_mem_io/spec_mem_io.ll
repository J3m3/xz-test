; ModuleID = 'spec_mem_io/spec_mem_io.c'
source_filename = "spec_mem_io/spec_mem_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spec_fd_t = type { i64, i64, i64, i32, ptr }
%struct.sha512_state = type { i64, [8 x i64], i32, [128 x i8] }

@dbglvl = dso_local local_unnamed_addr global i32 3, align 4
@.str = private unnamed_addr constant [52 x i8] c"spec_mem_init(fds=0x%p, fd_limit=%u, touch_all=%d)\0A\00", align 1
@spec_fd = dso_local local_unnamed_addr global ptr null, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"spec_mem_init: Overflow in requested size (%ld) for fd %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"spec_mem_init: Error mallocing %ld bytes for fd %d@%p!\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c" fd[%d] limit is %ld bytes (%ld bytes allocated)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"spec_mem_sum: Only SHA-512 is available\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"spec_mem_load: couldn't allocate %d chars for SHA-%d sum\0A\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"spec_mem_load: in-mem fd tmpfd %d@%p is out of range: < 0 || >= fd_limit %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"spec_mem_load: in-mem fd num %d@%p is out of range: < 0 || >= fd_limit %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Can't open file %s: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"spec_mem_load\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Error reading from %s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Compressed size: %ld; Uncompressed size: %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"Computed SHA-%d sum for decompressed input did not match expected\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"  Generated: \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"\0A   Expected: \00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"SHA-%d of decompressed data compared successfully!\0A\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"Decompressed data too large; truncating to requested size %ld\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Duplicating %ld bytes\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"SHA-%d of input file: \00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"spec_mem_read: %d@%p, %p, %ld = \00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"spec_mem_read: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"spec_mem_read(%p, %u, %d, %p, %ld) => EBADF\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"pos (%ld) => len (%ld); returning EOF (0)\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"spec_mem_read: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"spec_mem_fread(%p, %u, %p, (%ld x %d) fd %d) =\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"spec_mem_fread: fd=%d@%p out of range: < 0 || > fd_limit %d!\0A\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"spec_mem_fread: fd=%d@%p is not open\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"spec_mem_fread: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"spec_mem_getc(%p, %u, %d) = \00", align 1
@.str.33 = private unnamed_addr constant [61 x i8] c"spec_mem_getc: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"spec_mem_getc: fd=%d@%p is not open\0A\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"spec_mem_getc: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"spec_mem_ungetc(%p, %u, 0x%02x, %d) = \00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"spec_mem_ungetc: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"spec_mem_ungetc: fd=%d@%p is not open\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"spec_mem_ungetc: pos %ld <= 0\0A\00", align 1
@.str.40 = private unnamed_addr constant [76 x i8] c"spec_mem_ungetc: can't unget something that wasn't what was in the buffer!\0A\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"spec_mem_ungetc: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.42 = private unnamed_addr constant [62 x i8] c"spec_mem_lseek: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c"spec_mem_lseek(%p, %u, %d, %ld, %d) => EBADF\0A\00", align 1
@.str.44 = private unnamed_addr constant [82 x i8] c"spec_mem_lseek(%p, %u, fd=%d, offset=%ld, whence=0x%x): cur pos (%ld) => new pos \00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"(%ld) (WHENCE WAS BAD): EINVAL\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"(%ld) (NEW POS (%ld) WAS < 0): EINVAL\0A\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"(%ld)\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"spec_rewind(%p, %u, %d) called\0A\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"spec_mem_reset(%p, %u, %d) called\0A\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"spec_mem_reset: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"spec_get_length(%p, %u, %d): file not open!\0A\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"spec_mem_get_length(%p, %u, %d) => %ld\0A\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"spec_mem_fopen(%p, %u, '%s', '%s') = %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"spec_mem_open(%p, %u, '%s', 0x%02x) = %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [66 x i8] c"spec_mem_write(fds=0x%p, fd_limit=%u, fd=%d, buf=0x%p, size=%ld)\0A\00", align 1
@.str.56 = private unnamed_addr constant [62 x i8] c"spec_mem_write: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.57 = private unnamed_addr constant [46 x i8] c"spec_mem_write(%p, %u, %d, %p, %ld) => EBADF\0A\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"spec_mem_write\00", align 1
@.str.59 = private unnamed_addr constant [58 x i8] c"  spec_mem_write returns %ld (len=%ld pos=%ld limit=%ld)\0A\00", align 1
@.str.60 = private unnamed_addr constant [75 x i8] c"spec_mem_fwrite(fds=0x%p, fd_limit=%u, buf=0x%p, size=%ld, num=%d, fd=%d)\0A\00", align 1
@.str.61 = private unnamed_addr constant [63 x i8] c"spec_mem_fwrite: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.62 = private unnamed_addr constant [39 x i8] c"spec_mem_fwrite: fd=%d@%p is not open\0A\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"spec_mem_fwrite\00", align 1
@.str.64 = private unnamed_addr constant [58 x i8] c"  spec_mem_fwrite returns %d (len=%ld pos=%ld limit=%ld)\0A\00", align 1
@.str.65 = private unnamed_addr constant [52 x i8] c"spec_putc(fds=0x%p, fd_limit=%u, ch=0x%x, fd=%d) = \00", align 1
@.str.66 = private unnamed_addr constant [61 x i8] c"spec_mem_putc: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"spec_mem_putc: fd=%d@%p is not open\0A\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"spec_mem_putc: new pos for fd %d@%p is %ld\0A\00", align 1
@.str.70 = private unnamed_addr constant [57 x i8] c"spec_feof: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.71 = private unnamed_addr constant [86 x i8] c"spec_mem_feof(fds=0x%p, fd_limit=%u, fd=%d) = %d (len = %ld; pos = %ld; limit = %ld)\0A\00", align 1
@.str.72 = private unnamed_addr constant [62 x i8] c"spec_mem_close: fd=%d@%p out of range: < 0 || > fd_limit %u!\0A\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"spec_mem_close(%p, %u, %d) => EBADF\0A\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.75 = private unnamed_addr constant [53 x i8] c"sum_str_to_hex: couldn't allocate %d chars for hash\0A\00", align 1
@.str.76 = private unnamed_addr constant [62 x i8] c"Hash mismatch at %d: '%02x' (expected) != '%02x' (generated)\0A\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"spec_mem_alloc_fds(%s)\0A\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"MAX_SPEC_FD\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"<variable>\00", align 1
@.str.80 = private unnamed_addr constant [53 x i8] c"Error mallocing space for list of spec_fd_t structs\0A\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"spec_mem_alloc_fds(%u) => %p\0A\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"spec_mem_free_fds(%s)\0A\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"spec_fd\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"  +-> fds=%p fd_limit=%u\0A\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"%s: Error growing buffer for fd %d@%p: %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [36 x i8] c"  grew buffer for fd%d@0x%p to %ld\0A\00", align 1
@str.87 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @spec_mem_init(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %touch_all) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @dbglvl, align 4
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @spec_fd, align 8
  %cmp1 = icmp eq ptr %1, %fds
  %cond = select i1 %cmp1, ptr null, ptr %fds
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %cond, i32 noundef %fd_limit, i32 noundef %touch_all)
  %2 = load ptr, ptr @stdout, align 8
  %call2 = tail call i32 @fflush(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp386.not = icmp eq i32 %fd_limit, 0
  br i1 %cmp386.not, label %for.end48, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %tobool.not = icmp eq i32 %touch_all, 0
  br i1 %tobool.not, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %if.end36.us
  %i.087.us = phi i32 [ %inc.us, %if.end36.us ], [ 0, %for.body.lr.ph ]
  %idxprom.us = zext i32 %i.087.us to i64
  %arrayidx.us = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom.us
  %3 = load i64, ptr %arrayidx.us, align 8
  %4 = getelementptr inbounds i8, ptr %arrayidx.us, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 32, i1 false)
  store i64 %3, ptr %arrayidx.us, align 8
  %cmp12.us = icmp slt i64 %3, 0
  br i1 %cmp12.us, label %if.then13, label %if.end15.us

if.end15.us:                                      ; preds = %for.body.us
  %add16.us = add nuw nsw i64 %3, 1048576
  %call17.us = tail call noalias ptr @malloc(i64 noundef %add16.us) #19
  %buf.us = getelementptr inbounds i8, ptr %arrayidx.us, i64 32
  store ptr %call17.us, ptr %buf.us, align 8
  %cmp23.us = icmp eq ptr %call17.us, null
  br i1 %cmp23.us, label %if.then24, label %if.end27.us

if.end27.us:                                      ; preds = %if.end15.us
  %5 = load i32, ptr @dbglvl, align 4
  %cmp28.us = icmp sgt i32 %5, 4
  br i1 %cmp28.us, label %if.then29.us, label %if.end36.us

if.then29.us:                                     ; preds = %if.end27.us
  %call34.us = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.087.us, i64 noundef %3, i64 noundef %add16.us)
  %6 = load ptr, ptr @stdout, align 8
  %call35.us = tail call i32 @fflush(ptr noundef %6)
  br label %if.end36.us

if.end36.us:                                      ; preds = %if.then29.us, %if.end27.us
  %inc.us = add nuw i32 %i.087.us, 1
  %exitcond105.not = icmp eq i32 %inc.us, %fd_limit
  br i1 %exitcond105.not, label %for.end48, label %for.body.us

for.body:                                         ; preds = %for.body.lr.ph, %if.end46.loopexit
  %i.087 = phi i32 [ %inc, %if.end46.loopexit ], [ 0, %for.body.lr.ph ]
  %idxprom = zext i32 %i.087 to i64
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %7 = load i64, ptr %arrayidx, align 8
  %8 = getelementptr inbounds i8, ptr %arrayidx, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 32, i1 false)
  store i64 %7, ptr %arrayidx, align 8
  %cmp12 = icmp slt i64 %7, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %for.body, %for.body.us
  %.us-phi = phi i64 [ %3, %for.body.us ], [ %7, %for.body ]
  %.us-phi88 = phi i32 [ %i.087.us, %for.body.us ], [ %i.087, %for.body ]
  %9 = load ptr, ptr @stderr, align 8
  %add = add nsw i64 %.us-phi, 1048576
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.1, i64 noundef %add, i32 noundef %.us-phi88) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end15:                                         ; preds = %for.body
  %add16 = add nuw nsw i64 %7, 1048576
  %call17 = tail call noalias ptr @malloc(i64 noundef %add16) #19
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32
  store ptr %call17, ptr %buf, align 8
  %cmp23 = icmp eq ptr %call17, null
  br i1 %cmp23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end15, %if.end15.us
  %.us-phi89 = phi i64 [ %add16.us, %if.end15.us ], [ %add16, %if.end15 ]
  %.us-phi90 = phi i32 [ %i.087.us, %if.end15.us ], [ %i.087, %if.end15 ]
  %10 = load ptr, ptr @stderr, align 8
  %call26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.2, i64 noundef %.us-phi89, i32 noundef %.us-phi90, ptr noundef nonnull %fds) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end27:                                         ; preds = %if.end15
  %11 = load i32, ptr @dbglvl, align 4
  %cmp28 = icmp sgt i32 %11, 4
  br i1 %cmp28, label %if.then29, label %if.end36

if.then29:                                        ; preds = %if.end27
  %call34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.087, i64 noundef %7, i64 noundef %add16)
  %12 = load ptr, ptr @stdout, align 8
  %call35 = tail call i32 @fflush(ptr noundef %12)
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %if.end27
  %cmp3984.not = icmp eq i64 %7, 0
  br i1 %cmp3984.not, label %if.end46.loopexit, label %for.body40

for.body40:                                       ; preds = %if.end36, %for.body40
  %j.085 = phi i64 [ %add45, %for.body40 ], [ 0, %if.end36 ]
  %13 = load ptr, ptr %buf, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %13, i64 %j.085
  store i8 0, ptr %arrayidx44, align 1
  %add45 = add nuw nsw i64 %j.085, 1024
  %cmp39 = icmp slt i64 %add45, %7
  br i1 %cmp39, label %for.body40, label %if.end46.loopexit

if.end46.loopexit:                                ; preds = %for.body40, %if.end36
  %inc = add nuw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %fd_limit
  br i1 %exitcond.not, label %for.end48, label %for.body

for.end48:                                        ; preds = %if.end46.loopexit, %if.end36.us, %if.end
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @spec_mem_sum(ptr nocapture noundef readonly %fd, ptr noundef returned %sum, i32 noundef %bits) local_unnamed_addr #0 {
entry:
  %ctx = alloca %struct.sha512_state, align 8
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %ctx) #22
  %cmp.not = icmp eq i32 %bits, 512
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8
  %1 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 40, i64 1, ptr %0) #23
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq ptr %sum, null
  br i1 %cmp1.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @sha_init(ptr noundef nonnull %ctx) #22
  %len = getelementptr inbounds i8, ptr %fd, i64 8
  %2 = load i64, ptr %len, align 8
  %cmp322 = icmp sgt i64 %2, 0
  br i1 %cmp322, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then2
  %buf = getelementptr inbounds i8, ptr %fd, i64 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %3 = phi i64 [ %2, %for.body.lr.ph ], [ %5, %for.body ]
  %chunk.024 = phi i64 [ 2147483647, %for.body.lr.ph ], [ %spec.select, %for.body ]
  %currpos.023 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %sub = sub nsw i64 %3, %currpos.023
  %spec.select = call i64 @llvm.smin.i64(i64 %sub, i64 %chunk.024)
  %4 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %currpos.023
  %conv = trunc i64 %spec.select to i32
  call void @sha_process(ptr noundef nonnull %ctx, ptr noundef %add.ptr, i32 noundef %conv) #22
  %add = add nsw i64 %spec.select, %currpos.023
  %5 = load i64, ptr %len, align 8
  %cmp3 = icmp slt i64 %add, %5
  br i1 %cmp3, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.then2
  call void @sha_done(ptr noundef nonnull %ctx, ptr noundef nonnull %sum) #22
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.end
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ctx) #22
  ret ptr %sum
}

declare void @sha_init(ptr noundef) local_unnamed_addr #6

declare void @sha_process(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @sha_done(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @spec_mem_load(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %num, ptr noundef %filename, i64 noundef %size, i32 noundef %tmpfd, ptr noundef readonly %sum, i32 noundef %bits) local_unnamed_addr #0 {
entry:
  %ctx.i269 = alloca %struct.sha512_state, align 8
  %ctx.i = alloca %struct.sha512_state, align 8
  %conv = sext i32 %bits to i64
  %div265 = lshr i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %div265) #19
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8
  %div2 = sdiv i32 %bits, 8
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %div2, i32 noundef %bits) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %tmpfd, -1
  %cmp6.not = icmp ult i32 %tmpfd, %fd_limit
  %or.cond = and i1 %cmp4, %cmp6.not
  br i1 %or.cond, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %tmpfd, ptr noundef %fds, i32 noundef %fd_limit) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end10:                                         ; preds = %if.end
  %cmp11 = icmp sgt i32 %num, -1
  %cmp14.not = icmp ult i32 %num, %fd_limit
  %or.cond266 = and i1 %cmp11, %cmp14.not
  br i1 %or.cond266, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end10
  %2 = load ptr, ptr @stderr, align 8
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %num, ptr noundef %fds, i32 noundef %fd_limit) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end18:                                         ; preds = %if.end10
  %call19 = tail call i32 (ptr, i32, ...) @open(ptr noundef %filename, i32 noundef 0) #22
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end18
  %3 = load ptr, ptr @stderr, align 8
  %call23 = tail call ptr @__errno_location() #24
  %4 = load i32, ptr %call23, align 4
  %call24 = tail call ptr @strerror(i32 noundef %4) #22
  %call25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef %filename, ptr noundef %call24) #20
  tail call void @exit(i32 noundef 0) #21
  unreachable

if.end26:                                         ; preds = %if.end18
  %idxprom = zext nneg i32 %tmpfd to i64
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %len, i8 0, i64 20, i1 false)
  %5 = load ptr, ptr %buf, align 8
  %call36311 = tail call i64 @read(i32 noundef %call19, ptr noundef %5, i64 noundef 266338304) #22
  %cmp37312 = icmp sgt i64 %call36311, 0
  br i1 %cmp37312, label %while.body, label %while.end

while.body:                                       ; preds = %if.end26, %if.end55
  %call36313 = phi i64 [ %call36, %if.end55 ], [ %call36311, %if.end26 ]
  %6 = load i64, ptr %len, align 8
  %add = add nsw i64 %6, %call36313
  store i64 %add, ptr %len, align 8
  %cmp42 = icmp ult i64 %call36313, 266338304
  br i1 %cmp42, label %if.end62, label %if.end45

if.end45:                                         ; preds = %while.body
  %add49 = add nsw i64 %add, 266338304
  %7 = load i64, ptr %arrayidx, align 8
  %cmp52 = icmp sgt i64 %add49, %7
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end45
  tail call fastcc void @fd_grow(ptr noundef nonnull %fds, i32 noundef %tmpfd, ptr noundef nonnull @.str.9)
  %.pre = load i64, ptr %len, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end45
  %8 = phi i64 [ %.pre, %if.then54 ], [ %add, %if.end45 ]
  %9 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %8
  %call36 = tail call i64 @read(i32 noundef %call19, ptr noundef %add.ptr, i64 noundef 266338304) #22
  %cmp37 = icmp sgt i64 %call36, 0
  br i1 %cmp37, label %while.body, label %while.end

while.end:                                        ; preds = %if.end55, %if.end26
  %call36.lcssa = phi i64 [ %call36311, %if.end26 ], [ %call36, %if.end55 ]
  %cmp56 = icmp slt i64 %call36.lcssa, 0
  br i1 %cmp56, label %if.then58, label %if.end62

if.then58:                                        ; preds = %while.end
  %10 = load ptr, ptr @stderr, align 8
  %call59 = tail call ptr @__errno_location() #24
  %11 = load i32, ptr %call59, align 4
  %call60 = tail call ptr @strerror(i32 noundef %11) #22
  %call61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef %filename, ptr noundef %call60) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end62:                                         ; preds = %while.body, %while.end
  %call63 = tail call i32 @close(i32 noundef %call19) #22
  %idxprom64 = zext nneg i32 %num to i64
  %arrayidx65 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom64
  %len66 = getelementptr inbounds i8, ptr %arrayidx65, i64 8
  %pos69 = getelementptr inbounds i8, ptr %arrayidx65, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len66, i8 0, i64 16, i1 false)
  %12 = load ptr, ptr @spec_fd, align 8
  %open.i = getelementptr inbounds %struct.spec_fd_t, ptr %12, i64 %idxprom, i32 3
  %13 = load i32, ptr %open.i, align 8
  %open3.i = getelementptr inbounds %struct.spec_fd_t, ptr %12, i64 %idxprom64, i32 3
  %14 = load i32, ptr %open3.i, align 8
  store i32 1, ptr %open3.i, align 8
  %15 = load ptr, ptr @spec_fd, align 8
  %open9.i = getelementptr inbounds %struct.spec_fd_t, ptr %15, i64 %idxprom, i32 3
  store i32 1, ptr %open9.i, align 8
  tail call void @uncompressStream(i32 noundef %tmpfd, i32 noundef %num) #22
  %16 = load ptr, ptr @spec_fd, align 8
  %open12.i = getelementptr inbounds %struct.spec_fd_t, ptr %16, i64 %idxprom, i32 3
  store i32 %13, ptr %open12.i, align 8
  %17 = load ptr, ptr @spec_fd, align 8
  %open15.i = getelementptr inbounds %struct.spec_fd_t, ptr %17, i64 %idxprom64, i32 3
  store i32 %14, ptr %open15.i, align 8
  %18 = load i32, ptr @dbglvl, align 4
  %cmp70 = icmp sgt i32 %18, 1
  br i1 %cmp70, label %if.then72, label %if.end81

if.then72:                                        ; preds = %if.end62
  %19 = load i64, ptr %len, align 8
  %20 = load i64, ptr %len66, align 8
  %call79 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i64 noundef %19, i64 noundef %20)
  %21 = load ptr, ptr @stdout, align 8
  %call80 = tail call i32 @fflush(ptr noundef %21)
  br label %if.end81

if.end81:                                         ; preds = %if.then72, %if.end62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %ctx.i) #22
  %cmp.not.i = icmp eq i32 %bits, 512
  br i1 %cmp.not.i, label %if.then2.i, label %if.then.i

if.then.i:                                        ; preds = %if.end81
  %22 = load ptr, ptr @stderr, align 8
  %23 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 40, i64 1, ptr %22) #23
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.then2.i:                                       ; preds = %if.end81
  call void @sha_init(ptr noundef nonnull %ctx.i) #22
  %24 = load i64, ptr %len66, align 8
  %cmp322.i = icmp sgt i64 %24, 0
  br i1 %cmp322.i, label %for.body.lr.ph.i, label %spec_mem_sum.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.then2.i
  %buf.i = getelementptr inbounds i8, ptr %arrayidx65, i64 32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %25 = phi i64 [ %24, %for.body.lr.ph.i ], [ %27, %for.body.i ]
  %chunk.024.i = phi i64 [ 2147483647, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i ]
  %currpos.023.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
  %sub.i = sub nsw i64 %25, %currpos.023.i
  %spec.select.i = call i64 @llvm.smin.i64(i64 %sub.i, i64 %chunk.024.i)
  %26 = load ptr, ptr %buf.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %26, i64 %currpos.023.i
  %conv.i = trunc i64 %spec.select.i to i32
  call void @sha_process(ptr noundef nonnull %ctx.i, ptr noundef %add.ptr.i, i32 noundef %conv.i) #22
  %add.i = add nsw i64 %spec.select.i, %currpos.023.i
  %27 = load i64, ptr %len66, align 8
  %cmp3.i = icmp slt i64 %add.i, %27
  br i1 %cmp3.i, label %for.body.i, label %spec_mem_sum.exit

spec_mem_sum.exit:                                ; preds = %for.body.i
  call void @sha_done(ptr noundef nonnull %ctx.i, ptr noundef nonnull %call) #22
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ctx.i) #22
  %cmp.i = icmp eq ptr %sum, null
  br i1 %cmp.i, label %if.then91, label %for.body.i267.preheader

spec_mem_sum.exit.thread:                         ; preds = %if.then2.i
  call void @sha_done(ptr noundef nonnull %ctx.i, ptr noundef nonnull %call) #22
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ctx.i) #22
  %cmp.i301 = icmp eq ptr %sum, null
  br i1 %cmp.i301, label %if.then91, label %for.body.i267.preheader

for.body.i267.preheader:                          ; preds = %spec_mem_sum.exit, %spec_mem_sum.exit.thread
  br label %for.body.i267

for.body.i267:                                    ; preds = %for.inc.i.3, %for.body.i267.preheader
  %indvars.iv.i = phi i64 [ 0, %for.body.i267.preheader ], [ %indvars.iv.next.i.3, %for.inc.i.3 ]
  %arrayidx.i = getelementptr inbounds i8, ptr %sum, i64 %indvars.iv.i
  %28 = load i8, ptr %arrayidx.i, align 1
  %arrayidx4.i = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.i
  %29 = load i8, ptr %arrayidx4.i, align 1
  %cmp6.not.i = icmp eq i8 %28, %29
  br i1 %cmp6.not.i, label %for.inc.i, label %if.then8.i

if.then8.i:                                       ; preds = %for.inc.i.2, %for.inc.i.1, %for.inc.i, %for.body.i267
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %for.body.i267 ], [ %indvars.iv.next.i, %for.inc.i ], [ %indvars.iv.next.i.1, %for.inc.i.1 ], [ %indvars.iv.next.i.2, %for.inc.i.2 ]
  %.lcssa333 = phi i8 [ %28, %for.body.i267 ], [ %32, %for.inc.i ], [ %34, %for.inc.i.1 ], [ %36, %for.inc.i.2 ]
  %.lcssa = phi i8 [ %29, %for.body.i267 ], [ %33, %for.inc.i ], [ %35, %for.inc.i.1 ], [ %37, %for.inc.i.2 ]
  %30 = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  %conv5.i = zext i8 %.lcssa to i32
  %conv.i268 = zext i8 %.lcssa333 to i32
  %31 = load ptr, ptr @stderr, align 8
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.76, i32 noundef %30, i32 noundef %conv.i268, i32 noundef %conv5.i) #20
  br label %if.then91

for.inc.i:                                        ; preds = %for.body.i267
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %sum, i64 %indvars.iv.next.i
  %32 = load i8, ptr %arrayidx.i.1, align 1
  %arrayidx4.i.1 = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.next.i
  %33 = load i8, ptr %arrayidx4.i.1, align 1
  %cmp6.not.i.1 = icmp eq i8 %32, %33
  br i1 %cmp6.not.i.1, label %for.inc.i.1, label %if.then8.i

for.inc.i.1:                                      ; preds = %for.inc.i
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %sum, i64 %indvars.iv.next.i.1
  %34 = load i8, ptr %arrayidx.i.2, align 1
  %arrayidx4.i.2 = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.next.i.1
  %35 = load i8, ptr %arrayidx4.i.2, align 1
  %cmp6.not.i.2 = icmp eq i8 %34, %35
  br i1 %cmp6.not.i.2, label %for.inc.i.2, label %if.then8.i

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %arrayidx.i.3 = getelementptr inbounds i8, ptr %sum, i64 %indvars.iv.next.i.2
  %36 = load i8, ptr %arrayidx.i.3, align 1
  %arrayidx4.i.3 = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.next.i.2
  %37 = load i8, ptr %arrayidx4.i.3, align 1
  %cmp6.not.i.3 = icmp eq i8 %36, %37
  br i1 %cmp6.not.i.3, label %for.inc.i.3, label %if.then8.i

for.inc.i.3:                                      ; preds = %for.inc.i.2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 64
  br i1 %exitcond.not.i.3, label %if.end96, label %for.body.i267

if.then91:                                        ; preds = %spec_mem_sum.exit, %if.then8.i, %spec_mem_sum.exit.thread
  %38 = load ptr, ptr @stderr, align 8
  %call92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.12, i32 noundef 512) #20
  %39 = load ptr, ptr @stderr, align 8
  %40 = call i64 @fwrite(ptr nonnull @.str.13, i64 13, i64 1, ptr %39) #23
  %41 = load ptr, ptr @stderr, align 8
  call void @print_sum(ptr noundef %41, ptr noundef nonnull %call, i32 noundef 512)
  %42 = load ptr, ptr @stderr, align 8
  %43 = call i64 @fwrite(ptr nonnull @.str.14, i64 14, i64 1, ptr %42) #23
  %44 = load ptr, ptr @stderr, align 8
  call void @print_sum(ptr noundef %44, ptr noundef %sum, i32 noundef 512)
  %45 = load ptr, ptr @stderr, align 8
  %fputc = call i32 @fputc(i32 10, ptr %45)
  call void @exit(i32 noundef 1) #21
  unreachable

if.end96:                                         ; preds = %for.inc.i.3
  %46 = load i32, ptr @dbglvl, align 4
  %cmp97 = icmp sgt i32 %46, 1
  br i1 %cmp97, label %if.then99, label %if.end102

if.then99:                                        ; preds = %if.end96
  %call100 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef 512)
  %47 = load ptr, ptr @stdout, align 8
  %call101 = call i32 @fflush(ptr noundef %47)
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end96
  %48 = load i64, ptr %len66, align 8
  %cmp106 = icmp sgt i64 %48, %size
  br i1 %cmp106, label %if.then108, label %if.end118

if.then108:                                       ; preds = %if.end102
  %49 = load i32, ptr @dbglvl, align 4
  %cmp109 = icmp sgt i32 %49, 1
  br i1 %cmp109, label %if.then111, label %if.end118.thread

if.then111:                                       ; preds = %if.then108
  %call112 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i64 noundef %size)
  %50 = load ptr, ptr @stdout, align 8
  %call113 = call i32 @fflush(ptr noundef %50)
  br label %if.end118.thread

if.end118.thread:                                 ; preds = %if.then108, %if.then111
  store i64 %size, ptr %len66, align 8
  store i64 0, ptr %pos69, align 8
  br label %if.then2.i274

if.end118:                                        ; preds = %if.end102
  store i64 0, ptr %pos69, align 8
  %cmp126314 = icmp slt i64 %48, %size
  br i1 %cmp126314, label %while.body128.lr.ph, label %if.then2.i274

while.body128.lr.ph:                              ; preds = %if.end118
  %buf150 = getelementptr inbounds i8, ptr %arrayidx65, i64 32
  br label %while.body128

while.body128:                                    ; preds = %while.body128.lr.ph, %if.end147
  %51 = phi i64 [ %48, %while.body128.lr.ph ], [ %add161, %if.end147 ]
  %sub = sub nsw i64 %size, %51
  %spec.select = call i64 @llvm.smin.i64(i64 %sub, i64 %51)
  %52 = load i32, ptr @dbglvl, align 4
  %cmp142 = icmp sgt i32 %52, 3
  br i1 %cmp142, label %if.then144, label %if.end147

if.then144:                                       ; preds = %while.body128
  %call145 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %spec.select)
  %53 = load ptr, ptr @stdout, align 8
  %call146 = call i32 @fflush(ptr noundef %53)
  %.pre320 = load i64, ptr %len66, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %while.body128
  %54 = phi i64 [ %.pre320, %if.then144 ], [ %51, %while.body128 ]
  %55 = load ptr, ptr %buf150, align 8
  %add.ptr154 = getelementptr inbounds i8, ptr %55, i64 %54
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr154, ptr align 1 %55, i64 %spec.select, i1 false)
  %56 = load i64, ptr %len66, align 8
  %add161 = add nsw i64 %56, %spec.select
  store i64 %add161, ptr %len66, align 8
  %cmp126 = icmp slt i64 %add161, %size
  br i1 %cmp126, label %while.body128, label %if.then2.i274

if.then2.i274:                                    ; preds = %if.end147, %if.end118.thread, %if.end118
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %ctx.i269) #22
  call void @sha_init(ptr noundef nonnull %ctx.i269) #22
  %57 = load i64, ptr %len66, align 8
  %cmp322.i276 = icmp sgt i64 %57, 0
  br i1 %cmp322.i276, label %for.body.lr.ph.i278, label %spec_mem_sum.exit289

for.body.lr.ph.i278:                              ; preds = %if.then2.i274
  %buf.i279 = getelementptr inbounds i8, ptr %arrayidx65, i64 32
  br label %for.body.i280

for.body.i280:                                    ; preds = %for.body.i280, %for.body.lr.ph.i278
  %58 = phi i64 [ %57, %for.body.lr.ph.i278 ], [ %60, %for.body.i280 ]
  %chunk.024.i281 = phi i64 [ 2147483647, %for.body.lr.ph.i278 ], [ %spec.select.i284, %for.body.i280 ]
  %currpos.023.i282 = phi i64 [ 0, %for.body.lr.ph.i278 ], [ %add.i287, %for.body.i280 ]
  %sub.i283 = sub nsw i64 %58, %currpos.023.i282
  %spec.select.i284 = call i64 @llvm.smin.i64(i64 %sub.i283, i64 %chunk.024.i281)
  %59 = load ptr, ptr %buf.i279, align 8
  %add.ptr.i285 = getelementptr inbounds i8, ptr %59, i64 %currpos.023.i282
  %conv.i286 = trunc i64 %spec.select.i284 to i32
  call void @sha_process(ptr noundef nonnull %ctx.i269, ptr noundef %add.ptr.i285, i32 noundef %conv.i286) #22
  %add.i287 = add nsw i64 %spec.select.i284, %currpos.023.i282
  %60 = load i64, ptr %len66, align 8
  %cmp3.i288 = icmp slt i64 %add.i287, %60
  br i1 %cmp3.i288, label %for.body.i280, label %spec_mem_sum.exit289

spec_mem_sum.exit289:                             ; preds = %for.body.i280, %if.then2.i274
  call void @sha_done(ptr noundef nonnull %ctx.i269, ptr noundef nonnull %call) #22
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ctx.i269) #22
  %call166 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef 512)
  %61 = load ptr, ptr @stdout, align 8
  br label %for.body.i293

for.body.i293:                                    ; preds = %for.body.i293, %spec_mem_sum.exit289
  %indvars.iv.i294 = phi i64 [ 0, %spec_mem_sum.exit289 ], [ %indvars.iv.next.i298, %for.body.i293 ]
  %arrayidx.i295 = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.i294
  %62 = load i8, ptr %arrayidx.i295, align 1
  %conv.i296 = zext i8 %62 to i32
  %call.i297 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.74, i32 noundef %conv.i296) #22
  %indvars.iv.next.i298 = add nuw nsw i64 %indvars.iv.i294, 1
  %exitcond.not.i299 = icmp eq i64 %indvars.iv.next.i298, 64
  br i1 %exitcond.not.i299, label %print_sum.exit, label %for.body.i293

print_sum.exit:                                   ; preds = %for.body.i293
  %putchar = call i32 @putchar(i32 10)
  ret ptr %call
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @fd_grow(ptr noundef %fds, i32 noundef %fd, ptr noundef %funcname) unnamed_addr #0 {
entry:
  %idxprom = zext nneg i32 %fd to i64
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %0 = load i64, ptr %arrayidx, align 8
  %mul = shl nsw i64 %0, 1
  store i64 %mul, ptr %arrayidx, align 8
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32
  %1 = load ptr, ptr %buf, align 8
  %call = tail call ptr @realloc(ptr noundef %1, i64 noundef %mul) #25
  store ptr %call, ptr %buf, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8
  %call12 = tail call ptr @__errno_location() #24
  %3 = load i32, ptr %call12, align 4
  %call13 = tail call ptr @strerror(i32 noundef %3) #22
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.85, ptr noundef %funcname, i32 noundef %fd, ptr noundef nonnull %fds, ptr noundef %call13) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @dbglvl, align 4
  %cmp15 = icmp sgt i32 %4, 5
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end
  %5 = load i64, ptr %arrayidx, align 8
  %call20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %5)
  %6 = load ptr, ptr @stdout, align 8
  %call21 = tail call i32 @fflush(ptr noundef %6)
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @spec_uncompress(i32 noundef %in, i32 noundef %out) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @spec_fd, align 8
  %idxprom = sext i32 %in to i64
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %idxprom, i32 3
  %1 = load i32, ptr %open, align 8
  %idxprom1 = sext i32 %out to i64
  %open3 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %idxprom1, i32 3
  %2 = load i32, ptr %open3, align 8
  store i32 1, ptr %open3, align 8
  %3 = load ptr, ptr @spec_fd, align 8
  %open9 = getelementptr inbounds %struct.spec_fd_t, ptr %3, i64 %idxprom, i32 3
  store i32 1, ptr %open9, align 8
  tail call void @uncompressStream(i32 noundef %in, i32 noundef %out) #22
  %4 = load ptr, ptr @spec_fd, align 8
  %open12 = getelementptr inbounds %struct.spec_fd_t, ptr %4, i64 %idxprom, i32 3
  store i32 %1, ptr %open12, align 8
  %5 = load ptr, ptr @spec_fd, align 8
  %open15 = getelementptr inbounds %struct.spec_fd_t, ptr %5, i64 %idxprom1, i32 3
  store i32 %2, ptr %open15, align 8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @compare_sum(ptr noundef readonly %ref_sum, ptr noundef readonly %generated, i32 noundef %bits) local_unnamed_addr #10 {
entry:
  %cmp = icmp eq ptr %ref_sum, null
  %cmp1 = icmp eq ptr %generated, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp2.not41 = icmp sgt i32 %bits, 7
  br i1 %cmp2.not41, label %for.body.preheader, label %return

for.body.preheader:                               ; preds = %for.cond.preheader
  %div4958 = lshr i32 %bits, 3
  %wide.trip.count = zext nneg i32 %div4958 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i8, ptr %ref_sum, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr inbounds i8, ptr %generated, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx4, align 1
  %cmp6.not = icmp eq i8 %0, %1
  br i1 %cmp6.not, label %for.inc, label %if.then8

if.then8:                                         ; preds = %for.body
  %arrayidx.le = getelementptr inbounds i8, ptr %ref_sum, i64 %indvars.iv
  %arrayidx4.le = getelementptr inbounds i8, ptr %generated, i64 %indvars.iv
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  %conv5 = zext i8 %1 to i32
  %conv = zext i8 %0 to i32
  %3 = load ptr, ptr @stderr, align 8
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.76, i32 noundef %2, i32 noundef %conv, i32 noundef %conv5) #20
  %4 = load i8, ptr %arrayidx.le, align 1
  %5 = load i8, ptr %arrayidx4.le, align 1
  %cmp21 = icmp ult i8 %4, %5
  %cond = select i1 %cmp21, i32 -1, i32 1
  br label %return

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %return, label %for.body

return:                                           ; preds = %for.inc, %for.cond.preheader, %if.then8, %entry
  %retval.1 = phi i32 [ -1, %entry ], [ %cond, %if.then8 ], [ 0, %for.cond.preheader ], [ 0, %for.inc ]
  ret i32 %retval.1
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_sum(ptr nocapture noundef %out, ptr nocapture noundef readonly %sum, i32 noundef %bits) local_unnamed_addr #10 {
entry:
  %cmp3 = icmp sgt i32 %bits, 7
  br i1 %cmp3, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %div67 = lshr i32 %bits, 3
  %wide.trip.count = zext nneg i32 %div67 to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i8, ptr %sum, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %out, ptr noundef nonnull @.str.74, i32 noundef %conv) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @spec_mem_read(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @dbglvl, align 4
  %cmp = icmp sgt i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %fd, ptr noundef %fds, ptr noundef %buf, i64 noundef %size)
  %1 = load ptr, ptr @stdout, align 8
  %call1 = tail call i32 @fflush(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not
  br i1 %or.cond, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end6:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24
  %3 = load i32, ptr %open, align 8
  %cmp7.not = icmp eq i32 %3, 1
  br i1 %cmp7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end6
  %4 = load ptr, ptr @stderr, align 8
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size) #20
  %call10 = tail call ptr @__errno_location() #24
  store i32 9, ptr %call10, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %5 = load i64, ptr %pos, align 8
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %6 = load i64, ptr %len, align 8
  %cmp16.not = icmp slt i64 %5, %6
  br i1 %cmp16.not, label %if.end29, label %if.then17

if.then17:                                        ; preds = %if.end11
  %7 = load i32, ptr @dbglvl, align 4
  %cmp18 = icmp sgt i32 %7, 4
  br i1 %cmp18, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.then17
  %call26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i64 noundef %5, i64 noundef %6)
  %8 = load ptr, ptr @stdout, align 8
  %call27 = tail call i32 @fflush(ptr noundef %8)
  br label %cleanup

if.end29:                                         ; preds = %if.end11
  %add = add nsw i64 %5, %size
  %cmp36.not = icmp slt i64 %add, %6
  %sub = sub nsw i64 %6, %5
  %rc.0.in = select i1 %cmp36.not, i64 %size, i64 %sub
  %buf48 = getelementptr inbounds i8, ptr %arrayidx, i64 32
  %9 = load ptr, ptr %buf48, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %9, i64 %5
  %sext = shl i64 %rc.0.in, 32
  %conv53 = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %buf, ptr align 1 %arrayidx52, i64 %conv53, i1 false)
  %10 = load i64, ptr %pos, align 8
  %add58 = add nsw i64 %10, %conv53
  store i64 %add58, ptr %pos, align 8
  %11 = load i32, ptr @dbglvl, align 4
  %cmp59 = icmp sgt i32 %11, 5
  br i1 %cmp59, label %if.end64, label %cleanup

if.end64:                                         ; preds = %if.end29
  %rc.0 = trunc i64 %rc.0.in to i32
  %call62 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %rc.0)
  %12 = load ptr, ptr @stdout, align 8
  %call63 = tail call i32 @fflush(ptr noundef %12)
  %.pr = load i32, ptr @dbglvl, align 4
  %cmp65 = icmp sgt i32 %.pr, 5
  br i1 %cmp65, label %if.then67, label %cleanup

if.then67:                                        ; preds = %if.end64
  %13 = load i64, ptr %pos, align 8
  %call71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %13)
  %14 = load ptr, ptr @stdout, align 8
  %call72 = tail call i32 @fflush(ptr noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end64, %if.then67, %if.then17, %if.then19, %if.then8
  %retval.0 = phi i64 [ -1, %if.then8 ], [ 0, %if.then19 ], [ 0, %if.then17 ], [ %conv53, %if.then67 ], [ %conv53, %if.end64 ], [ %conv53, %if.end29 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @spec_mem_fread(ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %buf, i64 noundef %size, i32 noundef %num, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @dbglvl, align 4
  %cmp = icmp sgt i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %buf, i64 noundef %size, i32 noundef %num, i32 noundef %fd)
  %1 = load ptr, ptr @stdout, align 8
  %call1 = tail call i32 @fflush(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not
  br i1 %or.cond, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end6:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24
  %3 = load i32, ptr %open, align 8
  %cmp7.not = icmp eq i32 %3, 1
  br i1 %cmp7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end6
  %4 = load ptr, ptr @stderr, align 8
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef %fd, ptr noundef nonnull %fds) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end10:                                         ; preds = %if.end6
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %5 = load i64, ptr %pos, align 8
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %6 = load i64, ptr %len, align 8
  %cmp15.not = icmp slt i64 %5, %6
  br i1 %cmp15.not, label %if.end22, label %if.then16

if.then16:                                        ; preds = %if.end10
  %7 = load i32, ptr @dbglvl, align 4
  %cmp17 = icmp sgt i32 %7, 5
  br i1 %cmp17, label %if.then18, label %cleanup

if.then18:                                        ; preds = %if.then16
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.87)
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end10
  %conv = sext i32 %num to i64
  %mul = mul nsw i64 %conv, %size
  %add = add nsw i64 %5, %mul
  %cmp29.not = icmp slt i64 %add, %6
  br i1 %cmp29.not, label %if.end39, label %if.then31

if.then31:                                        ; preds = %if.end22
  %sub = sub nsw i64 %6, %5
  %div = sdiv i64 %sub, %size
  %.pre = mul nsw i64 %div, %size
  br label %if.end39

if.end39:                                         ; preds = %if.end22, %if.then31
  %mul47.pre-phi = phi i64 [ %mul, %if.end22 ], [ %.pre, %if.then31 ]
  %rc.0 = phi i64 [ %conv, %if.end22 ], [ %div, %if.then31 ]
  %buf42 = getelementptr inbounds i8, ptr %arrayidx, i64 32
  %8 = load ptr, ptr %buf42, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %8, i64 %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %buf, ptr align 1 %arrayidx46, i64 %rc.0, i1 false)
  %9 = load i64, ptr %pos, align 8
  %add51 = add nsw i64 %9, %mul47.pre-phi
  store i64 %add51, ptr %pos, align 8
  %10 = load i32, ptr @dbglvl, align 4
  %cmp52 = icmp sgt i32 %10, 5
  br i1 %cmp52, label %if.end58, label %cleanup

if.end58:                                         ; preds = %if.end39
  %call56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %mul47.pre-phi)
  %11 = load ptr, ptr @stdout, align 8
  %call57 = tail call i32 @fflush(ptr noundef %11)
  %.pr = load i32, ptr @dbglvl, align 4
  %cmp59 = icmp sgt i32 %.pr, 5
  br i1 %cmp59, label %if.then61, label %cleanup

if.then61:                                        ; preds = %if.end58
  %12 = load i64, ptr %pos, align 8
  %call65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %12)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then18, %if.then61
  %retval.0.ph = phi i64 [ %rc.0, %if.then61 ], [ 0, %if.then18 ]
  %13 = load ptr, ptr @stdout, align 8
  %call66 = tail call i32 @fflush(ptr noundef %13)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end39, %if.end58, %if.then16
  %retval.0 = phi i64 [ 0, %if.then16 ], [ %rc.0, %if.end58 ], [ %rc.0, %if.end39 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i64 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @spec_mem_getc(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @dbglvl, align 4
  %cmp = icmp sgt i32 %0, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd)
  %1 = load ptr, ptr @stdout, align 8
  %call1 = tail call i32 @fflush(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not
  br i1 %or.cond, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.33, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end6:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24
  %3 = load i32, ptr %open, align 8
  %cmp7.not = icmp eq i32 %3, 1
  br i1 %cmp7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end6
  %4 = load ptr, ptr @stderr, align 8
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.34, i32 noundef %fd, ptr noundef nonnull %fds) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end10:                                         ; preds = %if.end6
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %5 = load i64, ptr %pos, align 8
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %6 = load i64, ptr %len, align 8
  %cmp15.not = icmp slt i64 %5, %6
  br i1 %cmp15.not, label %if.end22, label %if.then16

if.then16:                                        ; preds = %if.end10
  %7 = load i32, ptr @dbglvl, align 4
  %cmp17 = icmp sgt i32 %7, 6
  br i1 %cmp17, label %if.then18, label %cleanup

if.then18:                                        ; preds = %if.then16
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.87)
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end10
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32
  %8 = load ptr, ptr %buf, align 8
  %inc = add nsw i64 %5, 1
  store i64 %inc, ptr %pos, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %8, i64 %5
  %9 = load i8, ptr %arrayidx28, align 1
  %conv = zext i8 %9 to i32
  %10 = load i32, ptr @dbglvl, align 4
  %cmp29 = icmp sgt i32 %10, 6
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end22
  %call32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %conv)
  %11 = load ptr, ptr @stdout, align 8
  %call33 = tail call i32 @fflush(ptr noundef %11)
  %.pr = load i32, ptr @dbglvl, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end22
  %12 = phi i32 [ %.pr, %if.then31 ], [ %10, %if.end22 ]
  %cmp35 = icmp sgt i32 %12, 5
  br i1 %cmp35, label %if.then37, label %cleanup

if.then37:                                        ; preds = %if.end34
  %13 = load i64, ptr %pos, align 8
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %13)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then18, %if.then37
  %retval.0.ph = phi i32 [ %conv, %if.then37 ], [ -1, %if.then18 ]
  %14 = load ptr, ptr @stdout, align 8
  %call42 = tail call i32 @fflush(ptr noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end34, %if.then16
  %retval.0 = phi i32 [ -1, %if.then16 ], [ %conv, %if.end34 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 256) i32 @spec_mem_ungetc(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef returned %ch, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @dbglvl, align 4
  %cmp = icmp sgt i32 %0, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv1 = and i32 %ch, 255
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %conv1, i32 noundef %fd)
  %1 = load ptr, ptr @stdout, align 8
  %call2 = tail call i32 @fflush(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp3 = icmp sgt i32 %fd, -1
  %cmp5.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp3, %cmp5.not
  br i1 %or.cond, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8
  %call8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end9:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24
  %3 = load i32, ptr %open, align 8
  %cmp10.not = icmp eq i32 %3, 1
  br i1 %cmp10.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  %4 = load ptr, ptr @stderr, align 8
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.38, i32 noundef %fd, ptr noundef nonnull %fds) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end14:                                         ; preds = %if.end9
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %5 = load i64, ptr %pos, align 8
  %cmp17 = icmp slt i64 %5, 1
  br i1 %cmp17, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end14
  %6 = load ptr, ptr @stderr, align 8
  %call23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.39, i64 noundef %5) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end24:                                         ; preds = %if.end14
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32
  %7 = load ptr, ptr %buf, align 8
  %dec = add nsw i64 %5, -1
  store i64 %dec, ptr %pos, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %7, i64 %dec
  %8 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %8 to i32
  %cmp32.not = icmp eq i32 %conv31, %ch
  br i1 %cmp32.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end24
  %9 = load ptr, ptr @stderr, align 8
  %10 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 75, i64 1, ptr %9) #23
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end36:                                         ; preds = %if.end24
  %11 = load i32, ptr @dbglvl, align 4
  %cmp37 = icmp sgt i32 %11, 6
  br i1 %cmp37, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end36
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef 0)
  %12 = load ptr, ptr @stdout, align 8
  %call41 = tail call i32 @fflush(ptr noundef %12)
  %.pr = load i32, ptr @dbglvl, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36
  %13 = phi i32 [ %.pr, %if.then39 ], [ %11, %if.end36 ]
  %cmp43 = icmp sgt i32 %13, 5
  br i1 %cmp43, label %if.then45, label %if.end51

if.then45:                                        ; preds = %if.end42
  %14 = load i64, ptr %pos, align 8
  %call49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %14)
  %15 = load ptr, ptr @stdout, align 8
  %call50 = tail call i32 @fflush(ptr noundef %15)
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %if.end42
  ret i32 %ch
}

; Function Attrs: nounwind uwtable
define dso_local i64 @spec_mem_lseek(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef %offset, i32 noundef %whence) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %fd, -1
  %cmp1.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end:                                           ; preds = %entry
  %idxprom = zext nneg i32 %fd to i64
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24
  %1 = load i32, ptr %open, align 8
  %cmp2.not = icmp eq i32 %1, 1
  br i1 %cmp2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.43, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef %offset, i32 noundef %whence) #20
  %call5 = tail call ptr @__errno_location() #24
  store i32 9, ptr %call5, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %3 = load i64, ptr %pos, align 8
  %4 = load i32, ptr @dbglvl, align 4
  %cmp9 = icmp sgt i32 %4, 4
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef %offset, i32 noundef %whence, i64 noundef %3)
  %5 = load ptr, ptr @stdout, align 8
  %call12 = tail call i32 @fflush(ptr noundef %5)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6
  switch i32 %whence, label %if.else33 [
    i32 0, label %if.end45
    i32 1, label %if.end45.sink.split
    i32 2, label %if.then26
  ]

if.then26:                                        ; preds = %if.end13
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8
  br label %if.end45.sink.split

if.else33:                                        ; preds = %if.end13
  %6 = load i32, ptr @dbglvl, align 4
  %cmp34 = icmp sgt i32 %6, 4
  br i1 %cmp34, label %if.then35, label %if.end41

if.then35:                                        ; preds = %if.else33
  %7 = load i64, ptr %pos, align 8
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i64 noundef %7)
  %8 = load ptr, ptr @stdout, align 8
  %call40 = tail call i32 @fflush(ptr noundef %8)
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.else33
  %call42 = tail call ptr @__errno_location() #24
  store i32 22, ptr %call42, align 4
  br label %cleanup

if.end45.sink.split:                              ; preds = %if.end13, %if.then26
  %pos.sink = phi ptr [ %len, %if.then26 ], [ %pos, %if.end13 ]
  %9 = load i64, ptr %pos.sink, align 8
  %add = add nsw i64 %9, %offset
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %if.end13
  %add.sink = phi i64 [ %offset, %if.end13 ], [ %add, %if.end45.sink.split ]
  store i64 %add.sink, ptr %pos, align 8
  %cmp49 = icmp slt i64 %add.sink, 0
  %10 = load i32, ptr @dbglvl, align 4
  %cmp51 = icmp sgt i32 %10, 4
  br i1 %cmp49, label %if.then50, label %if.end63

if.then50:                                        ; preds = %if.end45
  br i1 %cmp51, label %if.then52, label %if.end58

if.then52:                                        ; preds = %if.then50
  %call56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i64 noundef %3, i64 noundef %add.sink)
  %11 = load ptr, ptr @stdout, align 8
  %call57 = tail call i32 @fflush(ptr noundef %11)
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %if.then50
  store i64 %3, ptr %pos, align 8
  %call62 = tail call ptr @__errno_location() #24
  store i32 22, ptr %call62, align 4
  br label %cleanup

if.end63:                                         ; preds = %if.end45
  br i1 %cmp51, label %if.then65, label %cleanup

if.then65:                                        ; preds = %if.end63
  %call69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i64 noundef %add.sink)
  %12 = load ptr, ptr @stdout, align 8
  %call70 = tail call i32 @fflush(ptr noundef %12)
  %.pre = load i64, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then65, %if.end58, %if.end41, %if.then3
  %retval.0 = phi i64 [ -1, %if.then3 ], [ -1, %if.end58 ], [ -1, %if.end41 ], [ %.pre, %if.then65 ], [ %add.sink, %if.end63 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @spec_mem_rewind(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @dbglvl, align 4
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd)
  %1 = load ptr, ptr @stdout, align 8
  %call1 = tail call i32 @fflush(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call i64 @spec_mem_lseek(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef 0, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @spec_mem_reset(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #10 {
entry:
  %0 = load i32, ptr @dbglvl, align 4
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd)
  %1 = load ptr, ptr @stdout, align 8
  %call1 = tail call i32 @fflush(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %idxprom = sext i32 %fd to i64
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32
  %2 = load ptr, ptr %buf, align 8
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %3 = load i64, ptr %len, align 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %3, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len, i8 0, i64 16, i1 false)
  %4 = load i32, ptr @dbglvl, align 4
  %cmp9 = icmp sgt i32 %4, 5
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end
  %call14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef 0)
  %5 = load ptr, ptr @stdout, align 8
  %call15 = tail call i32 @fflush(ptr noundef %5)
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @spec_mem_get_length(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #10 {
entry:
  %idxprom = sext i32 %fd to i64
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24
  %0 = load i32, ptr %open, align 8
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.51, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd) #20
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @dbglvl, align 4
  %cmp1 = icmp sgt i32 %2, 4
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %3 = load i64, ptr %len, align 8
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, i64 noundef %3)
  %4 = load ptr, ptr @stdout, align 8
  %call6 = tail call i32 @fflush(ptr noundef %4)
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end
  %len10 = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %5 = load i64, ptr %len10, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ %5, %if.end7 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @spec_mem_fopen(ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %filename, ptr noundef %mode) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strtol(ptr nocapture noundef %filename, ptr noundef null, i32 noundef 10) #22
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, -1
  %cmp2.not = icmp ult i32 %conv, %fd_limit
  %or.cond = and i1 %cmp, %cmp2.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @__errno_location() #24
  store i32 2, ptr %call4, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @dbglvl, align 4
  %cmp5 = icmp sgt i32 %0, 4
  br i1 %cmp5, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %filename, ptr noundef %mode, i32 noundef %conv)
  %1 = load ptr, ptr @stdout, align 8
  %call9 = tail call i32 @fflush(ptr noundef %1)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  %idxprom = and i64 %call, 2147483647
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24
  store i32 1, ptr %open, align 8
  %2 = load i8, ptr %mode, align 1
  switch i8 %2, label %cleanup [
    i8 119, label %if.then15
    i8 114, label %if.then31
  ]

if.then15:                                        ; preds = %if.end10
  %arrayidx16 = getelementptr inbounds i8, ptr %mode, i64 1
  %3 = load i8, ptr %arrayidx16, align 1
  %cmp18 = icmp eq i8 %3, 43
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then15
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %4 = load i64, ptr %pos, align 8
  %call23 = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef %4, i32 noundef 0)
  br label %cleanup

if.else:                                          ; preds = %if.then15
  %5 = load i32, ptr @dbglvl, align 4
  %cmp.i = icmp sgt i32 %5, 4
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv)
  %6 = load ptr, ptr @stdout, align 8
  %call1.i = tail call i32 @fflush(ptr noundef %6)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else
  %buf.i = getelementptr inbounds i8, ptr %arrayidx, i64 32
  %7 = load ptr, ptr %buf.i, align 8
  %len.i = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %8 = load i64, ptr %len.i, align 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %8, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len.i, i8 0, i64 16, i1 false)
  %9 = load i32, ptr @dbglvl, align 4
  %cmp9.i = icmp sgt i32 %9, 5
  br i1 %cmp9.i, label %if.then10.i, label %cleanup

if.then10.i:                                      ; preds = %if.end.i
  %call14.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %conv, ptr noundef nonnull %fds, i64 noundef 0)
  %10 = load ptr, ptr @stdout, align 8
  %call15.i = tail call i32 @fflush(ptr noundef %10)
  br label %cleanup

if.then31:                                        ; preds = %if.end10
  %11 = load i32, ptr @dbglvl, align 4
  %cmp.i56 = icmp sgt i32 %11, 4
  br i1 %cmp.i56, label %if.then.i58, label %spec_mem_rewind.exit

if.then.i58:                                      ; preds = %if.then31
  %call.i59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv)
  %12 = load ptr, ptr @stdout, align 8
  %call1.i60 = tail call i32 @fflush(ptr noundef %12)
  br label %spec_mem_rewind.exit

spec_mem_rewind.exit:                             ; preds = %if.then31, %if.then.i58
  %call2.i = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef 0, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then10.i, %if.end.i, %if.then20, %spec_mem_rewind.exit, %if.end10, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %conv, %if.end10 ], [ %conv, %spec_mem_rewind.exit ], [ %conv, %if.then20 ], [ %conv, %if.end.i ], [ %conv, %if.then10.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @spec_mem_open(ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %filename, i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strtol(ptr nocapture noundef %filename, ptr noundef null, i32 noundef 10) #22
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, -1
  %cmp2.not = icmp ult i32 %conv, %fd_limit
  %or.cond = and i1 %cmp, %cmp2.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @__errno_location() #24
  store i32 2, ptr %call4, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @dbglvl, align 4
  %cmp5 = icmp sgt i32 %0, 4
  br i1 %cmp5, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %filename, i32 noundef %mode, i32 noundef %conv)
  %1 = load ptr, ptr @stdout, align 8
  %call9 = tail call i32 @fflush(ptr noundef %1)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  %idxprom = and i64 %call, 2147483647
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24
  store i32 1, ptr %open, align 8
  %2 = and i32 %mode, 3
  %or.cond56 = icmp eq i32 %2, 0
  br i1 %or.cond56, label %if.else28, label %if.then14

if.then14:                                        ; preds = %if.end10
  %and15 = and i32 %mode, 512
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.then14
  %3 = load i32, ptr @dbglvl, align 4
  %cmp.i = icmp sgt i32 %3, 4
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then17
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv)
  %4 = load ptr, ptr @stdout, align 8
  %call1.i = tail call i32 @fflush(ptr noundef %4)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then17
  %buf.i = getelementptr inbounds i8, ptr %arrayidx, i64 32
  %5 = load ptr, ptr %buf.i, align 8
  %len.i = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %6 = load i64, ptr %len.i, align 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %5, i8 0, i64 %6, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %len.i, i8 0, i64 16, i1 false)
  %7 = load i32, ptr @dbglvl, align 4
  %cmp9.i = icmp sgt i32 %7, 5
  br i1 %cmp9.i, label %if.then10.i, label %if.end19

if.then10.i:                                      ; preds = %if.end.i
  %call14.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %conv, ptr noundef nonnull %fds, i64 noundef 0)
  %8 = load ptr, ptr @stdout, align 8
  %call15.i = tail call i32 @fflush(ptr noundef %8)
  br label %if.end19

if.end19:                                         ; preds = %if.then10.i, %if.end.i, %if.then14
  %and20 = and i32 %mode, 1024
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end19
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %9 = load i64, ptr %pos, align 8
  %call25 = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef %9, i32 noundef 0)
  br label %cleanup

if.else:                                          ; preds = %if.end19
  %10 = load i32, ptr @dbglvl, align 4
  %cmp.i57 = icmp sgt i32 %10, 4
  br i1 %cmp.i57, label %if.then.i59, label %spec_mem_rewind.exit

if.then.i59:                                      ; preds = %if.else
  %call.i60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv)
  %11 = load ptr, ptr @stdout, align 8
  %call1.i61 = tail call i32 @fflush(ptr noundef %11)
  br label %spec_mem_rewind.exit

spec_mem_rewind.exit:                             ; preds = %if.else, %if.then.i59
  %call2.i = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef 0, i32 noundef 0)
  br label %cleanup

if.else28:                                        ; preds = %if.end10
  %12 = load i32, ptr @dbglvl, align 4
  %cmp.i62 = icmp sgt i32 %12, 4
  br i1 %cmp.i62, label %if.then.i65, label %spec_mem_rewind.exit68

if.then.i65:                                      ; preds = %if.else28
  %call.i66 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv)
  %13 = load ptr, ptr @stdout, align 8
  %call1.i67 = tail call i32 @fflush(ptr noundef %13)
  br label %spec_mem_rewind.exit68

spec_mem_rewind.exit68:                           ; preds = %if.else28, %if.then.i65
  %call2.i64 = tail call i64 @spec_mem_lseek(ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %conv, i64 noundef 0, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %spec_mem_rewind.exit68, %spec_mem_rewind.exit, %if.then22, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %conv, %if.then22 ], [ %conv, %spec_mem_rewind.exit ], [ %conv, %spec_mem_rewind.exit68 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @spec_mem_write(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @dbglvl, align 4
  %cmp = icmp sgt i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size)
  %1 = load ptr, ptr @stdout, align 8
  %call1 = tail call i32 @fflush(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not
  br i1 %or.cond, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.56, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end6:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24
  %3 = load i32, ptr %open, align 8
  %cmp7.not = icmp eq i32 %3, 1
  br i1 %cmp7.not, label %while.cond.preheader, label %if.then8

while.cond.preheader:                             ; preds = %if.end6
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %4 = load i64, ptr %pos, align 8
  %add100 = add nsw i64 %4, %size
  %5 = load i64, ptr %arrayidx, align 8
  %cmp16101 = icmp sgt i64 %add100, %5
  br i1 %cmp16101, label %while.body, label %while.end

if.then8:                                         ; preds = %if.end6
  %6 = load ptr, ptr @stderr, align 8
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.57, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd, ptr noundef %buf, i64 noundef %size) #20
  %call10 = tail call ptr @__errno_location() #24
  store i32 9, ptr %call10, align 4
  br label %return

while.body:                                       ; preds = %while.cond.preheader, %while.body
  tail call fastcc void @fd_grow(ptr noundef nonnull %fds, i32 noundef %fd, ptr noundef nonnull @.str.58)
  %7 = load i64, ptr %pos, align 8
  %add = add nsw i64 %7, %size
  %8 = load i64, ptr %arrayidx, align 8
  %cmp16 = icmp sgt i64 %add, %8
  br i1 %cmp16, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %.lcssa = phi i64 [ %4, %while.cond.preheader ], [ %7, %while.body ]
  %buf19 = getelementptr inbounds i8, ptr %arrayidx, i64 32
  %9 = load ptr, ptr %buf19, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %buf, i64 %size, i1 false)
  %10 = load i64, ptr %pos, align 8
  %add26 = add nsw i64 %10, %size
  store i64 %add26, ptr %pos, align 8
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %11 = load i64, ptr %len, align 8
  %cmp32 = icmp sgt i64 %add26, %11
  br i1 %cmp32, label %if.then33, label %if.end40

if.then33:                                        ; preds = %while.end
  store i64 %add26, ptr %len, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %while.end
  %12 = phi i64 [ %add26, %if.then33 ], [ %11, %while.end ]
  %13 = load i32, ptr @dbglvl, align 4
  %cmp41 = icmp sgt i32 %13, 5
  br i1 %cmp41, label %if.then42, label %return

if.then42:                                        ; preds = %if.end40
  %14 = load i64, ptr %arrayidx, align 8
  %call52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i64 noundef %size, i64 noundef %12, i64 noundef %add26, i64 noundef %14)
  %15 = load ptr, ptr @stdout, align 8
  %call53 = tail call i32 @fflush(ptr noundef %15)
  br label %return

return:                                           ; preds = %if.end40, %if.then42, %if.then8
  %retval.0 = phi i64 [ -1, %if.then8 ], [ %size, %if.then42 ], [ %size, %if.end40 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @spec_mem_fwrite(ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %buf, i64 noundef %size, i32 noundef %num, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @dbglvl, align 4
  %cmp = icmp sgt i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef %fds, i32 noundef %fd_limit, ptr noundef %buf, i64 noundef %size, i32 noundef %num, i32 noundef %fd)
  %1 = load ptr, ptr @stdout, align 8
  %call1 = tail call i32 @fflush(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not
  br i1 %or.cond, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.61, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end6:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24
  %3 = load i32, ptr %open, align 8
  %cmp7.not = icmp eq i32 %3, 1
  br i1 %cmp7.not, label %while.cond.preheader, label %if.then8

while.cond.preheader:                             ; preds = %if.end6
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %conv = sext i32 %num to i64
  %mul = mul nsw i64 %conv, %size
  %4 = load i64, ptr %pos, align 8
  %add107 = add nsw i64 %4, %mul
  %5 = load i64, ptr %arrayidx, align 8
  %cmp15108 = icmp sgt i64 %add107, %5
  br i1 %cmp15108, label %while.body, label %while.end

if.then8:                                         ; preds = %if.end6
  %6 = load ptr, ptr @stderr, align 8
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.62, i32 noundef %fd, ptr noundef nonnull %fds) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

while.body:                                       ; preds = %while.cond.preheader, %while.body
  tail call fastcc void @fd_grow(ptr noundef nonnull %fds, i32 noundef %fd, ptr noundef nonnull @.str.63)
  %7 = load i64, ptr %pos, align 8
  %add = add nsw i64 %7, %mul
  %8 = load i64, ptr %arrayidx, align 8
  %cmp15 = icmp sgt i64 %add, %8
  br i1 %cmp15, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %.lcssa = phi i64 [ %4, %while.cond.preheader ], [ %7, %while.body ]
  %buf19 = getelementptr inbounds i8, ptr %arrayidx, i64 32
  %9 = load ptr, ptr %buf19, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %buf, i64 %mul, i1 false)
  %10 = load i64, ptr %pos, align 8
  %add30 = add nsw i64 %10, %mul
  store i64 %add30, ptr %pos, align 8
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %11 = load i64, ptr %len, align 8
  %cmp36 = icmp sgt i64 %add30, %11
  br i1 %cmp36, label %if.then38, label %if.end45

if.then38:                                        ; preds = %while.end
  store i64 %add30, ptr %len, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %while.end
  %12 = phi i64 [ %add30, %if.then38 ], [ %11, %while.end ]
  %13 = load i32, ptr @dbglvl, align 4
  %cmp46 = icmp sgt i32 %13, 5
  br i1 %cmp46, label %if.then48, label %if.end60

if.then48:                                        ; preds = %if.end45
  %14 = load i64, ptr %arrayidx, align 8
  %call58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %num, i64 noundef %12, i64 noundef %add30, i64 noundef %14)
  %15 = load ptr, ptr @stdout, align 8
  %call59 = tail call i32 @fflush(ptr noundef %15)
  br label %if.end60

if.end60:                                         ; preds = %if.then48, %if.end45
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @spec_mem_putc(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef returned %ch, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @dbglvl, align 4
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %ch, i32 noundef %fd)
  %1 = load ptr, ptr @stdout, align 8
  %call1 = tail call i32 @fflush(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp sgt i32 %fd, -1
  %cmp3.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp2, %cmp3.not
  br i1 %or.cond, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.66, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end6:                                          ; preds = %if.end
  %idxprom = zext nneg i32 %fd to i64
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %open = getelementptr inbounds i8, ptr %arrayidx, i64 24
  %3 = load i32, ptr %open, align 8
  %cmp7.not = icmp eq i32 %3, 1
  br i1 %cmp7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end6
  %4 = load ptr, ptr @stderr, align 8
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.67, i32 noundef %fd, ptr noundef nonnull %fds) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end10:                                         ; preds = %if.end6
  %conv = trunc i32 %ch to i8
  %buf = getelementptr inbounds i8, ptr %arrayidx, i64 32
  %5 = load ptr, ptr %buf, align 8
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %6 = load i64, ptr %pos, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, ptr %pos, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %5, i64 %6
  store i8 %conv, ptr %arrayidx15, align 1
  %7 = load i64, ptr %pos, align 8
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %8 = load i64, ptr %len, align 8
  %cmp21 = icmp sgt i64 %7, %8
  br i1 %cmp21, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end10
  store i64 %7, ptr %len, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.end10
  %9 = load i32, ptr @dbglvl, align 4
  %cmp31 = icmp sgt i32 %9, 4
  br i1 %cmp31, label %if.end36, label %if.end45

if.end36:                                         ; preds = %if.end30
  %call34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %ch)
  %10 = load ptr, ptr @stdout, align 8
  %call35 = tail call i32 @fflush(ptr noundef %10)
  %.pr = load i32, ptr @dbglvl, align 4
  %cmp37 = icmp sgt i32 %.pr, 5
  br i1 %cmp37, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end36
  %11 = load i64, ptr %pos, align 8
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %fd, ptr noundef nonnull %fds, i64 noundef %11)
  %12 = load ptr, ptr @stdout, align 8
  %call44 = tail call i32 @fflush(ptr noundef %12)
  br label %if.end45

if.end45:                                         ; preds = %if.end30, %if.then39, %if.end36
  ret i32 %ch
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @spec_mem_feof(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %fd, -1
  %cmp1.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.70, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @dbglvl, align 4
  %cmp2 = icmp sgt i32 %1, 4
  %idxprom = zext nneg i32 %fd to i64
  br i1 %cmp2, label %if.then3, label %if.end17

if.then3:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %pos = getelementptr inbounds i8, ptr %arrayidx, i64 16
  %2 = load i64, ptr %pos, align 8
  %len = getelementptr inbounds i8, ptr %arrayidx, i64 8
  %3 = load i64, ptr %len, align 8
  %cmp6 = icmp sge i64 %2, %3
  %conv = zext i1 %cmp6 to i32
  %4 = load i64, ptr %arrayidx, align 8
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd, i32 noundef %conv, i64 noundef %3, i64 noundef %2, i64 noundef %4)
  %5 = load ptr, ptr @stdout, align 8
  %call16 = tail call i32 @fflush(ptr noundef %5)
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then3
  %arrayidx19 = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom
  %pos20 = getelementptr inbounds i8, ptr %arrayidx19, i64 16
  %6 = load i64, ptr %pos20, align 8
  %len23 = getelementptr inbounds i8, ptr %arrayidx19, i64 8
  %7 = load i64, ptr %len23, align 8
  %cmp24 = icmp sge i64 %6, %7
  %conv25 = zext i1 %cmp24 to i32
  ret i32 %conv25
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @spec_mem_close(ptr noundef %fds, i32 noundef %fd_limit, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %fd, -1
  %cmp1.not = icmp ult i32 %fd, %fd_limit
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.72, i32 noundef %fd, ptr noundef %fds, i32 noundef %fd_limit) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end:                                           ; preds = %entry
  %idxprom = zext nneg i32 %fd to i64
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %idxprom, i32 3
  %1 = load i32, ptr %open, align 8
  %cmp2.not = icmp eq i32 %1, 1
  br i1 %cmp2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.73, ptr noundef nonnull %fds, i32 noundef %fd_limit, i32 noundef %fd) #20
  %call5 = tail call ptr @__errno_location() #24
  store i32 9, ptr %call5, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %open, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @spec_empty(i32 noundef %fd) local_unnamed_addr #13 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @spec_initbufs() local_unnamed_addr #13 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @spec_compress(i32 noundef %in, i32 noundef %out, i32 noundef %lev) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @spec_fd, align 8
  %idxprom = sext i32 %in to i64
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %idxprom, i32 3
  %1 = load i32, ptr %open, align 8
  %idxprom1 = sext i32 %out to i64
  %open3 = getelementptr inbounds %struct.spec_fd_t, ptr %0, i64 %idxprom1, i32 3
  %2 = load i32, ptr %open3, align 8
  store i32 1, ptr %open3, align 8
  %3 = load ptr, ptr @spec_fd, align 8
  %open9 = getelementptr inbounds %struct.spec_fd_t, ptr %3, i64 %idxprom, i32 3
  store i32 1, ptr %open9, align 8
  tail call void @compressStream(i32 noundef %in, i32 noundef %out, i32 noundef %lev) #22
  %4 = load ptr, ptr @spec_fd, align 8
  %open12 = getelementptr inbounds %struct.spec_fd_t, ptr %4, i64 %idxprom, i32 3
  store i32 %1, ptr %open12, align 8
  %5 = load ptr, ptr @spec_fd, align 8
  %open15 = getelementptr inbounds %struct.spec_fd_t, ptr %5, i64 %idxprom1, i32 3
  store i32 %2, ptr %open15, align 8
  ret void
}

declare void @compressStream(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @uncompressStream(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @debug_time() local_unnamed_addr #13 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @sum_str_to_hex(ptr nocapture noundef readonly %sum, i32 noundef %bits) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %bits to i64
  %div27 = lshr i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %div27) #19
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp538 = icmp sgt i32 %bits, 7
  br i1 %cmp538, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %div44344 = lshr i32 %bits, 3
  %wide.trip.count = zext nneg i32 %div44344 to i64
  br label %for.body

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8
  %div2 = sdiv i32 %bits, 8
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %div2) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

for.body:                                         ; preds = %for.body.preheader, %hex_char_to_num.exit37
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %hex_char_to_num.exit37 ]
  %1 = shl nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i8, ptr %sum, i64 %1
  %2 = load i8, ptr %arrayidx, align 1
  %cmp.i = icmp sgt i8 %2, 57
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  %call.i = tail call ptr @__ctype_tolower_loc() #24
  %3 = load ptr, ptr %call.i, align 8
  %idxprom.i = zext nneg i8 %2 to i64
  %arrayidx.i = getelementptr inbounds i32, ptr %3, i64 %idxprom.i
  %4 = load i32, ptr %arrayidx.i, align 4
  %5 = trunc i32 %4 to i8
  %conv4.i = add i8 %5, -87
  br label %hex_char_to_num.exit

if.else.i:                                        ; preds = %for.body
  %sub.i = add i8 %2, -48
  br label %hex_char_to_num.exit

hex_char_to_num.exit:                             ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i8 [ %conv4.i, %if.then.i ], [ %sub.i, %if.else.i ]
  %shl = shl i8 %retval.0.i, 4
  %6 = or disjoint i64 %1, 1
  %arrayidx12 = getelementptr inbounds i8, ptr %sum, i64 %6
  %7 = load i8, ptr %arrayidx12, align 1
  %cmp.i28 = icmp sgt i8 %7, 57
  br i1 %cmp.i28, label %if.then.i32, label %if.else.i29

if.then.i32:                                      ; preds = %hex_char_to_num.exit
  %call.i33 = tail call ptr @__ctype_tolower_loc() #24
  %8 = load ptr, ptr %call.i33, align 8
  %idxprom.i34 = zext nneg i8 %7 to i64
  %arrayidx.i35 = getelementptr inbounds i32, ptr %8, i64 %idxprom.i34
  %9 = load i32, ptr %arrayidx.i35, align 4
  %10 = trunc i32 %9 to i8
  %conv4.i36 = add i8 %10, -87
  br label %hex_char_to_num.exit37

if.else.i29:                                      ; preds = %hex_char_to_num.exit
  %sub.i30 = add i8 %7, -48
  br label %hex_char_to_num.exit37

hex_char_to_num.exit37:                           ; preds = %if.then.i32, %if.else.i29
  %retval.0.i31 = phi i8 [ %conv4.i36, %if.then.i32 ], [ %sub.i30, %if.else.i29 ]
  %or = or i8 %retval.0.i31, %shl
  %arrayidx17 = getelementptr inbounds i8, ptr %call, i64 %indvars.iv
  store i8 %or, ptr %arrayidx17, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %hex_char_to_num.exit37, %for.cond.preheader
  ret ptr %call
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @spec_mem_alloc_fds(i32 noundef %fd_limit) local_unnamed_addr #10 {
entry:
  %0 = load i32, ptr @dbglvl, align 4
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %fd_limit, 3
  %cond = select i1 %cmp1, ptr @.str.78, ptr @.str.79
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, ptr noundef nonnull %cond)
  %1 = load ptr, ptr @stdout, align 8
  %call2 = tail call i32 @fflush(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %add = add i32 %fd_limit, 1
  %conv = zext i32 %add to i64
  %mul = mul nuw nsw i64 %conv, 40
  %calloc = tail call ptr @calloc(i64 1, i64 %mul)
  %cmp4 = icmp eq ptr %calloc, null
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8
  %3 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 52, i64 1, ptr %2) #23
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = load i32, ptr @dbglvl, align 4
  %cmp12 = icmp sgt i32 %4, 4
  br i1 %cmp12, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.end8
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %fd_limit, ptr noundef nonnull %calloc)
  %5 = load ptr, ptr @stdout, align 8
  %call16 = tail call i32 @fflush(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then14, %if.then6
  ret ptr %calloc
}

; Function Attrs: nounwind uwtable
define dso_local void @spec_mem_free_fds(ptr noundef %fds, i32 noundef %fd_limit) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @dbglvl, align 4
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %if.end, label %if.end7

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @spec_fd, align 8
  %cmp1 = icmp eq ptr %1, %fds
  %cond = select i1 %cmp1, ptr @.str.83, ptr @.str.79
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %cond)
  %2 = load ptr, ptr @stdout, align 8
  %call2 = tail call i32 @fflush(ptr noundef %2)
  %.pr = load i32, ptr @dbglvl, align 4
  %cmp3 = icmp sgt i32 %.pr, 4
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef %fds, i32 noundef %fd_limit)
  %3 = load ptr, ptr @stdout, align 8
  %call6 = tail call i32 @fflush(ptr noundef %3)
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.then4, %if.end
  %cmp8.not = icmp ne ptr %fds, null
  %cmp1033 = icmp ne i32 %fd_limit, 0
  %or.cond = and i1 %cmp8.not, %cmp1033
  br i1 %or.cond, label %for.body.preheader, label %if.end20

for.body.preheader:                               ; preds = %if.end7
  %wide.trip.count = zext i32 %fd_limit to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %buf = getelementptr inbounds %struct.spec_fd_t, ptr %fds, i64 %indvars.iv, i32 4
  %4 = load ptr, ptr %buf, align 8
  %cmp11.not = icmp eq ptr %4, null
  br i1 %cmp11.not, label %for.inc, label %if.then12

if.then12:                                        ; preds = %for.body
  tail call void @free(ptr noundef nonnull %4) #22
  store ptr null, ptr %buf, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end20, label %for.body

if.end20:                                         ; preds = %for.inc, %if.end7
  tail call void @free(ptr noundef %fds) #22
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #9

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
