; ModuleID = 'liblzma/check/sha256.c'
source_filename = "liblzma/check/sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_sha256_init.s = internal unnamed_addr constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16, !dbg !0
@SHA256_K = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16, !dbg !51

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @lzma_sha256_init(ptr nocapture noundef writeonly %check) local_unnamed_addr #0 !dbg !2 {
entry:
    #dbg_value(ptr %check, !56, !DIExpression(), !66)
  %state = getelementptr inbounds i8, ptr %check, i64 64, !dbg !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %state, ptr noundef nonnull align 16 dereferenceable(32) @lzma_sha256_init.s, i64 32, i1 false), !dbg !68
  %size = getelementptr inbounds i8, ptr %check, i64 96, !dbg !69
  store i64 0, ptr %size, align 8, !dbg !70
  ret void, !dbg !71
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_sha256_update(ptr nocapture noundef readonly %buf, i64 noundef %size, ptr nocapture noundef %check) local_unnamed_addr #2 !dbg !72 {
entry:
    #dbg_value(ptr %buf, !80, !DIExpression(), !87)
    #dbg_value(i64 %size, !81, !DIExpression(), !87)
    #dbg_value(ptr %check, !82, !DIExpression(), !87)
  %cmp.not26 = icmp eq i64 %size, 0, !dbg !88
  br i1 %cmp.not26, label %while.end, label %while.body.lr.ph, !dbg !89

while.body.lr.ph:                                 ; preds = %entry
  %size1 = getelementptr inbounds i8, ptr %check, i64 96
  br label %while.body, !dbg !89

while.body:                                       ; preds = %while.body.lr.ph, %if.end12
  %buf.addr.028 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr3, %if.end12 ]
  %size.addr.027 = phi i64 [ %size, %while.body.lr.ph ], [ %sub4, %if.end12 ]
    #dbg_value(ptr %buf.addr.028, !80, !DIExpression(), !87)
    #dbg_value(i64 %size.addr.027, !81, !DIExpression(), !87)
  %0 = load i64, ptr %size1, align 8, !dbg !90
  %and = and i64 %0, 63, !dbg !91
    #dbg_value(i64 %and, !83, !DIExpression(), !92)
  %sub = sub nuw nsw i64 64, %and, !dbg !93
    #dbg_value(i64 %sub, !86, !DIExpression(), !92)
  %spec.select = tail call i64 @llvm.umin.i64(i64 %sub, i64 %size.addr.027), !dbg !94
    #dbg_value(i64 %spec.select, !86, !DIExpression(), !92)
  %add.ptr = getelementptr inbounds i8, ptr %check, i64 %and, !dbg !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %buf.addr.028, i64 %spec.select, i1 false), !dbg !96
  %add.ptr3 = getelementptr inbounds i8, ptr %buf.addr.028, i64 %spec.select, !dbg !97
    #dbg_value(ptr %add.ptr3, !80, !DIExpression(), !87)
  %sub4 = sub i64 %size.addr.027, %spec.select, !dbg !98
    #dbg_value(i64 %sub4, !81, !DIExpression(), !87)
  %1 = load i64, ptr %size1, align 8, !dbg !99
  %add = add i64 %spec.select, %1, !dbg !99
  store i64 %add, ptr %size1, align 8, !dbg !99
  %and9 = and i64 %add, 63, !dbg !100
  %cmp10 = icmp eq i64 %and9, 0, !dbg !102
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !103

if.then11:                                        ; preds = %while.body
  tail call fastcc void @process(ptr noundef nonnull %check), !dbg !104
  br label %if.end12, !dbg !104

if.end12:                                         ; preds = %if.then11, %while.body
    #dbg_value(ptr %add.ptr3, !80, !DIExpression(), !87)
    #dbg_value(i64 %sub4, !81, !DIExpression(), !87)
  %cmp.not = icmp eq i64 %sub4, 0, !dbg !88
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !89, !llvm.loop !105

while.end:                                        ; preds = %if.end12, %entry
  ret void, !dbg !107
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @process(ptr nocapture noundef %check) unnamed_addr #3 !dbg !108 {
entry:
    #dbg_value(ptr %check, !110, !DIExpression(), !114)
    #dbg_value(i64 0, !112, !DIExpression(), !115)
    #dbg_value(i64 0, !112, !DIExpression(), !115)
  %0 = load i32, ptr %check, align 4, !dbg !116
  %or11 = tail call i32 @llvm.bswap.i32(i32 %0), !dbg !116
    #dbg_value(i32 %or11, !111, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !114)
    #dbg_value(i64 1, !112, !DIExpression(), !115)
  %arrayidx.1 = getelementptr inbounds i8, ptr %check, i64 4, !dbg !116
  %1 = load i32, ptr %arrayidx.1, align 4, !dbg !116
  %or11.1 = tail call i32 @llvm.bswap.i32(i32 %1), !dbg !116
    #dbg_value(i32 %or11.1, !111, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !114)
    #dbg_value(i64 2, !112, !DIExpression(), !115)
  %arrayidx.2 = getelementptr inbounds i8, ptr %check, i64 8, !dbg !116
  %2 = load i32, ptr %arrayidx.2, align 4, !dbg !116
  %or11.2 = tail call i32 @llvm.bswap.i32(i32 %2), !dbg !116
    #dbg_value(i32 %or11.2, !111, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !114)
    #dbg_value(i64 3, !112, !DIExpression(), !115)
  %arrayidx.3 = getelementptr inbounds i8, ptr %check, i64 12, !dbg !116
  %3 = load i32, ptr %arrayidx.3, align 4, !dbg !116
  %or11.3 = tail call i32 @llvm.bswap.i32(i32 %3), !dbg !116
    #dbg_value(i32 %or11.3, !111, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !114)
    #dbg_value(i64 4, !112, !DIExpression(), !115)
  %arrayidx.4 = getelementptr inbounds i8, ptr %check, i64 16, !dbg !116
  %4 = load i32, ptr %arrayidx.4, align 4, !dbg !116
  %or11.4 = tail call i32 @llvm.bswap.i32(i32 %4), !dbg !116
    #dbg_value(i32 %or11.4, !111, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !114)
    #dbg_value(i64 5, !112, !DIExpression(), !115)
  %arrayidx.5 = getelementptr inbounds i8, ptr %check, i64 20, !dbg !116
  %5 = load i32, ptr %arrayidx.5, align 4, !dbg !116
  %or11.5 = tail call i32 @llvm.bswap.i32(i32 %5), !dbg !116
    #dbg_value(i32 %or11.5, !111, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !114)
    #dbg_value(i64 6, !112, !DIExpression(), !115)
  %arrayidx.6 = getelementptr inbounds i8, ptr %check, i64 24, !dbg !116
  %6 = load i32, ptr %arrayidx.6, align 4, !dbg !116
  %or11.6 = tail call i32 @llvm.bswap.i32(i32 %6), !dbg !116
    #dbg_value(i32 %or11.6, !111, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !114)
    #dbg_value(i64 7, !112, !DIExpression(), !115)
  %arrayidx.7 = getelementptr inbounds i8, ptr %check, i64 28, !dbg !116
  %7 = load i32, ptr %arrayidx.7, align 4, !dbg !116
  %or11.7 = tail call i32 @llvm.bswap.i32(i32 %7), !dbg !116
    #dbg_value(i32 %or11.7, !111, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !114)
    #dbg_value(i64 8, !112, !DIExpression(), !115)
  %arrayidx.8 = getelementptr inbounds i8, ptr %check, i64 32, !dbg !116
  %8 = load i32, ptr %arrayidx.8, align 4, !dbg !116
  %or11.8 = tail call i32 @llvm.bswap.i32(i32 %8), !dbg !116
    #dbg_value(i32 %or11.8, !111, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !114)
    #dbg_value(i64 9, !112, !DIExpression(), !115)
  %arrayidx.9 = getelementptr inbounds i8, ptr %check, i64 36, !dbg !116
  %9 = load i32, ptr %arrayidx.9, align 4, !dbg !116
  %or11.9 = tail call i32 @llvm.bswap.i32(i32 %9), !dbg !116
    #dbg_value(i32 %or11.9, !111, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !114)
    #dbg_value(i64 10, !112, !DIExpression(), !115)
  %arrayidx.10 = getelementptr inbounds i8, ptr %check, i64 40, !dbg !116
  %10 = load i32, ptr %arrayidx.10, align 4, !dbg !116
  %or11.10 = tail call i32 @llvm.bswap.i32(i32 %10), !dbg !116
    #dbg_value(i32 %or11.10, !111, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !114)
    #dbg_value(i64 11, !112, !DIExpression(), !115)
  %arrayidx.11 = getelementptr inbounds i8, ptr %check, i64 44, !dbg !116
  %11 = load i32, ptr %arrayidx.11, align 4, !dbg !116
  %or11.11 = tail call i32 @llvm.bswap.i32(i32 %11), !dbg !116
    #dbg_value(i32 %or11.11, !111, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !114)
    #dbg_value(i64 12, !112, !DIExpression(), !115)
  %arrayidx.12 = getelementptr inbounds i8, ptr %check, i64 48, !dbg !116
  %12 = load i32, ptr %arrayidx.12, align 4, !dbg !116
  %or11.12 = tail call i32 @llvm.bswap.i32(i32 %12), !dbg !116
    #dbg_value(i32 %or11.12, !111, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !114)
    #dbg_value(i64 13, !112, !DIExpression(), !115)
  %arrayidx.13 = getelementptr inbounds i8, ptr %check, i64 52, !dbg !116
  %13 = load i32, ptr %arrayidx.13, align 4, !dbg !116
  %or11.13 = tail call i32 @llvm.bswap.i32(i32 %13), !dbg !116
    #dbg_value(i32 %or11.13, !111, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !114)
    #dbg_value(i64 14, !112, !DIExpression(), !115)
  %arrayidx.14 = getelementptr inbounds i8, ptr %check, i64 56, !dbg !116
  %14 = load i32, ptr %arrayidx.14, align 4, !dbg !116
  %or11.14 = tail call i32 @llvm.bswap.i32(i32 %14), !dbg !116
    #dbg_value(i32 %or11.14, !111, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !114)
    #dbg_value(i64 15, !112, !DIExpression(), !115)
  %arrayidx.15 = getelementptr inbounds i8, ptr %check, i64 60, !dbg !116
  %15 = load i32, ptr %arrayidx.15, align 4, !dbg !116
  %or11.15 = tail call i32 @llvm.bswap.i32(i32 %15), !dbg !116
    #dbg_value(i32 %or11.15, !111, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !114)
    #dbg_value(i64 16, !112, !DIExpression(), !115)
  %state = getelementptr inbounds i8, ptr %check, i64 64, !dbg !118
    #dbg_value(ptr %state, !119, !DIExpression(), !131)
    #dbg_value(ptr undef, !126, !DIExpression(), !131)
  %T.sroa.0.0.copyload.i = load i32, ptr %state, align 4, !dbg !133
  %T.sroa.60.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 68, !dbg !133
  %T.sroa.60.0.copyload.i = load i32, ptr %T.sroa.60.0..sroa_idx.i, align 4, !dbg !133
  %T.sroa.117.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 72, !dbg !133
  %T.sroa.117.0.copyload.i = load i32, ptr %T.sroa.117.0..sroa_idx.i, align 4, !dbg !133
  %T.sroa.174.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 76, !dbg !133
  %T.sroa.174.0.copyload.i = load i32, ptr %T.sroa.174.0..sroa_idx.i, align 4, !dbg !133
  %T.sroa.231.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 80, !dbg !133
  %T.sroa.231.0.copyload.i = load i32, ptr %T.sroa.231.0..sroa_idx.i, align 4, !dbg !133
  %T.sroa.288.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 84, !dbg !133
  %T.sroa.288.0.copyload.i = load i32, ptr %T.sroa.288.0..sroa_idx.i, align 4, !dbg !133
  %T.sroa.345.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 88, !dbg !133
  %T.sroa.345.0.copyload.i = load i32, ptr %T.sroa.345.0..sroa_idx.i, align 4, !dbg !133
  %T.sroa.402.0..sroa_idx.i = getelementptr inbounds i8, ptr %check, i64 92, !dbg !133
  %T.sroa.402.0.copyload.i = load i32, ptr %T.sroa.402.0..sroa_idx.i, align 4, !dbg !133
    #dbg_value(i32 %T.sroa.0.0.copyload.i, !128, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !131)
    #dbg_value(i32 %T.sroa.60.0.copyload.i, !128, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
    #dbg_value(i32 %T.sroa.117.0.copyload.i, !128, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
    #dbg_value(i32 %T.sroa.174.0.copyload.i, !128, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
    #dbg_value(i32 %T.sroa.231.0.copyload.i, !128, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
    #dbg_value(i32 %T.sroa.288.0.copyload.i, !128, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
    #dbg_value(i32 %T.sroa.345.0.copyload.i, !128, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
    #dbg_value(i32 %T.sroa.402.0.copyload.i, !128, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
    #dbg_value(i32 0, !129, !DIExpression(), !134)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !131)
    #dbg_value(i32 undef, !127, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !131)
  br label %for.body.i, !dbg !135

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
    #dbg_value(i64 %indvars.iv.i, !129, !DIExpression(), !134)
    #dbg_value(i32 %T.sroa.0.02332.i, !128, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !131)
    #dbg_value(i32 %T.sroa.60.02331.i, !128, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
    #dbg_value(i32 %T.sroa.117.02330.i, !128, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
    #dbg_value(i32 %T.sroa.174.02329.i, !128, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
    #dbg_value(i32 %T.sroa.231.02328.i, !128, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
    #dbg_value(i32 %T.sroa.288.02327.i, !128, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
    #dbg_value(i32 %T.sroa.345.02326.i, !128, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
    #dbg_value(i32 %T.sroa.402.02325.i, !128, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
    #dbg_value(i32 %W.sroa.0.02324.i, !127, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !131)
    #dbg_value(i32 %W.sroa.16.02323.i, !127, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
    #dbg_value(i32 %W.sroa.30.02322.i, !127, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
    #dbg_value(i32 %W.sroa.44.02321.i, !127, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
    #dbg_value(i32 %W.sroa.58.02320.i, !127, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
    #dbg_value(i32 %W.sroa.72.02319.i, !127, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
    #dbg_value(i32 %W.sroa.86.02318.i, !127, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
    #dbg_value(i32 %W.sroa.100.02317.i, !127, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
    #dbg_value(i32 %W.sroa.114.02316.i, !127, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !131)
    #dbg_value(i32 %W.sroa.128.02315.i, !127, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !131)
    #dbg_value(i32 %W.sroa.142.02314.i, !127, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !131)
    #dbg_value(i32 %W.sroa.156.02313.i, !127, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !131)
    #dbg_value(i32 %W.sroa.170.02312.i, !127, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !131)
    #dbg_value(i32 %W.sroa.184.02311.i, !127, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !131)
    #dbg_value(i32 %W.sroa.198.02310.i, !127, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !131)
    #dbg_value(i32 %W.sroa.212.02309.i, !127, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !131)
  %or.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.231.02328.i, i32 %T.sroa.231.02328.i, i32 26), !dbg !136
  %or6.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.231.02328.i, i32 %T.sroa.231.02328.i, i32 21), !dbg !136
  %xor.i = xor i32 %or.i, %or6.i, !dbg !136
  %or11.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.231.02328.i, i32 %T.sroa.231.02328.i, i32 7), !dbg !136
  %xor12.i = xor i32 %xor.i, %or11.i, !dbg !136
  %xor17.i = xor i32 %T.sroa.345.02326.i, %T.sroa.288.02327.i, !dbg !136
  %and.i = and i32 %xor17.i, %T.sroa.231.02328.i, !dbg !136
  %xor18.i = xor i32 %and.i, %T.sroa.345.02326.i, !dbg !136
  %arrayidx20.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %indvars.iv.i, !dbg !136
  %16 = load i32, ptr %arrayidx20.i, align 16, !dbg !136
  %tobool.not.i = icmp eq i64 %indvars.iv.i, 0, !dbg !136
  br i1 %tobool.not.i, label %cond.end.i, label %cond.true.i, !dbg !136

cond.true.i:                                      ; preds = %for.body.i
  %or26.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.198.02310.i, i32 %W.sroa.198.02310.i, i32 15), !dbg !136
  %or31.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.198.02310.i, i32 %W.sroa.198.02310.i, i32 13), !dbg !136
  %xor32.i = xor i32 %or26.i, %or31.i, !dbg !136
  %shr34.i = lshr i32 %W.sroa.198.02310.i, 10, !dbg !136
  %xor35.i = xor i32 %xor32.i, %shr34.i, !dbg !136
  %or42.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.16.02323.i, i32 %W.sroa.16.02323.i, i32 25), !dbg !136
  %or47.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.16.02323.i, i32 %W.sroa.16.02323.i, i32 14), !dbg !136
  %xor48.i = xor i32 %or42.i, %or47.i, !dbg !136
  %shr50.i = lshr i32 %W.sroa.16.02323.i, 3, !dbg !136
  %xor51.i = xor i32 %xor48.i, %shr50.i, !dbg !136
  %add37.i = add i32 %xor51.i, %W.sroa.0.02324.i, !dbg !136
  %add52.i = add i32 %add37.i, %W.sroa.128.02315.i, !dbg !136
  %add54.i = add i32 %add52.i, %xor35.i, !dbg !136
    #dbg_value(i32 %add54.i, !127, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !131)
  br label %cond.end.i, !dbg !136

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i
  %cond.i = phi i32 [ %add54.i, %cond.true.i ], [ %or11, %for.body.i ], !dbg !136
    #dbg_value(i32 %cond.i, !127, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !131)
  %add.i = add i32 %xor12.i, %T.sroa.402.02325.i, !dbg !136
  %add21.i = add i32 %add.i, %xor18.i, !dbg !136
  %add57.i = add i32 %add21.i, %16, !dbg !136
  %add59.i = add i32 %add57.i, %cond.i, !dbg !136
    #dbg_value(i32 %add59.i, !128, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
  %add62.i = add i32 %add59.i, %T.sroa.174.02329.i, !dbg !136
    #dbg_value(i32 %add62.i, !128, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
  %or67.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.0.02332.i, i32 %T.sroa.0.02332.i, i32 30), !dbg !136
  %or72.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.0.02332.i, i32 %T.sroa.0.02332.i, i32 19), !dbg !136
  %xor73.i = xor i32 %or67.i, %or72.i, !dbg !136
  %or78.i = tail call i32 @llvm.fshl.i32(i32 %T.sroa.0.02332.i, i32 %T.sroa.0.02332.i, i32 10), !dbg !136
  %xor79.i = xor i32 %xor73.i, %or78.i, !dbg !136
  %and82.i = and i32 %T.sroa.60.02331.i, %T.sroa.0.02332.i, !dbg !136
  %or86.i = or i32 %T.sroa.60.02331.i, %T.sroa.0.02332.i, !dbg !136
  %and87.i = and i32 %or86.i, %T.sroa.117.02330.i, !dbg !136
  %or88.i = or i32 %and87.i, %and82.i, !dbg !136
  %add89.i = add i32 %or88.i, %xor79.i, !dbg !136
  %add91.i = add i32 %add89.i, %add59.i, !dbg !136
    #dbg_value(i32 %add91.i, !128, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
  %or96.i = tail call i32 @llvm.fshl.i32(i32 %add62.i, i32 %add62.i, i32 26), !dbg !139
  %or101.i = tail call i32 @llvm.fshl.i32(i32 %add62.i, i32 %add62.i, i32 21), !dbg !139
  %xor102.i = xor i32 %or96.i, %or101.i, !dbg !139
  %or107.i = tail call i32 @llvm.fshl.i32(i32 %add62.i, i32 %add62.i, i32 7), !dbg !139
  %xor108.i = xor i32 %xor102.i, %or107.i, !dbg !139
  %xor113.i = xor i32 %T.sroa.288.02327.i, %T.sroa.231.02328.i, !dbg !139
  %and114.i = and i32 %add62.i, %xor113.i, !dbg !139
  %xor115.i = xor i32 %and114.i, %T.sroa.288.02327.i, !dbg !139
  %17 = or disjoint i64 %indvars.iv.i, 1, !dbg !139
  %arrayidx119.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %17, !dbg !139
  %18 = load i32, ptr %arrayidx119.i, align 4, !dbg !139
  br i1 %tobool.not.i, label %cond.end159.i, label %cond.true122.i, !dbg !139

cond.true122.i:                                   ; preds = %cond.end.i
  %or127.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.212.02309.i, i32 %W.sroa.212.02309.i, i32 15), !dbg !139
  %or132.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.212.02309.i, i32 %W.sroa.212.02309.i, i32 13), !dbg !139
  %xor133.i = xor i32 %or127.i, %or132.i, !dbg !139
  %shr135.i = lshr i32 %W.sroa.212.02309.i, 10, !dbg !139
  %xor136.i = xor i32 %xor133.i, %shr135.i, !dbg !139
  %or143.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.30.02322.i, i32 %W.sroa.30.02322.i, i32 25), !dbg !139
  %or148.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.30.02322.i, i32 %W.sroa.30.02322.i, i32 14), !dbg !139
  %xor149.i = xor i32 %or143.i, %or148.i, !dbg !139
  %shr151.i = lshr i32 %W.sroa.30.02322.i, 3, !dbg !139
  %xor152.i = xor i32 %xor149.i, %shr151.i, !dbg !139
  %add138.i = add i32 %xor152.i, %W.sroa.16.02323.i, !dbg !139
  %add153.i = add i32 %add138.i, %W.sroa.142.02314.i, !dbg !139
  %add155.i = add i32 %add153.i, %xor136.i, !dbg !139
    #dbg_value(i32 %add155.i, !127, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
  br label %cond.end159.i, !dbg !139

cond.end159.i:                                    ; preds = %cond.true122.i, %cond.end.i
  %cond160.i = phi i32 [ %add155.i, %cond.true122.i ], [ %or11.1, %cond.end.i ], !dbg !139
    #dbg_value(i32 %cond160.i, !127, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
  %add116.i = add i32 %18, %T.sroa.345.02326.i, !dbg !139
  %add120.i = add i32 %add116.i, %xor115.i, !dbg !139
  %add161.i = add i32 %add120.i, %xor108.i, !dbg !139
  %add163.i = add i32 %add161.i, %cond160.i, !dbg !139
    #dbg_value(i32 %add163.i, !128, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
  %add166.i = add i32 %add163.i, %T.sroa.117.02330.i, !dbg !139
    #dbg_value(i32 %add166.i, !128, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
  %or171.i = tail call i32 @llvm.fshl.i32(i32 %add91.i, i32 %add91.i, i32 30), !dbg !139
  %or176.i = tail call i32 @llvm.fshl.i32(i32 %add91.i, i32 %add91.i, i32 19), !dbg !139
  %xor177.i = xor i32 %or171.i, %or176.i, !dbg !139
  %or182.i = tail call i32 @llvm.fshl.i32(i32 %add91.i, i32 %add91.i, i32 10), !dbg !139
  %xor183.i = xor i32 %xor177.i, %or182.i, !dbg !139
  %and186.i = and i32 %add91.i, %T.sroa.0.02332.i, !dbg !139
  %or190.i = or i32 %add91.i, %T.sroa.0.02332.i, !dbg !139
  %and191.i = and i32 %or190.i, %T.sroa.60.02331.i, !dbg !139
  %or192.i = or i32 %and191.i, %and186.i, !dbg !139
  %add193.i = add i32 %xor183.i, %or192.i, !dbg !139
  %add195.i = add i32 %add193.i, %add163.i, !dbg !139
    #dbg_value(i32 %add195.i, !128, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
  %or200.i = tail call i32 @llvm.fshl.i32(i32 %add166.i, i32 %add166.i, i32 26), !dbg !140
  %or205.i = tail call i32 @llvm.fshl.i32(i32 %add166.i, i32 %add166.i, i32 21), !dbg !140
  %xor206.i = xor i32 %or200.i, %or205.i, !dbg !140
  %or211.i = tail call i32 @llvm.fshl.i32(i32 %add166.i, i32 %add166.i, i32 7), !dbg !140
  %xor212.i = xor i32 %xor206.i, %or211.i, !dbg !140
  %xor217.i = xor i32 %add62.i, %T.sroa.231.02328.i, !dbg !140
  %and218.i = and i32 %add166.i, %xor217.i, !dbg !140
  %xor219.i = xor i32 %and218.i, %T.sroa.231.02328.i, !dbg !140
  %19 = or disjoint i64 %indvars.iv.i, 2, !dbg !140
  %arrayidx223.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %19, !dbg !140
  %20 = load i32, ptr %arrayidx223.i, align 8, !dbg !140
  br i1 %tobool.not.i, label %cond.end263.i, label %cond.true226.i, !dbg !140

cond.true226.i:                                   ; preds = %cond.end159.i
  %or231.i = tail call i32 @llvm.fshl.i32(i32 %cond.i, i32 %cond.i, i32 15), !dbg !140
  %or236.i = tail call i32 @llvm.fshl.i32(i32 %cond.i, i32 %cond.i, i32 13), !dbg !140
  %xor237.i = xor i32 %or231.i, %or236.i, !dbg !140
  %shr239.i = lshr i32 %cond.i, 10, !dbg !140
  %xor240.i = xor i32 %xor237.i, %shr239.i, !dbg !140
  %or247.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.44.02321.i, i32 %W.sroa.44.02321.i, i32 25), !dbg !140
  %or252.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.44.02321.i, i32 %W.sroa.44.02321.i, i32 14), !dbg !140
  %xor253.i = xor i32 %or247.i, %or252.i, !dbg !140
  %shr255.i = lshr i32 %W.sroa.44.02321.i, 3, !dbg !140
  %xor256.i = xor i32 %xor253.i, %shr255.i, !dbg !140
  %add242.i = add i32 %xor256.i, %W.sroa.30.02322.i, !dbg !140
  %add257.i = add i32 %add242.i, %W.sroa.156.02313.i, !dbg !140
  %add259.i = add i32 %add257.i, %xor240.i, !dbg !140
    #dbg_value(i32 %add259.i, !127, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
  br label %cond.end263.i, !dbg !140

cond.end263.i:                                    ; preds = %cond.true226.i, %cond.end159.i
  %cond264.i = phi i32 [ %add259.i, %cond.true226.i ], [ %or11.2, %cond.end159.i ], !dbg !140
    #dbg_value(i32 %cond264.i, !127, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
  %add220.i = add i32 %20, %T.sroa.288.02327.i, !dbg !140
  %add224.i = add i32 %add220.i, %xor219.i, !dbg !140
  %add265.i = add i32 %add224.i, %xor212.i, !dbg !140
  %add267.i = add i32 %add265.i, %cond264.i, !dbg !140
    #dbg_value(i32 %add267.i, !128, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
  %add270.i = add i32 %add267.i, %T.sroa.60.02331.i, !dbg !140
    #dbg_value(i32 %add270.i, !128, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
  %or275.i = tail call i32 @llvm.fshl.i32(i32 %add195.i, i32 %add195.i, i32 30), !dbg !140
  %or280.i = tail call i32 @llvm.fshl.i32(i32 %add195.i, i32 %add195.i, i32 19), !dbg !140
  %xor281.i = xor i32 %or275.i, %or280.i, !dbg !140
  %or286.i = tail call i32 @llvm.fshl.i32(i32 %add195.i, i32 %add195.i, i32 10), !dbg !140
  %xor287.i = xor i32 %xor281.i, %or286.i, !dbg !140
  %and290.i = and i32 %add195.i, %add91.i, !dbg !140
  %or294.i = or i32 %add195.i, %add91.i, !dbg !140
  %and295.i = and i32 %or294.i, %T.sroa.0.02332.i, !dbg !140
  %or296.i = or i32 %and295.i, %and290.i, !dbg !140
  %add297.i = add i32 %xor287.i, %or296.i, !dbg !140
  %add299.i = add i32 %add297.i, %add267.i, !dbg !140
    #dbg_value(i32 %add299.i, !128, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
  %or304.i = tail call i32 @llvm.fshl.i32(i32 %add270.i, i32 %add270.i, i32 26), !dbg !141
  %or309.i = tail call i32 @llvm.fshl.i32(i32 %add270.i, i32 %add270.i, i32 21), !dbg !141
  %xor310.i = xor i32 %or304.i, %or309.i, !dbg !141
  %or315.i = tail call i32 @llvm.fshl.i32(i32 %add270.i, i32 %add270.i, i32 7), !dbg !141
  %xor316.i = xor i32 %xor310.i, %or315.i, !dbg !141
  %xor321.i = xor i32 %add166.i, %add62.i, !dbg !141
  %and322.i = and i32 %add270.i, %xor321.i, !dbg !141
  %xor323.i = xor i32 %and322.i, %add62.i, !dbg !141
  %21 = or disjoint i64 %indvars.iv.i, 3, !dbg !141
  %arrayidx327.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %21, !dbg !141
  %22 = load i32, ptr %arrayidx327.i, align 4, !dbg !141
  br i1 %tobool.not.i, label %cond.end367.i, label %cond.true330.i, !dbg !141

cond.true330.i:                                   ; preds = %cond.end263.i
  %or335.i = tail call i32 @llvm.fshl.i32(i32 %cond160.i, i32 %cond160.i, i32 15), !dbg !141
  %or340.i = tail call i32 @llvm.fshl.i32(i32 %cond160.i, i32 %cond160.i, i32 13), !dbg !141
  %xor341.i = xor i32 %or335.i, %or340.i, !dbg !141
  %shr343.i = lshr i32 %cond160.i, 10, !dbg !141
  %xor344.i = xor i32 %xor341.i, %shr343.i, !dbg !141
  %or351.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.58.02320.i, i32 %W.sroa.58.02320.i, i32 25), !dbg !141
  %or356.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.58.02320.i, i32 %W.sroa.58.02320.i, i32 14), !dbg !141
  %xor357.i = xor i32 %or351.i, %or356.i, !dbg !141
  %shr359.i = lshr i32 %W.sroa.58.02320.i, 3, !dbg !141
  %xor360.i = xor i32 %xor357.i, %shr359.i, !dbg !141
  %add346.i = add i32 %xor360.i, %W.sroa.44.02321.i, !dbg !141
  %add361.i = add i32 %add346.i, %W.sroa.170.02312.i, !dbg !141
  %add363.i = add i32 %add361.i, %xor344.i, !dbg !141
    #dbg_value(i32 %add363.i, !127, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
  br label %cond.end367.i, !dbg !141

cond.end367.i:                                    ; preds = %cond.true330.i, %cond.end263.i
  %cond368.i = phi i32 [ %add363.i, %cond.true330.i ], [ %or11.3, %cond.end263.i ], !dbg !141
    #dbg_value(i32 %cond368.i, !127, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
  %add324.i = add i32 %22, %T.sroa.231.02328.i, !dbg !141
  %add328.i = add i32 %add324.i, %xor323.i, !dbg !141
  %add369.i = add i32 %add328.i, %xor316.i, !dbg !141
  %add371.i = add i32 %add369.i, %cond368.i, !dbg !141
    #dbg_value(i32 %add371.i, !128, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
  %add374.i = add i32 %add371.i, %T.sroa.0.02332.i, !dbg !141
    #dbg_value(i32 %add374.i, !128, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !131)
  %or379.i = tail call i32 @llvm.fshl.i32(i32 %add299.i, i32 %add299.i, i32 30), !dbg !141
  %or384.i = tail call i32 @llvm.fshl.i32(i32 %add299.i, i32 %add299.i, i32 19), !dbg !141
  %xor385.i = xor i32 %or379.i, %or384.i, !dbg !141
  %or390.i = tail call i32 @llvm.fshl.i32(i32 %add299.i, i32 %add299.i, i32 10), !dbg !141
  %xor391.i = xor i32 %xor385.i, %or390.i, !dbg !141
  %and394.i = and i32 %add299.i, %add195.i, !dbg !141
  %or398.i = or i32 %add299.i, %add195.i, !dbg !141
  %and399.i = and i32 %or398.i, %add91.i, !dbg !141
  %or400.i = or i32 %and399.i, %and394.i, !dbg !141
  %add401.i = add i32 %xor391.i, %or400.i, !dbg !141
  %add403.i = add i32 %add401.i, %add371.i, !dbg !141
    #dbg_value(i32 %add403.i, !128, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
  %or408.i = tail call i32 @llvm.fshl.i32(i32 %add374.i, i32 %add374.i, i32 26), !dbg !142
  %or413.i = tail call i32 @llvm.fshl.i32(i32 %add374.i, i32 %add374.i, i32 21), !dbg !142
  %xor414.i = xor i32 %or408.i, %or413.i, !dbg !142
  %or419.i = tail call i32 @llvm.fshl.i32(i32 %add374.i, i32 %add374.i, i32 7), !dbg !142
  %xor420.i = xor i32 %xor414.i, %or419.i, !dbg !142
  %xor425.i = xor i32 %add270.i, %add166.i, !dbg !142
  %and426.i = and i32 %add374.i, %xor425.i, !dbg !142
  %xor427.i = xor i32 %and426.i, %add166.i, !dbg !142
  %23 = or disjoint i64 %indvars.iv.i, 4, !dbg !142
  %arrayidx431.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %23, !dbg !142
  %24 = load i32, ptr %arrayidx431.i, align 16, !dbg !142
  br i1 %tobool.not.i, label %cond.end471.i, label %cond.true434.i, !dbg !142

cond.true434.i:                                   ; preds = %cond.end367.i
  %or439.i = tail call i32 @llvm.fshl.i32(i32 %cond264.i, i32 %cond264.i, i32 15), !dbg !142
  %or444.i = tail call i32 @llvm.fshl.i32(i32 %cond264.i, i32 %cond264.i, i32 13), !dbg !142
  %xor445.i = xor i32 %or439.i, %or444.i, !dbg !142
  %shr447.i = lshr i32 %cond264.i, 10, !dbg !142
  %xor448.i = xor i32 %xor445.i, %shr447.i, !dbg !142
  %or455.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.72.02319.i, i32 %W.sroa.72.02319.i, i32 25), !dbg !142
  %or460.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.72.02319.i, i32 %W.sroa.72.02319.i, i32 14), !dbg !142
  %xor461.i = xor i32 %or455.i, %or460.i, !dbg !142
  %shr463.i = lshr i32 %W.sroa.72.02319.i, 3, !dbg !142
  %xor464.i = xor i32 %xor461.i, %shr463.i, !dbg !142
  %add450.i = add i32 %xor464.i, %W.sroa.58.02320.i, !dbg !142
  %add465.i = add i32 %add450.i, %W.sroa.184.02311.i, !dbg !142
  %add467.i = add i32 %add465.i, %xor448.i, !dbg !142
    #dbg_value(i32 %add467.i, !127, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
  br label %cond.end471.i, !dbg !142

cond.end471.i:                                    ; preds = %cond.true434.i, %cond.end367.i
  %cond472.i = phi i32 [ %add467.i, %cond.true434.i ], [ %or11.4, %cond.end367.i ], !dbg !142
    #dbg_value(i32 %cond472.i, !127, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
  %add428.i = add i32 %24, %add62.i, !dbg !142
  %add432.i = add i32 %add428.i, %xor427.i, !dbg !142
  %add473.i = add i32 %add432.i, %xor420.i, !dbg !142
  %add475.i = add i32 %add473.i, %cond472.i, !dbg !142
    #dbg_value(i32 %add475.i, !128, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
  %add478.i = add i32 %add475.i, %add91.i, !dbg !142
    #dbg_value(i32 %add478.i, !128, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
  %or483.i = tail call i32 @llvm.fshl.i32(i32 %add403.i, i32 %add403.i, i32 30), !dbg !142
  %or488.i = tail call i32 @llvm.fshl.i32(i32 %add403.i, i32 %add403.i, i32 19), !dbg !142
  %xor489.i = xor i32 %or483.i, %or488.i, !dbg !142
  %or494.i = tail call i32 @llvm.fshl.i32(i32 %add403.i, i32 %add403.i, i32 10), !dbg !142
  %xor495.i = xor i32 %xor489.i, %or494.i, !dbg !142
  %and498.i = and i32 %add403.i, %add299.i, !dbg !142
  %or502.i = or i32 %add403.i, %add299.i, !dbg !142
  %and503.i = and i32 %or502.i, %add195.i, !dbg !142
  %or504.i = or i32 %and503.i, %and498.i, !dbg !142
  %add505.i = add i32 %xor495.i, %or504.i, !dbg !142
  %add507.i = add i32 %add505.i, %add475.i, !dbg !142
    #dbg_value(i32 %add507.i, !128, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
  %or512.i = tail call i32 @llvm.fshl.i32(i32 %add478.i, i32 %add478.i, i32 26), !dbg !143
  %or517.i = tail call i32 @llvm.fshl.i32(i32 %add478.i, i32 %add478.i, i32 21), !dbg !143
  %xor518.i = xor i32 %or512.i, %or517.i, !dbg !143
  %or523.i = tail call i32 @llvm.fshl.i32(i32 %add478.i, i32 %add478.i, i32 7), !dbg !143
  %xor524.i = xor i32 %xor518.i, %or523.i, !dbg !143
  %xor529.i = xor i32 %add374.i, %add270.i, !dbg !143
  %and530.i = and i32 %add478.i, %xor529.i, !dbg !143
  %xor531.i = xor i32 %and530.i, %add270.i, !dbg !143
  %25 = or disjoint i64 %indvars.iv.i, 5, !dbg !143
  %arrayidx535.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %25, !dbg !143
  %26 = load i32, ptr %arrayidx535.i, align 4, !dbg !143
  br i1 %tobool.not.i, label %cond.end575.i, label %cond.true538.i, !dbg !143

cond.true538.i:                                   ; preds = %cond.end471.i
  %or543.i = tail call i32 @llvm.fshl.i32(i32 %cond368.i, i32 %cond368.i, i32 15), !dbg !143
  %or548.i = tail call i32 @llvm.fshl.i32(i32 %cond368.i, i32 %cond368.i, i32 13), !dbg !143
  %xor549.i = xor i32 %or543.i, %or548.i, !dbg !143
  %shr551.i = lshr i32 %cond368.i, 10, !dbg !143
  %xor552.i = xor i32 %xor549.i, %shr551.i, !dbg !143
  %or559.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.86.02318.i, i32 %W.sroa.86.02318.i, i32 25), !dbg !143
  %or564.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.86.02318.i, i32 %W.sroa.86.02318.i, i32 14), !dbg !143
  %xor565.i = xor i32 %or559.i, %or564.i, !dbg !143
  %shr567.i = lshr i32 %W.sroa.86.02318.i, 3, !dbg !143
  %xor568.i = xor i32 %xor565.i, %shr567.i, !dbg !143
  %add554.i = add i32 %xor568.i, %W.sroa.72.02319.i, !dbg !143
  %add569.i = add i32 %add554.i, %W.sroa.198.02310.i, !dbg !143
  %add571.i = add i32 %add569.i, %xor552.i, !dbg !143
    #dbg_value(i32 %add571.i, !127, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
  br label %cond.end575.i, !dbg !143

cond.end575.i:                                    ; preds = %cond.true538.i, %cond.end471.i
  %cond576.i = phi i32 [ %add571.i, %cond.true538.i ], [ %or11.5, %cond.end471.i ], !dbg !143
    #dbg_value(i32 %cond576.i, !127, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
  %add532.i = add i32 %26, %add166.i, !dbg !143
  %add536.i = add i32 %add532.i, %xor531.i, !dbg !143
  %add577.i = add i32 %add536.i, %xor524.i, !dbg !143
  %add579.i = add i32 %add577.i, %cond576.i, !dbg !143
    #dbg_value(i32 %add579.i, !128, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
  %add582.i = add i32 %add579.i, %add195.i, !dbg !143
    #dbg_value(i32 %add582.i, !128, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
  %or587.i = tail call i32 @llvm.fshl.i32(i32 %add507.i, i32 %add507.i, i32 30), !dbg !143
  %or592.i = tail call i32 @llvm.fshl.i32(i32 %add507.i, i32 %add507.i, i32 19), !dbg !143
  %xor593.i = xor i32 %or587.i, %or592.i, !dbg !143
  %or598.i = tail call i32 @llvm.fshl.i32(i32 %add507.i, i32 %add507.i, i32 10), !dbg !143
  %xor599.i = xor i32 %xor593.i, %or598.i, !dbg !143
  %and602.i = and i32 %add507.i, %add403.i, !dbg !143
  %or606.i = or i32 %add507.i, %add403.i, !dbg !143
  %and607.i = and i32 %or606.i, %add299.i, !dbg !143
  %or608.i = or i32 %and607.i, %and602.i, !dbg !143
  %add609.i = add i32 %xor599.i, %or608.i, !dbg !143
  %add611.i = add i32 %add609.i, %add579.i, !dbg !143
    #dbg_value(i32 %add611.i, !128, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
  %or616.i = tail call i32 @llvm.fshl.i32(i32 %add582.i, i32 %add582.i, i32 26), !dbg !144
  %or621.i = tail call i32 @llvm.fshl.i32(i32 %add582.i, i32 %add582.i, i32 21), !dbg !144
  %xor622.i = xor i32 %or616.i, %or621.i, !dbg !144
  %or627.i = tail call i32 @llvm.fshl.i32(i32 %add582.i, i32 %add582.i, i32 7), !dbg !144
  %xor628.i = xor i32 %xor622.i, %or627.i, !dbg !144
  %xor633.i = xor i32 %add478.i, %add374.i, !dbg !144
  %and634.i = and i32 %add582.i, %xor633.i, !dbg !144
  %xor635.i = xor i32 %and634.i, %add374.i, !dbg !144
  %27 = or disjoint i64 %indvars.iv.i, 6, !dbg !144
  %arrayidx639.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %27, !dbg !144
  %28 = load i32, ptr %arrayidx639.i, align 8, !dbg !144
  br i1 %tobool.not.i, label %cond.end679.i, label %cond.true642.i, !dbg !144

cond.true642.i:                                   ; preds = %cond.end575.i
  %or647.i = tail call i32 @llvm.fshl.i32(i32 %cond472.i, i32 %cond472.i, i32 15), !dbg !144
  %or652.i = tail call i32 @llvm.fshl.i32(i32 %cond472.i, i32 %cond472.i, i32 13), !dbg !144
  %xor653.i = xor i32 %or647.i, %or652.i, !dbg !144
  %shr655.i = lshr i32 %cond472.i, 10, !dbg !144
  %xor656.i = xor i32 %xor653.i, %shr655.i, !dbg !144
  %or663.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.100.02317.i, i32 %W.sroa.100.02317.i, i32 25), !dbg !144
  %or668.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.100.02317.i, i32 %W.sroa.100.02317.i, i32 14), !dbg !144
  %xor669.i = xor i32 %or663.i, %or668.i, !dbg !144
  %shr671.i = lshr i32 %W.sroa.100.02317.i, 3, !dbg !144
  %xor672.i = xor i32 %xor669.i, %shr671.i, !dbg !144
  %add658.i = add i32 %xor672.i, %W.sroa.86.02318.i, !dbg !144
  %add673.i = add i32 %add658.i, %W.sroa.212.02309.i, !dbg !144
  %add675.i = add i32 %add673.i, %xor656.i, !dbg !144
    #dbg_value(i32 %add675.i, !127, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
  br label %cond.end679.i, !dbg !144

cond.end679.i:                                    ; preds = %cond.true642.i, %cond.end575.i
  %cond680.i = phi i32 [ %add675.i, %cond.true642.i ], [ %or11.6, %cond.end575.i ], !dbg !144
    #dbg_value(i32 %cond680.i, !127, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
  %add636.i = add i32 %28, %add270.i, !dbg !144
  %add640.i = add i32 %add636.i, %xor635.i, !dbg !144
  %add681.i = add i32 %add640.i, %xor628.i, !dbg !144
  %add683.i = add i32 %add681.i, %cond680.i, !dbg !144
    #dbg_value(i32 %add683.i, !128, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
  %add686.i = add i32 %add683.i, %add299.i, !dbg !144
    #dbg_value(i32 %add686.i, !128, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
  %or691.i = tail call i32 @llvm.fshl.i32(i32 %add611.i, i32 %add611.i, i32 30), !dbg !144
  %or696.i = tail call i32 @llvm.fshl.i32(i32 %add611.i, i32 %add611.i, i32 19), !dbg !144
  %xor697.i = xor i32 %or691.i, %or696.i, !dbg !144
  %or702.i = tail call i32 @llvm.fshl.i32(i32 %add611.i, i32 %add611.i, i32 10), !dbg !144
  %xor703.i = xor i32 %xor697.i, %or702.i, !dbg !144
  %and706.i = and i32 %add611.i, %add507.i, !dbg !144
  %or710.i = or i32 %add611.i, %add507.i, !dbg !144
  %and711.i = and i32 %or710.i, %add403.i, !dbg !144
  %or712.i = or i32 %and711.i, %and706.i, !dbg !144
  %add713.i = add i32 %xor703.i, %or712.i, !dbg !144
  %add715.i = add i32 %add713.i, %add683.i, !dbg !144
    #dbg_value(i32 %add715.i, !128, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
  %or720.i = tail call i32 @llvm.fshl.i32(i32 %add686.i, i32 %add686.i, i32 26), !dbg !145
  %or725.i = tail call i32 @llvm.fshl.i32(i32 %add686.i, i32 %add686.i, i32 21), !dbg !145
  %xor726.i = xor i32 %or720.i, %or725.i, !dbg !145
  %or731.i = tail call i32 @llvm.fshl.i32(i32 %add686.i, i32 %add686.i, i32 7), !dbg !145
  %xor732.i = xor i32 %xor726.i, %or731.i, !dbg !145
  %xor737.i = xor i32 %add582.i, %add478.i, !dbg !145
  %and738.i = and i32 %add686.i, %xor737.i, !dbg !145
  %xor739.i = xor i32 %and738.i, %add478.i, !dbg !145
  %29 = or disjoint i64 %indvars.iv.i, 7, !dbg !145
  %arrayidx743.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %29, !dbg !145
  %30 = load i32, ptr %arrayidx743.i, align 4, !dbg !145
  br i1 %tobool.not.i, label %cond.end783.i, label %cond.true746.i, !dbg !145

cond.true746.i:                                   ; preds = %cond.end679.i
  %or751.i = tail call i32 @llvm.fshl.i32(i32 %cond576.i, i32 %cond576.i, i32 15), !dbg !145
  %or756.i = tail call i32 @llvm.fshl.i32(i32 %cond576.i, i32 %cond576.i, i32 13), !dbg !145
  %xor757.i = xor i32 %or751.i, %or756.i, !dbg !145
  %shr759.i = lshr i32 %cond576.i, 10, !dbg !145
  %xor760.i = xor i32 %xor757.i, %shr759.i, !dbg !145
  %or767.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.114.02316.i, i32 %W.sroa.114.02316.i, i32 25), !dbg !145
  %or772.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.114.02316.i, i32 %W.sroa.114.02316.i, i32 14), !dbg !145
  %xor773.i = xor i32 %or767.i, %or772.i, !dbg !145
  %shr775.i = lshr i32 %W.sroa.114.02316.i, 3, !dbg !145
  %xor776.i = xor i32 %xor773.i, %shr775.i, !dbg !145
  %add762.i = add i32 %xor776.i, %W.sroa.100.02317.i, !dbg !145
  %add777.i = add i32 %add762.i, %cond.i, !dbg !145
  %add779.i = add i32 %add777.i, %xor760.i, !dbg !145
    #dbg_value(i32 %add779.i, !127, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
  br label %cond.end783.i, !dbg !145

cond.end783.i:                                    ; preds = %cond.true746.i, %cond.end679.i
  %cond784.i = phi i32 [ %add779.i, %cond.true746.i ], [ %or11.7, %cond.end679.i ], !dbg !145
    #dbg_value(i32 %cond784.i, !127, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
  %add740.i = add i32 %30, %add374.i, !dbg !145
  %add744.i = add i32 %add740.i, %xor739.i, !dbg !145
  %add785.i = add i32 %add744.i, %xor732.i, !dbg !145
  %add787.i = add i32 %add785.i, %cond784.i, !dbg !145
    #dbg_value(i32 %add787.i, !128, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !131)
  %add790.i = add i32 %add787.i, %add403.i, !dbg !145
    #dbg_value(i32 %add790.i, !128, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
  %or795.i = tail call i32 @llvm.fshl.i32(i32 %add715.i, i32 %add715.i, i32 30), !dbg !145
  %or800.i = tail call i32 @llvm.fshl.i32(i32 %add715.i, i32 %add715.i, i32 19), !dbg !145
  %xor801.i = xor i32 %or795.i, %or800.i, !dbg !145
  %or806.i = tail call i32 @llvm.fshl.i32(i32 %add715.i, i32 %add715.i, i32 10), !dbg !145
  %xor807.i = xor i32 %xor801.i, %or806.i, !dbg !145
  %and810.i = and i32 %add715.i, %add611.i, !dbg !145
  %or814.i = or i32 %add715.i, %add611.i, !dbg !145
  %and815.i = and i32 %or814.i, %add507.i, !dbg !145
  %or816.i = or i32 %and815.i, %and810.i, !dbg !145
  %add817.i = add i32 %xor807.i, %or816.i, !dbg !145
  %add819.i = add i32 %add817.i, %add787.i, !dbg !145
    #dbg_value(i32 %add819.i, !128, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !131)
  %or824.i = tail call i32 @llvm.fshl.i32(i32 %add790.i, i32 %add790.i, i32 26), !dbg !146
  %or829.i = tail call i32 @llvm.fshl.i32(i32 %add790.i, i32 %add790.i, i32 21), !dbg !146
  %xor830.i = xor i32 %or824.i, %or829.i, !dbg !146
  %or835.i = tail call i32 @llvm.fshl.i32(i32 %add790.i, i32 %add790.i, i32 7), !dbg !146
  %xor836.i = xor i32 %xor830.i, %or835.i, !dbg !146
  %xor841.i = xor i32 %add686.i, %add582.i, !dbg !146
  %and842.i = and i32 %add790.i, %xor841.i, !dbg !146
  %xor843.i = xor i32 %and842.i, %add582.i, !dbg !146
  %31 = or disjoint i64 %indvars.iv.i, 8, !dbg !146
  %arrayidx847.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %31, !dbg !146
  %32 = load i32, ptr %arrayidx847.i, align 16, !dbg !146
  br i1 %tobool.not.i, label %cond.end887.i, label %cond.true850.i, !dbg !146

cond.true850.i:                                   ; preds = %cond.end783.i
  %or855.i = tail call i32 @llvm.fshl.i32(i32 %cond680.i, i32 %cond680.i, i32 15), !dbg !146
  %or860.i = tail call i32 @llvm.fshl.i32(i32 %cond680.i, i32 %cond680.i, i32 13), !dbg !146
  %xor861.i = xor i32 %or855.i, %or860.i, !dbg !146
  %shr863.i = lshr i32 %cond680.i, 10, !dbg !146
  %xor864.i = xor i32 %xor861.i, %shr863.i, !dbg !146
  %or871.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.128.02315.i, i32 %W.sroa.128.02315.i, i32 25), !dbg !146
  %or876.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.128.02315.i, i32 %W.sroa.128.02315.i, i32 14), !dbg !146
  %xor877.i = xor i32 %or871.i, %or876.i, !dbg !146
  %shr879.i = lshr i32 %W.sroa.128.02315.i, 3, !dbg !146
  %xor880.i = xor i32 %xor877.i, %shr879.i, !dbg !146
  %add866.i = add i32 %xor880.i, %W.sroa.114.02316.i, !dbg !146
  %add881.i = add i32 %add866.i, %cond160.i, !dbg !146
  %add883.i = add i32 %add881.i, %xor864.i, !dbg !146
    #dbg_value(i32 %add883.i, !127, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !131)
  br label %cond.end887.i, !dbg !146

cond.end887.i:                                    ; preds = %cond.true850.i, %cond.end783.i
  %cond888.i = phi i32 [ %add883.i, %cond.true850.i ], [ %or11.8, %cond.end783.i ], !dbg !146
    #dbg_value(i32 %cond888.i, !127, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !131)
  %add844.i = add i32 %32, %add478.i, !dbg !146
  %add848.i = add i32 %add844.i, %xor843.i, !dbg !146
  %add889.i = add i32 %add848.i, %xor836.i, !dbg !146
  %add891.i = add i32 %add889.i, %cond888.i, !dbg !146
    #dbg_value(i32 %add891.i, !128, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
  %add894.i = add i32 %add891.i, %add507.i, !dbg !146
    #dbg_value(i32 %add894.i, !128, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
  %or899.i = tail call i32 @llvm.fshl.i32(i32 %add819.i, i32 %add819.i, i32 30), !dbg !146
  %or904.i = tail call i32 @llvm.fshl.i32(i32 %add819.i, i32 %add819.i, i32 19), !dbg !146
  %xor905.i = xor i32 %or899.i, %or904.i, !dbg !146
  %or910.i = tail call i32 @llvm.fshl.i32(i32 %add819.i, i32 %add819.i, i32 10), !dbg !146
  %xor911.i = xor i32 %xor905.i, %or910.i, !dbg !146
  %and914.i = and i32 %add819.i, %add715.i, !dbg !146
  %or918.i = or i32 %add819.i, %add715.i, !dbg !146
  %and919.i = and i32 %or918.i, %add611.i, !dbg !146
  %or920.i = or i32 %and919.i, %and914.i, !dbg !146
  %add921.i = add i32 %xor911.i, %or920.i, !dbg !146
  %add923.i = add i32 %add921.i, %add891.i, !dbg !146
    #dbg_value(i32 %add923.i, !128, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
  %or928.i = tail call i32 @llvm.fshl.i32(i32 %add894.i, i32 %add894.i, i32 26), !dbg !147
  %or933.i = tail call i32 @llvm.fshl.i32(i32 %add894.i, i32 %add894.i, i32 21), !dbg !147
  %xor934.i = xor i32 %or928.i, %or933.i, !dbg !147
  %or939.i = tail call i32 @llvm.fshl.i32(i32 %add894.i, i32 %add894.i, i32 7), !dbg !147
  %xor940.i = xor i32 %xor934.i, %or939.i, !dbg !147
  %xor945.i = xor i32 %add790.i, %add686.i, !dbg !147
  %and946.i = and i32 %add894.i, %xor945.i, !dbg !147
  %xor947.i = xor i32 %and946.i, %add686.i, !dbg !147
  %33 = or disjoint i64 %indvars.iv.i, 9, !dbg !147
  %arrayidx951.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %33, !dbg !147
  %34 = load i32, ptr %arrayidx951.i, align 4, !dbg !147
  br i1 %tobool.not.i, label %cond.end991.i, label %cond.true954.i, !dbg !147

cond.true954.i:                                   ; preds = %cond.end887.i
  %or959.i = tail call i32 @llvm.fshl.i32(i32 %cond784.i, i32 %cond784.i, i32 15), !dbg !147
  %or964.i = tail call i32 @llvm.fshl.i32(i32 %cond784.i, i32 %cond784.i, i32 13), !dbg !147
  %xor965.i = xor i32 %or959.i, %or964.i, !dbg !147
  %shr967.i = lshr i32 %cond784.i, 10, !dbg !147
  %xor968.i = xor i32 %xor965.i, %shr967.i, !dbg !147
  %or975.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.142.02314.i, i32 %W.sroa.142.02314.i, i32 25), !dbg !147
  %or980.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.142.02314.i, i32 %W.sroa.142.02314.i, i32 14), !dbg !147
  %xor981.i = xor i32 %or975.i, %or980.i, !dbg !147
  %shr983.i = lshr i32 %W.sroa.142.02314.i, 3, !dbg !147
  %xor984.i = xor i32 %xor981.i, %shr983.i, !dbg !147
  %add970.i = add i32 %xor984.i, %W.sroa.128.02315.i, !dbg !147
  %add985.i = add i32 %add970.i, %cond264.i, !dbg !147
  %add987.i = add i32 %add985.i, %xor968.i, !dbg !147
    #dbg_value(i32 %add987.i, !127, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !131)
  br label %cond.end991.i, !dbg !147

cond.end991.i:                                    ; preds = %cond.true954.i, %cond.end887.i
  %cond992.i = phi i32 [ %add987.i, %cond.true954.i ], [ %or11.9, %cond.end887.i ], !dbg !147
    #dbg_value(i32 %cond992.i, !127, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !131)
  %add948.i = add i32 %34, %add582.i, !dbg !147
  %add952.i = add i32 %add948.i, %xor947.i, !dbg !147
  %add993.i = add i32 %add952.i, %xor940.i, !dbg !147
  %add995.i = add i32 %add993.i, %cond992.i, !dbg !147
    #dbg_value(i32 %add995.i, !128, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
  %add998.i = add i32 %add995.i, %add611.i, !dbg !147
    #dbg_value(i32 %add998.i, !128, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
  %or1003.i = tail call i32 @llvm.fshl.i32(i32 %add923.i, i32 %add923.i, i32 30), !dbg !147
  %or1008.i = tail call i32 @llvm.fshl.i32(i32 %add923.i, i32 %add923.i, i32 19), !dbg !147
  %xor1009.i = xor i32 %or1003.i, %or1008.i, !dbg !147
  %or1014.i = tail call i32 @llvm.fshl.i32(i32 %add923.i, i32 %add923.i, i32 10), !dbg !147
  %xor1015.i = xor i32 %xor1009.i, %or1014.i, !dbg !147
  %and1018.i = and i32 %add923.i, %add819.i, !dbg !147
  %or1022.i = or i32 %add923.i, %add819.i, !dbg !147
  %and1023.i = and i32 %or1022.i, %add715.i, !dbg !147
  %or1024.i = or i32 %and1023.i, %and1018.i, !dbg !147
  %add1025.i = add i32 %xor1015.i, %or1024.i, !dbg !147
  %add1027.i = add i32 %add1025.i, %add995.i, !dbg !147
    #dbg_value(i32 %add1027.i, !128, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
  %or1032.i = tail call i32 @llvm.fshl.i32(i32 %add998.i, i32 %add998.i, i32 26), !dbg !148
  %or1037.i = tail call i32 @llvm.fshl.i32(i32 %add998.i, i32 %add998.i, i32 21), !dbg !148
  %xor1038.i = xor i32 %or1032.i, %or1037.i, !dbg !148
  %or1043.i = tail call i32 @llvm.fshl.i32(i32 %add998.i, i32 %add998.i, i32 7), !dbg !148
  %xor1044.i = xor i32 %xor1038.i, %or1043.i, !dbg !148
  %xor1049.i = xor i32 %add894.i, %add790.i, !dbg !148
  %and1050.i = and i32 %add998.i, %xor1049.i, !dbg !148
  %xor1051.i = xor i32 %and1050.i, %add790.i, !dbg !148
  %35 = or disjoint i64 %indvars.iv.i, 10, !dbg !148
  %arrayidx1055.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %35, !dbg !148
  %36 = load i32, ptr %arrayidx1055.i, align 8, !dbg !148
  br i1 %tobool.not.i, label %cond.end1095.i, label %cond.true1058.i, !dbg !148

cond.true1058.i:                                  ; preds = %cond.end991.i
  %or1063.i = tail call i32 @llvm.fshl.i32(i32 %cond888.i, i32 %cond888.i, i32 15), !dbg !148
  %or1068.i = tail call i32 @llvm.fshl.i32(i32 %cond888.i, i32 %cond888.i, i32 13), !dbg !148
  %xor1069.i = xor i32 %or1063.i, %or1068.i, !dbg !148
  %shr1071.i = lshr i32 %cond888.i, 10, !dbg !148
  %xor1072.i = xor i32 %xor1069.i, %shr1071.i, !dbg !148
  %or1079.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.156.02313.i, i32 %W.sroa.156.02313.i, i32 25), !dbg !148
  %or1084.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.156.02313.i, i32 %W.sroa.156.02313.i, i32 14), !dbg !148
  %xor1085.i = xor i32 %or1079.i, %or1084.i, !dbg !148
  %shr1087.i = lshr i32 %W.sroa.156.02313.i, 3, !dbg !148
  %xor1088.i = xor i32 %xor1085.i, %shr1087.i, !dbg !148
  %add1074.i = add i32 %xor1088.i, %W.sroa.142.02314.i, !dbg !148
  %add1089.i = add i32 %add1074.i, %cond368.i, !dbg !148
  %add1091.i = add i32 %add1089.i, %xor1072.i, !dbg !148
    #dbg_value(i32 %add1091.i, !127, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !131)
  br label %cond.end1095.i, !dbg !148

cond.end1095.i:                                   ; preds = %cond.true1058.i, %cond.end991.i
  %cond1096.i = phi i32 [ %add1091.i, %cond.true1058.i ], [ %or11.10, %cond.end991.i ], !dbg !148
    #dbg_value(i32 %cond1096.i, !127, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !131)
  %add1052.i = add i32 %36, %add686.i, !dbg !148
  %add1056.i = add i32 %add1052.i, %xor1051.i, !dbg !148
  %add1097.i = add i32 %add1056.i, %xor1044.i, !dbg !148
  %add1099.i = add i32 %add1097.i, %cond1096.i, !dbg !148
    #dbg_value(i32 %add1099.i, !128, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
  %add1102.i = add i32 %add1099.i, %add715.i, !dbg !148
    #dbg_value(i32 %add1102.i, !128, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
  %or1107.i = tail call i32 @llvm.fshl.i32(i32 %add1027.i, i32 %add1027.i, i32 30), !dbg !148
  %or1112.i = tail call i32 @llvm.fshl.i32(i32 %add1027.i, i32 %add1027.i, i32 19), !dbg !148
  %xor1113.i = xor i32 %or1107.i, %or1112.i, !dbg !148
  %or1118.i = tail call i32 @llvm.fshl.i32(i32 %add1027.i, i32 %add1027.i, i32 10), !dbg !148
  %xor1119.i = xor i32 %xor1113.i, %or1118.i, !dbg !148
  %and1122.i = and i32 %add1027.i, %add923.i, !dbg !148
  %or1126.i = or i32 %add1027.i, %add923.i, !dbg !148
  %and1127.i = and i32 %or1126.i, %add819.i, !dbg !148
  %or1128.i = or i32 %and1127.i, %and1122.i, !dbg !148
  %add1129.i = add i32 %xor1119.i, %or1128.i, !dbg !148
  %add1131.i = add i32 %add1129.i, %add1099.i, !dbg !148
    #dbg_value(i32 %add1131.i, !128, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
  %or1136.i = tail call i32 @llvm.fshl.i32(i32 %add1102.i, i32 %add1102.i, i32 26), !dbg !149
  %or1141.i = tail call i32 @llvm.fshl.i32(i32 %add1102.i, i32 %add1102.i, i32 21), !dbg !149
  %xor1142.i = xor i32 %or1136.i, %or1141.i, !dbg !149
  %or1147.i = tail call i32 @llvm.fshl.i32(i32 %add1102.i, i32 %add1102.i, i32 7), !dbg !149
  %xor1148.i = xor i32 %xor1142.i, %or1147.i, !dbg !149
  %xor1153.i = xor i32 %add998.i, %add894.i, !dbg !149
  %and1154.i = and i32 %add1102.i, %xor1153.i, !dbg !149
  %xor1155.i = xor i32 %and1154.i, %add894.i, !dbg !149
  %37 = or disjoint i64 %indvars.iv.i, 11, !dbg !149
  %arrayidx1159.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %37, !dbg !149
  %38 = load i32, ptr %arrayidx1159.i, align 4, !dbg !149
  br i1 %tobool.not.i, label %cond.end1199.i, label %cond.true1162.i, !dbg !149

cond.true1162.i:                                  ; preds = %cond.end1095.i
  %or1167.i = tail call i32 @llvm.fshl.i32(i32 %cond992.i, i32 %cond992.i, i32 15), !dbg !149
  %or1172.i = tail call i32 @llvm.fshl.i32(i32 %cond992.i, i32 %cond992.i, i32 13), !dbg !149
  %xor1173.i = xor i32 %or1167.i, %or1172.i, !dbg !149
  %shr1175.i = lshr i32 %cond992.i, 10, !dbg !149
  %xor1176.i = xor i32 %xor1173.i, %shr1175.i, !dbg !149
  %or1183.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.170.02312.i, i32 %W.sroa.170.02312.i, i32 25), !dbg !149
  %or1188.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.170.02312.i, i32 %W.sroa.170.02312.i, i32 14), !dbg !149
  %xor1189.i = xor i32 %or1183.i, %or1188.i, !dbg !149
  %shr1191.i = lshr i32 %W.sroa.170.02312.i, 3, !dbg !149
  %xor1192.i = xor i32 %xor1189.i, %shr1191.i, !dbg !149
  %add1178.i = add i32 %xor1192.i, %W.sroa.156.02313.i, !dbg !149
  %add1193.i = add i32 %add1178.i, %cond472.i, !dbg !149
  %add1195.i = add i32 %add1193.i, %xor1176.i, !dbg !149
    #dbg_value(i32 %add1195.i, !127, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !131)
  br label %cond.end1199.i, !dbg !149

cond.end1199.i:                                   ; preds = %cond.true1162.i, %cond.end1095.i
  %cond1200.i = phi i32 [ %add1195.i, %cond.true1162.i ], [ %or11.11, %cond.end1095.i ], !dbg !149
    #dbg_value(i32 %cond1200.i, !127, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !131)
  %add1156.i = add i32 %38, %add790.i, !dbg !149
  %add1160.i = add i32 %add1156.i, %xor1155.i, !dbg !149
  %add1201.i = add i32 %add1160.i, %xor1148.i, !dbg !149
  %add1203.i = add i32 %add1201.i, %cond1200.i, !dbg !149
    #dbg_value(i32 %add1203.i, !128, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
  %add1206.i = add i32 %add1203.i, %add819.i, !dbg !149
    #dbg_value(i32 %add1206.i, !128, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !131)
  %or1211.i = tail call i32 @llvm.fshl.i32(i32 %add1131.i, i32 %add1131.i, i32 30), !dbg !149
  %or1216.i = tail call i32 @llvm.fshl.i32(i32 %add1131.i, i32 %add1131.i, i32 19), !dbg !149
  %xor1217.i = xor i32 %or1211.i, %or1216.i, !dbg !149
  %or1222.i = tail call i32 @llvm.fshl.i32(i32 %add1131.i, i32 %add1131.i, i32 10), !dbg !149
  %xor1223.i = xor i32 %xor1217.i, %or1222.i, !dbg !149
  %and1226.i = and i32 %add1131.i, %add1027.i, !dbg !149
  %or1230.i = or i32 %add1131.i, %add1027.i, !dbg !149
  %and1231.i = and i32 %or1230.i, %add923.i, !dbg !149
  %or1232.i = or i32 %and1231.i, %and1226.i, !dbg !149
  %add1233.i = add i32 %xor1223.i, %or1232.i, !dbg !149
  %add1235.i = add i32 %add1233.i, %add1203.i, !dbg !149
    #dbg_value(i32 %add1235.i, !128, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
  %or1240.i = tail call i32 @llvm.fshl.i32(i32 %add1206.i, i32 %add1206.i, i32 26), !dbg !150
  %or1245.i = tail call i32 @llvm.fshl.i32(i32 %add1206.i, i32 %add1206.i, i32 21), !dbg !150
  %xor1246.i = xor i32 %or1240.i, %or1245.i, !dbg !150
  %or1251.i = tail call i32 @llvm.fshl.i32(i32 %add1206.i, i32 %add1206.i, i32 7), !dbg !150
  %xor1252.i = xor i32 %xor1246.i, %or1251.i, !dbg !150
  %xor1257.i = xor i32 %add1102.i, %add998.i, !dbg !150
  %and1258.i = and i32 %add1206.i, %xor1257.i, !dbg !150
  %xor1259.i = xor i32 %and1258.i, %add998.i, !dbg !150
  %39 = or disjoint i64 %indvars.iv.i, 12, !dbg !150
  %arrayidx1263.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %39, !dbg !150
  %40 = load i32, ptr %arrayidx1263.i, align 16, !dbg !150
  br i1 %tobool.not.i, label %cond.end1303.i, label %cond.true1266.i, !dbg !150

cond.true1266.i:                                  ; preds = %cond.end1199.i
  %or1271.i = tail call i32 @llvm.fshl.i32(i32 %cond1096.i, i32 %cond1096.i, i32 15), !dbg !150
  %or1276.i = tail call i32 @llvm.fshl.i32(i32 %cond1096.i, i32 %cond1096.i, i32 13), !dbg !150
  %xor1277.i = xor i32 %or1271.i, %or1276.i, !dbg !150
  %shr1279.i = lshr i32 %cond1096.i, 10, !dbg !150
  %xor1280.i = xor i32 %xor1277.i, %shr1279.i, !dbg !150
  %or1287.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.184.02311.i, i32 %W.sroa.184.02311.i, i32 25), !dbg !150
  %or1292.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.184.02311.i, i32 %W.sroa.184.02311.i, i32 14), !dbg !150
  %xor1293.i = xor i32 %or1287.i, %or1292.i, !dbg !150
  %shr1295.i = lshr i32 %W.sroa.184.02311.i, 3, !dbg !150
  %xor1296.i = xor i32 %xor1293.i, %shr1295.i, !dbg !150
  %add1282.i = add i32 %xor1296.i, %W.sroa.170.02312.i, !dbg !150
  %add1297.i = add i32 %add1282.i, %cond576.i, !dbg !150
  %add1299.i = add i32 %add1297.i, %xor1280.i, !dbg !150
    #dbg_value(i32 %add1299.i, !127, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !131)
  br label %cond.end1303.i, !dbg !150

cond.end1303.i:                                   ; preds = %cond.true1266.i, %cond.end1199.i
  %cond1304.i = phi i32 [ %add1299.i, %cond.true1266.i ], [ %or11.12, %cond.end1199.i ], !dbg !150
    #dbg_value(i32 %cond1304.i, !127, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !131)
  %add1260.i = add i32 %40, %add894.i, !dbg !150
  %add1264.i = add i32 %add1260.i, %xor1259.i, !dbg !150
  %add1305.i = add i32 %add1264.i, %xor1252.i, !dbg !150
  %add1307.i = add i32 %add1305.i, %cond1304.i, !dbg !150
    #dbg_value(i32 %add1307.i, !128, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
  %add1310.i = add i32 %add1307.i, %add923.i, !dbg !150
    #dbg_value(i32 %add1310.i, !128, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
  %or1315.i = tail call i32 @llvm.fshl.i32(i32 %add1235.i, i32 %add1235.i, i32 30), !dbg !150
  %or1320.i = tail call i32 @llvm.fshl.i32(i32 %add1235.i, i32 %add1235.i, i32 19), !dbg !150
  %xor1321.i = xor i32 %or1315.i, %or1320.i, !dbg !150
  %or1326.i = tail call i32 @llvm.fshl.i32(i32 %add1235.i, i32 %add1235.i, i32 10), !dbg !150
  %xor1327.i = xor i32 %xor1321.i, %or1326.i, !dbg !150
  %and1330.i = and i32 %add1235.i, %add1131.i, !dbg !150
  %or1334.i = or i32 %add1235.i, %add1131.i, !dbg !150
  %and1335.i = and i32 %or1334.i, %add1027.i, !dbg !150
  %or1336.i = or i32 %and1335.i, %and1330.i, !dbg !150
  %add1337.i = add i32 %xor1327.i, %or1336.i, !dbg !150
  %add1339.i = add i32 %add1337.i, %add1307.i, !dbg !150
    #dbg_value(i32 %add1339.i, !128, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
  %or1344.i = tail call i32 @llvm.fshl.i32(i32 %add1310.i, i32 %add1310.i, i32 26), !dbg !151
  %or1349.i = tail call i32 @llvm.fshl.i32(i32 %add1310.i, i32 %add1310.i, i32 21), !dbg !151
  %xor1350.i = xor i32 %or1344.i, %or1349.i, !dbg !151
  %or1355.i = tail call i32 @llvm.fshl.i32(i32 %add1310.i, i32 %add1310.i, i32 7), !dbg !151
  %xor1356.i = xor i32 %xor1350.i, %or1355.i, !dbg !151
  %xor1361.i = xor i32 %add1206.i, %add1102.i, !dbg !151
  %and1362.i = and i32 %add1310.i, %xor1361.i, !dbg !151
  %xor1363.i = xor i32 %and1362.i, %add1102.i, !dbg !151
  %41 = or disjoint i64 %indvars.iv.i, 13, !dbg !151
  %arrayidx1367.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %41, !dbg !151
  %42 = load i32, ptr %arrayidx1367.i, align 4, !dbg !151
  br i1 %tobool.not.i, label %cond.end1407.i, label %cond.true1370.i, !dbg !151

cond.true1370.i:                                  ; preds = %cond.end1303.i
  %or1375.i = tail call i32 @llvm.fshl.i32(i32 %cond1200.i, i32 %cond1200.i, i32 15), !dbg !151
  %or1380.i = tail call i32 @llvm.fshl.i32(i32 %cond1200.i, i32 %cond1200.i, i32 13), !dbg !151
  %xor1381.i = xor i32 %or1375.i, %or1380.i, !dbg !151
  %shr1383.i = lshr i32 %cond1200.i, 10, !dbg !151
  %xor1384.i = xor i32 %xor1381.i, %shr1383.i, !dbg !151
  %or1391.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.198.02310.i, i32 %W.sroa.198.02310.i, i32 25), !dbg !151
  %or1396.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.198.02310.i, i32 %W.sroa.198.02310.i, i32 14), !dbg !151
  %xor1397.i = xor i32 %or1391.i, %or1396.i, !dbg !151
  %shr1399.i = lshr i32 %W.sroa.198.02310.i, 3, !dbg !151
  %xor1400.i = xor i32 %xor1397.i, %shr1399.i, !dbg !151
  %add1386.i = add i32 %xor1400.i, %W.sroa.184.02311.i, !dbg !151
  %add1401.i = add i32 %add1386.i, %cond680.i, !dbg !151
  %add1403.i = add i32 %add1401.i, %xor1384.i, !dbg !151
    #dbg_value(i32 %add1403.i, !127, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !131)
  br label %cond.end1407.i, !dbg !151

cond.end1407.i:                                   ; preds = %cond.true1370.i, %cond.end1303.i
  %cond1408.i = phi i32 [ %add1403.i, %cond.true1370.i ], [ %or11.13, %cond.end1303.i ], !dbg !151
    #dbg_value(i32 %cond1408.i, !127, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !131)
  %add1364.i = add i32 %42, %add998.i, !dbg !151
  %add1368.i = add i32 %add1364.i, %xor1363.i, !dbg !151
  %add1409.i = add i32 %add1368.i, %xor1356.i, !dbg !151
  %add1411.i = add i32 %add1409.i, %cond1408.i, !dbg !151
    #dbg_value(i32 %add1411.i, !128, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
  %add1414.i = add i32 %add1411.i, %add1027.i, !dbg !151
    #dbg_value(i32 %add1414.i, !128, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
  %or1419.i = tail call i32 @llvm.fshl.i32(i32 %add1339.i, i32 %add1339.i, i32 30), !dbg !151
  %or1424.i = tail call i32 @llvm.fshl.i32(i32 %add1339.i, i32 %add1339.i, i32 19), !dbg !151
  %xor1425.i = xor i32 %or1419.i, %or1424.i, !dbg !151
  %or1430.i = tail call i32 @llvm.fshl.i32(i32 %add1339.i, i32 %add1339.i, i32 10), !dbg !151
  %xor1431.i = xor i32 %xor1425.i, %or1430.i, !dbg !151
  %and1434.i = and i32 %add1339.i, %add1235.i, !dbg !151
  %or1438.i = or i32 %add1339.i, %add1235.i, !dbg !151
  %and1439.i = and i32 %or1438.i, %add1131.i, !dbg !151
  %or1440.i = or i32 %and1439.i, %and1434.i, !dbg !151
  %add1441.i = add i32 %xor1431.i, %or1440.i, !dbg !151
  %add1443.i = add i32 %add1441.i, %add1411.i, !dbg !151
    #dbg_value(i32 %add1443.i, !128, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
  %or1448.i = tail call i32 @llvm.fshl.i32(i32 %add1414.i, i32 %add1414.i, i32 26), !dbg !152
  %or1453.i = tail call i32 @llvm.fshl.i32(i32 %add1414.i, i32 %add1414.i, i32 21), !dbg !152
  %xor1454.i = xor i32 %or1448.i, %or1453.i, !dbg !152
  %or1459.i = tail call i32 @llvm.fshl.i32(i32 %add1414.i, i32 %add1414.i, i32 7), !dbg !152
  %xor1460.i = xor i32 %xor1454.i, %or1459.i, !dbg !152
  %xor1465.i = xor i32 %add1310.i, %add1206.i, !dbg !152
  %and1466.i = and i32 %add1414.i, %xor1465.i, !dbg !152
  %xor1467.i = xor i32 %and1466.i, %add1206.i, !dbg !152
  %43 = or disjoint i64 %indvars.iv.i, 14, !dbg !152
  %arrayidx1471.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %43, !dbg !152
  %44 = load i32, ptr %arrayidx1471.i, align 8, !dbg !152
  br i1 %tobool.not.i, label %cond.end1511.i, label %cond.true1474.i, !dbg !152

cond.true1474.i:                                  ; preds = %cond.end1407.i
  %or1479.i = tail call i32 @llvm.fshl.i32(i32 %cond1304.i, i32 %cond1304.i, i32 15), !dbg !152
  %or1484.i = tail call i32 @llvm.fshl.i32(i32 %cond1304.i, i32 %cond1304.i, i32 13), !dbg !152
  %xor1485.i = xor i32 %or1479.i, %or1484.i, !dbg !152
  %shr1487.i = lshr i32 %cond1304.i, 10, !dbg !152
  %xor1488.i = xor i32 %xor1485.i, %shr1487.i, !dbg !152
  %or1495.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.212.02309.i, i32 %W.sroa.212.02309.i, i32 25), !dbg !152
  %or1500.i = tail call i32 @llvm.fshl.i32(i32 %W.sroa.212.02309.i, i32 %W.sroa.212.02309.i, i32 14), !dbg !152
  %xor1501.i = xor i32 %or1495.i, %or1500.i, !dbg !152
  %shr1503.i = lshr i32 %W.sroa.212.02309.i, 3, !dbg !152
  %xor1504.i = xor i32 %xor1501.i, %shr1503.i, !dbg !152
  %add1490.i = add i32 %xor1504.i, %W.sroa.198.02310.i, !dbg !152
  %add1505.i = add i32 %add1490.i, %cond784.i, !dbg !152
  %add1507.i = add i32 %add1505.i, %xor1488.i, !dbg !152
    #dbg_value(i32 %add1507.i, !127, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !131)
  br label %cond.end1511.i, !dbg !152

cond.end1511.i:                                   ; preds = %cond.true1474.i, %cond.end1407.i
  %cond1512.i = phi i32 [ %add1507.i, %cond.true1474.i ], [ %or11.14, %cond.end1407.i ], !dbg !152
    #dbg_value(i32 %cond1512.i, !127, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !131)
  %add1468.i = add i32 %44, %add1102.i, !dbg !152
  %add1472.i = add i32 %add1468.i, %xor1467.i, !dbg !152
  %add1513.i = add i32 %add1472.i, %xor1460.i, !dbg !152
  %add1515.i = add i32 %add1513.i, %cond1512.i, !dbg !152
    #dbg_value(i32 %add1515.i, !128, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
  %add1518.i = add i32 %add1515.i, %add1131.i, !dbg !152
    #dbg_value(i32 %add1518.i, !128, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
  %or1523.i = tail call i32 @llvm.fshl.i32(i32 %add1443.i, i32 %add1443.i, i32 30), !dbg !152
  %or1528.i = tail call i32 @llvm.fshl.i32(i32 %add1443.i, i32 %add1443.i, i32 19), !dbg !152
  %xor1529.i = xor i32 %or1523.i, %or1528.i, !dbg !152
  %or1534.i = tail call i32 @llvm.fshl.i32(i32 %add1443.i, i32 %add1443.i, i32 10), !dbg !152
  %xor1535.i = xor i32 %xor1529.i, %or1534.i, !dbg !152
  %and1538.i = and i32 %add1443.i, %add1339.i, !dbg !152
  %or1542.i = or i32 %add1443.i, %add1339.i, !dbg !152
  %and1543.i = and i32 %or1542.i, %add1235.i, !dbg !152
  %or1544.i = or i32 %and1543.i, %and1538.i, !dbg !152
  %add1545.i = add i32 %xor1535.i, %or1544.i, !dbg !152
  %add1547.i = add i32 %add1545.i, %add1515.i, !dbg !152
    #dbg_value(i32 %add1547.i, !128, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
  %or1552.i = tail call i32 @llvm.fshl.i32(i32 %add1518.i, i32 %add1518.i, i32 26), !dbg !153
  %or1557.i = tail call i32 @llvm.fshl.i32(i32 %add1518.i, i32 %add1518.i, i32 21), !dbg !153
  %xor1558.i = xor i32 %or1552.i, %or1557.i, !dbg !153
  %or1563.i = tail call i32 @llvm.fshl.i32(i32 %add1518.i, i32 %add1518.i, i32 7), !dbg !153
  %xor1564.i = xor i32 %xor1558.i, %or1563.i, !dbg !153
  %xor1569.i = xor i32 %add1414.i, %add1310.i, !dbg !153
  %and1570.i = and i32 %add1518.i, %xor1569.i, !dbg !153
  %xor1571.i = xor i32 %and1570.i, %add1310.i, !dbg !153
  %45 = or disjoint i64 %indvars.iv.i, 15, !dbg !153
  %arrayidx1575.i = getelementptr inbounds [64 x i32], ptr @SHA256_K, i64 0, i64 %45, !dbg !153
  %46 = load i32, ptr %arrayidx1575.i, align 4, !dbg !153
  br i1 %tobool.not.i, label %cond.end1615.i, label %cond.true1578.i, !dbg !153

cond.true1578.i:                                  ; preds = %cond.end1511.i
  %or1583.i = tail call i32 @llvm.fshl.i32(i32 %cond1408.i, i32 %cond1408.i, i32 15), !dbg !153
  %or1588.i = tail call i32 @llvm.fshl.i32(i32 %cond1408.i, i32 %cond1408.i, i32 13), !dbg !153
  %xor1589.i = xor i32 %or1583.i, %or1588.i, !dbg !153
  %shr1591.i = lshr i32 %cond1408.i, 10, !dbg !153
  %xor1592.i = xor i32 %xor1589.i, %shr1591.i, !dbg !153
  %or1599.i = tail call i32 @llvm.fshl.i32(i32 %cond.i, i32 %cond.i, i32 25), !dbg !153
  %or1604.i = tail call i32 @llvm.fshl.i32(i32 %cond.i, i32 %cond.i, i32 14), !dbg !153
  %xor1605.i = xor i32 %or1599.i, %or1604.i, !dbg !153
  %shr1607.i = lshr i32 %cond.i, 3, !dbg !153
  %xor1608.i = xor i32 %xor1605.i, %shr1607.i, !dbg !153
  %add1594.i = add i32 %xor1608.i, %W.sroa.212.02309.i, !dbg !153
  %add1609.i = add i32 %add1594.i, %cond888.i, !dbg !153
  %add1611.i = add i32 %add1609.i, %xor1592.i, !dbg !153
    #dbg_value(i32 %add1611.i, !127, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !131)
  br label %cond.end1615.i, !dbg !153

cond.end1615.i:                                   ; preds = %cond.true1578.i, %cond.end1511.i
  %cond1616.i = phi i32 [ %add1611.i, %cond.true1578.i ], [ %or11.15, %cond.end1511.i ], !dbg !153
    #dbg_value(i32 %cond1616.i, !127, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !131)
  %add1572.i = add i32 %46, %add1206.i, !dbg !153
  %add1576.i = add i32 %add1572.i, %xor1571.i, !dbg !153
  %add1617.i = add i32 %add1576.i, %xor1564.i, !dbg !153
  %add1619.i = add i32 %add1617.i, %cond1616.i, !dbg !153
    #dbg_value(i32 %add1619.i, !128, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !131)
  %add1622.i = add i32 %add1619.i, %add1235.i, !dbg !153
    #dbg_value(i32 %add1622.i, !128, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
  %or1627.i = tail call i32 @llvm.fshl.i32(i32 %add1547.i, i32 %add1547.i, i32 30), !dbg !153
  %or1632.i = tail call i32 @llvm.fshl.i32(i32 %add1547.i, i32 %add1547.i, i32 19), !dbg !153
  %xor1633.i = xor i32 %or1627.i, %or1632.i, !dbg !153
  %or1638.i = tail call i32 @llvm.fshl.i32(i32 %add1547.i, i32 %add1547.i, i32 10), !dbg !153
  %xor1639.i = xor i32 %xor1633.i, %or1638.i, !dbg !153
  %and1642.i = and i32 %add1547.i, %add1443.i, !dbg !153
  %or1646.i = or i32 %add1547.i, %add1443.i, !dbg !153
  %and1647.i = and i32 %or1646.i, %add1339.i, !dbg !153
  %or1648.i = or i32 %and1647.i, %and1642.i, !dbg !153
  %add1649.i = add i32 %xor1639.i, %or1648.i, !dbg !153
  %add1651.i = add i32 %add1649.i, %add1619.i, !dbg !153
    #dbg_value(i32 %add1651.i, !128, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !131)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16, !dbg !154
    #dbg_value(i64 %indvars.iv.next.i, !129, !DIExpression(), !134)
    #dbg_value(i32 %add1547.i, !128, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
    #dbg_value(i32 %add1443.i, !128, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
    #dbg_value(i32 %add1339.i, !128, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
    #dbg_value(i32 %add1622.i, !128, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
    #dbg_value(i32 %add1518.i, !128, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
    #dbg_value(i32 %add1414.i, !128, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
    #dbg_value(i32 %add1310.i, !128, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
    #dbg_value(i32 %cond.i, !127, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !131)
    #dbg_value(i32 %cond160.i, !127, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !131)
    #dbg_value(i32 %cond264.i, !127, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !131)
    #dbg_value(i32 %cond368.i, !127, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !131)
    #dbg_value(i32 %cond472.i, !127, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !131)
    #dbg_value(i32 %cond576.i, !127, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !131)
    #dbg_value(i32 %cond680.i, !127, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !131)
    #dbg_value(i32 %cond784.i, !127, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !131)
    #dbg_value(i32 %cond888.i, !127, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !131)
    #dbg_value(i32 %cond992.i, !127, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !131)
    #dbg_value(i32 %cond1096.i, !127, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !131)
    #dbg_value(i32 %cond1200.i, !127, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !131)
    #dbg_value(i32 %cond1304.i, !127, !DIExpression(DW_OP_LLVM_fragment, 384, 32), !131)
    #dbg_value(i32 %cond1408.i, !127, !DIExpression(DW_OP_LLVM_fragment, 416, 32), !131)
    #dbg_value(i32 %cond1512.i, !127, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !131)
    #dbg_value(i32 %cond1616.i, !127, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !131)
  %cmp.i = icmp ult i64 %indvars.iv.i, 48, !dbg !155
  br i1 %cmp.i, label %for.body.i, label %transform.exit, !dbg !135, !llvm.loop !156

transform.exit:                                   ; preds = %cond.end1615.i
  %add1655.i = add i32 %add1651.i, %T.sroa.0.0.copyload.i, !dbg !158
  store i32 %add1655.i, ptr %state, align 4, !dbg !158
  %add1658.i = add i32 %add1547.i, %T.sroa.60.0.copyload.i, !dbg !159
  store i32 %add1658.i, ptr %T.sroa.60.0..sroa_idx.i, align 4, !dbg !159
  %add1661.i = add i32 %add1443.i, %T.sroa.117.0.copyload.i, !dbg !160
  store i32 %add1661.i, ptr %T.sroa.117.0..sroa_idx.i, align 4, !dbg !160
  %add1664.i = add i32 %add1339.i, %T.sroa.174.0.copyload.i, !dbg !161
  store i32 %add1664.i, ptr %T.sroa.174.0..sroa_idx.i, align 4, !dbg !161
  %add1667.i = add i32 %add1622.i, %T.sroa.231.0.copyload.i, !dbg !162
  store i32 %add1667.i, ptr %T.sroa.231.0..sroa_idx.i, align 4, !dbg !162
  %add1670.i = add i32 %add1518.i, %T.sroa.288.0.copyload.i, !dbg !163
  store i32 %add1670.i, ptr %T.sroa.288.0..sroa_idx.i, align 4, !dbg !163
  %add1673.i = add i32 %add1414.i, %T.sroa.345.0.copyload.i, !dbg !164
  store i32 %add1673.i, ptr %T.sroa.345.0..sroa_idx.i, align 4, !dbg !164
  %add1676.i = add i32 %add1310.i, %T.sroa.402.0.copyload.i, !dbg !165
  store i32 %add1676.i, ptr %T.sroa.402.0..sroa_idx.i, align 4, !dbg !165
  ret void, !dbg !166
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @lzma_sha256_finish(ptr nocapture noundef %check) local_unnamed_addr #3 !dbg !167 {
entry:
    #dbg_value(ptr %check, !169, !DIExpression(), !173)
  %size = getelementptr inbounds i8, ptr %check, i64 96, !dbg !174
  %0 = load i64, ptr %size, align 8, !dbg !174
  %and = and i64 %0, 63, !dbg !175
    #dbg_value(i64 %and, !170, !DIExpression(), !173)
    #dbg_value(i64 %and, !170, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !173)
  %arrayidx4.peel = getelementptr inbounds [64 x i8], ptr %check, i64 0, i64 %and, !dbg !173
  store i8 -128, ptr %arrayidx4.peel, align 1, !dbg !173
  %pos.0.peel = add nuw nsw i64 %and, 1, !dbg !173
    #dbg_value(i64 %pos.0.peel, !170, !DIExpression(), !173)
  switch i64 %and, label %entry.peel.newph [
    i64 55, label %while.end
    i64 63, label %if.then.peel
  ], !dbg !176

if.then.peel:                                     ; preds = %entry
  tail call fastcc void @process(ptr noundef nonnull %check), !dbg !177
    #dbg_value(i64 0, !170, !DIExpression(), !173)
  br label %entry.peel.newph, !dbg !181

entry.peel.newph:                                 ; preds = %entry, %if.then.peel
  %pos.1.sink.be.peel = phi i64 [ 0, %if.then.peel ], [ %pos.0.peel, %entry ]
  br label %while.cond, !dbg !176

while.cond:                                       ; preds = %while.cond.backedge, %entry.peel.newph
  %pos.1.sink = phi i64 [ %pos.1.sink.be.peel, %entry.peel.newph ], [ %pos.1.sink.be, %while.cond.backedge ]
  %arrayidx4 = getelementptr inbounds [64 x i8], ptr %check, i64 0, i64 %pos.1.sink, !dbg !173
  store i8 0, ptr %arrayidx4, align 1, !dbg !173
  %pos.0 = add nuw nsw i64 %pos.1.sink, 1, !dbg !173
    #dbg_value(i64 %pos.0, !170, !DIExpression(), !173)
  switch i64 %pos.1.sink, label %while.cond.backedge [
    i64 55, label %while.end
    i64 63, label %if.then
  ], !dbg !176

while.cond.backedge:                              ; preds = %while.cond, %if.then
  %pos.1.sink.be = phi i64 [ 0, %if.then ], [ %pos.0, %while.cond ]
  br label %while.cond, !dbg !173, !llvm.loop !182

if.then:                                          ; preds = %while.cond
  tail call fastcc void @process(ptr noundef nonnull %check), !dbg !177
    #dbg_value(i64 0, !170, !DIExpression(), !173)
  br label %while.cond.backedge, !dbg !181

while.end:                                        ; preds = %while.cond, %entry
  %state = getelementptr inbounds i8, ptr %check, i64 64, !dbg !185
  %1 = load i64, ptr %size, align 8, !dbg !186
  %mul = shl i64 %1, 3, !dbg !186
  store i64 %mul, ptr %size, align 8, !dbg !186
  %shl = shl i64 %1, 59, !dbg !187
  %shl11 = shl i64 %1, 43, !dbg !187
  %and12 = and i64 %shl11, 71776119061217280, !dbg !187
  %or = or disjoint i64 %and12, %shl, !dbg !187
  %shl15 = shl i64 %1, 27, !dbg !187
  %and16 = and i64 %shl15, 280375465082880, !dbg !187
  %or17 = or disjoint i64 %or, %and16, !dbg !187
  %shl20 = shl i64 %1, 11, !dbg !187
  %and21 = and i64 %shl20, 1095216660480, !dbg !187
  %or22 = or disjoint i64 %or17, %and21, !dbg !187
  %shr = lshr i64 %mul, 8, !dbg !187
  %and25 = and i64 %shr, 4278190080, !dbg !187
  %or26 = or disjoint i64 %or22, %and25, !dbg !187
  %shr29 = lshr i64 %mul, 24, !dbg !187
  %and30 = and i64 %shr29, 16711680, !dbg !187
  %or31 = or disjoint i64 %or26, %and30, !dbg !187
  %shr34 = lshr i64 %mul, 40, !dbg !187
  %and35 = and i64 %shr34, 65280, !dbg !187
  %or36 = or disjoint i64 %or31, %and35, !dbg !187
  %shr39 = lshr i64 %mul, 56, !dbg !187
  %or40 = or i64 %or36, %shr39, !dbg !187
  %arrayidx42 = getelementptr inbounds i8, ptr %check, i64 56, !dbg !188
  store i64 %or40, ptr %arrayidx42, align 8, !dbg !189
  tail call fastcc void @process(ptr noundef nonnull %check), !dbg !190
    #dbg_value(i64 0, !171, !DIExpression(), !191)
    #dbg_value(i64 0, !171, !DIExpression(), !191)
    #dbg_value(i64 1, !171, !DIExpression(), !191)
    #dbg_value(i64 2, !171, !DIExpression(), !191)
    #dbg_value(i64 3, !171, !DIExpression(), !191)
  %2 = load <4 x i32>, ptr %state, align 4, !dbg !192
  %3 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %2), !dbg !192
  store <4 x i32> %3, ptr %check, align 4, !dbg !194
    #dbg_value(i64 4, !171, !DIExpression(), !191)
  %arrayidx46.4 = getelementptr inbounds i8, ptr %check, i64 80, !dbg !192
  %arrayidx66.4 = getelementptr inbounds i8, ptr %check, i64 16, !dbg !195
    #dbg_value(i64 5, !171, !DIExpression(), !191)
    #dbg_value(i64 6, !171, !DIExpression(), !191)
    #dbg_value(i64 7, !171, !DIExpression(), !191)
  %4 = load <4 x i32>, ptr %arrayidx46.4, align 4, !dbg !192
  %5 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %4), !dbg !192
  store <4 x i32> %5, ptr %arrayidx66.4, align 4, !dbg !194
    #dbg_value(i64 8, !171, !DIExpression(), !191)
  ret void, !dbg !196
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

!llvm.dbg.cu = !{!48}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !3, line: 139, type: !57, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "lzma_sha256_init", scope: !3, file: !3, line: 137, type: !4, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !55)
!3 = !DIFile(filename: "liblzma/check/sha256.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "f08126c77e17cbad9e33d75af3140f58")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check_state", file: !8, line: 56, baseType: !9)
!8 = !DIFile(filename: "liblzma/check/check.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "938220df6e0ab33115ef85b0d8c70c5b")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 34, size: 832, elements: !10)
!10 = !{!11, !37}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !9, file: !8, line: 40, baseType: !12, size: 512)
!12 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !9, file: !8, line: 36, size: 512, elements: !13)
!13 = !{!14, !23, !30}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !12, file: !8, line: 37, baseType: !15, size: 512)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, elements: !21)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !17, line: 24, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !19, line: 38, baseType: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !{!22}
!22 = !DISubrange(count: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !12, file: !8, line: 38, baseType: !24, size: 512)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 512, elements: !28)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !17, line: 26, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !19, line: 42, baseType: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !{!29}
!29 = !DISubrange(count: 16)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !12, file: !8, line: 39, baseType: !31, size: 512)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 512, elements: !35)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !17, line: 27, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !19, line: 45, baseType: !34)
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !{!36}
!36 = !DISubrange(count: 8)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !9, file: !8, line: 54, baseType: !38, size: 320, offset: 512)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !9, file: !8, line: 43, size: 320, elements: !39)
!39 = !{!40, !41, !42}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !38, file: !8, line: 44, baseType: !25, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "crc64", scope: !38, file: !8, line: 45, baseType: !32, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !38, file: !8, line: 53, baseType: !43, size: 320)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !38, file: !8, line: 47, size: 320, elements: !44)
!44 = !{!45, !47}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !43, file: !8, line: 49, baseType: !46, size: 256)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !35)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !43, file: !8, line: 52, baseType: !32, size: 64, offset: 256)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !49, globals: !50, splitDebugInlining: false, nameTableKind: None)
!49 = !{!32, !25}
!50 = !{!0, !51}
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "SHA256_K", scope: !48, file: !3, line: 64, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2048, elements: !21)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!55 = !{!56}
!56 = !DILocalVariable(name: "check", arg: 1, scope: !2, file: !3, line: 137, type: !6)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 256, elements: !35)
!58 = !{i32 7, !"Dwarf Version", i32 5}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = !{i32 8, !"PIC Level", i32 2}
!62 = !{i32 7, !"PIE Level", i32 2}
!63 = !{i32 7, !"uwtable", i32 2}
!64 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!65 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!66 = !DILocation(line: 0, scope: !2)
!67 = !DILocation(line: 144, column: 16, scope: !2)
!68 = !DILocation(line: 144, column: 2, scope: !2)
!69 = !DILocation(line: 145, column: 22, scope: !2)
!70 = !DILocation(line: 145, column: 27, scope: !2)
!71 = !DILocation(line: 147, column: 2, scope: !2)
!72 = distinct !DISubprogram(name: "lzma_sha256_update", scope: !3, file: !3, line: 152, type: !73, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !79)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75, !77, !6}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 18, baseType: !34)
!78 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!79 = !{!80, !81, !82, !83, !86}
!80 = !DILocalVariable(name: "buf", arg: 1, scope: !72, file: !3, line: 152, type: !75)
!81 = !DILocalVariable(name: "size", arg: 2, scope: !72, file: !3, line: 152, type: !77)
!82 = !DILocalVariable(name: "check", arg: 3, scope: !72, file: !3, line: 152, type: !6)
!83 = !DILocalVariable(name: "copy_start", scope: !84, file: !3, line: 159, type: !85)
!84 = distinct !DILexicalBlock(scope: !72, file: !3, line: 158, column: 19)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!86 = !DILocalVariable(name: "copy_size", scope: !84, file: !3, line: 160, type: !77)
!87 = !DILocation(line: 0, scope: !72)
!88 = !DILocation(line: 158, column: 14, scope: !72)
!89 = !DILocation(line: 158, column: 2, scope: !72)
!90 = !DILocation(line: 159, column: 49, scope: !84)
!91 = !DILocation(line: 159, column: 54, scope: !84)
!92 = !DILocation(line: 0, scope: !84)
!93 = !DILocation(line: 160, column: 25, scope: !84)
!94 = !DILocation(line: 161, column: 7, scope: !84)
!95 = !DILocation(line: 164, column: 27, scope: !84)
!96 = !DILocation(line: 164, column: 3, scope: !84)
!97 = !DILocation(line: 166, column: 7, scope: !84)
!98 = !DILocation(line: 167, column: 8, scope: !84)
!99 = !DILocation(line: 168, column: 28, scope: !84)
!100 = !DILocation(line: 170, column: 33, scope: !101)
!101 = distinct !DILexicalBlock(scope: !84, file: !3, line: 170, column: 7)
!102 = !DILocation(line: 170, column: 41, scope: !101)
!103 = !DILocation(line: 170, column: 7, scope: !84)
!104 = !DILocation(line: 171, column: 4, scope: !101)
!105 = distinct !{!105, !89, !106}
!106 = !DILocation(line: 172, column: 2, scope: !72)
!107 = !DILocation(line: 174, column: 2, scope: !72)
!108 = distinct !DISubprogram(name: "process", scope: !3, file: !3, line: 118, type: !4, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !109)
!109 = !{!110, !111, !112}
!110 = !DILocalVariable(name: "check", arg: 1, scope: !108, file: !3, line: 118, type: !6)
!111 = !DILocalVariable(name: "data", scope: !108, file: !3, line: 124, type: !24)
!112 = !DILocalVariable(name: "i", scope: !113, file: !3, line: 126, type: !77)
!113 = distinct !DILexicalBlock(scope: !108, file: !3, line: 126, column: 2)
!114 = !DILocation(line: 0, scope: !108)
!115 = !DILocation(line: 0, scope: !113)
!116 = !DILocation(line: 127, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !3, line: 126, column: 2)
!118 = !DILocation(line: 129, column: 19, scope: !108)
!119 = !DILocalVariable(name: "state", arg: 1, scope: !120, file: !3, line: 88, type: !123)
!120 = distinct !DISubprogram(name: "transform", scope: !3, file: !3, line: 88, type: !121, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !125)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123, !124}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!125 = !{!119, !126, !127, !128, !129}
!126 = !DILocalVariable(name: "data", arg: 2, scope: !120, file: !3, line: 88, type: !124)
!127 = !DILocalVariable(name: "W", scope: !120, file: !3, line: 91, type: !24)
!128 = !DILocalVariable(name: "T", scope: !120, file: !3, line: 92, type: !46)
!129 = !DILocalVariable(name: "j", scope: !130, file: !3, line: 98, type: !27)
!130 = distinct !DILexicalBlock(scope: !120, file: !3, line: 98, column: 2)
!131 = !DILocation(line: 0, scope: !120, inlinedAt: !132)
!132 = distinct !DILocation(line: 129, column: 2, scope: !108)
!133 = !DILocation(line: 95, column: 2, scope: !120, inlinedAt: !132)
!134 = !DILocation(line: 0, scope: !130, inlinedAt: !132)
!135 = !DILocation(line: 98, column: 2, scope: !130, inlinedAt: !132)
!136 = !DILocation(line: 99, column: 3, scope: !137, inlinedAt: !132)
!137 = distinct !DILexicalBlock(scope: !138, file: !3, line: 98, column: 44)
!138 = distinct !DILexicalBlock(scope: !130, file: !3, line: 98, column: 2)
!139 = !DILocation(line: 99, column: 10, scope: !137, inlinedAt: !132)
!140 = !DILocation(line: 99, column: 17, scope: !137, inlinedAt: !132)
!141 = !DILocation(line: 99, column: 24, scope: !137, inlinedAt: !132)
!142 = !DILocation(line: 100, column: 3, scope: !137, inlinedAt: !132)
!143 = !DILocation(line: 100, column: 10, scope: !137, inlinedAt: !132)
!144 = !DILocation(line: 100, column: 17, scope: !137, inlinedAt: !132)
!145 = !DILocation(line: 100, column: 24, scope: !137, inlinedAt: !132)
!146 = !DILocation(line: 101, column: 3, scope: !137, inlinedAt: !132)
!147 = !DILocation(line: 101, column: 10, scope: !137, inlinedAt: !132)
!148 = !DILocation(line: 101, column: 17, scope: !137, inlinedAt: !132)
!149 = !DILocation(line: 101, column: 24, scope: !137, inlinedAt: !132)
!150 = !DILocation(line: 102, column: 3, scope: !137, inlinedAt: !132)
!151 = !DILocation(line: 102, column: 10, scope: !137, inlinedAt: !132)
!152 = !DILocation(line: 102, column: 17, scope: !137, inlinedAt: !132)
!153 = !DILocation(line: 102, column: 24, scope: !137, inlinedAt: !132)
!154 = !DILocation(line: 98, column: 37, scope: !138, inlinedAt: !132)
!155 = !DILocation(line: 98, column: 29, scope: !138, inlinedAt: !132)
!156 = distinct !{!156, !135, !157}
!157 = !DILocation(line: 103, column: 2, scope: !130, inlinedAt: !132)
!158 = !DILocation(line: 106, column: 11, scope: !120, inlinedAt: !132)
!159 = !DILocation(line: 107, column: 11, scope: !120, inlinedAt: !132)
!160 = !DILocation(line: 108, column: 11, scope: !120, inlinedAt: !132)
!161 = !DILocation(line: 109, column: 11, scope: !120, inlinedAt: !132)
!162 = !DILocation(line: 110, column: 11, scope: !120, inlinedAt: !132)
!163 = !DILocation(line: 111, column: 11, scope: !120, inlinedAt: !132)
!164 = !DILocation(line: 112, column: 11, scope: !120, inlinedAt: !132)
!165 = !DILocation(line: 113, column: 11, scope: !120, inlinedAt: !132)
!166 = !DILocation(line: 133, column: 1, scope: !108)
!167 = distinct !DISubprogram(name: "lzma_sha256_finish", scope: !3, file: !3, line: 179, type: !4, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !168)
!168 = !{!169, !170, !171}
!169 = !DILocalVariable(name: "check", arg: 1, scope: !167, file: !3, line: 179, type: !6)
!170 = !DILocalVariable(name: "pos", scope: !167, file: !3, line: 183, type: !77)
!171 = !DILocalVariable(name: "i", scope: !172, file: !3, line: 202, type: !77)
!172 = distinct !DILexicalBlock(scope: !167, file: !3, line: 202, column: 2)
!173 = !DILocation(line: 0, scope: !167)
!174 = !DILocation(line: 183, column: 35, scope: !167)
!175 = !DILocation(line: 183, column: 40, scope: !167)
!176 = !DILocation(line: 186, column: 2, scope: !167)
!177 = !DILocation(line: 188, column: 4, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 187, column: 18)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 187, column: 7)
!180 = distinct !DILexicalBlock(scope: !167, file: !3, line: 186, column: 24)
!181 = !DILocation(line: 190, column: 3, scope: !178)
!182 = distinct !{!182, !176, !183, !184}
!183 = !DILocation(line: 193, column: 2, scope: !167)
!184 = !{!"llvm.loop.peeled.count", i32 1}
!185 = !DILocation(line: 183, column: 22, scope: !167)
!186 = !DILocation(line: 196, column: 27, scope: !167)
!187 = !DILocation(line: 198, column: 36, scope: !167)
!188 = !DILocation(line: 198, column: 2, scope: !167)
!189 = !DILocation(line: 198, column: 34, scope: !167)
!190 = !DILocation(line: 200, column: 2, scope: !167)
!191 = !DILocation(line: 0, scope: !172)
!192 = !DILocation(line: 203, column: 26, scope: !193)
!193 = distinct !DILexicalBlock(scope: !172, file: !3, line: 202, column: 2)
!194 = !DILocation(line: 203, column: 24, scope: !193)
!195 = !DILocation(line: 203, column: 3, scope: !193)
!196 = !DILocation(line: 206, column: 1, scope: !167)
