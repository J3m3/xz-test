; ModuleID = 'sha-2/sha512.c'
source_filename = "sha-2/sha512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate %lu bytes at %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"sha-2/sha512.c\00", align 1
@K = internal unnamed_addr constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha_init(ptr nocapture noundef writeonly %md) local_unnamed_addr #0 {
entry:
  %curlen = getelementptr inbounds i8, ptr %md, i64 72
  store i32 0, ptr %curlen, align 8
  store i64 0, ptr %md, align 8
  %state = getelementptr inbounds i8, ptr %md, i64 8
  store i64 7640891576956012808, ptr %state, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %md, i64 16
  store i64 -4942790177534073029, ptr %arrayidx2, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %md, i64 24
  store i64 4354685564936845355, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %md, i64 32
  store i64 -6534734903238641935, ptr %arrayidx6, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %md, i64 40
  store i64 5840696475078001361, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %md, i64 48
  store i64 -7276294671716946913, ptr %arrayidx10, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %md, i64 56
  store i64 2270897969802886507, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %md, i64 64
  store i64 6620516959819538809, ptr %arrayidx14, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sha_process(ptr nocapture noundef %md, ptr nocapture noundef readonly %src, i32 noundef %inlen) local_unnamed_addr #1 {
entry:
  %conv.i = sext i32 %inlen to i64
  %call.i = tail call noalias ptr @malloc(i64 noundef %conv.i) #11
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i, label %sortof_strdup.exit

if.then.i:                                        ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8
  %call4.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef %conv.i, ptr noundef nonnull @.str.1, i32 noundef 129) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

sortof_strdup.exit:                               ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i, ptr readonly align 1 %src, i64 %conv.i, i1 false)
  %cmp.not46 = icmp eq i32 %inlen, 0
  br i1 %cmp.not46, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %sortof_strdup.exit
  %curlen = getelementptr inbounds i8, ptr %md, i64 72
  %buf = getelementptr inbounds i8, ptr %md, i64 76
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end22
  %inlen.addr.048 = phi i32 [ %inlen, %while.body.lr.ph ], [ %inlen.addr.1, %if.end22 ]
  %in.047 = phi ptr [ %call.i, %while.body.lr.ph ], [ %in.1, %if.end22 ]
  %1 = load i32, ptr %curlen, align 8
  %cmp1 = icmp eq i32 %1, 0
  %cmp2 = icmp ugt i32 %inlen.addr.048, 127
  %or.cond = and i1 %cmp2, %cmp1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef %in.047)
  %2 = load i64, ptr %md, align 8
  %add = add i64 %2, 1024
  store i64 %add, ptr %md, align 8
  %add.ptr = getelementptr inbounds i8, ptr %in.047, i64 128
  %sub = add i32 %inlen.addr.048, -128
  br label %if.end22

if.else:                                          ; preds = %while.body
  %sub4 = sub i32 128, %1
  %cond.i = tail call noundef i32 @llvm.umin.i32(i32 %inlen.addr.048, i32 %sub4)
  %idx.ext = zext i32 %1 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %buf, i64 %idx.ext
  %conv = zext i32 %cond.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr7, ptr align 1 %in.047, i64 %conv, i1 false)
  %3 = load i32, ptr %curlen, align 8
  %add9 = add i32 %3, %cond.i
  store i32 %add9, ptr %curlen, align 8
  %add.ptr11 = getelementptr inbounds i8, ptr %in.047, i64 %conv
  %sub12 = sub i32 %inlen.addr.048, %cond.i
  %cmp14 = icmp eq i32 %add9, 128
  br i1 %cmp14, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.else
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef nonnull %buf)
  %4 = load i64, ptr %md, align 8
  %add20 = add i64 %4, 1024
  store i64 %add20, ptr %md, align 8
  store i32 0, ptr %curlen, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then16, %if.then
  %in.1 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr11, %if.then16 ], [ %add.ptr11, %if.else ]
  %inlen.addr.1 = phi i32 [ %sub, %if.then ], [ %sub12, %if.then16 ], [ %sub12, %if.else ]
  %cmp.not = icmp eq i32 %inlen.addr.1, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end22, %sortof_strdup.exit
  tail call void @free(ptr noundef %call.i) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha_compress(ptr nocapture noundef %md, ptr nocapture noundef readonly %buf) unnamed_addr #3 {
entry:
  %W = alloca [80 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %W) #14
  %state = getelementptr inbounds i8, ptr %md, i64 8
  %S.sroa.0.0.copyload = load i64, ptr %state, align 8
  %S.sroa.6.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 16
  %S.sroa.6.0.copyload = load i64, ptr %S.sroa.6.0.state.sroa_idx, align 8
  %S.sroa.9.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 24
  %S.sroa.9.0.copyload = load i64, ptr %S.sroa.9.0.state.sroa_idx, align 8
  %S.sroa.12.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 32
  %S.sroa.12.0.copyload = load i64, ptr %S.sroa.12.0.state.sroa_idx, align 8
  %S.sroa.15.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 40
  %S.sroa.15.0.copyload = load i64, ptr %S.sroa.15.0.state.sroa_idx, align 8
  %S.sroa.18.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 48
  %S.sroa.18.0.copyload = load i64, ptr %S.sroa.18.0.state.sroa_idx, align 8
  %S.sroa.21.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 56
  %S.sroa.21.0.copyload = load i64, ptr %S.sroa.21.0.state.sroa_idx, align 8
  %S.sroa.24.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 64
  %S.sroa.24.0.copyload = load i64, ptr %S.sroa.24.0.state.sroa_idx, align 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ]
  %0 = or disjoint i64 %index, 1
  %1 = or disjoint i64 %index, 2
  %2 = or disjoint i64 %index, 3
  %3 = shl nuw nsw i64 %index, 3
  %4 = shl nuw nsw i64 %0, 3
  %5 = shl nuw nsw i64 %1, 3
  %6 = shl nuw nsw i64 %2, 3
  %7 = getelementptr inbounds i8, ptr %buf, i64 %3
  %8 = getelementptr inbounds i8, ptr %buf, i64 %4
  %9 = getelementptr inbounds i8, ptr %buf, i64 %5
  %10 = getelementptr inbounds i8, ptr %buf, i64 %6
  %11 = load i8, ptr %7, align 1
  %12 = load i8, ptr %8, align 1
  %13 = load i8, ptr %9, align 1
  %14 = load i8, ptr %10, align 1
  %15 = zext i8 %11 to i64
  %16 = zext i8 %12 to i64
  %17 = zext i8 %13 to i64
  %18 = zext i8 %14 to i64
  %19 = shl nuw i64 %15, 56
  %20 = shl nuw i64 %16, 56
  %21 = shl nuw i64 %17, 56
  %22 = shl nuw i64 %18, 56
  %23 = getelementptr inbounds i8, ptr %7, i64 1
  %24 = getelementptr inbounds i8, ptr %8, i64 1
  %25 = getelementptr inbounds i8, ptr %9, i64 1
  %26 = getelementptr inbounds i8, ptr %10, i64 1
  %27 = load i8, ptr %23, align 1
  %28 = load i8, ptr %24, align 1
  %29 = load i8, ptr %25, align 1
  %30 = load i8, ptr %26, align 1
  %31 = zext i8 %27 to i64
  %32 = zext i8 %28 to i64
  %33 = zext i8 %29 to i64
  %34 = zext i8 %30 to i64
  %35 = shl nuw nsw i64 %31, 48
  %36 = shl nuw nsw i64 %32, 48
  %37 = shl nuw nsw i64 %33, 48
  %38 = shl nuw nsw i64 %34, 48
  %39 = or disjoint i64 %35, %19
  %40 = or disjoint i64 %36, %20
  %41 = or disjoint i64 %37, %21
  %42 = or disjoint i64 %38, %22
  %43 = getelementptr inbounds i8, ptr %7, i64 2
  %44 = getelementptr inbounds i8, ptr %8, i64 2
  %45 = getelementptr inbounds i8, ptr %9, i64 2
  %46 = getelementptr inbounds i8, ptr %10, i64 2
  %47 = load i8, ptr %43, align 1
  %48 = load i8, ptr %44, align 1
  %49 = load i8, ptr %45, align 1
  %50 = load i8, ptr %46, align 1
  %51 = zext i8 %47 to i64
  %52 = zext i8 %48 to i64
  %53 = zext i8 %49 to i64
  %54 = zext i8 %50 to i64
  %55 = shl nuw nsw i64 %51, 40
  %56 = shl nuw nsw i64 %52, 40
  %57 = shl nuw nsw i64 %53, 40
  %58 = shl nuw nsw i64 %54, 40
  %59 = or disjoint i64 %39, %55
  %60 = or disjoint i64 %40, %56
  %61 = or disjoint i64 %41, %57
  %62 = or disjoint i64 %42, %58
  %63 = getelementptr inbounds i8, ptr %7, i64 3
  %64 = getelementptr inbounds i8, ptr %8, i64 3
  %65 = getelementptr inbounds i8, ptr %9, i64 3
  %66 = getelementptr inbounds i8, ptr %10, i64 3
  %67 = load i8, ptr %63, align 1
  %68 = load i8, ptr %64, align 1
  %69 = load i8, ptr %65, align 1
  %70 = load i8, ptr %66, align 1
  %71 = zext i8 %67 to i64
  %72 = zext i8 %68 to i64
  %73 = zext i8 %69 to i64
  %74 = zext i8 %70 to i64
  %75 = shl nuw nsw i64 %71, 32
  %76 = shl nuw nsw i64 %72, 32
  %77 = shl nuw nsw i64 %73, 32
  %78 = shl nuw nsw i64 %74, 32
  %79 = or disjoint i64 %59, %75
  %80 = or disjoint i64 %60, %76
  %81 = or disjoint i64 %61, %77
  %82 = or disjoint i64 %62, %78
  %83 = getelementptr inbounds i8, ptr %7, i64 4
  %84 = getelementptr inbounds i8, ptr %8, i64 4
  %85 = getelementptr inbounds i8, ptr %9, i64 4
  %86 = getelementptr inbounds i8, ptr %10, i64 4
  %87 = load i8, ptr %83, align 1
  %88 = load i8, ptr %84, align 1
  %89 = load i8, ptr %85, align 1
  %90 = load i8, ptr %86, align 1
  %91 = zext i8 %87 to i64
  %92 = zext i8 %88 to i64
  %93 = zext i8 %89 to i64
  %94 = zext i8 %90 to i64
  %95 = shl nuw nsw i64 %91, 24
  %96 = shl nuw nsw i64 %92, 24
  %97 = shl nuw nsw i64 %93, 24
  %98 = shl nuw nsw i64 %94, 24
  %99 = or disjoint i64 %79, %95
  %100 = or disjoint i64 %80, %96
  %101 = or disjoint i64 %81, %97
  %102 = or disjoint i64 %82, %98
  %103 = getelementptr inbounds i8, ptr %7, i64 5
  %104 = getelementptr inbounds i8, ptr %8, i64 5
  %105 = getelementptr inbounds i8, ptr %9, i64 5
  %106 = getelementptr inbounds i8, ptr %10, i64 5
  %107 = load i8, ptr %103, align 1
  %108 = load i8, ptr %104, align 1
  %109 = load i8, ptr %105, align 1
  %110 = load i8, ptr %106, align 1
  %111 = zext i8 %107 to i64
  %112 = zext i8 %108 to i64
  %113 = zext i8 %109 to i64
  %114 = zext i8 %110 to i64
  %115 = shl nuw nsw i64 %111, 16
  %116 = shl nuw nsw i64 %112, 16
  %117 = shl nuw nsw i64 %113, 16
  %118 = shl nuw nsw i64 %114, 16
  %119 = or disjoint i64 %99, %115
  %120 = or disjoint i64 %100, %116
  %121 = or disjoint i64 %101, %117
  %122 = or disjoint i64 %102, %118
  %123 = getelementptr inbounds i8, ptr %7, i64 6
  %124 = getelementptr inbounds i8, ptr %8, i64 6
  %125 = getelementptr inbounds i8, ptr %9, i64 6
  %126 = getelementptr inbounds i8, ptr %10, i64 6
  %127 = load i8, ptr %123, align 1
  %128 = load i8, ptr %124, align 1
  %129 = load i8, ptr %125, align 1
  %130 = load i8, ptr %126, align 1
  %131 = zext i8 %127 to i64
  %132 = zext i8 %128 to i64
  %133 = zext i8 %129 to i64
  %134 = zext i8 %130 to i64
  %135 = shl nuw nsw i64 %131, 8
  %136 = shl nuw nsw i64 %132, 8
  %137 = shl nuw nsw i64 %133, 8
  %138 = shl nuw nsw i64 %134, 8
  %139 = or i64 %119, %135
  %140 = or i64 %120, %136
  %141 = or i64 %121, %137
  %142 = or i64 %122, %138
  %143 = getelementptr inbounds i8, ptr %7, i64 7
  %144 = getelementptr inbounds i8, ptr %8, i64 7
  %145 = getelementptr inbounds i8, ptr %9, i64 7
  %146 = getelementptr inbounds i8, ptr %10, i64 7
  %147 = load i8, ptr %143, align 1
  %148 = load i8, ptr %144, align 1
  %149 = load i8, ptr %145, align 1
  %150 = load i8, ptr %146, align 1
  %151 = zext i8 %147 to i64
  %152 = zext i8 %148 to i64
  %153 = zext i8 %149 to i64
  %154 = zext i8 %150 to i64
  %155 = or i64 %139, %151
  %156 = or i64 %140, %152
  %157 = or i64 %141, %153
  %158 = or i64 %142, %154
  %159 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %index
  %160 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %0
  %161 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %1
  %162 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %2
  store i64 %155, ptr %159, align 16
  store i64 %156, ptr %160, align 8
  store i64 %157, ptr %161, align 16
  store i64 %158, ptr %162, align 8
  %index.next = add nuw i64 %index, 4
  %163 = icmp eq i64 %index.next, 16
  br i1 %163, label %for.body17.preheader, label %vector.body, !llvm.loop !5

for.body17.preheader:                             ; preds = %vector.body
  %.pre = load i64, ptr %W, align 16
  br label %for.body17

for.body17:                                       ; preds = %for.body17.preheader, %for.body17
  %164 = phi i64 [ %.pre, %for.body17.preheader ], [ %170, %for.body17 ]
  %indvars.iv495 = phi i64 [ 16, %for.body17.preheader ], [ %indvars.iv.next496, %for.body17 ]
  %165 = add nsw i64 %indvars.iv495, -2
  %arrayidx19 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %165
  %166 = load i64, ptr %arrayidx19, align 8
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 45)
  %or.i6.i = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 3)
  %xor.i = xor i64 %or.i.i, %or.i6.i
  %shr.i.i = lshr i64 %166, 6
  %xor3.i = xor i64 %xor.i, %shr.i.i
  %167 = add nsw i64 %indvars.iv495, -7
  %arrayidx23 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %167
  %168 = load i64, ptr %arrayidx23, align 8
  %add = add i64 %xor3.i, %168
  %169 = add nsw i64 %indvars.iv495, -15
  %arrayidx26 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %169
  %170 = load i64, ptr %arrayidx26, align 8
  %or.i.i344 = tail call i64 @llvm.fshl.i64(i64 %170, i64 %170, i64 63)
  %or.i6.i345 = tail call i64 @llvm.fshl.i64(i64 %170, i64 %170, i64 56)
  %xor.i346 = xor i64 %or.i.i344, %or.i6.i345
  %shr.i.i347 = lshr i64 %170, 7
  %xor3.i348 = xor i64 %xor.i346, %shr.i.i347
  %add28 = add i64 %add, %164
  %add32 = add i64 %add28, %xor3.i348
  %arrayidx34 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %indvars.iv495
  store i64 %add32, ptr %arrayidx34, align 8
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495, 1
  %exitcond502.not = icmp eq i64 %indvars.iv.next496, 80
  br i1 %exitcond502.not, label %for.body42, label %for.body17

for.cond271.preheader:                            ; preds = %for.body42
  %171 = load i64, ptr %state, align 8
  %add280 = add i64 %add265, %171
  store i64 %add280, ptr %state, align 8
  %172 = load i64, ptr %S.sroa.6.0.state.sroa_idx, align 8
  %add280.1 = add i64 %add237, %172
  store i64 %add280.1, ptr %S.sroa.6.0.state.sroa_idx, align 8
  %173 = load i64, ptr %S.sroa.9.0.state.sroa_idx, align 8
  %add280.2 = add i64 %add209, %173
  store i64 %add280.2, ptr %S.sroa.9.0.state.sroa_idx, align 8
  %174 = load i64, ptr %S.sroa.12.0.state.sroa_idx, align 8
  %add280.3 = add i64 %add181, %174
  store i64 %add280.3, ptr %S.sroa.12.0.state.sroa_idx, align 8
  %175 = load i64, ptr %S.sroa.15.0.state.sroa_idx, align 8
  %add280.4 = add i64 %add264, %175
  store i64 %add280.4, ptr %S.sroa.15.0.state.sroa_idx, align 8
  %176 = load i64, ptr %S.sroa.18.0.state.sroa_idx, align 8
  %add280.5 = add i64 %add236, %176
  store i64 %add280.5, ptr %S.sroa.18.0.state.sroa_idx, align 8
  %177 = load i64, ptr %S.sroa.21.0.state.sroa_idx, align 8
  %add280.6 = add i64 %add208, %177
  store i64 %add280.6, ptr %S.sroa.21.0.state.sroa_idx, align 8
  %178 = load i64, ptr %S.sroa.24.0.state.sroa_idx, align 8
  %add280.7 = add i64 %add180, %178
  store i64 %add280.7, ptr %S.sroa.24.0.state.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %W) #14
  ret void

for.body42:                                       ; preds = %for.body17, %for.body42
  %indvars.iv503 = phi i64 [ %indvars.iv.next504, %for.body42 ], [ 0, %for.body17 ]
  %179 = phi i64 [ %add180, %for.body42 ], [ %S.sroa.24.0.copyload, %for.body17 ]
  %180 = phi i64 [ %add264, %for.body42 ], [ %S.sroa.15.0.copyload, %for.body17 ]
  %181 = phi i64 [ %add236, %for.body42 ], [ %S.sroa.18.0.copyload, %for.body17 ]
  %182 = phi i64 [ %add208, %for.body42 ], [ %S.sroa.21.0.copyload, %for.body17 ]
  %add265485489 = phi i64 [ %add265, %for.body42 ], [ %S.sroa.0.0.copyload, %for.body17 ]
  %183 = phi i64 [ %add237, %for.body42 ], [ %S.sroa.6.0.copyload, %for.body17 ]
  %184 = phi i64 [ %add209, %for.body42 ], [ %S.sroa.9.0.copyload, %for.body17 ]
  %185 = phi i64 [ %add181, %for.body42 ], [ %S.sroa.12.0.copyload, %for.body17 ]
  %or.i.i349 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 50)
  %or.i6.i350 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 46)
  %xor.i351 = xor i64 %or.i.i349, %or.i6.i350
  %or.i7.i = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 23)
  %xor3.i352 = xor i64 %xor.i351, %or.i7.i
  %add46 = add i64 %xor3.i352, %179
  %xor.i353 = xor i64 %182, %181
  %and.i = and i64 %xor.i353, %180
  %xor1.i = xor i64 %and.i, %182
  %arrayidx54 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %indvars.iv503
  %186 = load i64, ptr %arrayidx54, align 16
  %arrayidx58 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %indvars.iv503
  %187 = load i64, ptr %arrayidx58, align 16
  %add51 = add i64 %add46, %186
  %add55 = add i64 %add51, %187
  %add59 = add i64 %add55, %xor1.i
  %or.i.i354 = tail call i64 @llvm.fshl.i64(i64 %add265485489, i64 %add265485489, i64 36)
  %or.i6.i355 = tail call i64 @llvm.fshl.i64(i64 %add265485489, i64 %add265485489, i64 30)
  %xor.i356 = xor i64 %or.i.i354, %or.i6.i355
  %or.i7.i357 = tail call i64 @llvm.fshl.i64(i64 %add265485489, i64 %add265485489, i64 25)
  %xor3.i358 = xor i64 %xor.i356, %or.i7.i357
  %or.i = or i64 %183, %add265485489
  %and.i359 = and i64 %or.i, %184
  %and1.i = and i64 %183, %add265485489
  %or2.i = or i64 %and.i359, %and1.i
  %add68 = add i64 %185, %add59
  %add66 = add i64 %add59, %xor3.i358
  %add69 = add i64 %add66, %or2.i
  %or.i.i360 = tail call i64 @llvm.fshl.i64(i64 %add68, i64 %add68, i64 50)
  %or.i6.i361 = tail call i64 @llvm.fshl.i64(i64 %add68, i64 %add68, i64 46)
  %xor.i362 = xor i64 %or.i.i360, %or.i6.i361
  %or.i7.i363 = tail call i64 @llvm.fshl.i64(i64 %add68, i64 %add68, i64 23)
  %xor3.i364 = xor i64 %xor.i362, %or.i7.i363
  %xor.i365 = xor i64 %181, %180
  %and.i366 = and i64 %add68, %xor.i365
  %xor1.i367 = xor i64 %and.i366, %181
  %188 = or disjoint i64 %indvars.iv503, 1
  %arrayidx82 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %188
  %189 = load i64, ptr %arrayidx82, align 8
  %arrayidx86 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %188
  %190 = load i64, ptr %arrayidx86, align 8
  %add74 = add i64 %xor1.i367, %182
  %add79 = add i64 %add74, %189
  %add83 = add i64 %add79, %xor3.i364
  %add87 = add i64 %add83, %190
  %or.i.i368 = tail call i64 @llvm.fshl.i64(i64 %add69, i64 %add69, i64 36)
  %or.i6.i369 = tail call i64 @llvm.fshl.i64(i64 %add69, i64 %add69, i64 30)
  %xor.i370 = xor i64 %or.i.i368, %or.i6.i369
  %or.i7.i371 = tail call i64 @llvm.fshl.i64(i64 %add69, i64 %add69, i64 25)
  %xor3.i372 = xor i64 %xor.i370, %or.i7.i371
  %or.i373 = or i64 %add69, %add265485489
  %and.i374 = and i64 %or.i373, %183
  %and1.i375 = and i64 %add69, %add265485489
  %or2.i376 = or i64 %and.i374, %and1.i375
  %add94 = add i64 %xor3.i372, %or2.i376
  %add96 = add i64 %add87, %184
  %add97 = add i64 %add94, %add87
  %or.i.i377 = tail call i64 @llvm.fshl.i64(i64 %add96, i64 %add96, i64 50)
  %or.i6.i378 = tail call i64 @llvm.fshl.i64(i64 %add96, i64 %add96, i64 46)
  %xor.i379 = xor i64 %or.i.i377, %or.i6.i378
  %or.i7.i380 = tail call i64 @llvm.fshl.i64(i64 %add96, i64 %add96, i64 23)
  %xor3.i381 = xor i64 %xor.i379, %or.i7.i380
  %xor.i382 = xor i64 %add68, %180
  %and.i383 = and i64 %add96, %xor.i382
  %xor1.i384 = xor i64 %and.i383, %180
  %191 = or disjoint i64 %indvars.iv503, 2
  %arrayidx110 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %191
  %192 = load i64, ptr %arrayidx110, align 16
  %arrayidx114 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %191
  %193 = load i64, ptr %arrayidx114, align 16
  %add102 = add i64 %192, %181
  %add107 = add i64 %add102, %193
  %add111 = add i64 %add107, %xor1.i384
  %add115 = add i64 %add111, %xor3.i381
  %or.i.i385 = tail call i64 @llvm.fshl.i64(i64 %add97, i64 %add97, i64 36)
  %or.i6.i386 = tail call i64 @llvm.fshl.i64(i64 %add97, i64 %add97, i64 30)
  %xor.i387 = xor i64 %or.i.i385, %or.i6.i386
  %or.i7.i388 = tail call i64 @llvm.fshl.i64(i64 %add97, i64 %add97, i64 25)
  %xor3.i389 = xor i64 %xor.i387, %or.i7.i388
  %or.i390 = or i64 %add97, %add69
  %and.i391 = and i64 %or.i390, %add265485489
  %and1.i392 = and i64 %add97, %add69
  %or2.i393 = or i64 %and.i391, %and1.i392
  %add122 = add i64 %xor3.i389, %or2.i393
  %add124 = add i64 %add115, %183
  %add125 = add i64 %add122, %add115
  %or.i.i394 = tail call i64 @llvm.fshl.i64(i64 %add124, i64 %add124, i64 50)
  %or.i6.i395 = tail call i64 @llvm.fshl.i64(i64 %add124, i64 %add124, i64 46)
  %xor.i396 = xor i64 %or.i.i394, %or.i6.i395
  %or.i7.i397 = tail call i64 @llvm.fshl.i64(i64 %add124, i64 %add124, i64 23)
  %xor3.i398 = xor i64 %xor.i396, %or.i7.i397
  %xor.i399 = xor i64 %add96, %add68
  %and.i400 = and i64 %add124, %xor.i399
  %xor1.i401 = xor i64 %and.i400, %add68
  %194 = or disjoint i64 %indvars.iv503, 3
  %arrayidx138 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %194
  %195 = load i64, ptr %arrayidx138, align 8
  %arrayidx142 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %194
  %196 = load i64, ptr %arrayidx142, align 8
  %add130 = add i64 %195, %180
  %add135 = add i64 %add130, %196
  %add139 = add i64 %add135, %xor1.i401
  %add143 = add i64 %add139, %xor3.i398
  %or.i.i402 = tail call i64 @llvm.fshl.i64(i64 %add125, i64 %add125, i64 36)
  %or.i6.i403 = tail call i64 @llvm.fshl.i64(i64 %add125, i64 %add125, i64 30)
  %xor.i404 = xor i64 %or.i.i402, %or.i6.i403
  %or.i7.i405 = tail call i64 @llvm.fshl.i64(i64 %add125, i64 %add125, i64 25)
  %xor3.i406 = xor i64 %xor.i404, %or.i7.i405
  %or.i407 = or i64 %add125, %add97
  %and.i408 = and i64 %or.i407, %add69
  %and1.i409 = and i64 %add125, %add97
  %or2.i410 = or i64 %and.i408, %and1.i409
  %add150 = add i64 %xor3.i406, %or2.i410
  %add152 = add i64 %add143, %add265485489
  %add153 = add i64 %add150, %add143
  %or.i.i411 = tail call i64 @llvm.fshl.i64(i64 %add152, i64 %add152, i64 50)
  %or.i6.i412 = tail call i64 @llvm.fshl.i64(i64 %add152, i64 %add152, i64 46)
  %xor.i413 = xor i64 %or.i.i411, %or.i6.i412
  %or.i7.i414 = tail call i64 @llvm.fshl.i64(i64 %add152, i64 %add152, i64 23)
  %xor3.i415 = xor i64 %xor.i413, %or.i7.i414
  %xor.i416 = xor i64 %add124, %add96
  %and.i417 = and i64 %add152, %xor.i416
  %xor1.i418 = xor i64 %and.i417, %add96
  %197 = or disjoint i64 %indvars.iv503, 4
  %arrayidx166 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %197
  %198 = load i64, ptr %arrayidx166, align 16
  %arrayidx170 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %197
  %199 = load i64, ptr %arrayidx170, align 16
  %add158 = add i64 %198, %add68
  %add163 = add i64 %add158, %199
  %add167 = add i64 %add163, %xor1.i418
  %add171 = add i64 %add167, %xor3.i415
  %or.i.i419 = tail call i64 @llvm.fshl.i64(i64 %add153, i64 %add153, i64 36)
  %or.i6.i420 = tail call i64 @llvm.fshl.i64(i64 %add153, i64 %add153, i64 30)
  %xor.i421 = xor i64 %or.i.i419, %or.i6.i420
  %or.i7.i422 = tail call i64 @llvm.fshl.i64(i64 %add153, i64 %add153, i64 25)
  %xor3.i423 = xor i64 %xor.i421, %or.i7.i422
  %or.i424 = or i64 %add153, %add125
  %and.i425 = and i64 %or.i424, %add97
  %and1.i426 = and i64 %add153, %add125
  %or2.i427 = or i64 %and.i425, %and1.i426
  %add178 = add i64 %xor3.i423, %or2.i427
  %add180 = add i64 %add171, %add69
  %add181 = add i64 %add178, %add171
  %or.i.i428 = tail call i64 @llvm.fshl.i64(i64 %add180, i64 %add180, i64 50)
  %or.i6.i429 = tail call i64 @llvm.fshl.i64(i64 %add180, i64 %add180, i64 46)
  %xor.i430 = xor i64 %or.i.i428, %or.i6.i429
  %or.i7.i431 = tail call i64 @llvm.fshl.i64(i64 %add180, i64 %add180, i64 23)
  %xor3.i432 = xor i64 %xor.i430, %or.i7.i431
  %xor.i433 = xor i64 %add152, %add124
  %and.i434 = and i64 %add180, %xor.i433
  %xor1.i435 = xor i64 %and.i434, %add124
  %200 = or disjoint i64 %indvars.iv503, 5
  %arrayidx194 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %200
  %201 = load i64, ptr %arrayidx194, align 8
  %arrayidx198 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %200
  %202 = load i64, ptr %arrayidx198, align 8
  %add186 = add i64 %201, %add96
  %add191 = add i64 %add186, %202
  %add195 = add i64 %add191, %xor1.i435
  %add199 = add i64 %add195, %xor3.i432
  %or.i.i436 = tail call i64 @llvm.fshl.i64(i64 %add181, i64 %add181, i64 36)
  %or.i6.i437 = tail call i64 @llvm.fshl.i64(i64 %add181, i64 %add181, i64 30)
  %xor.i438 = xor i64 %or.i.i436, %or.i6.i437
  %or.i7.i439 = tail call i64 @llvm.fshl.i64(i64 %add181, i64 %add181, i64 25)
  %xor3.i440 = xor i64 %xor.i438, %or.i7.i439
  %or.i441 = or i64 %add181, %add153
  %and.i442 = and i64 %or.i441, %add125
  %and1.i443 = and i64 %add181, %add153
  %or2.i444 = or i64 %and.i442, %and1.i443
  %add206 = add i64 %xor3.i440, %or2.i444
  %add208 = add i64 %add199, %add97
  %add209 = add i64 %add206, %add199
  %or.i.i445 = tail call i64 @llvm.fshl.i64(i64 %add208, i64 %add208, i64 50)
  %or.i6.i446 = tail call i64 @llvm.fshl.i64(i64 %add208, i64 %add208, i64 46)
  %xor.i447 = xor i64 %or.i.i445, %or.i6.i446
  %or.i7.i448 = tail call i64 @llvm.fshl.i64(i64 %add208, i64 %add208, i64 23)
  %xor3.i449 = xor i64 %xor.i447, %or.i7.i448
  %xor.i450 = xor i64 %add180, %add152
  %and.i451 = and i64 %add208, %xor.i450
  %xor1.i452 = xor i64 %and.i451, %add152
  %203 = or disjoint i64 %indvars.iv503, 6
  %arrayidx222 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %203
  %204 = load i64, ptr %arrayidx222, align 16
  %arrayidx226 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %203
  %205 = load i64, ptr %arrayidx226, align 16
  %add214 = add i64 %204, %add124
  %add219 = add i64 %add214, %205
  %add223 = add i64 %add219, %xor1.i452
  %add227 = add i64 %add223, %xor3.i449
  %or.i.i453 = tail call i64 @llvm.fshl.i64(i64 %add209, i64 %add209, i64 36)
  %or.i6.i454 = tail call i64 @llvm.fshl.i64(i64 %add209, i64 %add209, i64 30)
  %xor.i455 = xor i64 %or.i.i453, %or.i6.i454
  %or.i7.i456 = tail call i64 @llvm.fshl.i64(i64 %add209, i64 %add209, i64 25)
  %xor3.i457 = xor i64 %xor.i455, %or.i7.i456
  %or.i458 = or i64 %add209, %add181
  %and.i459 = and i64 %or.i458, %add153
  %and1.i460 = and i64 %add209, %add181
  %or2.i461 = or i64 %and.i459, %and1.i460
  %add234 = add i64 %xor3.i457, %or2.i461
  %add236 = add i64 %add227, %add125
  %add237 = add i64 %add234, %add227
  %or.i.i462 = tail call i64 @llvm.fshl.i64(i64 %add236, i64 %add236, i64 50)
  %or.i6.i463 = tail call i64 @llvm.fshl.i64(i64 %add236, i64 %add236, i64 46)
  %xor.i464 = xor i64 %or.i.i462, %or.i6.i463
  %or.i7.i465 = tail call i64 @llvm.fshl.i64(i64 %add236, i64 %add236, i64 23)
  %xor3.i466 = xor i64 %xor.i464, %or.i7.i465
  %xor.i467 = xor i64 %add208, %add180
  %and.i468 = and i64 %add236, %xor.i467
  %xor1.i469 = xor i64 %and.i468, %add180
  %206 = or disjoint i64 %indvars.iv503, 7
  %arrayidx250 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %206
  %207 = load i64, ptr %arrayidx250, align 8
  %arrayidx254 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %206
  %208 = load i64, ptr %arrayidx254, align 8
  %add242 = add i64 %207, %add152
  %add247 = add i64 %add242, %208
  %add251 = add i64 %add247, %xor1.i469
  %add255 = add i64 %add251, %xor3.i466
  %or.i.i470 = tail call i64 @llvm.fshl.i64(i64 %add237, i64 %add237, i64 36)
  %or.i6.i471 = tail call i64 @llvm.fshl.i64(i64 %add237, i64 %add237, i64 30)
  %xor.i472 = xor i64 %or.i.i470, %or.i6.i471
  %or.i7.i473 = tail call i64 @llvm.fshl.i64(i64 %add237, i64 %add237, i64 25)
  %xor3.i474 = xor i64 %xor.i472, %or.i7.i473
  %or.i475 = or i64 %add237, %add209
  %and.i476 = and i64 %or.i475, %add181
  %and1.i477 = and i64 %add237, %add209
  %or2.i478 = or i64 %and.i476, %and1.i477
  %add262 = add i64 %xor3.i474, %or2.i478
  %add264 = add i64 %add255, %add153
  %add265 = add i64 %add262, %add255
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 8
  %cmp40 = icmp ult i64 %indvars.iv503, 72
  br i1 %cmp40, label %for.body42, label %for.cond271.preheader
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha_done(ptr nocapture noundef %md, ptr nocapture noundef writeonly %out) local_unnamed_addr #3 {
entry:
  %curlen = getelementptr inbounds i8, ptr %md, i64 72
  %0 = load i32, ptr %curlen, align 8
  %conv = zext i32 %0 to i64
  %mul = shl nuw nsw i64 %conv, 3
  %1 = load i64, ptr %md, align 8
  %add = add i64 %mul, %1
  store i64 %add, ptr %md, align 8
  %buf = getelementptr inbounds i8, ptr %md, i64 76
  %inc = add i32 %0, 1
  store i32 %inc, ptr %curlen, align 8
  %arrayidx = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 %conv
  store i8 -128, ptr %arrayidx, align 1
  %cmp = icmp ugt i32 %inc, 112
  br i1 %cmp, label %while.cond.preheader, label %while.end24

while.cond.preheader:                             ; preds = %entry
  %cmp581 = icmp ult i32 %inc, 128
  br i1 %cmp581, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = getelementptr i8, ptr %md, i64 %conv
  %scevgep = getelementptr i8, ptr %2, i64 77
  %narrow = sub i32 127, %0
  %3 = zext i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %3, i1 false)
  store i32 128, ptr %curlen, align 8
  br label %while.end

while.end:                                        ; preds = %while.body.preheader, %while.cond.preheader
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef nonnull %buf)
  br label %while.end24

while.end24:                                      ; preds = %while.end, %entry
  %.pr = phi i32 [ 0, %while.end ], [ %inc, %entry ]
  %4 = zext nneg i32 %.pr to i64
  %5 = getelementptr i8, ptr %md, i64 %4
  %scevgep85 = getelementptr i8, ptr %5, i64 76
  %narrow90 = sub nsw i32 120, %.pr
  %6 = zext i32 %narrow90 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep85, i8 0, i64 %6, i1 false)
  store i32 120, ptr %curlen, align 8
  %7 = load i64, ptr %md, align 8
  %add.ptr = getelementptr inbounds i8, ptr %md, i64 196
  %shr.i = lshr i64 %7, 56
  %conv.i = trunc nuw i64 %shr.i to i8
  store i8 %conv.i, ptr %add.ptr, align 1
  %shr.1.i = lshr i64 %7, 48
  %conv.1.i = trunc i64 %shr.1.i to i8
  %arrayidx.1.i = getelementptr inbounds i8, ptr %md, i64 197
  store i8 %conv.1.i, ptr %arrayidx.1.i, align 1
  %shr.2.i = lshr i64 %7, 40
  %conv.2.i = trunc i64 %shr.2.i to i8
  %arrayidx.2.i = getelementptr inbounds i8, ptr %md, i64 198
  store i8 %conv.2.i, ptr %arrayidx.2.i, align 1
  %shr.3.i = lshr i64 %7, 32
  %conv.3.i = trunc i64 %shr.3.i to i8
  %arrayidx.3.i = getelementptr inbounds i8, ptr %md, i64 199
  store i8 %conv.3.i, ptr %arrayidx.3.i, align 1
  %shr.4.i = lshr i64 %7, 24
  %conv.4.i = trunc i64 %shr.4.i to i8
  %arrayidx.4.i = getelementptr inbounds i8, ptr %md, i64 200
  store i8 %conv.4.i, ptr %arrayidx.4.i, align 1
  %shr.5.i = lshr i64 %7, 16
  %conv.5.i = trunc i64 %shr.5.i to i8
  %arrayidx.5.i = getelementptr inbounds i8, ptr %md, i64 201
  store i8 %conv.5.i, ptr %arrayidx.5.i, align 1
  %shr.6.i = lshr i64 %7, 8
  %conv.6.i = trunc i64 %shr.6.i to i8
  %arrayidx.6.i = getelementptr inbounds i8, ptr %md, i64 202
  store i8 %conv.6.i, ptr %arrayidx.6.i, align 1
  %conv.7.i = trunc i64 %7 to i8
  %arrayidx.7.i = getelementptr inbounds i8, ptr %md, i64 203
  store i8 %conv.7.i, ptr %arrayidx.7.i, align 1
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef nonnull %buf)
  %state = getelementptr inbounds i8, ptr %md, i64 8
  %8 = load i64, ptr %state, align 8
  %shr.i59 = lshr i64 %8, 56
  %conv.i60 = trunc nuw i64 %shr.i59 to i8
  store i8 %conv.i60, ptr %out, align 1
  %shr.1.i61 = lshr i64 %8, 48
  %conv.1.i62 = trunc i64 %shr.1.i61 to i8
  %arrayidx.1.i63 = getelementptr inbounds i8, ptr %out, i64 1
  store i8 %conv.1.i62, ptr %arrayidx.1.i63, align 1
  %shr.2.i64 = lshr i64 %8, 40
  %conv.2.i65 = trunc i64 %shr.2.i64 to i8
  %arrayidx.2.i66 = getelementptr inbounds i8, ptr %out, i64 2
  store i8 %conv.2.i65, ptr %arrayidx.2.i66, align 1
  %shr.3.i67 = lshr i64 %8, 32
  %conv.3.i68 = trunc i64 %shr.3.i67 to i8
  %arrayidx.3.i69 = getelementptr inbounds i8, ptr %out, i64 3
  store i8 %conv.3.i68, ptr %arrayidx.3.i69, align 1
  %shr.4.i70 = lshr i64 %8, 24
  %conv.4.i71 = trunc i64 %shr.4.i70 to i8
  %arrayidx.4.i72 = getelementptr inbounds i8, ptr %out, i64 4
  store i8 %conv.4.i71, ptr %arrayidx.4.i72, align 1
  %shr.5.i73 = lshr i64 %8, 16
  %conv.5.i74 = trunc i64 %shr.5.i73 to i8
  %arrayidx.5.i75 = getelementptr inbounds i8, ptr %out, i64 5
  store i8 %conv.5.i74, ptr %arrayidx.5.i75, align 1
  %shr.6.i76 = lshr i64 %8, 8
  %conv.6.i77 = trunc i64 %shr.6.i76 to i8
  %arrayidx.6.i78 = getelementptr inbounds i8, ptr %out, i64 6
  store i8 %conv.6.i77, ptr %arrayidx.6.i78, align 1
  %conv.7.i79 = trunc i64 %8 to i8
  %arrayidx.7.i80 = getelementptr inbounds i8, ptr %out, i64 7
  store i8 %conv.7.i79, ptr %arrayidx.7.i80, align 1
  %arrayidx33.1 = getelementptr inbounds i8, ptr %md, i64 16
  %9 = load i64, ptr %arrayidx33.1, align 8
  %add.ptr35.1 = getelementptr inbounds i8, ptr %out, i64 8
  %shr.i59.1 = lshr i64 %9, 56
  %conv.i60.1 = trunc nuw i64 %shr.i59.1 to i8
  store i8 %conv.i60.1, ptr %add.ptr35.1, align 1
  %shr.1.i61.1 = lshr i64 %9, 48
  %conv.1.i62.1 = trunc i64 %shr.1.i61.1 to i8
  %arrayidx.1.i63.1 = getelementptr inbounds i8, ptr %out, i64 9
  store i8 %conv.1.i62.1, ptr %arrayidx.1.i63.1, align 1
  %shr.2.i64.1 = lshr i64 %9, 40
  %conv.2.i65.1 = trunc i64 %shr.2.i64.1 to i8
  %arrayidx.2.i66.1 = getelementptr inbounds i8, ptr %out, i64 10
  store i8 %conv.2.i65.1, ptr %arrayidx.2.i66.1, align 1
  %shr.3.i67.1 = lshr i64 %9, 32
  %conv.3.i68.1 = trunc i64 %shr.3.i67.1 to i8
  %arrayidx.3.i69.1 = getelementptr inbounds i8, ptr %out, i64 11
  store i8 %conv.3.i68.1, ptr %arrayidx.3.i69.1, align 1
  %shr.4.i70.1 = lshr i64 %9, 24
  %conv.4.i71.1 = trunc i64 %shr.4.i70.1 to i8
  %arrayidx.4.i72.1 = getelementptr inbounds i8, ptr %out, i64 12
  store i8 %conv.4.i71.1, ptr %arrayidx.4.i72.1, align 1
  %shr.5.i73.1 = lshr i64 %9, 16
  %conv.5.i74.1 = trunc i64 %shr.5.i73.1 to i8
  %arrayidx.5.i75.1 = getelementptr inbounds i8, ptr %out, i64 13
  store i8 %conv.5.i74.1, ptr %arrayidx.5.i75.1, align 1
  %shr.6.i76.1 = lshr i64 %9, 8
  %conv.6.i77.1 = trunc i64 %shr.6.i76.1 to i8
  %arrayidx.6.i78.1 = getelementptr inbounds i8, ptr %out, i64 14
  store i8 %conv.6.i77.1, ptr %arrayidx.6.i78.1, align 1
  %conv.7.i79.1 = trunc i64 %9 to i8
  %arrayidx.7.i80.1 = getelementptr inbounds i8, ptr %out, i64 15
  store i8 %conv.7.i79.1, ptr %arrayidx.7.i80.1, align 1
  %arrayidx33.2 = getelementptr inbounds i8, ptr %md, i64 24
  %10 = load i64, ptr %arrayidx33.2, align 8
  %add.ptr35.2 = getelementptr inbounds i8, ptr %out, i64 16
  %shr.i59.2 = lshr i64 %10, 56
  %conv.i60.2 = trunc nuw i64 %shr.i59.2 to i8
  store i8 %conv.i60.2, ptr %add.ptr35.2, align 1
  %shr.1.i61.2 = lshr i64 %10, 48
  %conv.1.i62.2 = trunc i64 %shr.1.i61.2 to i8
  %arrayidx.1.i63.2 = getelementptr inbounds i8, ptr %out, i64 17
  store i8 %conv.1.i62.2, ptr %arrayidx.1.i63.2, align 1
  %shr.2.i64.2 = lshr i64 %10, 40
  %conv.2.i65.2 = trunc i64 %shr.2.i64.2 to i8
  %arrayidx.2.i66.2 = getelementptr inbounds i8, ptr %out, i64 18
  store i8 %conv.2.i65.2, ptr %arrayidx.2.i66.2, align 1
  %shr.3.i67.2 = lshr i64 %10, 32
  %conv.3.i68.2 = trunc i64 %shr.3.i67.2 to i8
  %arrayidx.3.i69.2 = getelementptr inbounds i8, ptr %out, i64 19
  store i8 %conv.3.i68.2, ptr %arrayidx.3.i69.2, align 1
  %shr.4.i70.2 = lshr i64 %10, 24
  %conv.4.i71.2 = trunc i64 %shr.4.i70.2 to i8
  %arrayidx.4.i72.2 = getelementptr inbounds i8, ptr %out, i64 20
  store i8 %conv.4.i71.2, ptr %arrayidx.4.i72.2, align 1
  %shr.5.i73.2 = lshr i64 %10, 16
  %conv.5.i74.2 = trunc i64 %shr.5.i73.2 to i8
  %arrayidx.5.i75.2 = getelementptr inbounds i8, ptr %out, i64 21
  store i8 %conv.5.i74.2, ptr %arrayidx.5.i75.2, align 1
  %shr.6.i76.2 = lshr i64 %10, 8
  %conv.6.i77.2 = trunc i64 %shr.6.i76.2 to i8
  %arrayidx.6.i78.2 = getelementptr inbounds i8, ptr %out, i64 22
  store i8 %conv.6.i77.2, ptr %arrayidx.6.i78.2, align 1
  %conv.7.i79.2 = trunc i64 %10 to i8
  %arrayidx.7.i80.2 = getelementptr inbounds i8, ptr %out, i64 23
  store i8 %conv.7.i79.2, ptr %arrayidx.7.i80.2, align 1
  %arrayidx33.3 = getelementptr inbounds i8, ptr %md, i64 32
  %11 = load i64, ptr %arrayidx33.3, align 8
  %add.ptr35.3 = getelementptr inbounds i8, ptr %out, i64 24
  %shr.i59.3 = lshr i64 %11, 56
  %conv.i60.3 = trunc nuw i64 %shr.i59.3 to i8
  store i8 %conv.i60.3, ptr %add.ptr35.3, align 1
  %shr.1.i61.3 = lshr i64 %11, 48
  %conv.1.i62.3 = trunc i64 %shr.1.i61.3 to i8
  %arrayidx.1.i63.3 = getelementptr inbounds i8, ptr %out, i64 25
  store i8 %conv.1.i62.3, ptr %arrayidx.1.i63.3, align 1
  %shr.2.i64.3 = lshr i64 %11, 40
  %conv.2.i65.3 = trunc i64 %shr.2.i64.3 to i8
  %arrayidx.2.i66.3 = getelementptr inbounds i8, ptr %out, i64 26
  store i8 %conv.2.i65.3, ptr %arrayidx.2.i66.3, align 1
  %shr.3.i67.3 = lshr i64 %11, 32
  %conv.3.i68.3 = trunc i64 %shr.3.i67.3 to i8
  %arrayidx.3.i69.3 = getelementptr inbounds i8, ptr %out, i64 27
  store i8 %conv.3.i68.3, ptr %arrayidx.3.i69.3, align 1
  %shr.4.i70.3 = lshr i64 %11, 24
  %conv.4.i71.3 = trunc i64 %shr.4.i70.3 to i8
  %arrayidx.4.i72.3 = getelementptr inbounds i8, ptr %out, i64 28
  store i8 %conv.4.i71.3, ptr %arrayidx.4.i72.3, align 1
  %shr.5.i73.3 = lshr i64 %11, 16
  %conv.5.i74.3 = trunc i64 %shr.5.i73.3 to i8
  %arrayidx.5.i75.3 = getelementptr inbounds i8, ptr %out, i64 29
  store i8 %conv.5.i74.3, ptr %arrayidx.5.i75.3, align 1
  %shr.6.i76.3 = lshr i64 %11, 8
  %conv.6.i77.3 = trunc i64 %shr.6.i76.3 to i8
  %arrayidx.6.i78.3 = getelementptr inbounds i8, ptr %out, i64 30
  store i8 %conv.6.i77.3, ptr %arrayidx.6.i78.3, align 1
  %conv.7.i79.3 = trunc i64 %11 to i8
  %arrayidx.7.i80.3 = getelementptr inbounds i8, ptr %out, i64 31
  store i8 %conv.7.i79.3, ptr %arrayidx.7.i80.3, align 1
  %arrayidx33.4 = getelementptr inbounds i8, ptr %md, i64 40
  %12 = load i64, ptr %arrayidx33.4, align 8
  %add.ptr35.4 = getelementptr inbounds i8, ptr %out, i64 32
  %shr.i59.4 = lshr i64 %12, 56
  %conv.i60.4 = trunc nuw i64 %shr.i59.4 to i8
  store i8 %conv.i60.4, ptr %add.ptr35.4, align 1
  %shr.1.i61.4 = lshr i64 %12, 48
  %conv.1.i62.4 = trunc i64 %shr.1.i61.4 to i8
  %arrayidx.1.i63.4 = getelementptr inbounds i8, ptr %out, i64 33
  store i8 %conv.1.i62.4, ptr %arrayidx.1.i63.4, align 1
  %shr.2.i64.4 = lshr i64 %12, 40
  %conv.2.i65.4 = trunc i64 %shr.2.i64.4 to i8
  %arrayidx.2.i66.4 = getelementptr inbounds i8, ptr %out, i64 34
  store i8 %conv.2.i65.4, ptr %arrayidx.2.i66.4, align 1
  %shr.3.i67.4 = lshr i64 %12, 32
  %conv.3.i68.4 = trunc i64 %shr.3.i67.4 to i8
  %arrayidx.3.i69.4 = getelementptr inbounds i8, ptr %out, i64 35
  store i8 %conv.3.i68.4, ptr %arrayidx.3.i69.4, align 1
  %shr.4.i70.4 = lshr i64 %12, 24
  %conv.4.i71.4 = trunc i64 %shr.4.i70.4 to i8
  %arrayidx.4.i72.4 = getelementptr inbounds i8, ptr %out, i64 36
  store i8 %conv.4.i71.4, ptr %arrayidx.4.i72.4, align 1
  %shr.5.i73.4 = lshr i64 %12, 16
  %conv.5.i74.4 = trunc i64 %shr.5.i73.4 to i8
  %arrayidx.5.i75.4 = getelementptr inbounds i8, ptr %out, i64 37
  store i8 %conv.5.i74.4, ptr %arrayidx.5.i75.4, align 1
  %shr.6.i76.4 = lshr i64 %12, 8
  %conv.6.i77.4 = trunc i64 %shr.6.i76.4 to i8
  %arrayidx.6.i78.4 = getelementptr inbounds i8, ptr %out, i64 38
  store i8 %conv.6.i77.4, ptr %arrayidx.6.i78.4, align 1
  %conv.7.i79.4 = trunc i64 %12 to i8
  %arrayidx.7.i80.4 = getelementptr inbounds i8, ptr %out, i64 39
  store i8 %conv.7.i79.4, ptr %arrayidx.7.i80.4, align 1
  %arrayidx33.5 = getelementptr inbounds i8, ptr %md, i64 48
  %13 = load i64, ptr %arrayidx33.5, align 8
  %add.ptr35.5 = getelementptr inbounds i8, ptr %out, i64 40
  %shr.i59.5 = lshr i64 %13, 56
  %conv.i60.5 = trunc nuw i64 %shr.i59.5 to i8
  store i8 %conv.i60.5, ptr %add.ptr35.5, align 1
  %shr.1.i61.5 = lshr i64 %13, 48
  %conv.1.i62.5 = trunc i64 %shr.1.i61.5 to i8
  %arrayidx.1.i63.5 = getelementptr inbounds i8, ptr %out, i64 41
  store i8 %conv.1.i62.5, ptr %arrayidx.1.i63.5, align 1
  %shr.2.i64.5 = lshr i64 %13, 40
  %conv.2.i65.5 = trunc i64 %shr.2.i64.5 to i8
  %arrayidx.2.i66.5 = getelementptr inbounds i8, ptr %out, i64 42
  store i8 %conv.2.i65.5, ptr %arrayidx.2.i66.5, align 1
  %shr.3.i67.5 = lshr i64 %13, 32
  %conv.3.i68.5 = trunc i64 %shr.3.i67.5 to i8
  %arrayidx.3.i69.5 = getelementptr inbounds i8, ptr %out, i64 43
  store i8 %conv.3.i68.5, ptr %arrayidx.3.i69.5, align 1
  %shr.4.i70.5 = lshr i64 %13, 24
  %conv.4.i71.5 = trunc i64 %shr.4.i70.5 to i8
  %arrayidx.4.i72.5 = getelementptr inbounds i8, ptr %out, i64 44
  store i8 %conv.4.i71.5, ptr %arrayidx.4.i72.5, align 1
  %shr.5.i73.5 = lshr i64 %13, 16
  %conv.5.i74.5 = trunc i64 %shr.5.i73.5 to i8
  %arrayidx.5.i75.5 = getelementptr inbounds i8, ptr %out, i64 45
  store i8 %conv.5.i74.5, ptr %arrayidx.5.i75.5, align 1
  %shr.6.i76.5 = lshr i64 %13, 8
  %conv.6.i77.5 = trunc i64 %shr.6.i76.5 to i8
  %arrayidx.6.i78.5 = getelementptr inbounds i8, ptr %out, i64 46
  store i8 %conv.6.i77.5, ptr %arrayidx.6.i78.5, align 1
  %conv.7.i79.5 = trunc i64 %13 to i8
  %arrayidx.7.i80.5 = getelementptr inbounds i8, ptr %out, i64 47
  store i8 %conv.7.i79.5, ptr %arrayidx.7.i80.5, align 1
  %arrayidx33.6 = getelementptr inbounds i8, ptr %md, i64 56
  %14 = load i64, ptr %arrayidx33.6, align 8
  %add.ptr35.6 = getelementptr inbounds i8, ptr %out, i64 48
  %shr.i59.6 = lshr i64 %14, 56
  %conv.i60.6 = trunc nuw i64 %shr.i59.6 to i8
  store i8 %conv.i60.6, ptr %add.ptr35.6, align 1
  %shr.1.i61.6 = lshr i64 %14, 48
  %conv.1.i62.6 = trunc i64 %shr.1.i61.6 to i8
  %arrayidx.1.i63.6 = getelementptr inbounds i8, ptr %out, i64 49
  store i8 %conv.1.i62.6, ptr %arrayidx.1.i63.6, align 1
  %shr.2.i64.6 = lshr i64 %14, 40
  %conv.2.i65.6 = trunc i64 %shr.2.i64.6 to i8
  %arrayidx.2.i66.6 = getelementptr inbounds i8, ptr %out, i64 50
  store i8 %conv.2.i65.6, ptr %arrayidx.2.i66.6, align 1
  %shr.3.i67.6 = lshr i64 %14, 32
  %conv.3.i68.6 = trunc i64 %shr.3.i67.6 to i8
  %arrayidx.3.i69.6 = getelementptr inbounds i8, ptr %out, i64 51
  store i8 %conv.3.i68.6, ptr %arrayidx.3.i69.6, align 1
  %shr.4.i70.6 = lshr i64 %14, 24
  %conv.4.i71.6 = trunc i64 %shr.4.i70.6 to i8
  %arrayidx.4.i72.6 = getelementptr inbounds i8, ptr %out, i64 52
  store i8 %conv.4.i71.6, ptr %arrayidx.4.i72.6, align 1
  %shr.5.i73.6 = lshr i64 %14, 16
  %conv.5.i74.6 = trunc i64 %shr.5.i73.6 to i8
  %arrayidx.5.i75.6 = getelementptr inbounds i8, ptr %out, i64 53
  store i8 %conv.5.i74.6, ptr %arrayidx.5.i75.6, align 1
  %shr.6.i76.6 = lshr i64 %14, 8
  %conv.6.i77.6 = trunc i64 %shr.6.i76.6 to i8
  %arrayidx.6.i78.6 = getelementptr inbounds i8, ptr %out, i64 54
  store i8 %conv.6.i77.6, ptr %arrayidx.6.i78.6, align 1
  %conv.7.i79.6 = trunc i64 %14 to i8
  %arrayidx.7.i80.6 = getelementptr inbounds i8, ptr %out, i64 55
  store i8 %conv.7.i79.6, ptr %arrayidx.7.i80.6, align 1
  %arrayidx33.7 = getelementptr inbounds i8, ptr %md, i64 64
  %15 = load i64, ptr %arrayidx33.7, align 8
  %add.ptr35.7 = getelementptr inbounds i8, ptr %out, i64 56
  %shr.i59.7 = lshr i64 %15, 56
  %conv.i60.7 = trunc nuw i64 %shr.i59.7 to i8
  store i8 %conv.i60.7, ptr %add.ptr35.7, align 1
  %shr.1.i61.7 = lshr i64 %15, 48
  %conv.1.i62.7 = trunc i64 %shr.1.i61.7 to i8
  %arrayidx.1.i63.7 = getelementptr inbounds i8, ptr %out, i64 57
  store i8 %conv.1.i62.7, ptr %arrayidx.1.i63.7, align 1
  %shr.2.i64.7 = lshr i64 %15, 40
  %conv.2.i65.7 = trunc i64 %shr.2.i64.7 to i8
  %arrayidx.2.i66.7 = getelementptr inbounds i8, ptr %out, i64 58
  store i8 %conv.2.i65.7, ptr %arrayidx.2.i66.7, align 1
  %shr.3.i67.7 = lshr i64 %15, 32
  %conv.3.i68.7 = trunc i64 %shr.3.i67.7 to i8
  %arrayidx.3.i69.7 = getelementptr inbounds i8, ptr %out, i64 59
  store i8 %conv.3.i68.7, ptr %arrayidx.3.i69.7, align 1
  %shr.4.i70.7 = lshr i64 %15, 24
  %conv.4.i71.7 = trunc i64 %shr.4.i70.7 to i8
  %arrayidx.4.i72.7 = getelementptr inbounds i8, ptr %out, i64 60
  store i8 %conv.4.i71.7, ptr %arrayidx.4.i72.7, align 1
  %shr.5.i73.7 = lshr i64 %15, 16
  %conv.5.i74.7 = trunc i64 %shr.5.i73.7 to i8
  %arrayidx.5.i75.7 = getelementptr inbounds i8, ptr %out, i64 61
  store i8 %conv.5.i74.7, ptr %arrayidx.5.i75.7, align 1
  %shr.6.i76.7 = lshr i64 %15, 8
  %conv.6.i77.7 = trunc i64 %shr.6.i76.7 to i8
  %arrayidx.6.i78.7 = getelementptr inbounds i8, ptr %out, i64 62
  store i8 %conv.6.i77.7, ptr %arrayidx.6.i78.7, align 1
  %conv.7.i79.7 = trunc i64 %15 to i8
  %arrayidx.7.i80.7 = getelementptr inbounds i8, ptr %out, i64 63
  store i8 %conv.7.i79.7, ptr %arrayidx.7.i80.7, align 1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }

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
