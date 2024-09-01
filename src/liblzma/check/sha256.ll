; ModuleID = 'liblzma/check/sha256.c'
source_filename = "liblzma/check/sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_sha256_init.s = internal unnamed_addr constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16
@SHA256_K = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @lzma_sha256_init(ptr nocapture noundef writeonly %check) local_unnamed_addr #0 {
entry:
  %state = getelementptr inbounds i8, ptr %check, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %state, ptr noundef nonnull align 16 dereferenceable(32) @lzma_sha256_init.s, i64 32, i1 false)
  %size = getelementptr inbounds i8, ptr %check, i64 96
  store i64 0, ptr %size, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_sha256_update(ptr nocapture noundef readonly %buf, i64 noundef %size, ptr nocapture noundef %check) local_unnamed_addr #2 {
entry:
  %cmp.not26 = icmp eq i64 %size, 0
  br i1 %cmp.not26, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %size1 = getelementptr inbounds i8, ptr %check, i64 96
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end12
  %buf.addr.028 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr3, %if.end12 ]
  %size.addr.027 = phi i64 [ %size, %while.body.lr.ph ], [ %sub4, %if.end12 ]
  %0 = load i64, ptr %size1, align 8
  %and = and i64 %0, 63
  %sub = sub nuw nsw i64 64, %and
  %spec.select = tail call i64 @llvm.umin.i64(i64 %sub, i64 %size.addr.027)
  %add.ptr = getelementptr inbounds i8, ptr %check, i64 %and
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %buf.addr.028, i64 %spec.select, i1 false)
  %add.ptr3 = getelementptr inbounds i8, ptr %buf.addr.028, i64 %spec.select
  %sub4 = sub i64 %size.addr.027, %spec.select
  %1 = load i64, ptr %size1, align 8
  %add = add i64 %spec.select, %1
  store i64 %add, ptr %size1, align 8
  %and9 = and i64 %add, 63
  %cmp10 = icmp eq i64 %and9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.body
  tail call fastcc void @process(ptr noundef nonnull %check)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %while.body
  %cmp.not = icmp eq i64 %sub4, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end12, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @process(ptr nocapture noundef %check) unnamed_addr #3 {
entry:
  %0 = load i32, ptr %check, align 4
  %or11 = tail call i32 @llvm.bswap.i32(i32 %0)
  %arrayidx.1 = getelementptr inbounds i8, ptr %check, i64 4
  %1 = load i32, ptr %arrayidx.1, align 4
  %or11.1 = tail call i32 @llvm.bswap.i32(i32 %1)
  %arrayidx.2 = getelementptr inbounds i8, ptr %check, i64 8
  %2 = load i32, ptr %arrayidx.2, align 4
  %or11.2 = tail call i32 @llvm.bswap.i32(i32 %2)
  %arrayidx.3 = getelementptr inbounds i8, ptr %check, i64 12
  %3 = load i32, ptr %arrayidx.3, align 4
  %or11.3 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx.4 = getelementptr inbounds i8, ptr %check, i64 16
  %4 = load i32, ptr %arrayidx.4, align 4
  %or11.4 = tail call i32 @llvm.bswap.i32(i32 %4)
  %arrayidx.5 = getelementptr inbounds i8, ptr %check, i64 20
  %5 = load i32, ptr %arrayidx.5, align 4
  %or11.5 = tail call i32 @llvm.bswap.i32(i32 %5)
  %arrayidx.6 = getelementptr inbounds i8, ptr %check, i64 24
  %6 = load i32, ptr %arrayidx.6, align 4
  %or11.6 = tail call i32 @llvm.bswap.i32(i32 %6)
  %arrayidx.7 = getelementptr inbounds i8, ptr %check, i64 28
  %7 = load i32, ptr %arrayidx.7, align 4
  %or11.7 = tail call i32 @llvm.bswap.i32(i32 %7)
  %arrayidx.8 = getelementptr inbounds i8, ptr %check, i64 32
  %8 = load i32, ptr %arrayidx.8, align 4
  %or11.8 = tail call i32 @llvm.bswap.i32(i32 %8)
  %arrayidx.9 = getelementptr inbounds i8, ptr %check, i64 36
  %9 = load i32, ptr %arrayidx.9, align 4
  %or11.9 = tail call i32 @llvm.bswap.i32(i32 %9)
  %arrayidx.10 = getelementptr inbounds i8, ptr %check, i64 40
  %10 = load i32, ptr %arrayidx.10, align 4
  %or11.10 = tail call i32 @llvm.bswap.i32(i32 %10)
  %arrayidx.11 = getelementptr inbounds i8, ptr %check, i64 44
  %11 = load i32, ptr %arrayidx.11, align 4
  %or11.11 = tail call i32 @llvm.bswap.i32(i32 %11)
  %arrayidx.12 = getelementptr inbounds i8, ptr %check, i64 48
  %12 = load i32, ptr %arrayidx.12, align 4
  %or11.12 = tail call i32 @llvm.bswap.i32(i32 %12)
  %arrayidx.13 = getelementptr inbounds i8, ptr %check, i64 52
  %13 = load i32, ptr %arrayidx.13, align 4
  %or11.13 = tail call i32 @llvm.bswap.i32(i32 %13)
  %arrayidx.14 = getelementptr inbounds i8, ptr %check, i64 56
  %14 = load i32, ptr %arrayidx.14, align 4
  %or11.14 = tail call i32 @llvm.bswap.i32(i32 %14)
  %arrayidx.15 = getelementptr inbounds i8, ptr %check, i64 60
  %15 = load i32, ptr %arrayidx.15, align 4
  %or11.15 = tail call i32 @llvm.bswap.i32(i32 %15)
  %state = getelementptr inbounds i8, ptr %check, i64 64
  %T.sroa.0.0.copyload.i = load i32, ptr %state, align 4
  %T.sroa.60.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 68
  %T.sroa.60.0.copyload.i = load i32, ptr %T.sroa.60.0..sroa_idx.i, align 4
  %T.sroa.117.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 72
  %T.sroa.117.0.copyload.i = load i32, ptr %T.sroa.117.0..sroa_idx.i, align 4
  %T.sroa.174.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 76
  %T.sroa.174.0.copyload.i = load i32, ptr %T.sroa.174.0..sroa_idx.i, align 4
  %T.sroa.231.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 80
  %T.sroa.231.0.copyload.i = load i32, ptr %T.sroa.231.0..sroa_idx.i, align 4
  %T.sroa.288.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 84
  %T.sroa.288.0.copyload.i = load i32, ptr %T.sroa.288.0..sroa_idx.i, align 4
  %T.sroa.345.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 88
  %T.sroa.345.0.copyload.i = load i32, ptr %T.sroa.345.0..sroa_idx.i, align 4
  %T.sroa.402.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 92
  %T.sroa.402.0.copyload.i = load i32, ptr %T.sroa.402.0..sroa_idx.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end1615.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %cond.end1615.i ]
  %T.sroa.0.02332.i = phi i32 [ %T.sroa.0.0.copyload.i, %entry ], [ %add1651.i, %cond.end1615.i ]
  %T.sroa.60.02331.i = phi i32 [ %T.sroa.60.0.copyload.i, %entry ], [ %add1547.i, %cond.end1615.i ]
  %T.sroa.117.02330.i = phi i32 [ %T.sroa.117.0.copyload.i, %entry ], [ %add1443.i, %cond.end1615.i ]
  %T.sroa.174.02329.i = phi i32 [ %T.sroa.174.0.copyload.i, %entry ], [ %add1339.i, %cond.end1615.i ]
  %T.sroa.231.02328.i = phi i32 [ %T.sroa.231.0.copyload.i, %entry ], [ %add1622.i, %cond.end1615.i ]
  %T.sroa.288.02327.i = phi i32 [ %T.sroa.288.0.copyload.i, %entry ], [ %add1518.i, %cond.end1615.i ]
  %T.sroa.345.02326.i = phi i32 [ %T.sroa.345.0.copyload.i, %entry ], [ %add1414.i, %cond.end1615.i ]
  %T.sroa.402.02325.i = phi i32 [ %T.sroa.402.0.copyload.i, %entry ], [ %add1310.i, %cond.end1615.i ]
  %W.sroa.0.02324.i = phi i32 [ undef, %entry ], [ %cond.i, %cond.end1615.i ]
  %W.sroa.16.02323.i = phi i32 [ undef, %entry ], [ %cond160.i, %cond.end1615.i ]
  %W.sroa.30.02322.i = phi i32 [ undef, %entry ], [ %cond264.i, %cond.end1615.i ]
  %W.sroa.44.02321.i = phi i32 [ undef, %entry ], [ %cond368.i, %cond.end1615.i ]
  %W.sroa.58.02320.i = phi i32 [ undef, %entry ], [ %cond472.i, %cond.end1615.i ]
  %W.sroa.72.02319.i = phi i32 [ undef, %entry ], [ %cond576.i, %cond.end1615.i ]
  %W.sroa.86.02318.i = phi i32 [ undef, %entry ], [ %cond680.i, %cond.end1615.i ]
  %W.sroa.100.02317.i = phi i32 [ undef, %entry ], [ %cond784.i, %cond.end1615.i ]
  %W.sroa.114.02316.i = phi i32 [ undef, %entry ], [ %cond888.i, %cond.end1615.i ]
  %W.sroa.128.02315.i = phi i32 [ undef, %entry ], [ %cond992.i, %cond.end1615.i ]
  %W.sroa.142.02314.i = phi i32 [ undef, %entry ], [ %cond1096.i, %cond.end1615.i ]
  %W.sroa.156.02313.i = phi i32 [ undef, %entry ], [ %cond1200.i, %cond.end1615.i ]
  %W.sroa.170.02312.i = phi i32 [ undef, %entry ], [ %cond1304.i, %cond.end1615.i ]
  %W.sroa.184.02311.i = phi i32 [ undef, %entry ], [ %cond1408.i, %cond.end1615.i ]
  %W.sroa.198.02310.i = phi i32 [ undef, %entry ], [ %cond1512.i, %cond.end1615.i ]
  %W.sroa.212.02309.i = phi i32 [ undef, %entry ], [ %cond1616.i, %cond.end1615.i ]
  %or.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.231.02328.i, i32 %T.sroa.231.02328.i, i32 26)
  %or6.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.231.02328.i, i32 %T.sroa.231.02328.i, i32 21)
  %xor.i = xor i32 %or.i, %or6.i
  %or11.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.231.02328.i, i32 %T.sroa.231.02328.i, i32 7)
  %xor12.i = xor i32 %xor.i, %or11.i
  %xor17.i = xor i32 %T.sroa.345.02326.i, %T.sroa.288.02327.i
  %and.i = and i32 %xor17.i, %T.sroa.231.02328.i
  %xor18.i = xor i32 %and.i, %T.sroa.345.02326.i
  %arrayidx20.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %indvars.iv.i
  %16 = load i32, ptr %arrayidx20.i, align 16
  %tobool.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %tobool.not.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.body.i
  %or26.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.198.02310.i, i32 %W.sroa.198.02310.i, i32 15)
  %or31.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.198.02310.i, i32 %W.sroa.198.02310.i, i32 13)
  %xor32.i = xor i32 %or26.i, %or31.i
  %shr34.i = lshr i32 %W.sroa.198.02310.i, 10
  %xor35.i = xor i32 %xor32.i, %shr34.i
  %or42.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.16.02323.i, i32 %W.sroa.16.02323.i, i32 25)
  %or47.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.16.02323.i, i32 %W.sroa.16.02323.i, i32 14)
  %xor48.i = xor i32 %or42.i, %or47.i
  %shr50.i = lshr i32 %W.sroa.16.02323.i, 3
  %xor51.i = xor i32 %xor48.i, %shr50.i
  %add37.i = add i32 %xor51.i, %W.sroa.0.02324.i
  %add52.i = add i32 %add37.i, %W.sroa.128.02315.i
  %add54.i = add i32 %add52.i, %xor35.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i
  %cond.i = phi i32 [ %add54.i, %cond.true.i ], [ %or11, %for.body.i ]
  %add.i = add i32 %xor12.i, %T.sroa.402.02325.i
  %add21.i = add i32 %add.i, %xor18.i
  %add57.i = add i32 %add21.i, %16
  %add59.i = add i32 %add57.i, %cond.i
  %add62.i = add i32 %add59.i, %T.sroa.174.02329.i
  %or67.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.0.02332.i, i32 %T.sroa.0.02332.i, i32 30)
  %or72.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.0.02332.i, i32 %T.sroa.0.02332.i, i32 19)
  %xor73.i = xor i32 %or67.i, %or72.i
  %or78.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.0.02332.i, i32 %T.sroa.0.02332.i, i32 10)
  %xor79.i = xor i32 %xor73.i, %or78.i
  %and82.i = and i32 %T.sroa.60.02331.i, %T.sroa.0.02332.i
  %or86.i = or i32 %T.sroa.60.02331.i, %T.sroa.0.02332.i
  %and87.i = and i32 %or86.i, %T.sroa.117.02330.i
  %or88.i = or i32 %and87.i, %and82.i
  %add89.i = add i32 %or88.i, %xor79.i
  %add91.i = add i32 %add89.i, %add59.i
  %or96.i = tail call i32 @llvm.fshl.i32(i32 %add62.i, i32 %add62.i, i32 26)
  %or101.i = tail call i32 @llvm.fshl.i32(i32 %add62.i, i32 %add62.i, i32 21)
  %xor102.i = xor i32 %or96.i, %or101.i
  %or107.i = tail call i32 @llvm.fshl.i32(i32 %add62.i, i32 %add62.i, i32 7)
  %xor108.i = xor i32 %xor102.i, %or107.i
  %xor113.i = xor i32 %T.sroa.288.02327.i, %T.sroa.231.02328.i
  %and114.i = and i32 %add62.i, %xor113.i
  %xor115.i = xor i32 %and114.i, %T.sroa.288.02327.i
  %17 = or disjoint i64 %indvars.iv.i, 1
  %arrayidx119.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %17
  %18 = load i32, ptr %arrayidx119.i, align 4
  br i1 %tobool.not.i, label %cond.end159.i, label %cond.true122.i

cond.true122.i:                                   ; preds = %cond.end.i
  %or127.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.212.02309.i, i32 %W.sroa.212.02309.i, i32 15)
  %or132.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.212.02309.i, i32 %W.sroa.212.02309.i, i32 13)
  %xor133.i = xor i32 %or127.i, %or132.i
  %shr135.i = lshr i32 %W.sroa.212.02309.i, 10
  %xor136.i = xor i32 %xor133.i, %shr135.i
  %or143.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.30.02322.i, i32 %W.sroa.30.02322.i, i32 25)
  %or148.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.30.02322.i, i32 %W.sroa.30.02322.i, i32 14)
  %xor149.i = xor i32 %or143.i, %or148.i
  %shr151.i = lshr i32 %W.sroa.30.02322.i, 3
  %xor152.i = xor i32 %xor149.i, %shr151.i
  %add138.i = add i32 %xor152.i, %W.sroa.16.02323.i
  %add153.i = add i32 %add138.i, %W.sroa.142.02314.i
  %add155.i = add i32 %add153.i, %xor136.i
  br label %cond.end159.i

cond.end159.i:                                    ; preds = %cond.true122.i, %cond.end.i
  %cond160.i = phi i32 [ %add155.i, %cond.true122.i ], [ %or11.1, %cond.end.i ]
  %add116.i = add i32 %18, %T.sroa.345.02326.i
  %add120.i = add i32 %add116.i, %xor115.i
  %add161.i = add i32 %add120.i, %xor108.i
  %add163.i = add i32 %add161.i, %cond160.i
  %add166.i = add i32 %add163.i, %T.sroa.117.02330.i
  %or171.i = tail call i32 @llvm.fshl.i32(i32 %add91.i, i32 %add91.i, i32 30)
  %or176.i = tail call i32 @llvm.fshl.i32(i32 %add91.i, i32 %add91.i, i32 19)
  %xor177.i = xor i32 %or171.i, %or176.i
  %or182.i = tail call i32 @llvm.fshl.i32(i32 %add91.i, i32 %add91.i, i32 10)
  %xor183.i = xor i32 %xor177.i, %or182.i
  %and186.i = and i32 %add91.i, %T.sroa.0.02332.i
  %or190.i = or i32 %add91.i, %T.sroa.0.02332.i
  %and191.i = and i32 %or190.i, %T.sroa.60.02331.i
  %or192.i = or i32 %and191.i, %and186.i
  %add193.i = add i32 %xor183.i, %or192.i
  %add195.i = add i32 %add193.i, %add163.i
  %or200.i = tail call i32 @llvm.fshl.i32(i32 %add166.i, i32 %add166.i, i32 26)
  %or205.i = tail call i32 @llvm.fshl.i32(i32 %add166.i, i32 %add166.i, i32 21)
  %xor206.i = xor i32 %or200.i, %or205.i
  %or211.i = tail call i32 @llvm.fshl.i32(i32 %add166.i, i32 %add166.i, i32 7)
  %xor212.i = xor i32 %xor206.i, %or211.i
  %xor217.i = xor i32 %add62.i, %T.sroa.231.02328.i
  %and218.i = and i32 %add166.i, %xor217.i
  %xor219.i = xor i32 %and218.i, %T.sroa.231.02328.i
  %19 = or disjoint i64 %indvars.iv.i, 2
  %arrayidx223.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %19
  %20 = load i32, ptr %arrayidx223.i, align 8
  br i1 %tobool.not.i, label %cond.end263.i, label %cond.true226.i

cond.true226.i:                                   ; preds = %cond.end159.i
  %or231.i = tail call i32 @llvm.fshl.i32(i32 %cond.i, i32 %cond.i, i32 15)
  %or236.i = tail call i32 @llvm.fshl.i32(i32 %cond.i, i32 %cond.i, i32 13)
  %xor237.i = xor i32 %or231.i, %or236.i
  %shr239.i = lshr i32 %cond.i, 10
  %xor240.i = xor i32 %xor237.i, %shr239.i
  %or247.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.44.02321.i, i32 %W.sroa.44.02321.i, i32 25)
  %or252.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.44.02321.i, i32 %W.sroa.44.02321.i, i32 14)
  %xor253.i = xor i32 %or247.i, %or252.i
  %shr255.i = lshr i32 %W.sroa.44.02321.i, 3
  %xor256.i = xor i32 %xor253.i, %shr255.i
  %add242.i = add i32 %xor256.i, %W.sroa.30.02322.i
  %add257.i = add i32 %add242.i, %W.sroa.156.02313.i
  %add259.i = add i32 %add257.i, %xor240.i
  br label %cond.end263.i

cond.end263.i:                                    ; preds = %cond.true226.i, %cond.end159.i
  %cond264.i = phi i32 [ %add259.i, %cond.true226.i ], [ %or11.2, %cond.end159.i ]
  %add220.i = add i32 %20, %T.sroa.288.02327.i
  %add224.i = add i32 %add220.i, %xor219.i
  %add265.i = add i32 %add224.i, %xor212.i
  %add267.i = add i32 %add265.i, %cond264.i
  %add270.i = add i32 %add267.i, %T.sroa.60.02331.i
  %or275.i = tail call i32 @llvm.fshl.i32(i32 %add195.i, i32 %add195.i, i32 30)
  %or280.i = tail call i32 @llvm.fshl.i32(i32 %add195.i, i32 %add195.i, i32 19)
  %xor281.i = xor i32 %or275.i, %or280.i
  %or286.i = tail call i32 @llvm.fshl.i32(i32 %add195.i, i32 %add195.i, i32 10)
  %xor287.i = xor i32 %xor281.i, %or286.i
  %and290.i = and i32 %add195.i, %add91.i
  %or294.i = or i32 %add195.i, %add91.i
  %and295.i = and i32 %or294.i, %T.sroa.0.02332.i
  %or296.i = or i32 %and295.i, %and290.i
  %add297.i = add i32 %xor287.i, %or296.i
  %add299.i = add i32 %add297.i, %add267.i
  %or304.i = tail call i32 @llvm.fshl.i32(i32 %add270.i, i32 %add270.i, i32 26)
  %or309.i = tail call i32 @llvm.fshl.i32(i32 %add270.i, i32 %add270.i, i32 21)
  %xor310.i = xor i32 %or304.i, %or309.i
  %or315.i = tail call i32 @llvm.fshl.i32(i32 %add270.i, i32 %add270.i, i32 7)
  %xor316.i = xor i32 %xor310.i, %or315.i
  %xor321.i = xor i32 %add166.i, %add62.i
  %and322.i = and i32 %add270.i, %xor321.i
  %xor323.i = xor i32 %and322.i, %add62.i
  %21 = or disjoint i64 %indvars.iv.i, 3
  %arrayidx327.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %21
  %22 = load i32, ptr %arrayidx327.i, align 4
  br i1 %tobool.not.i, label %cond.end367.i, label %cond.true330.i

cond.true330.i:                                   ; preds = %cond.end263.i
  %or335.i = tail call i32 @llvm.fshl.i32(i32 %cond160.i, i32 %cond160.i, i32 15)
  %or340.i = tail call i32 @llvm.fshl.i32(i32 %cond160.i, i32 %cond160.i, i32 13)
  %xor341.i = xor i32 %or335.i, %or340.i
  %shr343.i = lshr i32 %cond160.i, 10
  %xor344.i = xor i32 %xor341.i, %shr343.i
  %or351.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.58.02320.i, i32 %W.sroa.58.02320.i, i32 25)
  %or356.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.58.02320.i, i32 %W.sroa.58.02320.i, i32 14)
  %xor357.i = xor i32 %or351.i, %or356.i
  %shr359.i = lshr i32 %W.sroa.58.02320.i, 3
  %xor360.i = xor i32 %xor357.i, %shr359.i
  %add346.i = add i32 %xor360.i, %W.sroa.44.02321.i
  %add361.i = add i32 %add346.i, %W.sroa.170.02312.i
  %add363.i = add i32 %add361.i, %xor344.i
  br label %cond.end367.i

cond.end367.i:                                    ; preds = %cond.true330.i, %cond.end263.i
  %cond368.i = phi i32 [ %add363.i, %cond.true330.i ], [ %or11.3, %cond.end263.i ]
  %add324.i = add i32 %22, %T.sroa.231.02328.i
  %add328.i = add i32 %add324.i, %xor323.i
  %add369.i = add i32 %add328.i, %xor316.i
  %add371.i = add i32 %add369.i, %cond368.i
  %add374.i = add i32 %add371.i, %T.sroa.0.02332.i
  %or379.i = tail call i32 @llvm.fshl.i32(i32 %add299.i, i32 %add299.i, i32 30)
  %or384.i = tail call i32 @llvm.fshl.i32(i32 %add299.i, i32 %add299.i, i32 19)
  %xor385.i = xor i32 %or379.i, %or384.i
  %or390.i = tail call i32 @llvm.fshl.i32(i32 %add299.i, i32 %add299.i, i32 10)
  %xor391.i = xor i32 %xor385.i, %or390.i
  %and394.i = and i32 %add299.i, %add195.i
  %or398.i = or i32 %add299.i, %add195.i
  %and399.i = and i32 %or398.i, %add91.i
  %or400.i = or i32 %and399.i, %and394.i
  %add401.i = add i32 %xor391.i, %or400.i
  %add403.i = add i32 %add401.i, %add371.i
  %or408.i = tail call i32 @llvm.fshl.i32(i32 %add374.i, i32 %add374.i, i32 26)
  %or413.i = tail call i32 @llvm.fshl.i32(i32 %add374.i, i32 %add374.i, i32 21)
  %xor414.i = xor i32 %or408.i, %or413.i
  %or419.i = tail call i32 @llvm.fshl.i32(i32 %add374.i, i32 %add374.i, i32 7)
  %xor420.i = xor i32 %xor414.i, %or419.i
  %xor425.i = xor i32 %add270.i, %add166.i
  %and426.i = and i32 %add374.i, %xor425.i
  %xor427.i = xor i32 %and426.i, %add166.i
  %23 = or disjoint i64 %indvars.iv.i, 4
  %arrayidx431.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %23
  %24 = load i32, ptr %arrayidx431.i, align 16
  br i1 %tobool.not.i, label %cond.end471.i, label %cond.true434.i

cond.true434.i:                                   ; preds = %cond.end367.i
  %or439.i = tail call i32 @llvm.fshl.i32(i32 %cond264.i, i32 %cond264.i, i32 15)
  %or444.i = tail call i32 @llvm.fshl.i32(i32 %cond264.i, i32 %cond264.i, i32 13)
  %xor445.i = xor i32 %or439.i, %or444.i
  %shr447.i = lshr i32 %cond264.i, 10
  %xor448.i = xor i32 %xor445.i, %shr447.i
  %or455.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.72.02319.i, i32 %W.sroa.72.02319.i, i32 25)
  %or460.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.72.02319.i, i32 %W.sroa.72.02319.i, i32 14)
  %xor461.i = xor i32 %or455.i, %or460.i
  %shr463.i = lshr i32 %W.sroa.72.02319.i, 3
  %xor464.i = xor i32 %xor461.i, %shr463.i
  %add450.i = add i32 %xor464.i, %W.sroa.58.02320.i
  %add465.i = add i32 %add450.i, %W.sroa.184.02311.i
  %add467.i = add i32 %add465.i, %xor448.i
  br label %cond.end471.i

cond.end471.i:                                    ; preds = %cond.true434.i, %cond.end367.i
  %cond472.i = phi i32 [ %add467.i, %cond.true434.i ], [ %or11.4, %cond.end367.i ]
  %add428.i = add i32 %24, %add62.i
  %add432.i = add i32 %add428.i, %xor427.i
  %add473.i = add i32 %add432.i, %xor420.i
  %add475.i = add i32 %add473.i, %cond472.i
  %add478.i = add i32 %add475.i, %add91.i
  %or483.i = tail call i32 @llvm.fshl.i32(i32 %add403.i, i32 %add403.i, i32 30)
  %or488.i = tail call i32 @llvm.fshl.i32(i32 %add403.i, i32 %add403.i, i32 19)
  %xor489.i = xor i32 %or483.i, %or488.i
  %or494.i = tail call i32 @llvm.fshl.i32(i32 %add403.i, i32 %add403.i, i32 10)
  %xor495.i = xor i32 %xor489.i, %or494.i
  %and498.i = and i32 %add403.i, %add299.i
  %or502.i = or i32 %add403.i, %add299.i
  %and503.i = and i32 %or502.i, %add195.i
  %or504.i = or i32 %and503.i, %and498.i
  %add505.i = add i32 %xor495.i, %or504.i
  %add507.i = add i32 %add505.i, %add475.i
  %or512.i = tail call i32 @llvm.fshl.i32(i32 %add478.i, i32 %add478.i, i32 26)
  %or517.i = tail call i32 @llvm.fshl.i32(i32 %add478.i, i32 %add478.i, i32 21)
  %xor518.i = xor i32 %or512.i, %or517.i
  %or523.i = tail call i32 @llvm.fshl.i32(i32 %add478.i, i32 %add478.i, i32 7)
  %xor524.i = xor i32 %xor518.i, %or523.i
  %xor529.i = xor i32 %add374.i, %add270.i
  %and530.i = and i32 %add478.i, %xor529.i
  %xor531.i = xor i32 %and530.i, %add270.i
  %25 = or disjoint i64 %indvars.iv.i, 5
  %arrayidx535.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %25
  %26 = load i32, ptr %arrayidx535.i, align 4
  br i1 %tobool.not.i, label %cond.end575.i, label %cond.true538.i

cond.true538.i:                                   ; preds = %cond.end471.i
  %or543.i = tail call i32 @llvm.fshl.i32(i32 %cond368.i, i32 %cond368.i, i32 15)
  %or548.i = tail call i32 @llvm.fshl.i32(i32 %cond368.i, i32 %cond368.i, i32 13)
  %xor549.i = xor i32 %or543.i, %or548.i
  %shr551.i = lshr i32 %cond368.i, 10
  %xor552.i = xor i32 %xor549.i, %shr551.i
  %or559.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.86.02318.i, i32 %W.sroa.86.02318.i, i32 25)
  %or564.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.86.02318.i, i32 %W.sroa.86.02318.i, i32 14)
  %xor565.i = xor i32 %or559.i, %or564.i
  %shr567.i = lshr i32 %W.sroa.86.02318.i, 3
  %xor568.i = xor i32 %xor565.i, %shr567.i
  %add554.i = add i32 %xor568.i, %W.sroa.72.02319.i
  %add569.i = add i32 %add554.i, %W.sroa.198.02310.i
  %add571.i = add i32 %add569.i, %xor552.i
  br label %cond.end575.i

cond.end575.i:                                    ; preds = %cond.true538.i, %cond.end471.i
  %cond576.i = phi i32 [ %add571.i, %cond.true538.i ], [ %or11.5, %cond.end471.i ]
  %add532.i = add i32 %26, %add166.i
  %add536.i = add i32 %add532.i, %xor531.i
  %add577.i = add i32 %add536.i, %xor524.i
  %add579.i = add i32 %add577.i, %cond576.i
  %add582.i = add i32 %add579.i, %add195.i
  %or587.i = tail call i32 @llvm.fshl.i32(i32 %add507.i, i32 %add507.i, i32 30)
  %or592.i = tail call i32 @llvm.fshl.i32(i32 %add507.i, i32 %add507.i, i32 19)
  %xor593.i = xor i32 %or587.i, %or592.i
  %or598.i = tail call i32 @llvm.fshl.i32(i32 %add507.i, i32 %add507.i, i32 10)
  %xor599.i = xor i32 %xor593.i, %or598.i
  %and602.i = and i32 %add507.i, %add403.i
  %or606.i = or i32 %add507.i, %add403.i
  %and607.i = and i32 %or606.i, %add299.i
  %or608.i = or i32 %and607.i, %and602.i
  %add609.i = add i32 %xor599.i, %or608.i
  %add611.i = add i32 %add609.i, %add579.i
  %or616.i = tail call i32 @llvm.fshl.i32(i32 %add582.i, i32 %add582.i, i32 26)
  %or621.i = tail call i32 @llvm.fshl.i32(i32 %add582.i, i32 %add582.i, i32 21)
  %xor622.i = xor i32 %or616.i, %or621.i
  %or627.i = tail call i32 @llvm.fshl.i32(i32 %add582.i, i32 %add582.i, i32 7)
  %xor628.i = xor i32 %xor622.i, %or627.i
  %xor633.i = xor i32 %add478.i, %add374.i
  %and634.i = and i32 %add582.i, %xor633.i
  %xor635.i = xor i32 %and634.i, %add374.i
  %27 = or disjoint i64 %indvars.iv.i, 6
  %arrayidx639.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %27
  %28 = load i32, ptr %arrayidx639.i, align 8
  br i1 %tobool.not.i, label %cond.end679.i, label %cond.true642.i

cond.true642.i:                                   ; preds = %cond.end575.i
  %or647.i = tail call i32 @llvm.fshl.i32(i32 %cond472.i, i32 %cond472.i, i32 15)
  %or652.i = tail call i32 @llvm.fshl.i32(i32 %cond472.i, i32 %cond472.i, i32 13)
  %xor653.i = xor i32 %or647.i, %or652.i
  %shr655.i = lshr i32 %cond472.i, 10
  %xor656.i = xor i32 %xor653.i, %shr655.i
  %or663.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.100.02317.i, i32 %W.sroa.100.02317.i, i32 25)
  %or668.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.100.02317.i, i32 %W.sroa.100.02317.i, i32 14)
  %xor669.i = xor i32 %or663.i, %or668.i
  %shr671.i = lshr i32 %W.sroa.100.02317.i, 3
  %xor672.i = xor i32 %xor669.i, %shr671.i
  %add658.i = add i32 %xor672.i, %W.sroa.86.02318.i
  %add673.i = add i32 %add658.i, %W.sroa.212.02309.i
  %add675.i = add i32 %add673.i, %xor656.i
  br label %cond.end679.i

cond.end679.i:                                    ; preds = %cond.true642.i, %cond.end575.i
  %cond680.i = phi i32 [ %add675.i, %cond.true642.i ], [ %or11.6, %cond.end575.i ]
  %add636.i = add i32 %28, %add270.i
  %add640.i = add i32 %add636.i, %xor635.i
  %add681.i = add i32 %add640.i, %xor628.i
  %add683.i = add i32 %add681.i, %cond680.i
  %add686.i = add i32 %add683.i, %add299.i
  %or691.i = tail call i32 @llvm.fshl.i32(i32 %add611.i, i32 %add611.i, i32 30)
  %or696.i = tail call i32 @llvm.fshl.i32(i32 %add611.i, i32 %add611.i, i32 19)
  %xor697.i = xor i32 %or691.i, %or696.i
  %or702.i = tail call i32 @llvm.fshl.i32(i32 %add611.i, i32 %add611.i, i32 10)
  %xor703.i = xor i32 %xor697.i, %or702.i
  %and706.i = and i32 %add611.i, %add507.i
  %or710.i = or i32 %add611.i, %add507.i
  %and711.i = and i32 %or710.i, %add403.i
  %or712.i = or i32 %and711.i, %and706.i
  %add713.i = add i32 %xor703.i, %or712.i
  %add715.i = add i32 %add713.i, %add683.i
  %or720.i = tail call i32 @llvm.fshl.i32(i32 %add686.i, i32 %add686.i, i32 26)
  %or725.i = tail call i32 @llvm.fshl.i32(i32 %add686.i, i32 %add686.i, i32 21)
  %xor726.i = xor i32 %or720.i, %or725.i
  %or731.i = tail call i32 @llvm.fshl.i32(i32 %add686.i, i32 %add686.i, i32 7)
  %xor732.i = xor i32 %xor726.i, %or731.i
  %xor737.i = xor i32 %add582.i, %add478.i
  %and738.i = and i32 %add686.i, %xor737.i
  %xor739.i = xor i32 %and738.i, %add478.i
  %29 = or disjoint i64 %indvars.iv.i, 7
  %arrayidx743.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %29
  %30 = load i32, ptr %arrayidx743.i, align 4
  br i1 %tobool.not.i, label %cond.end783.i, label %cond.true746.i

cond.true746.i:                                   ; preds = %cond.end679.i
  %or751.i = tail call i32 @llvm.fshl.i32(i32 %cond576.i, i32 %cond576.i, i32 15)
  %or756.i = tail call i32 @llvm.fshl.i32(i32 %cond576.i, i32 %cond576.i, i32 13)
  %xor757.i = xor i32 %or751.i, %or756.i
  %shr759.i = lshr i32 %cond576.i, 10
  %xor760.i = xor i32 %xor757.i, %shr759.i
  %or767.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.114.02316.i, i32 %W.sroa.114.02316.i, i32 25)
  %or772.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.114.02316.i, i32 %W.sroa.114.02316.i, i32 14)
  %xor773.i = xor i32 %or767.i, %or772.i
  %shr775.i = lshr i32 %W.sroa.114.02316.i, 3
  %xor776.i = xor i32 %xor773.i, %shr775.i
  %add762.i = add i32 %xor776.i, %W.sroa.100.02317.i
  %add777.i = add i32 %add762.i, %cond.i
  %add779.i = add i32 %add777.i, %xor760.i
  br label %cond.end783.i

cond.end783.i:                                    ; preds = %cond.true746.i, %cond.end679.i
  %cond784.i = phi i32 [ %add779.i, %cond.true746.i ], [ %or11.7, %cond.end679.i ]
  %add740.i = add i32 %30, %add374.i
  %add744.i = add i32 %add740.i, %xor739.i
  %add785.i = add i32 %add744.i, %xor732.i
  %add787.i = add i32 %add785.i, %cond784.i
  %add790.i = add i32 %add787.i, %add403.i
  %or795.i = tail call i32 @llvm.fshl.i32(i32 %add715.i, i32 %add715.i, i32 30)
  %or800.i = tail call i32 @llvm.fshl.i32(i32 %add715.i, i32 %add715.i, i32 19)
  %xor801.i = xor i32 %or795.i, %or800.i
  %or806.i = tail call i32 @llvm.fshl.i32(i32 %add715.i, i32 %add715.i, i32 10)
  %xor807.i = xor i32 %xor801.i, %or806.i
  %and810.i = and i32 %add715.i, %add611.i
  %or814.i = or i32 %add715.i, %add611.i
  %and815.i = and i32 %or814.i, %add507.i
  %or816.i = or i32 %and815.i, %and810.i
  %add817.i = add i32 %xor807.i, %or816.i
  %add819.i = add i32 %add817.i, %add787.i
  %or824.i = tail call i32 @llvm.fshl.i32(i32 %add790.i, i32 %add790.i, i32 26)
  %or829.i = tail call i32 @llvm.fshl.i32(i32 %add790.i, i32 %add790.i, i32 21)
  %xor830.i = xor i32 %or824.i, %or829.i
  %or835.i = tail call i32 @llvm.fshl.i32(i32 %add790.i, i32 %add790.i, i32 7)
  %xor836.i = xor i32 %xor830.i, %or835.i
  %xor841.i = xor i32 %add686.i, %add582.i
  %and842.i = and i32 %add790.i, %xor841.i
  %xor843.i = xor i32 %and842.i, %add582.i
  %31 = or disjoint i64 %indvars.iv.i, 8
  %arrayidx847.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %31
  %32 = load i32, ptr %arrayidx847.i, align 16
  br i1 %tobool.not.i, label %cond.end887.i, label %cond.true850.i

cond.true850.i:                                   ; preds = %cond.end783.i
  %or855.i = tail call i32 @llvm.fshl.i32(i32 %cond680.i, i32 %cond680.i, i32 15)
  %or860.i = tail call i32 @llvm.fshl.i32(i32 %cond680.i, i32 %cond680.i, i32 13)
  %xor861.i = xor i32 %or855.i, %or860.i
  %shr863.i = lshr i32 %cond680.i, 10
  %xor864.i = xor i32 %xor861.i, %shr863.i
  %or871.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.128.02315.i, i32 %W.sroa.128.02315.i, i32 25)
  %or876.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.128.02315.i, i32 %W.sroa.128.02315.i, i32 14)
  %xor877.i = xor i32 %or871.i, %or876.i
  %shr879.i = lshr i32 %W.sroa.128.02315.i, 3
  %xor880.i = xor i32 %xor877.i, %shr879.i
  %add866.i = add i32 %xor880.i, %W.sroa.114.02316.i
  %add881.i = add i32 %add866.i, %cond160.i
  %add883.i = add i32 %add881.i, %xor864.i
  br label %cond.end887.i

cond.end887.i:                                    ; preds = %cond.true850.i, %cond.end783.i
  %cond888.i = phi i32 [ %add883.i, %cond.true850.i ], [ %or11.8, %cond.end783.i ]
  %add844.i = add i32 %32, %add478.i
  %add848.i = add i32 %add844.i, %xor843.i
  %add889.i = add i32 %add848.i, %xor836.i
  %add891.i = add i32 %add889.i, %cond888.i
  %add894.i = add i32 %add891.i, %add507.i
  %or899.i = tail call i32 @llvm.fshl.i32(i32 %add819.i, i32 %add819.i, i32 30)
  %or904.i = tail call i32 @llvm.fshl.i32(i32 %add819.i, i32 %add819.i, i32 19)
  %xor905.i = xor i32 %or899.i, %or904.i
  %or910.i = tail call i32 @llvm.fshl.i32(i32 %add819.i, i32 %add819.i, i32 10)
  %xor911.i = xor i32 %xor905.i, %or910.i
  %and914.i = and i32 %add819.i, %add715.i
  %or918.i = or i32 %add819.i, %add715.i
  %and919.i = and i32 %or918.i, %add611.i
  %or920.i = or i32 %and919.i, %and914.i
  %add921.i = add i32 %xor911.i, %or920.i
  %add923.i = add i32 %add921.i, %add891.i
  %or928.i = tail call i32 @llvm.fshl.i32(i32 %add894.i, i32 %add894.i, i32 26)
  %or933.i = tail call i32 @llvm.fshl.i32(i32 %add894.i, i32 %add894.i, i32 21)
  %xor934.i = xor i32 %or928.i, %or933.i
  %or939.i = tail call i32 @llvm.fshl.i32(i32 %add894.i, i32 %add894.i, i32 7)
  %xor940.i = xor i32 %xor934.i, %or939.i
  %xor945.i = xor i32 %add790.i, %add686.i
  %and946.i = and i32 %add894.i, %xor945.i
  %xor947.i = xor i32 %and946.i, %add686.i
  %33 = or disjoint i64 %indvars.iv.i, 9
  %arrayidx951.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %33
  %34 = load i32, ptr %arrayidx951.i, align 4
  br i1 %tobool.not.i, label %cond.end991.i, label %cond.true954.i

cond.true954.i:                                   ; preds = %cond.end887.i
  %or959.i = tail call i32 @llvm.fshl.i32(i32 %cond784.i, i32 %cond784.i, i32 15)
  %or964.i = tail call i32 @llvm.fshl.i32(i32 %cond784.i, i32 %cond784.i, i32 13)
  %xor965.i = xor i32 %or959.i, %or964.i
  %shr967.i = lshr i32 %cond784.i, 10
  %xor968.i = xor i32 %xor965.i, %shr967.i
  %or975.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.142.02314.i, i32 %W.sroa.142.02314.i, i32 25)
  %or980.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.142.02314.i, i32 %W.sroa.142.02314.i, i32 14)
  %xor981.i = xor i32 %or975.i, %or980.i
  %shr983.i = lshr i32 %W.sroa.142.02314.i, 3
  %xor984.i = xor i32 %xor981.i, %shr983.i
  %add970.i = add i32 %xor984.i, %W.sroa.128.02315.i
  %add985.i = add i32 %add970.i, %cond264.i
  %add987.i = add i32 %add985.i, %xor968.i
  br label %cond.end991.i

cond.end991.i:                                    ; preds = %cond.true954.i, %cond.end887.i
  %cond992.i = phi i32 [ %add987.i, %cond.true954.i ], [ %or11.9, %cond.end887.i ]
  %add948.i = add i32 %34, %add582.i
  %add952.i = add i32 %add948.i, %xor947.i
  %add993.i = add i32 %add952.i, %xor940.i
  %add995.i = add i32 %add993.i, %cond992.i
  %add998.i = add i32 %add995.i, %add611.i
  %or1003.i = tail call i32 @llvm.fshl.i32(i32 %add923.i, i32 %add923.i, i32 30)
  %or1008.i = tail call i32 @llvm.fshl.i32(i32 %add923.i, i32 %add923.i, i32 19)
  %xor1009.i = xor i32 %or1003.i, %or1008.i
  %or1014.i = tail call i32 @llvm.fshl.i32(i32 %add923.i, i32 %add923.i, i32 10)
  %xor1015.i = xor i32 %xor1009.i, %or1014.i
  %and1018.i = and i32 %add923.i, %add819.i
  %or1022.i = or i32 %add923.i, %add819.i
  %and1023.i = and i32 %or1022.i, %add715.i
  %or1024.i = or i32 %and1023.i, %and1018.i
  %add1025.i = add i32 %xor1015.i, %or1024.i
  %add1027.i = add i32 %add1025.i, %add995.i
  %or1032.i = tail call i32 @llvm.fshl.i32(i32 %add998.i, i32 %add998.i, i32 26)
  %or1037.i = tail call i32 @llvm.fshl.i32(i32 %add998.i, i32 %add998.i, i32 21)
  %xor1038.i = xor i32 %or1032.i, %or1037.i
  %or1043.i = tail call i32 @llvm.fshl.i32(i32 %add998.i, i32 %add998.i, i32 7)
  %xor1044.i = xor i32 %xor1038.i, %or1043.i
  %xor1049.i = xor i32 %add894.i, %add790.i
  %and1050.i = and i32 %add998.i, %xor1049.i
  %xor1051.i = xor i32 %and1050.i, %add790.i
  %35 = or disjoint i64 %indvars.iv.i, 10
  %arrayidx1055.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %35
  %36 = load i32, ptr %arrayidx1055.i, align 8
  br i1 %tobool.not.i, label %cond.end1095.i, label %cond.true1058.i

cond.true1058.i:                                  ; preds = %cond.end991.i
  %or1063.i = tail call i32 @llvm.fshl.i32(i32 %cond888.i, i32 %cond888.i, i32 15)
  %or1068.i = tail call i32 @llvm.fshl.i32(i32 %cond888.i, i32 %cond888.i, i32 13)
  %xor1069.i = xor i32 %or1063.i, %or1068.i
  %shr1071.i = lshr i32 %cond888.i, 10
  %xor1072.i = xor i32 %xor1069.i, %shr1071.i
  %or1079.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.156.02313.i, i32 %W.sroa.156.02313.i, i32 25)
  %or1084.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.156.02313.i, i32 %W.sroa.156.02313.i, i32 14)
  %xor1085.i = xor i32 %or1079.i, %or1084.i
  %shr1087.i = lshr i32 %W.sroa.156.02313.i, 3
  %xor1088.i = xor i32 %xor1085.i, %shr1087.i
  %add1074.i = add i32 %xor1088.i, %W.sroa.142.02314.i
  %add1089.i = add i32 %add1074.i, %cond368.i
  %add1091.i = add i32 %add1089.i, %xor1072.i
  br label %cond.end1095.i

cond.end1095.i:                                   ; preds = %cond.true1058.i, %cond.end991.i
  %cond1096.i = phi i32 [ %add1091.i, %cond.true1058.i ], [ %or11.10, %cond.end991.i ]
  %add1052.i = add i32 %36, %add686.i
  %add1056.i = add i32 %add1052.i, %xor1051.i
  %add1097.i = add i32 %add1056.i, %xor1044.i
  %add1099.i = add i32 %add1097.i, %cond1096.i
  %add1102.i = add i32 %add1099.i, %add715.i
  %or1107.i = tail call i32 @llvm.fshl.i32(i32 %add1027.i, i32 %add1027.i, i32 30)
  %or1112.i = tail call i32 @llvm.fshl.i32(i32 %add1027.i, i32 %add1027.i, i32 19)
  %xor1113.i = xor i32 %or1107.i, %or1112.i
  %or1118.i = tail call i32 @llvm.fshl.i32(i32 %add1027.i, i32 %add1027.i, i32 10)
  %xor1119.i = xor i32 %xor1113.i, %or1118.i
  %and1122.i = and i32 %add1027.i, %add923.i
  %or1126.i = or i32 %add1027.i, %add923.i
  %and1127.i = and i32 %or1126.i, %add819.i
  %or1128.i = or i32 %and1127.i, %and1122.i
  %add1129.i = add i32 %xor1119.i, %or1128.i
  %add1131.i = add i32 %add1129.i, %add1099.i
  %or1136.i = tail call i32 @llvm.fshl.i32(i32 %add1102.i, i32 %add1102.i, i32 26)
  %or1141.i = tail call i32 @llvm.fshl.i32(i32 %add1102.i, i32 %add1102.i, i32 21)
  %xor1142.i = xor i32 %or1136.i, %or1141.i
  %or1147.i = tail call i32 @llvm.fshl.i32(i32 %add1102.i, i32 %add1102.i, i32 7)
  %xor1148.i = xor i32 %xor1142.i, %or1147.i
  %xor1153.i = xor i32 %add998.i, %add894.i
  %and1154.i = and i32 %add1102.i, %xor1153.i
  %xor1155.i = xor i32 %and1154.i, %add894.i
  %37 = or disjoint i64 %indvars.iv.i, 11
  %arrayidx1159.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %37
  %38 = load i32, ptr %arrayidx1159.i, align 4
  br i1 %tobool.not.i, label %cond.end1199.i, label %cond.true1162.i

cond.true1162.i:                                  ; preds = %cond.end1095.i
  %or1167.i = tail call i32 @llvm.fshl.i32(i32 %cond992.i, i32 %cond992.i, i32 15)
  %or1172.i = tail call i32 @llvm.fshl.i32(i32 %cond992.i, i32 %cond992.i, i32 13)
  %xor1173.i = xor i32 %or1167.i, %or1172.i
  %shr1175.i = lshr i32 %cond992.i, 10
  %xor1176.i = xor i32 %xor1173.i, %shr1175.i
  %or1183.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.170.02312.i, i32 %W.sroa.170.02312.i, i32 25)
  %or1188.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.170.02312.i, i32 %W.sroa.170.02312.i, i32 14)
  %xor1189.i = xor i32 %or1183.i, %or1188.i
  %shr1191.i = lshr i32 %W.sroa.170.02312.i, 3
  %xor1192.i = xor i32 %xor1189.i, %shr1191.i
  %add1178.i = add i32 %xor1192.i, %W.sroa.156.02313.i
  %add1193.i = add i32 %add1178.i, %cond472.i
  %add1195.i = add i32 %add1193.i, %xor1176.i
  br label %cond.end1199.i

cond.end1199.i:                                   ; preds = %cond.true1162.i, %cond.end1095.i
  %cond1200.i = phi i32 [ %add1195.i, %cond.true1162.i ], [ %or11.11, %cond.end1095.i ]
  %add1156.i = add i32 %38, %add790.i
  %add1160.i = add i32 %add1156.i, %xor1155.i
  %add1201.i = add i32 %add1160.i, %xor1148.i
  %add1203.i = add i32 %add1201.i, %cond1200.i
  %add1206.i = add i32 %add1203.i, %add819.i
  %or1211.i = tail call i32 @llvm.fshl.i32(i32 %add1131.i, i32 %add1131.i, i32 30)
  %or1216.i = tail call i32 @llvm.fshl.i32(i32 %add1131.i, i32 %add1131.i, i32 19)
  %xor1217.i = xor i32 %or1211.i, %or1216.i
  %or1222.i = tail call i32 @llvm.fshl.i32(i32 %add1131.i, i32 %add1131.i, i32 10)
  %xor1223.i = xor i32 %xor1217.i, %or1222.i
  %and1226.i = and i32 %add1131.i, %add1027.i
  %or1230.i = or i32 %add1131.i, %add1027.i
  %and1231.i = and i32 %or1230.i, %add923.i
  %or1232.i = or i32 %and1231.i, %and1226.i
  %add1233.i = add i32 %xor1223.i, %or1232.i
  %add1235.i = add i32 %add1233.i, %add1203.i
  %or1240.i = tail call i32 @llvm.fshl.i32(i32 %add1206.i, i32 %add1206.i, i32 26)
  %or1245.i = tail call i32 @llvm.fshl.i32(i32 %add1206.i, i32 %add1206.i, i32 21)
  %xor1246.i = xor i32 %or1240.i, %or1245.i
  %or1251.i = tail call i32 @llvm.fshl.i32(i32 %add1206.i, i32 %add1206.i, i32 7)
  %xor1252.i = xor i32 %xor1246.i, %or1251.i
  %xor1257.i = xor i32 %add1102.i, %add998.i
  %and1258.i = and i32 %add1206.i, %xor1257.i
  %xor1259.i = xor i32 %and1258.i, %add998.i
  %39 = or disjoint i64 %indvars.iv.i, 12
  %arrayidx1263.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %39
  %40 = load i32, ptr %arrayidx1263.i, align 16
  br i1 %tobool.not.i, label %cond.end1303.i, label %cond.true1266.i

cond.true1266.i:                                  ; preds = %cond.end1199.i
  %or1271.i = tail call i32 @llvm.fshl.i32(i32 %cond1096.i, i32 %cond1096.i, i32 15)
  %or1276.i = tail call i32 @llvm.fshl.i32(i32 %cond1096.i, i32 %cond1096.i, i32 13)
  %xor1277.i = xor i32 %or1271.i, %or1276.i
  %shr1279.i = lshr i32 %cond1096.i, 10
  %xor1280.i = xor i32 %xor1277.i, %shr1279.i
  %or1287.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.184.02311.i, i32 %W.sroa.184.02311.i, i32 25)
  %or1292.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.184.02311.i, i32 %W.sroa.184.02311.i, i32 14)
  %xor1293.i = xor i32 %or1287.i, %or1292.i
  %shr1295.i = lshr i32 %W.sroa.184.02311.i, 3
  %xor1296.i = xor i32 %xor1293.i, %shr1295.i
  %add1282.i = add i32 %xor1296.i, %W.sroa.170.02312.i
  %add1297.i = add i32 %add1282.i, %cond576.i
  %add1299.i = add i32 %add1297.i, %xor1280.i
  br label %cond.end1303.i

cond.end1303.i:                                   ; preds = %cond.true1266.i, %cond.end1199.i
  %cond1304.i = phi i32 [ %add1299.i, %cond.true1266.i ], [ %or11.12, %cond.end1199.i ]
  %add1260.i = add i32 %40, %add894.i
  %add1264.i = add i32 %add1260.i, %xor1259.i
  %add1305.i = add i32 %add1264.i, %xor1252.i
  %add1307.i = add i32 %add1305.i, %cond1304.i
  %add1310.i = add i32 %add1307.i, %add923.i
  %or1315.i = tail call i32 @llvm.fshl.i32(i32 %add1235.i, i32 %add1235.i, i32 30)
  %or1320.i = tail call i32 @llvm.fshl.i32(i32 %add1235.i, i32 %add1235.i, i32 19)
  %xor1321.i = xor i32 %or1315.i, %or1320.i
  %or1326.i = tail call i32 @llvm.fshl.i32(i32 %add1235.i, i32 %add1235.i, i32 10)
  %xor1327.i = xor i32 %xor1321.i, %or1326.i
  %and1330.i = and i32 %add1235.i, %add1131.i
  %or1334.i = or i32 %add1235.i, %add1131.i
  %and1335.i = and i32 %or1334.i, %add1027.i
  %or1336.i = or i32 %and1335.i, %and1330.i
  %add1337.i = add i32 %xor1327.i, %or1336.i
  %add1339.i = add i32 %add1337.i, %add1307.i
  %or1344.i = tail call i32 @llvm.fshl.i32(i32 %add1310.i, i32 %add1310.i, i32 26)
  %or1349.i = tail call i32 @llvm.fshl.i32(i32 %add1310.i, i32 %add1310.i, i32 21)
  %xor1350.i = xor i32 %or1344.i, %or1349.i
  %or1355.i = tail call i32 @llvm.fshl.i32(i32 %add1310.i, i32 %add1310.i, i32 7)
  %xor1356.i = xor i32 %xor1350.i, %or1355.i
  %xor1361.i = xor i32 %add1206.i, %add1102.i
  %and1362.i = and i32 %add1310.i, %xor1361.i
  %xor1363.i = xor i32 %and1362.i, %add1102.i
  %41 = or disjoint i64 %indvars.iv.i, 13
  %arrayidx1367.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %41
  %42 = load i32, ptr %arrayidx1367.i, align 4
  br i1 %tobool.not.i, label %cond.end1407.i, label %cond.true1370.i

cond.true1370.i:                                  ; preds = %cond.end1303.i
  %or1375.i = tail call i32 @llvm.fshl.i32(i32 %cond1200.i, i32 %cond1200.i, i32 15)
  %or1380.i = tail call i32 @llvm.fshl.i32(i32 %cond1200.i, i32 %cond1200.i, i32 13)
  %xor1381.i = xor i32 %or1375.i, %or1380.i
  %shr1383.i = lshr i32 %cond1200.i, 10
  %xor1384.i = xor i32 %xor1381.i, %shr1383.i
  %or1391.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.198.02310.i, i32 %W.sroa.198.02310.i, i32 25)
  %or1396.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.198.02310.i, i32 %W.sroa.198.02310.i, i32 14)
  %xor1397.i = xor i32 %or1391.i, %or1396.i
  %shr1399.i = lshr i32 %W.sroa.198.02310.i, 3
  %xor1400.i = xor i32 %xor1397.i, %shr1399.i
  %add1386.i = add i32 %xor1400.i, %W.sroa.184.02311.i
  %add1401.i = add i32 %add1386.i, %cond680.i
  %add1403.i = add i32 %add1401.i, %xor1384.i
  br label %cond.end1407.i

cond.end1407.i:                                   ; preds = %cond.true1370.i, %cond.end1303.i
  %cond1408.i = phi i32 [ %add1403.i, %cond.true1370.i ], [ %or11.13, %cond.end1303.i ]
  %add1364.i = add i32 %42, %add998.i
  %add1368.i = add i32 %add1364.i, %xor1363.i
  %add1409.i = add i32 %add1368.i, %xor1356.i
  %add1411.i = add i32 %add1409.i, %cond1408.i
  %add1414.i = add i32 %add1411.i, %add1027.i
  %or1419.i = tail call i32 @llvm.fshl.i32(i32 %add1339.i, i32 %add1339.i, i32 30)
  %or1424.i = tail call i32 @llvm.fshl.i32(i32 %add1339.i, i32 %add1339.i, i32 19)
  %xor1425.i = xor i32 %or1419.i, %or1424.i
  %or1430.i = tail call i32 @llvm.fshl.i32(i32 %add1339.i, i32 %add1339.i, i32 10)
  %xor1431.i = xor i32 %xor1425.i, %or1430.i
  %and1434.i = and i32 %add1339.i, %add1235.i
  %or1438.i = or i32 %add1339.i, %add1235.i
  %and1439.i = and i32 %or1438.i, %add1131.i
  %or1440.i = or i32 %and1439.i, %and1434.i
  %add1441.i = add i32 %xor1431.i, %or1440.i
  %add1443.i = add i32 %add1441.i, %add1411.i
  %or1448.i = tail call i32 @llvm.fshl.i32(i32 %add1414.i, i32 %add1414.i, i32 26)
  %or1453.i = tail call i32 @llvm.fshl.i32(i32 %add1414.i, i32 %add1414.i, i32 21)
  %xor1454.i = xor i32 %or1448.i, %or1453.i
  %or1459.i = tail call i32 @llvm.fshl.i32(i32 %add1414.i, i32 %add1414.i, i32 7)
  %xor1460.i = xor i32 %xor1454.i, %or1459.i
  %xor1465.i = xor i32 %add1310.i, %add1206.i
  %and1466.i = and i32 %add1414.i, %xor1465.i
  %xor1467.i = xor i32 %and1466.i, %add1206.i
  %43 = or disjoint i64 %indvars.iv.i, 14
  %arrayidx1471.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %43
  %44 = load i32, ptr %arrayidx1471.i, align 8
  br i1 %tobool.not.i, label %cond.end1511.i, label %cond.true1474.i

cond.true1474.i:                                  ; preds = %cond.end1407.i
  %or1479.i = tail call i32 @llvm.fshl.i32(i32 %cond1304.i, i32 %cond1304.i, i32 15)
  %or1484.i = tail call i32 @llvm.fshl.i32(i32 %cond1304.i, i32 %cond1304.i, i32 13)
  %xor1485.i = xor i32 %or1479.i, %or1484.i
  %shr1487.i = lshr i32 %cond1304.i, 10
  %xor1488.i = xor i32 %xor1485.i, %shr1487.i
  %or1495.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.212.02309.i, i32 %W.sroa.212.02309.i, i32 25)
  %or1500.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.212.02309.i, i32 %W.sroa.212.02309.i, i32 14)
  %xor1501.i = xor i32 %or1495.i, %or1500.i
  %shr1503.i = lshr i32 %W.sroa.212.02309.i, 3
  %xor1504.i = xor i32 %xor1501.i, %shr1503.i
  %add1490.i = add i32 %xor1504.i, %W.sroa.198.02310.i
  %add1505.i = add i32 %add1490.i, %cond784.i
  %add1507.i = add i32 %add1505.i, %xor1488.i
  br label %cond.end1511.i

cond.end1511.i:                                   ; preds = %cond.true1474.i, %cond.end1407.i
  %cond1512.i = phi i32 [ %add1507.i, %cond.true1474.i ], [ %or11.14, %cond.end1407.i ]
  %add1468.i = add i32 %44, %add1102.i
  %add1472.i = add i32 %add1468.i, %xor1467.i
  %add1513.i = add i32 %add1472.i, %xor1460.i
  %add1515.i = add i32 %add1513.i, %cond1512.i
  %add1518.i = add i32 %add1515.i, %add1131.i
  %or1523.i = tail call i32 @llvm.fshl.i32(i32 %add1443.i, i32 %add1443.i, i32 30)
  %or1528.i = tail call i32 @llvm.fshl.i32(i32 %add1443.i, i32 %add1443.i, i32 19)
  %xor1529.i = xor i32 %or1523.i, %or1528.i
  %or1534.i = tail call i32 @llvm.fshl.i32(i32 %add1443.i, i32 %add1443.i, i32 10)
  %xor1535.i = xor i32 %xor1529.i, %or1534.i
  %and1538.i = and i32 %add1443.i, %add1339.i
  %or1542.i = or i32 %add1443.i, %add1339.i
  %and1543.i = and i32 %or1542.i, %add1235.i
  %or1544.i = or i32 %and1543.i, %and1538.i
  %add1545.i = add i32 %xor1535.i, %or1544.i
  %add1547.i = add i32 %add1545.i, %add1515.i
  %or1552.i = tail call i32 @llvm.fshl.i32(i32 %add1518.i, i32 %add1518.i, i32 26)
  %or1557.i = tail call i32 @llvm.fshl.i32(i32 %add1518.i, i32 %add1518.i, i32 21)
  %xor1558.i = xor i32 %or1552.i, %or1557.i
  %or1563.i = tail call i32 @llvm.fshl.i32(i32 %add1518.i, i32 %add1518.i, i32 7)
  %xor1564.i = xor i32 %xor1558.i, %or1563.i
  %xor1569.i = xor i32 %add1414.i, %add1310.i
  %and1570.i = and i32 %add1518.i, %xor1569.i
  %xor1571.i = xor i32 %and1570.i, %add1310.i
  %45 = or disjoint i64 %indvars.iv.i, 15
  %arrayidx1575.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %45
  %46 = load i32, ptr %arrayidx1575.i, align 4
  br i1 %tobool.not.i, label %cond.end1615.i, label %cond.true1578.i

cond.true1578.i:                                  ; preds = %cond.end1511.i
  %or1583.i = tail call i32 @llvm.fshl.i32(i32 %cond1408.i, i32 %cond1408.i, i32 15)
  %or1588.i = tail call i32 @llvm.fshl.i32(i32 %cond1408.i, i32 %cond1408.i, i32 13)
  %xor1589.i = xor i32 %or1583.i, %or1588.i
  %shr1591.i = lshr i32 %cond1408.i, 10
  %xor1592.i = xor i32 %xor1589.i, %shr1591.i
  %or1599.i = tail call i32 @llvm.fshl.i32(i32 %cond.i, i32 %cond.i, i32 25)
  %or1604.i = tail call i32 @llvm.fshl.i32(i32 %cond.i, i32 %cond.i, i32 14)
  %xor1605.i = xor i32 %or1599.i, %or1604.i
  %shr1607.i = lshr i32 %cond.i, 3
  %xor1608.i = xor i32 %xor1605.i, %shr1607.i
  %add1594.i = add i32 %xor1608.i, %W.sroa.212.02309.i
  %add1609.i = add i32 %add1594.i, %cond888.i
  %add1611.i = add i32 %add1609.i, %xor1592.i
  br label %cond.end1615.i

cond.end1615.i:                                   ; preds = %cond.true1578.i, %cond.end1511.i
  %cond1616.i = phi i32 [ %add1611.i, %cond.true1578.i ], [ %or11.15, %cond.end1511.i ]
  %add1572.i = add i32 %46, %add1206.i
  %add1576.i = add i32 %add1572.i, %xor1571.i
  %add1617.i = add i32 %add1576.i, %xor1564.i
  %add1619.i = add i32 %add1617.i, %cond1616.i
  %add1622.i = add i32 %add1619.i, %add1235.i
  %or1627.i = tail call i32 @llvm.fshl.i32(i32 %add1547.i, i32 %add1547.i, i32 30)
  %or1632.i = tail call i32 @llvm.fshl.i32(i32 %add1547.i, i32 %add1547.i, i32 19)
  %xor1633.i = xor i32 %or1627.i, %or1632.i
  %or1638.i = tail call i32 @llvm.fshl.i32(i32 %add1547.i, i32 %add1547.i, i32 10)
  %xor1639.i = xor i32 %xor1633.i, %or1638.i
  %and1642.i = and i32 %add1547.i, %add1443.i
  %or1646.i = or i32 %add1547.i, %add1443.i
  %and1647.i = and i32 %or1646.i, %add1339.i
  %or1648.i = or i32 %and1647.i, %and1642.i
  %add1649.i = add i32 %xor1639.i, %or1648.i
  %add1651.i = add i32 %add1649.i, %add1619.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16
  %cmp.i = icmp ult i64 %indvars.iv.i, 48
  br i1 %cmp.i, label %for.body.i, label %transform.exit

transform.exit:                                   ; preds = %cond.end1615.i
  %add1655.i = add i32 %add1651.i, %T.sroa.0.0.copyload.i
  store i32 %add1655.i, ptr %state, align 4
  %add1658.i = add i32 %add1547.i, %T.sroa.60.0.copyload.i
  store i32 %add1658.i, ptr %T.sroa.60.0..sroa_idx.i, align 4
  %add1661.i = add i32 %add1443.i, %T.sroa.117.0.copyload.i
  store i32 %add1661.i, ptr %T.sroa.117.0..sroa_idx.i, align 4
  %add1664.i = add i32 %add1339.i, %T.sroa.174.0.copyload.i
  store i32 %add1664.i, ptr %T.sroa.174.0..sroa_idx.i, align 4
  %add1667.i = add i32 %add1622.i, %T.sroa.231.0.copyload.i
  store i32 %add1667.i, ptr %T.sroa.231.0..sroa_idx.i, align 4
  %add1670.i = add i32 %add1518.i, %T.sroa.288.0.copyload.i
  store i32 %add1670.i, ptr %T.sroa.288.0..sroa_idx.i, align 4
  %add1673.i = add i32 %add1414.i, %T.sroa.345.0.copyload.i
  store i32 %add1673.i, ptr %T.sroa.345.0..sroa_idx.i, align 4
  %add1676.i = add i32 %add1310.i, %T.sroa.402.0.copyload.i
  store i32 %add1676.i, ptr %T.sroa.402.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @lzma_sha256_finish(ptr nocapture noundef %check) local_unnamed_addr #3 {
entry:
  %size = getelementptr inbounds i8, ptr %check, i64 96
  %0 = load i64, ptr %size, align 8
  %and = and i64 %0, 63
  %arrayidx4.peel = getelementptr inbounds [64 x i8], ptr %check, i64 0, i64 %and
  store i8 -128, ptr %arrayidx4.peel, align 1
  %pos.0.peel = add nuw nsw i64 %and, 1
  switch i64 %and, label %entry.peel.newph [
    i64 55, label %while.end
    i64 63, label %if.then.peel
  ]

if.then.peel:                                     ; preds = %entry
  tail call fastcc void @process(ptr noundef nonnull %check)
  br label %entry.peel.newph

entry.peel.newph:                                 ; preds = %entry, %if.then.peel
  %pos.1.sink.be.peel = phi i64 [ 0, %if.then.peel ], [ %pos.0.peel, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry.peel.newph
  %pos.1.sink = phi i64 [ %pos.1.sink.be.peel, %entry.peel.newph ], [ %pos.1.sink.be, %while.cond.backedge ]
  %arrayidx4 = getelementptr inbounds [64 x i8], ptr %check, i64 0, i64 %pos.1.sink
  store i8 0, ptr %arrayidx4, align 1
  %pos.0 = add nuw nsw i64 %pos.1.sink, 1
  switch i64 %pos.1.sink, label %while.cond.backedge [
    i64 55, label %while.end
    i64 63, label %if.then
  ]

while.cond.backedge:                              ; preds = %while.cond, %if.then
  %pos.1.sink.be = phi i64 [ 0, %if.then ], [ %pos.0, %while.cond ]
  br label %while.cond, !llvm.loop !5

if.then:                                          ; preds = %while.cond
  tail call fastcc void @process(ptr noundef nonnull %check)
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond, %entry
  %state = getelementptr inbounds i8, ptr %check, i64 64
  %1 = load i64, ptr %size, align 8
  %mul = shl i64 %1, 3
  store i64 %mul, ptr %size, align 8
  %shl = shl i64 %1, 59
  %shl11 = shl i64 %1, 43
  %and12 = and i64 %shl11, 71776119061217280
  %or = or disjoint i64 %and12, %shl
  %shl15 = shl i64 %1, 27
  %and16 = and i64 %shl15, 280375465082880
  %or17 = or disjoint i64 %or, %and16
  %shl20 = shl i64 %1, 11
  %and21 = and i64 %shl20, 1095216660480
  %or22 = or disjoint i64 %or17, %and21
  %shr = lshr i64 %mul, 8
  %and25 = and i64 %shr, 4278190080
  %or26 = or disjoint i64 %or22, %and25
  %shr29 = lshr i64 %mul, 24
  %and30 = and i64 %shr29, 16711680
  %or31 = or disjoint i64 %or26, %and30
  %shr34 = lshr i64 %mul, 40
  %and35 = and i64 %shr34, 65280
  %or36 = or disjoint i64 %or31, %and35
  %shr39 = lshr i64 %mul, 56
  %or40 = or i64 %or36, %shr39
  %arrayidx42 = getelementptr inbounds i8, ptr %check, i64 56
  store i64 %or40, ptr %arrayidx42, align 8
  tail call fastcc void @process(ptr noundef nonnull %check)
  %2 = load <4 x i32>, ptr %state, align 4
  %3 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %2)
  store <4 x i32> %3, ptr %check, align 4
  %arrayidx46.4 = getelementptr inbounds i8, ptr %check, i64 80
  %arrayidx66.4 = getelementptr inbounds i8, ptr %check, i64 16
  %4 = load <4 x i32>, ptr %arrayidx46.4, align 4
  %5 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %4)
  store <4 x i32> %5, ptr %arrayidx66.4, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.peeled.count", i32 1}
