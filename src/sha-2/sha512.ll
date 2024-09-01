; ModuleID = 'sha-2/sha512.c'
source_filename = "sha-2/sha512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate %lu bytes at %s:%d\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [15 x i8] c"sha-2/sha512.c\00", align 1, !dbg !7
@K = internal unnamed_addr constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16, !dbg !12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha_init(ptr nocapture noundef writeonly %md) local_unnamed_addr #0 !dbg !40 {
entry:
    #dbg_value(ptr %md, !62, !DIExpression(), !63)
  %curlen = getelementptr inbounds i8, ptr %md, i64 72, !dbg !64
  store i32 0, ptr %curlen, align 8, !dbg !65
  store i64 0, ptr %md, align 8, !dbg !66
  %state = getelementptr inbounds i8, ptr %md, i64 8, !dbg !67
  store i64 7640891576956012808, ptr %state, align 8, !dbg !68
  %arrayidx2 = getelementptr inbounds i8, ptr %md, i64 16, !dbg !69
  store i64 -4942790177534073029, ptr %arrayidx2, align 8, !dbg !70
  %arrayidx4 = getelementptr inbounds i8, ptr %md, i64 24, !dbg !71
  store i64 4354685564936845355, ptr %arrayidx4, align 8, !dbg !72
  %arrayidx6 = getelementptr inbounds i8, ptr %md, i64 32, !dbg !73
  store i64 -6534734903238641935, ptr %arrayidx6, align 8, !dbg !74
  %arrayidx8 = getelementptr inbounds i8, ptr %md, i64 40, !dbg !75
  store i64 5840696475078001361, ptr %arrayidx8, align 8, !dbg !76
  %arrayidx10 = getelementptr inbounds i8, ptr %md, i64 48, !dbg !77
  store i64 -7276294671716946913, ptr %arrayidx10, align 8, !dbg !78
  %arrayidx12 = getelementptr inbounds i8, ptr %md, i64 56, !dbg !79
  store i64 2270897969802886507, ptr %arrayidx12, align 8, !dbg !80
  %arrayidx14 = getelementptr inbounds i8, ptr %md, i64 64, !dbg !81
  store i64 6620516959819538809, ptr %arrayidx14, align 8, !dbg !82
  ret void, !dbg !83
}

; Function Attrs: nounwind uwtable
define dso_local void @sha_process(ptr nocapture noundef %md, ptr nocapture noundef readonly %src, i32 noundef %inlen) local_unnamed_addr #1 !dbg !84 {
entry:
    #dbg_value(ptr %md, !91, !DIExpression(), !102)
    #dbg_value(ptr %src, !92, !DIExpression(), !102)
    #dbg_value(i32 %inlen, !93, !DIExpression(), !102)
    #dbg_value(i32 128, !94, !DIExpression(), !102)
    #dbg_value(ptr %src, !103, !DIExpression(), !111)
    #dbg_value(i32 %inlen, !109, !DIExpression(), !111)
  %conv.i = sext i32 %inlen to i64, !dbg !113
  %call.i = tail call noalias ptr @malloc(i64 noundef %conv.i) #11, !dbg !113
    #dbg_value(ptr %call.i, !110, !DIExpression(), !111)
  %cmp.i = icmp eq ptr %call.i, null, !dbg !114
  br i1 %cmp.i, label %if.then.i, label %sortof_strdup.exit, !dbg !113

if.then.i:                                        ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !116
  %call4.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef %conv.i, ptr noundef nonnull @.str.1, i32 noundef 129) #12, !dbg !116
  tail call void @exit(i32 noundef 1) #13, !dbg !116
  unreachable, !dbg !116

sortof_strdup.exit:                               ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i, ptr readonly align 1 %src, i64 %conv.i, i1 false), !dbg !118
    #dbg_value(ptr %call.i, !96, !DIExpression(), !102)
    #dbg_value(ptr %call.i, !97, !DIExpression(), !102)
    #dbg_value(i32 %inlen, !93, !DIExpression(), !102)
  %cmp.not46 = icmp eq i32 %inlen, 0, !dbg !119
  br i1 %cmp.not46, label %while.end, label %while.body.lr.ph, !dbg !120

while.body.lr.ph:                                 ; preds = %sortof_strdup.exit
  %curlen = getelementptr inbounds i8, ptr %md, i64 72
  %buf = getelementptr inbounds i8, ptr %md, i64 76
  br label %while.body, !dbg !120

while.body:                                       ; preds = %while.body.lr.ph, %if.end22
  %inlen.addr.048 = phi i32 [ %inlen, %while.body.lr.ph ], [ %inlen.addr.1, %if.end22 ]
  %in.047 = phi ptr [ %call.i, %while.body.lr.ph ], [ %in.1, %if.end22 ]
    #dbg_value(i32 %inlen.addr.048, !93, !DIExpression(), !102)
    #dbg_value(ptr %in.047, !96, !DIExpression(), !102)
  %1 = load i32, ptr %curlen, align 8, !dbg !121
  %cmp1 = icmp eq i32 %1, 0, !dbg !122
  %cmp2 = icmp ugt i32 %inlen.addr.048, 127
  %or.cond = and i1 %cmp2, %cmp1, !dbg !123
  br i1 %or.cond, label %if.then, label %if.else, !dbg !123

if.then:                                          ; preds = %while.body
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef %in.047), !dbg !124
  %2 = load i64, ptr %md, align 8, !dbg !126
  %add = add i64 %2, 1024, !dbg !126
  store i64 %add, ptr %md, align 8, !dbg !126
  %add.ptr = getelementptr inbounds i8, ptr %in.047, i64 128, !dbg !127
    #dbg_value(ptr %add.ptr, !96, !DIExpression(), !102)
  %sub = add i32 %inlen.addr.048, -128, !dbg !128
    #dbg_value(i32 %sub, !93, !DIExpression(), !102)
  br label %if.end22, !dbg !129

if.else:                                          ; preds = %while.body
  %sub4 = sub i32 128, %1, !dbg !130
    #dbg_value(i32 %inlen.addr.048, !131, !DIExpression(), !137)
    #dbg_value(i32 %sub4, !136, !DIExpression(), !137)
  %cond.i = tail call noundef i32 @llvm.umin.i32(i32 %inlen.addr.048, i32 %sub4), !dbg !139
    #dbg_value(i32 %cond.i, !98, !DIExpression(), !140)
  %idx.ext = zext i32 %1 to i64, !dbg !141
  %add.ptr7 = getelementptr inbounds i8, ptr %buf, i64 %idx.ext, !dbg !141
  %conv = zext i32 %cond.i to i64, !dbg !142
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr7, ptr align 1 %in.047, i64 %conv, i1 false), !dbg !143
  %3 = load i32, ptr %curlen, align 8, !dbg !144
  %add9 = add i32 %3, %cond.i, !dbg !144
  store i32 %add9, ptr %curlen, align 8, !dbg !144
  %add.ptr11 = getelementptr inbounds i8, ptr %in.047, i64 %conv, !dbg !145
    #dbg_value(ptr %add.ptr11, !96, !DIExpression(), !102)
  %sub12 = sub i32 %inlen.addr.048, %cond.i, !dbg !146
    #dbg_value(i32 %sub12, !93, !DIExpression(), !102)
  %cmp14 = icmp eq i32 %add9, 128, !dbg !147
  br i1 %cmp14, label %if.then16, label %if.end22, !dbg !149

if.then16:                                        ; preds = %if.else
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef nonnull %buf), !dbg !150
  %4 = load i64, ptr %md, align 8, !dbg !152
  %add20 = add i64 %4, 1024, !dbg !152
  store i64 %add20, ptr %md, align 8, !dbg !152
  store i32 0, ptr %curlen, align 8, !dbg !153
  br label %if.end22, !dbg !154

if.end22:                                         ; preds = %if.else, %if.then16, %if.then
  %in.1 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr11, %if.then16 ], [ %add.ptr11, %if.else ], !dbg !155
  %inlen.addr.1 = phi i32 [ %sub, %if.then ], [ %sub12, %if.then16 ], [ %sub12, %if.else ], !dbg !155
    #dbg_value(i32 %inlen.addr.1, !93, !DIExpression(), !102)
    #dbg_value(ptr %in.1, !96, !DIExpression(), !102)
  %cmp.not = icmp eq i32 %inlen.addr.1, 0, !dbg !119
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !120, !llvm.loop !156

while.end:                                        ; preds = %if.end22, %sortof_strdup.exit
  tail call void @free(ptr noundef %call.i) #14, !dbg !158
  ret void, !dbg !159
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha_compress(ptr nocapture noundef %md, ptr nocapture noundef readonly %buf) unnamed_addr #3 !dbg !160 {
entry:
  %W = alloca [80 x i64], align 16, !DIAssignID !182
    #dbg_assign(i1 undef, !168, !DIExpression(), !182, ptr %W, !DIExpression(), !183)
    #dbg_value(ptr %md, !164, !DIExpression(), !183)
    #dbg_value(ptr %buf, !165, !DIExpression(), !183)
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %W) #14, !dbg !184
    #dbg_value(i32 0, !172, !DIExpression(), !185)
  %state = getelementptr inbounds i8, ptr %md, i64 8
  %S.sroa.0.0.copyload = load i64, ptr %state, align 8, !dbg !186
    #dbg_value(i64 %S.sroa.0.0.copyload, !166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !183)
  %S.sroa.6.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 16, !dbg !186
  %S.sroa.6.0.copyload = load i64, ptr %S.sroa.6.0.state.sroa_idx, align 8, !dbg !186
    #dbg_value(i64 %S.sroa.6.0.copyload, !166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !183)
  %S.sroa.9.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 24, !dbg !186
  %S.sroa.9.0.copyload = load i64, ptr %S.sroa.9.0.state.sroa_idx, align 8, !dbg !186
    #dbg_value(i64 %S.sroa.9.0.copyload, !166, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !183)
  %S.sroa.12.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 32, !dbg !186
  %S.sroa.12.0.copyload = load i64, ptr %S.sroa.12.0.state.sroa_idx, align 8, !dbg !186
    #dbg_value(i64 %S.sroa.12.0.copyload, !166, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !183)
  %S.sroa.15.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 40, !dbg !186
  %S.sroa.15.0.copyload = load i64, ptr %S.sroa.15.0.state.sroa_idx, align 8, !dbg !186
    #dbg_value(i64 %S.sroa.15.0.copyload, !166, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !183)
  %S.sroa.18.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 48, !dbg !186
  %S.sroa.18.0.copyload = load i64, ptr %S.sroa.18.0.state.sroa_idx, align 8, !dbg !186
    #dbg_value(i64 %S.sroa.18.0.copyload, !166, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !183)
  %S.sroa.21.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 56, !dbg !186
  %S.sroa.21.0.copyload = load i64, ptr %S.sroa.21.0.state.sroa_idx, align 8, !dbg !186
    #dbg_value(i64 %S.sroa.21.0.copyload, !166, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !183)
  %S.sroa.24.0.state.sroa_idx = getelementptr inbounds i8, ptr %md, i64 64, !dbg !186
  %S.sroa.24.0.copyload = load i64, ptr %S.sroa.24.0.state.sroa_idx, align 8, !dbg !186
    #dbg_value(i64 %S.sroa.24.0.copyload, !166, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !183)
    #dbg_value(i64 poison, !172, !DIExpression(), !185)
  br label %vector.body, !dbg !188

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ], !dbg !189
  %0 = or disjoint i64 %index, 1, !dbg !188
  %1 = or disjoint i64 %index, 2, !dbg !188
  %2 = or disjoint i64 %index, 3, !dbg !188
  %3 = shl nuw nsw i64 %index, 3, !dbg !191
  %4 = shl nuw nsw i64 %0, 3, !dbg !191
  %5 = shl nuw nsw i64 %1, 3, !dbg !191
  %6 = shl nuw nsw i64 %2, 3, !dbg !191
  %7 = getelementptr inbounds i8, ptr %buf, i64 %3, !dbg !192
  %8 = getelementptr inbounds i8, ptr %buf, i64 %4, !dbg !192
  %9 = getelementptr inbounds i8, ptr %buf, i64 %5, !dbg !192
  %10 = getelementptr inbounds i8, ptr %buf, i64 %6, !dbg !192
  %11 = load i8, ptr %7, align 1, !dbg !193
  %12 = load i8, ptr %8, align 1, !dbg !193
  %13 = load i8, ptr %9, align 1, !dbg !193
  %14 = load i8, ptr %10, align 1, !dbg !193
  %15 = zext i8 %11 to i64, !dbg !204
  %16 = zext i8 %12 to i64, !dbg !204
  %17 = zext i8 %13 to i64, !dbg !204
  %18 = zext i8 %14 to i64, !dbg !204
  %19 = shl nuw i64 %15, 56, !dbg !205
  %20 = shl nuw i64 %16, 56, !dbg !205
  %21 = shl nuw i64 %17, 56, !dbg !205
  %22 = shl nuw i64 %18, 56, !dbg !205
  %23 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !193
  %24 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !193
  %25 = getelementptr inbounds i8, ptr %9, i64 1, !dbg !193
  %26 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !193
  %27 = load i8, ptr %23, align 1, !dbg !193
  %28 = load i8, ptr %24, align 1, !dbg !193
  %29 = load i8, ptr %25, align 1, !dbg !193
  %30 = load i8, ptr %26, align 1, !dbg !193
  %31 = zext i8 %27 to i64, !dbg !204
  %32 = zext i8 %28 to i64, !dbg !204
  %33 = zext i8 %29 to i64, !dbg !204
  %34 = zext i8 %30 to i64, !dbg !204
  %35 = shl nuw nsw i64 %31, 48, !dbg !205
  %36 = shl nuw nsw i64 %32, 48, !dbg !205
  %37 = shl nuw nsw i64 %33, 48, !dbg !205
  %38 = shl nuw nsw i64 %34, 48, !dbg !205
  %39 = or disjoint i64 %35, %19, !dbg !206
  %40 = or disjoint i64 %36, %20, !dbg !206
  %41 = or disjoint i64 %37, %21, !dbg !206
  %42 = or disjoint i64 %38, %22, !dbg !206
  %43 = getelementptr inbounds i8, ptr %7, i64 2, !dbg !193
  %44 = getelementptr inbounds i8, ptr %8, i64 2, !dbg !193
  %45 = getelementptr inbounds i8, ptr %9, i64 2, !dbg !193
  %46 = getelementptr inbounds i8, ptr %10, i64 2, !dbg !193
  %47 = load i8, ptr %43, align 1, !dbg !193
  %48 = load i8, ptr %44, align 1, !dbg !193
  %49 = load i8, ptr %45, align 1, !dbg !193
  %50 = load i8, ptr %46, align 1, !dbg !193
  %51 = zext i8 %47 to i64, !dbg !204
  %52 = zext i8 %48 to i64, !dbg !204
  %53 = zext i8 %49 to i64, !dbg !204
  %54 = zext i8 %50 to i64, !dbg !204
  %55 = shl nuw nsw i64 %51, 40, !dbg !205
  %56 = shl nuw nsw i64 %52, 40, !dbg !205
  %57 = shl nuw nsw i64 %53, 40, !dbg !205
  %58 = shl nuw nsw i64 %54, 40, !dbg !205
  %59 = or disjoint i64 %39, %55, !dbg !206
  %60 = or disjoint i64 %40, %56, !dbg !206
  %61 = or disjoint i64 %41, %57, !dbg !206
  %62 = or disjoint i64 %42, %58, !dbg !206
  %63 = getelementptr inbounds i8, ptr %7, i64 3, !dbg !193
  %64 = getelementptr inbounds i8, ptr %8, i64 3, !dbg !193
  %65 = getelementptr inbounds i8, ptr %9, i64 3, !dbg !193
  %66 = getelementptr inbounds i8, ptr %10, i64 3, !dbg !193
  %67 = load i8, ptr %63, align 1, !dbg !193
  %68 = load i8, ptr %64, align 1, !dbg !193
  %69 = load i8, ptr %65, align 1, !dbg !193
  %70 = load i8, ptr %66, align 1, !dbg !193
  %71 = zext i8 %67 to i64, !dbg !204
  %72 = zext i8 %68 to i64, !dbg !204
  %73 = zext i8 %69 to i64, !dbg !204
  %74 = zext i8 %70 to i64, !dbg !204
  %75 = shl nuw nsw i64 %71, 32, !dbg !205
  %76 = shl nuw nsw i64 %72, 32, !dbg !205
  %77 = shl nuw nsw i64 %73, 32, !dbg !205
  %78 = shl nuw nsw i64 %74, 32, !dbg !205
  %79 = or disjoint i64 %59, %75, !dbg !206
  %80 = or disjoint i64 %60, %76, !dbg !206
  %81 = or disjoint i64 %61, %77, !dbg !206
  %82 = or disjoint i64 %62, %78, !dbg !206
  %83 = getelementptr inbounds i8, ptr %7, i64 4, !dbg !193
  %84 = getelementptr inbounds i8, ptr %8, i64 4, !dbg !193
  %85 = getelementptr inbounds i8, ptr %9, i64 4, !dbg !193
  %86 = getelementptr inbounds i8, ptr %10, i64 4, !dbg !193
  %87 = load i8, ptr %83, align 1, !dbg !193
  %88 = load i8, ptr %84, align 1, !dbg !193
  %89 = load i8, ptr %85, align 1, !dbg !193
  %90 = load i8, ptr %86, align 1, !dbg !193
  %91 = zext i8 %87 to i64, !dbg !204
  %92 = zext i8 %88 to i64, !dbg !204
  %93 = zext i8 %89 to i64, !dbg !204
  %94 = zext i8 %90 to i64, !dbg !204
  %95 = shl nuw nsw i64 %91, 24, !dbg !205
  %96 = shl nuw nsw i64 %92, 24, !dbg !205
  %97 = shl nuw nsw i64 %93, 24, !dbg !205
  %98 = shl nuw nsw i64 %94, 24, !dbg !205
  %99 = or disjoint i64 %79, %95, !dbg !206
  %100 = or disjoint i64 %80, %96, !dbg !206
  %101 = or disjoint i64 %81, %97, !dbg !206
  %102 = or disjoint i64 %82, %98, !dbg !206
  %103 = getelementptr inbounds i8, ptr %7, i64 5, !dbg !193
  %104 = getelementptr inbounds i8, ptr %8, i64 5, !dbg !193
  %105 = getelementptr inbounds i8, ptr %9, i64 5, !dbg !193
  %106 = getelementptr inbounds i8, ptr %10, i64 5, !dbg !193
  %107 = load i8, ptr %103, align 1, !dbg !193
  %108 = load i8, ptr %104, align 1, !dbg !193
  %109 = load i8, ptr %105, align 1, !dbg !193
  %110 = load i8, ptr %106, align 1, !dbg !193
  %111 = zext i8 %107 to i64, !dbg !204
  %112 = zext i8 %108 to i64, !dbg !204
  %113 = zext i8 %109 to i64, !dbg !204
  %114 = zext i8 %110 to i64, !dbg !204
  %115 = shl nuw nsw i64 %111, 16, !dbg !205
  %116 = shl nuw nsw i64 %112, 16, !dbg !205
  %117 = shl nuw nsw i64 %113, 16, !dbg !205
  %118 = shl nuw nsw i64 %114, 16, !dbg !205
  %119 = or disjoint i64 %99, %115, !dbg !206
  %120 = or disjoint i64 %100, %116, !dbg !206
  %121 = or disjoint i64 %101, %117, !dbg !206
  %122 = or disjoint i64 %102, %118, !dbg !206
  %123 = getelementptr inbounds i8, ptr %7, i64 6, !dbg !193
  %124 = getelementptr inbounds i8, ptr %8, i64 6, !dbg !193
  %125 = getelementptr inbounds i8, ptr %9, i64 6, !dbg !193
  %126 = getelementptr inbounds i8, ptr %10, i64 6, !dbg !193
  %127 = load i8, ptr %123, align 1, !dbg !193
  %128 = load i8, ptr %124, align 1, !dbg !193
  %129 = load i8, ptr %125, align 1, !dbg !193
  %130 = load i8, ptr %126, align 1, !dbg !193
  %131 = zext i8 %127 to i64, !dbg !204
  %132 = zext i8 %128 to i64, !dbg !204
  %133 = zext i8 %129 to i64, !dbg !204
  %134 = zext i8 %130 to i64, !dbg !204
  %135 = shl nuw nsw i64 %131, 8, !dbg !205
  %136 = shl nuw nsw i64 %132, 8, !dbg !205
  %137 = shl nuw nsw i64 %133, 8, !dbg !205
  %138 = shl nuw nsw i64 %134, 8, !dbg !205
  %139 = or i64 %119, %135, !dbg !206
  %140 = or i64 %120, %136, !dbg !206
  %141 = or i64 %121, %137, !dbg !206
  %142 = or i64 %122, %138, !dbg !206
  %143 = getelementptr inbounds i8, ptr %7, i64 7, !dbg !193
  %144 = getelementptr inbounds i8, ptr %8, i64 7, !dbg !193
  %145 = getelementptr inbounds i8, ptr %9, i64 7, !dbg !193
  %146 = getelementptr inbounds i8, ptr %10, i64 7, !dbg !193
  %147 = load i8, ptr %143, align 1, !dbg !193
  %148 = load i8, ptr %144, align 1, !dbg !193
  %149 = load i8, ptr %145, align 1, !dbg !193
  %150 = load i8, ptr %146, align 1, !dbg !193
  %151 = zext i8 %147 to i64, !dbg !204
  %152 = zext i8 %148 to i64, !dbg !204
  %153 = zext i8 %149 to i64, !dbg !204
  %154 = zext i8 %150 to i64, !dbg !204
  %155 = or i64 %139, %151, !dbg !206
  %156 = or i64 %140, %152, !dbg !206
  %157 = or i64 %141, %153, !dbg !206
  %158 = or i64 %142, %154, !dbg !206
  %159 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %index, !dbg !207
  %160 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %0, !dbg !207
  %161 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %1, !dbg !207
  %162 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %2, !dbg !207
  store i64 %155, ptr %159, align 16, !dbg !208
  store i64 %156, ptr %160, align 8, !dbg !208
  store i64 %157, ptr %161, align 16, !dbg !208
  store i64 %158, ptr %162, align 8, !dbg !208
  %index.next = add nuw i64 %index, 4, !dbg !189
  %163 = icmp eq i64 %index.next, 16, !dbg !189
  br i1 %163, label %for.body17.preheader, label %vector.body, !dbg !189, !llvm.loop !209

for.body17.preheader:                             ; preds = %vector.body
  %.pre = load i64, ptr %W, align 16, !dbg !213
  br label %for.body17, !dbg !215

for.body17:                                       ; preds = %for.body17.preheader, %for.body17
  %164 = phi i64 [ %.pre, %for.body17.preheader ], [ %170, %for.body17 ], !dbg !213
  %indvars.iv495 = phi i64 [ 16, %for.body17.preheader ], [ %indvars.iv.next496, %for.body17 ]
    #dbg_value(i64 %indvars.iv495, !176, !DIExpression(), !216)
  %165 = add nsw i64 %indvars.iv495, -2, !dbg !217
  %arrayidx19 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %165, !dbg !218
  %166 = load i64, ptr %arrayidx19, align 8, !dbg !218
    #dbg_value(i64 %166, !219, !DIExpression(), !224)
    #dbg_value(i64 %166, !226, !DIExpression(), !232)
    #dbg_value(i64 19, !231, !DIExpression(), !232)
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 45), !dbg !234
    #dbg_value(i64 %166, !226, !DIExpression(), !235)
    #dbg_value(i64 61, !231, !DIExpression(), !235)
  %or.i6.i = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 3), !dbg !237
  %xor.i = xor i64 %or.i.i, %or.i6.i, !dbg !238
    #dbg_value(i64 %166, !239, !DIExpression(), !243)
    #dbg_value(i64 6, !242, !DIExpression(), !243)
  %shr.i.i = lshr i64 %166, 6, !dbg !245
  %xor3.i = xor i64 %xor.i, %shr.i.i, !dbg !246
  %167 = add nsw i64 %indvars.iv495, -7, !dbg !247
  %arrayidx23 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %167, !dbg !248
  %168 = load i64, ptr %arrayidx23, align 8, !dbg !248
  %add = add i64 %xor3.i, %168, !dbg !249
  %169 = add nsw i64 %indvars.iv495, -15, !dbg !250
  %arrayidx26 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %169, !dbg !251
  %170 = load i64, ptr %arrayidx26, align 8, !dbg !251
    #dbg_value(i64 %170, !252, !DIExpression(), !255)
    #dbg_value(i64 %170, !226, !DIExpression(), !257)
    #dbg_value(i64 1, !231, !DIExpression(), !257)
  %or.i.i344 = tail call i64 @llvm.fshl.i64(i64 %170, i64 %170, i64 63), !dbg !259
    #dbg_value(i64 %170, !226, !DIExpression(), !260)
    #dbg_value(i64 8, !231, !DIExpression(), !260)
  %or.i6.i345 = tail call i64 @llvm.fshl.i64(i64 %170, i64 %170, i64 56), !dbg !262
  %xor.i346 = xor i64 %or.i.i344, %or.i6.i345, !dbg !263
    #dbg_value(i64 %170, !239, !DIExpression(), !264)
    #dbg_value(i64 7, !242, !DIExpression(), !264)
  %shr.i.i347 = lshr i64 %170, 7, !dbg !266
  %xor3.i348 = xor i64 %xor.i346, %shr.i.i347, !dbg !267
  %add28 = add i64 %add, %164, !dbg !268
  %add32 = add i64 %add28, %xor3.i348, !dbg !269
  %arrayidx34 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %indvars.iv495, !dbg !270
  store i64 %add32, ptr %arrayidx34, align 8, !dbg !271
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495, 1, !dbg !272
    #dbg_value(i64 %indvars.iv.next496, !176, !DIExpression(), !216)
  %exitcond502.not = icmp eq i64 %indvars.iv.next496, 80, !dbg !273
  br i1 %exitcond502.not, label %for.body42, label %for.body17, !dbg !215, !llvm.loop !274

for.cond271.preheader:                            ; preds = %for.body42
    #dbg_value(i64 0, !180, !DIExpression(), !276)
  %171 = load i64, ptr %state, align 8, !dbg !277
  %add280 = add i64 %add265, %171, !dbg !279
  store i64 %add280, ptr %state, align 8, !dbg !280
    #dbg_value(i64 1, !180, !DIExpression(), !276)
  %172 = load i64, ptr %S.sroa.6.0.state.sroa_idx, align 8, !dbg !277
  %add280.1 = add i64 %add237, %172, !dbg !279
  store i64 %add280.1, ptr %S.sroa.6.0.state.sroa_idx, align 8, !dbg !280
    #dbg_value(i64 2, !180, !DIExpression(), !276)
  %173 = load i64, ptr %S.sroa.9.0.state.sroa_idx, align 8, !dbg !277
  %add280.2 = add i64 %add209, %173, !dbg !279
  store i64 %add280.2, ptr %S.sroa.9.0.state.sroa_idx, align 8, !dbg !280
    #dbg_value(i64 3, !180, !DIExpression(), !276)
  %174 = load i64, ptr %S.sroa.12.0.state.sroa_idx, align 8, !dbg !277
  %add280.3 = add i64 %add181, %174, !dbg !279
  store i64 %add280.3, ptr %S.sroa.12.0.state.sroa_idx, align 8, !dbg !280
    #dbg_value(i64 4, !180, !DIExpression(), !276)
  %175 = load i64, ptr %S.sroa.15.0.state.sroa_idx, align 8, !dbg !277
  %add280.4 = add i64 %add264, %175, !dbg !279
  store i64 %add280.4, ptr %S.sroa.15.0.state.sroa_idx, align 8, !dbg !280
    #dbg_value(i64 5, !180, !DIExpression(), !276)
  %176 = load i64, ptr %S.sroa.18.0.state.sroa_idx, align 8, !dbg !277
  %add280.5 = add i64 %add236, %176, !dbg !279
  store i64 %add280.5, ptr %S.sroa.18.0.state.sroa_idx, align 8, !dbg !280
    #dbg_value(i64 6, !180, !DIExpression(), !276)
  %177 = load i64, ptr %S.sroa.21.0.state.sroa_idx, align 8, !dbg !277
  %add280.6 = add i64 %add208, %177, !dbg !279
  store i64 %add280.6, ptr %S.sroa.21.0.state.sroa_idx, align 8, !dbg !280
    #dbg_value(i64 7, !180, !DIExpression(), !276)
  %178 = load i64, ptr %S.sroa.24.0.state.sroa_idx, align 8, !dbg !277
  %add280.7 = add i64 %add180, %178, !dbg !279
  store i64 %add280.7, ptr %S.sroa.24.0.state.sroa_idx, align 8, !dbg !280
    #dbg_value(i64 8, !180, !DIExpression(), !276)
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %W) #14, !dbg !281
  ret void, !dbg !281

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
    #dbg_value(i64 %indvars.iv503, !178, !DIExpression(), !282)
    #dbg_value(i64 %180, !283, !DIExpression(), !286)
    #dbg_value(i64 %180, !226, !DIExpression(), !291)
    #dbg_value(i64 14, !231, !DIExpression(), !291)
  %or.i.i349 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 50), !dbg !293
    #dbg_value(i64 %180, !226, !DIExpression(), !294)
    #dbg_value(i64 18, !231, !DIExpression(), !294)
  %or.i6.i350 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 46), !dbg !296
  %xor.i351 = xor i64 %or.i.i349, %or.i6.i350, !dbg !297
    #dbg_value(i64 %180, !226, !DIExpression(), !298)
    #dbg_value(i64 41, !231, !DIExpression(), !298)
  %or.i7.i = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 23), !dbg !300
  %xor3.i352 = xor i64 %xor.i351, %or.i7.i, !dbg !301
  %add46 = add i64 %xor3.i352, %179, !dbg !302
    #dbg_value(i64 %180, !303, !DIExpression(), !310)
    #dbg_value(i64 %181, !308, !DIExpression(), !310)
    #dbg_value(i64 %182, !309, !DIExpression(), !310)
  %xor.i353 = xor i64 %182, %181, !dbg !312
  %and.i = and i64 %xor.i353, %180, !dbg !313
  %xor1.i = xor i64 %and.i, %182, !dbg !314
  %arrayidx54 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %indvars.iv503, !dbg !302
  %186 = load i64, ptr %arrayidx54, align 16, !dbg !302
  %arrayidx58 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %indvars.iv503, !dbg !302
  %187 = load i64, ptr %arrayidx58, align 16, !dbg !302
  %add51 = add i64 %add46, %186, !dbg !302
  %add55 = add i64 %add51, %187, !dbg !302
  %add59 = add i64 %add55, %xor1.i, !dbg !302
    #dbg_value(i64 %add59, !170, !DIExpression(), !183)
    #dbg_value(i64 %add265485489, !315, !DIExpression(), !318)
    #dbg_value(i64 %add265485489, !226, !DIExpression(), !320)
    #dbg_value(i64 28, !231, !DIExpression(), !320)
  %or.i.i354 = tail call i64 @llvm.fshl.i64(i64 %add265485489, i64 %add265485489, i64 36), !dbg !322
    #dbg_value(i64 %add265485489, !226, !DIExpression(), !323)
    #dbg_value(i64 34, !231, !DIExpression(), !323)
  %or.i6.i355 = tail call i64 @llvm.fshl.i64(i64 %add265485489, i64 %add265485489, i64 30), !dbg !325
  %xor.i356 = xor i64 %or.i.i354, %or.i6.i355, !dbg !326
    #dbg_value(i64 %add265485489, !226, !DIExpression(), !327)
    #dbg_value(i64 39, !231, !DIExpression(), !327)
  %or.i7.i357 = tail call i64 @llvm.fshl.i64(i64 %add265485489, i64 %add265485489, i64 25), !dbg !329
  %xor3.i358 = xor i64 %xor.i356, %or.i7.i357, !dbg !330
    #dbg_value(i64 %add265485489, !331, !DIExpression(), !336)
    #dbg_value(i64 %183, !334, !DIExpression(), !336)
    #dbg_value(i64 %184, !335, !DIExpression(), !336)
  %or.i = or i64 %183, %add265485489, !dbg !338
  %and.i359 = and i64 %or.i, %184, !dbg !339
  %and1.i = and i64 %183, %add265485489, !dbg !340
  %or2.i = or i64 %and.i359, %and1.i, !dbg !341
    #dbg_value(i64 poison, !171, !DIExpression(), !183)
  %add68 = add i64 %185, %add59, !dbg !302
    #dbg_value(i64 %add181, !166, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !183)
  %add66 = add i64 %add59, %xor3.i358, !dbg !302
  %add69 = add i64 %add66, %or2.i, !dbg !302
    #dbg_value(i64 %add180, !166, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !183)
    #dbg_value(i64 %add68, !283, !DIExpression(), !342)
    #dbg_value(i64 %add68, !226, !DIExpression(), !345)
    #dbg_value(i64 14, !231, !DIExpression(), !345)
  %or.i.i360 = tail call i64 @llvm.fshl.i64(i64 %add68, i64 %add68, i64 50), !dbg !347
    #dbg_value(i64 %add68, !226, !DIExpression(), !348)
    #dbg_value(i64 18, !231, !DIExpression(), !348)
  %or.i6.i361 = tail call i64 @llvm.fshl.i64(i64 %add68, i64 %add68, i64 46), !dbg !350
  %xor.i362 = xor i64 %or.i.i360, %or.i6.i361, !dbg !351
    #dbg_value(i64 %add68, !226, !DIExpression(), !352)
    #dbg_value(i64 41, !231, !DIExpression(), !352)
  %or.i7.i363 = tail call i64 @llvm.fshl.i64(i64 %add68, i64 %add68, i64 23), !dbg !354
  %xor3.i364 = xor i64 %xor.i362, %or.i7.i363, !dbg !355
    #dbg_value(i64 %add68, !303, !DIExpression(), !356)
    #dbg_value(i64 %180, !308, !DIExpression(), !356)
    #dbg_value(i64 %181, !309, !DIExpression(), !356)
  %xor.i365 = xor i64 %181, %180, !dbg !358
  %and.i366 = and i64 %add68, %xor.i365, !dbg !359
  %xor1.i367 = xor i64 %and.i366, %181, !dbg !360
  %188 = or disjoint i64 %indvars.iv503, 1, !dbg !361
  %arrayidx82 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %188, !dbg !361
  %189 = load i64, ptr %arrayidx82, align 8, !dbg !361
  %arrayidx86 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %188, !dbg !361
  %190 = load i64, ptr %arrayidx86, align 8, !dbg !361
  %add74 = add i64 %xor1.i367, %182, !dbg !361
  %add79 = add i64 %add74, %189, !dbg !361
  %add83 = add i64 %add79, %xor3.i364, !dbg !361
  %add87 = add i64 %add83, %190, !dbg !361
    #dbg_value(i64 %add87, !170, !DIExpression(), !183)
    #dbg_value(i64 %add69, !315, !DIExpression(), !362)
    #dbg_value(i64 %add69, !226, !DIExpression(), !364)
    #dbg_value(i64 28, !231, !DIExpression(), !364)
  %or.i.i368 = tail call i64 @llvm.fshl.i64(i64 %add69, i64 %add69, i64 36), !dbg !366
    #dbg_value(i64 %add69, !226, !DIExpression(), !367)
    #dbg_value(i64 34, !231, !DIExpression(), !367)
  %or.i6.i369 = tail call i64 @llvm.fshl.i64(i64 %add69, i64 %add69, i64 30), !dbg !369
  %xor.i370 = xor i64 %or.i.i368, %or.i6.i369, !dbg !370
    #dbg_value(i64 %add69, !226, !DIExpression(), !371)
    #dbg_value(i64 39, !231, !DIExpression(), !371)
  %or.i7.i371 = tail call i64 @llvm.fshl.i64(i64 %add69, i64 %add69, i64 25), !dbg !373
  %xor3.i372 = xor i64 %xor.i370, %or.i7.i371, !dbg !374
    #dbg_value(i64 %add69, !331, !DIExpression(), !375)
    #dbg_value(i64 %add265485489, !334, !DIExpression(), !375)
    #dbg_value(i64 %183, !335, !DIExpression(), !375)
  %or.i373 = or i64 %add69, %add265485489, !dbg !377
  %and.i374 = and i64 %or.i373, %183, !dbg !378
  %and1.i375 = and i64 %add69, %add265485489, !dbg !379
  %or2.i376 = or i64 %and.i374, %and1.i375, !dbg !380
  %add94 = add i64 %xor3.i372, %or2.i376, !dbg !361
    #dbg_value(i64 %add94, !171, !DIExpression(), !183)
  %add96 = add i64 %add87, %184, !dbg !361
    #dbg_value(i64 %add209, !166, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !183)
  %add97 = add i64 %add94, %add87, !dbg !361
    #dbg_value(i64 %add208, !166, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !183)
    #dbg_value(i64 %add96, !283, !DIExpression(), !381)
    #dbg_value(i64 %add96, !226, !DIExpression(), !384)
    #dbg_value(i64 14, !231, !DIExpression(), !384)
  %or.i.i377 = tail call i64 @llvm.fshl.i64(i64 %add96, i64 %add96, i64 50), !dbg !386
    #dbg_value(i64 %add96, !226, !DIExpression(), !387)
    #dbg_value(i64 18, !231, !DIExpression(), !387)
  %or.i6.i378 = tail call i64 @llvm.fshl.i64(i64 %add96, i64 %add96, i64 46), !dbg !389
  %xor.i379 = xor i64 %or.i.i377, %or.i6.i378, !dbg !390
    #dbg_value(i64 %add96, !226, !DIExpression(), !391)
    #dbg_value(i64 41, !231, !DIExpression(), !391)
  %or.i7.i380 = tail call i64 @llvm.fshl.i64(i64 %add96, i64 %add96, i64 23), !dbg !393
  %xor3.i381 = xor i64 %xor.i379, %or.i7.i380, !dbg !394
    #dbg_value(i64 %add96, !303, !DIExpression(), !395)
    #dbg_value(i64 %add68, !308, !DIExpression(), !395)
    #dbg_value(i64 %180, !309, !DIExpression(), !395)
  %xor.i382 = xor i64 %add68, %180, !dbg !397
  %and.i383 = and i64 %add96, %xor.i382, !dbg !398
  %xor1.i384 = xor i64 %and.i383, %180, !dbg !399
  %191 = or disjoint i64 %indvars.iv503, 2, !dbg !400
  %arrayidx110 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %191, !dbg !400
  %192 = load i64, ptr %arrayidx110, align 16, !dbg !400
  %arrayidx114 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %191, !dbg !400
  %193 = load i64, ptr %arrayidx114, align 16, !dbg !400
  %add102 = add i64 %192, %181, !dbg !400
  %add107 = add i64 %add102, %193, !dbg !400
  %add111 = add i64 %add107, %xor1.i384, !dbg !400
  %add115 = add i64 %add111, %xor3.i381, !dbg !400
    #dbg_value(i64 %add115, !170, !DIExpression(), !183)
    #dbg_value(i64 %add97, !315, !DIExpression(), !401)
    #dbg_value(i64 %add97, !226, !DIExpression(), !403)
    #dbg_value(i64 28, !231, !DIExpression(), !403)
  %or.i.i385 = tail call i64 @llvm.fshl.i64(i64 %add97, i64 %add97, i64 36), !dbg !405
    #dbg_value(i64 %add97, !226, !DIExpression(), !406)
    #dbg_value(i64 34, !231, !DIExpression(), !406)
  %or.i6.i386 = tail call i64 @llvm.fshl.i64(i64 %add97, i64 %add97, i64 30), !dbg !408
  %xor.i387 = xor i64 %or.i.i385, %or.i6.i386, !dbg !409
    #dbg_value(i64 %add97, !226, !DIExpression(), !410)
    #dbg_value(i64 39, !231, !DIExpression(), !410)
  %or.i7.i388 = tail call i64 @llvm.fshl.i64(i64 %add97, i64 %add97, i64 25), !dbg !412
  %xor3.i389 = xor i64 %xor.i387, %or.i7.i388, !dbg !413
    #dbg_value(i64 %add97, !331, !DIExpression(), !414)
    #dbg_value(i64 %add69, !334, !DIExpression(), !414)
    #dbg_value(i64 %add265485489, !335, !DIExpression(), !414)
  %or.i390 = or i64 %add97, %add69, !dbg !416
  %and.i391 = and i64 %or.i390, %add265485489, !dbg !417
  %and1.i392 = and i64 %add97, %add69, !dbg !418
  %or2.i393 = or i64 %and.i391, %and1.i392, !dbg !419
  %add122 = add i64 %xor3.i389, %or2.i393, !dbg !400
    #dbg_value(i64 %add122, !171, !DIExpression(), !183)
  %add124 = add i64 %add115, %183, !dbg !400
    #dbg_value(i64 %add237, !166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !183)
  %add125 = add i64 %add122, %add115, !dbg !400
    #dbg_value(i64 %add236, !166, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !183)
    #dbg_value(i64 %add124, !283, !DIExpression(), !420)
    #dbg_value(i64 %add124, !226, !DIExpression(), !423)
    #dbg_value(i64 14, !231, !DIExpression(), !423)
  %or.i.i394 = tail call i64 @llvm.fshl.i64(i64 %add124, i64 %add124, i64 50), !dbg !425
    #dbg_value(i64 %add124, !226, !DIExpression(), !426)
    #dbg_value(i64 18, !231, !DIExpression(), !426)
  %or.i6.i395 = tail call i64 @llvm.fshl.i64(i64 %add124, i64 %add124, i64 46), !dbg !428
  %xor.i396 = xor i64 %or.i.i394, %or.i6.i395, !dbg !429
    #dbg_value(i64 %add124, !226, !DIExpression(), !430)
    #dbg_value(i64 41, !231, !DIExpression(), !430)
  %or.i7.i397 = tail call i64 @llvm.fshl.i64(i64 %add124, i64 %add124, i64 23), !dbg !432
  %xor3.i398 = xor i64 %xor.i396, %or.i7.i397, !dbg !433
    #dbg_value(i64 %add124, !303, !DIExpression(), !434)
    #dbg_value(i64 %add96, !308, !DIExpression(), !434)
    #dbg_value(i64 %add68, !309, !DIExpression(), !434)
  %xor.i399 = xor i64 %add96, %add68, !dbg !436
  %and.i400 = and i64 %add124, %xor.i399, !dbg !437
  %xor1.i401 = xor i64 %and.i400, %add68, !dbg !438
  %194 = or disjoint i64 %indvars.iv503, 3, !dbg !439
  %arrayidx138 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %194, !dbg !439
  %195 = load i64, ptr %arrayidx138, align 8, !dbg !439
  %arrayidx142 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %194, !dbg !439
  %196 = load i64, ptr %arrayidx142, align 8, !dbg !439
  %add130 = add i64 %195, %180, !dbg !439
  %add135 = add i64 %add130, %196, !dbg !439
  %add139 = add i64 %add135, %xor1.i401, !dbg !439
  %add143 = add i64 %add139, %xor3.i398, !dbg !439
    #dbg_value(i64 %add143, !170, !DIExpression(), !183)
    #dbg_value(i64 %add125, !315, !DIExpression(), !440)
    #dbg_value(i64 %add125, !226, !DIExpression(), !442)
    #dbg_value(i64 28, !231, !DIExpression(), !442)
  %or.i.i402 = tail call i64 @llvm.fshl.i64(i64 %add125, i64 %add125, i64 36), !dbg !444
    #dbg_value(i64 %add125, !226, !DIExpression(), !445)
    #dbg_value(i64 34, !231, !DIExpression(), !445)
  %or.i6.i403 = tail call i64 @llvm.fshl.i64(i64 %add125, i64 %add125, i64 30), !dbg !447
  %xor.i404 = xor i64 %or.i.i402, %or.i6.i403, !dbg !448
    #dbg_value(i64 %add125, !226, !DIExpression(), !449)
    #dbg_value(i64 39, !231, !DIExpression(), !449)
  %or.i7.i405 = tail call i64 @llvm.fshl.i64(i64 %add125, i64 %add125, i64 25), !dbg !451
  %xor3.i406 = xor i64 %xor.i404, %or.i7.i405, !dbg !452
    #dbg_value(i64 %add125, !331, !DIExpression(), !453)
    #dbg_value(i64 %add97, !334, !DIExpression(), !453)
    #dbg_value(i64 %add69, !335, !DIExpression(), !453)
  %or.i407 = or i64 %add125, %add97, !dbg !455
  %and.i408 = and i64 %or.i407, %add69, !dbg !456
  %and1.i409 = and i64 %add125, %add97, !dbg !457
  %or2.i410 = or i64 %and.i408, %and1.i409, !dbg !458
  %add150 = add i64 %xor3.i406, %or2.i410, !dbg !439
    #dbg_value(i64 %add150, !171, !DIExpression(), !183)
  %add152 = add i64 %add143, %add265485489, !dbg !439
    #dbg_value(i64 %add265, !166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !183)
  %add153 = add i64 %add150, %add143, !dbg !439
    #dbg_value(i64 %add264, !166, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !183)
    #dbg_value(i64 %add152, !283, !DIExpression(), !459)
    #dbg_value(i64 %add152, !226, !DIExpression(), !462)
    #dbg_value(i64 14, !231, !DIExpression(), !462)
  %or.i.i411 = tail call i64 @llvm.fshl.i64(i64 %add152, i64 %add152, i64 50), !dbg !464
    #dbg_value(i64 %add152, !226, !DIExpression(), !465)
    #dbg_value(i64 18, !231, !DIExpression(), !465)
  %or.i6.i412 = tail call i64 @llvm.fshl.i64(i64 %add152, i64 %add152, i64 46), !dbg !467
  %xor.i413 = xor i64 %or.i.i411, %or.i6.i412, !dbg !468
    #dbg_value(i64 %add152, !226, !DIExpression(), !469)
    #dbg_value(i64 41, !231, !DIExpression(), !469)
  %or.i7.i414 = tail call i64 @llvm.fshl.i64(i64 %add152, i64 %add152, i64 23), !dbg !471
  %xor3.i415 = xor i64 %xor.i413, %or.i7.i414, !dbg !472
    #dbg_value(i64 %add152, !303, !DIExpression(), !473)
    #dbg_value(i64 %add124, !308, !DIExpression(), !473)
    #dbg_value(i64 %add96, !309, !DIExpression(), !473)
  %xor.i416 = xor i64 %add124, %add96, !dbg !475
  %and.i417 = and i64 %add152, %xor.i416, !dbg !476
  %xor1.i418 = xor i64 %and.i417, %add96, !dbg !477
  %197 = or disjoint i64 %indvars.iv503, 4, !dbg !478
  %arrayidx166 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %197, !dbg !478
  %198 = load i64, ptr %arrayidx166, align 16, !dbg !478
  %arrayidx170 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %197, !dbg !478
  %199 = load i64, ptr %arrayidx170, align 16, !dbg !478
  %add158 = add i64 %198, %add68, !dbg !478
  %add163 = add i64 %add158, %199, !dbg !478
  %add167 = add i64 %add163, %xor1.i418, !dbg !478
  %add171 = add i64 %add167, %xor3.i415, !dbg !478
    #dbg_value(i64 %add171, !170, !DIExpression(), !183)
    #dbg_value(i64 %add153, !315, !DIExpression(), !479)
    #dbg_value(i64 %add153, !226, !DIExpression(), !481)
    #dbg_value(i64 28, !231, !DIExpression(), !481)
  %or.i.i419 = tail call i64 @llvm.fshl.i64(i64 %add153, i64 %add153, i64 36), !dbg !483
    #dbg_value(i64 %add153, !226, !DIExpression(), !484)
    #dbg_value(i64 34, !231, !DIExpression(), !484)
  %or.i6.i420 = tail call i64 @llvm.fshl.i64(i64 %add153, i64 %add153, i64 30), !dbg !486
  %xor.i421 = xor i64 %or.i.i419, %or.i6.i420, !dbg !487
    #dbg_value(i64 %add153, !226, !DIExpression(), !488)
    #dbg_value(i64 39, !231, !DIExpression(), !488)
  %or.i7.i422 = tail call i64 @llvm.fshl.i64(i64 %add153, i64 %add153, i64 25), !dbg !490
  %xor3.i423 = xor i64 %xor.i421, %or.i7.i422, !dbg !491
    #dbg_value(i64 %add153, !331, !DIExpression(), !492)
    #dbg_value(i64 %add125, !334, !DIExpression(), !492)
    #dbg_value(i64 %add97, !335, !DIExpression(), !492)
  %or.i424 = or i64 %add153, %add125, !dbg !494
  %and.i425 = and i64 %or.i424, %add97, !dbg !495
  %and1.i426 = and i64 %add153, %add125, !dbg !496
  %or2.i427 = or i64 %and.i425, %and1.i426, !dbg !497
  %add178 = add i64 %xor3.i423, %or2.i427, !dbg !478
    #dbg_value(i64 %add178, !171, !DIExpression(), !183)
  %add180 = add i64 %add171, %add69, !dbg !478
    #dbg_value(i64 %add180, !166, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !183)
  %add181 = add i64 %add178, %add171, !dbg !478
    #dbg_value(i64 %add181, !166, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !183)
    #dbg_value(i64 %add180, !283, !DIExpression(), !498)
    #dbg_value(i64 %add180, !226, !DIExpression(), !501)
    #dbg_value(i64 14, !231, !DIExpression(), !501)
  %or.i.i428 = tail call i64 @llvm.fshl.i64(i64 %add180, i64 %add180, i64 50), !dbg !503
    #dbg_value(i64 %add180, !226, !DIExpression(), !504)
    #dbg_value(i64 18, !231, !DIExpression(), !504)
  %or.i6.i429 = tail call i64 @llvm.fshl.i64(i64 %add180, i64 %add180, i64 46), !dbg !506
  %xor.i430 = xor i64 %or.i.i428, %or.i6.i429, !dbg !507
    #dbg_value(i64 %add180, !226, !DIExpression(), !508)
    #dbg_value(i64 41, !231, !DIExpression(), !508)
  %or.i7.i431 = tail call i64 @llvm.fshl.i64(i64 %add180, i64 %add180, i64 23), !dbg !510
  %xor3.i432 = xor i64 %xor.i430, %or.i7.i431, !dbg !511
    #dbg_value(i64 %add180, !303, !DIExpression(), !512)
    #dbg_value(i64 %add152, !308, !DIExpression(), !512)
    #dbg_value(i64 %add124, !309, !DIExpression(), !512)
  %xor.i433 = xor i64 %add152, %add124, !dbg !514
  %and.i434 = and i64 %add180, %xor.i433, !dbg !515
  %xor1.i435 = xor i64 %and.i434, %add124, !dbg !516
  %200 = or disjoint i64 %indvars.iv503, 5, !dbg !517
  %arrayidx194 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %200, !dbg !517
  %201 = load i64, ptr %arrayidx194, align 8, !dbg !517
  %arrayidx198 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %200, !dbg !517
  %202 = load i64, ptr %arrayidx198, align 8, !dbg !517
  %add186 = add i64 %201, %add96, !dbg !517
  %add191 = add i64 %add186, %202, !dbg !517
  %add195 = add i64 %add191, %xor1.i435, !dbg !517
  %add199 = add i64 %add195, %xor3.i432, !dbg !517
    #dbg_value(i64 %add199, !170, !DIExpression(), !183)
    #dbg_value(i64 %add181, !315, !DIExpression(), !518)
    #dbg_value(i64 %add181, !226, !DIExpression(), !520)
    #dbg_value(i64 28, !231, !DIExpression(), !520)
  %or.i.i436 = tail call i64 @llvm.fshl.i64(i64 %add181, i64 %add181, i64 36), !dbg !522
    #dbg_value(i64 %add181, !226, !DIExpression(), !523)
    #dbg_value(i64 34, !231, !DIExpression(), !523)
  %or.i6.i437 = tail call i64 @llvm.fshl.i64(i64 %add181, i64 %add181, i64 30), !dbg !525
  %xor.i438 = xor i64 %or.i.i436, %or.i6.i437, !dbg !526
    #dbg_value(i64 %add181, !226, !DIExpression(), !527)
    #dbg_value(i64 39, !231, !DIExpression(), !527)
  %or.i7.i439 = tail call i64 @llvm.fshl.i64(i64 %add181, i64 %add181, i64 25), !dbg !529
  %xor3.i440 = xor i64 %xor.i438, %or.i7.i439, !dbg !530
    #dbg_value(i64 %add181, !331, !DIExpression(), !531)
    #dbg_value(i64 %add153, !334, !DIExpression(), !531)
    #dbg_value(i64 %add125, !335, !DIExpression(), !531)
  %or.i441 = or i64 %add181, %add153, !dbg !533
  %and.i442 = and i64 %or.i441, %add125, !dbg !534
  %and1.i443 = and i64 %add181, %add153, !dbg !535
  %or2.i444 = or i64 %and.i442, %and1.i443, !dbg !536
  %add206 = add i64 %xor3.i440, %or2.i444, !dbg !517
    #dbg_value(i64 %add206, !171, !DIExpression(), !183)
  %add208 = add i64 %add199, %add97, !dbg !517
    #dbg_value(i64 %add208, !166, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !183)
  %add209 = add i64 %add206, %add199, !dbg !517
    #dbg_value(i64 %add209, !166, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !183)
    #dbg_value(i64 %add208, !283, !DIExpression(), !537)
    #dbg_value(i64 %add208, !226, !DIExpression(), !540)
    #dbg_value(i64 14, !231, !DIExpression(), !540)
  %or.i.i445 = tail call i64 @llvm.fshl.i64(i64 %add208, i64 %add208, i64 50), !dbg !542
    #dbg_value(i64 %add208, !226, !DIExpression(), !543)
    #dbg_value(i64 18, !231, !DIExpression(), !543)
  %or.i6.i446 = tail call i64 @llvm.fshl.i64(i64 %add208, i64 %add208, i64 46), !dbg !545
  %xor.i447 = xor i64 %or.i.i445, %or.i6.i446, !dbg !546
    #dbg_value(i64 %add208, !226, !DIExpression(), !547)
    #dbg_value(i64 41, !231, !DIExpression(), !547)
  %or.i7.i448 = tail call i64 @llvm.fshl.i64(i64 %add208, i64 %add208, i64 23), !dbg !549
  %xor3.i449 = xor i64 %xor.i447, %or.i7.i448, !dbg !550
    #dbg_value(i64 %add208, !303, !DIExpression(), !551)
    #dbg_value(i64 %add180, !308, !DIExpression(), !551)
    #dbg_value(i64 %add152, !309, !DIExpression(), !551)
  %xor.i450 = xor i64 %add180, %add152, !dbg !553
  %and.i451 = and i64 %add208, %xor.i450, !dbg !554
  %xor1.i452 = xor i64 %and.i451, %add152, !dbg !555
  %203 = or disjoint i64 %indvars.iv503, 6, !dbg !556
  %arrayidx222 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %203, !dbg !556
  %204 = load i64, ptr %arrayidx222, align 16, !dbg !556
  %arrayidx226 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %203, !dbg !556
  %205 = load i64, ptr %arrayidx226, align 16, !dbg !556
  %add214 = add i64 %204, %add124, !dbg !556
  %add219 = add i64 %add214, %205, !dbg !556
  %add223 = add i64 %add219, %xor1.i452, !dbg !556
  %add227 = add i64 %add223, %xor3.i449, !dbg !556
    #dbg_value(i64 %add227, !170, !DIExpression(), !183)
    #dbg_value(i64 %add209, !315, !DIExpression(), !557)
    #dbg_value(i64 %add209, !226, !DIExpression(), !559)
    #dbg_value(i64 28, !231, !DIExpression(), !559)
  %or.i.i453 = tail call i64 @llvm.fshl.i64(i64 %add209, i64 %add209, i64 36), !dbg !561
    #dbg_value(i64 %add209, !226, !DIExpression(), !562)
    #dbg_value(i64 34, !231, !DIExpression(), !562)
  %or.i6.i454 = tail call i64 @llvm.fshl.i64(i64 %add209, i64 %add209, i64 30), !dbg !564
  %xor.i455 = xor i64 %or.i.i453, %or.i6.i454, !dbg !565
    #dbg_value(i64 %add209, !226, !DIExpression(), !566)
    #dbg_value(i64 39, !231, !DIExpression(), !566)
  %or.i7.i456 = tail call i64 @llvm.fshl.i64(i64 %add209, i64 %add209, i64 25), !dbg !568
  %xor3.i457 = xor i64 %xor.i455, %or.i7.i456, !dbg !569
    #dbg_value(i64 %add209, !331, !DIExpression(), !570)
    #dbg_value(i64 %add181, !334, !DIExpression(), !570)
    #dbg_value(i64 %add153, !335, !DIExpression(), !570)
  %or.i458 = or i64 %add209, %add181, !dbg !572
  %and.i459 = and i64 %or.i458, %add153, !dbg !573
  %and1.i460 = and i64 %add209, %add181, !dbg !574
  %or2.i461 = or i64 %and.i459, %and1.i460, !dbg !575
  %add234 = add i64 %xor3.i457, %or2.i461, !dbg !556
    #dbg_value(i64 %add234, !171, !DIExpression(), !183)
  %add236 = add i64 %add227, %add125, !dbg !556
    #dbg_value(i64 %add236, !166, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !183)
  %add237 = add i64 %add234, %add227, !dbg !556
    #dbg_value(i64 %add237, !166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !183)
    #dbg_value(i64 %add236, !283, !DIExpression(), !576)
    #dbg_value(i64 %add236, !226, !DIExpression(), !579)
    #dbg_value(i64 14, !231, !DIExpression(), !579)
  %or.i.i462 = tail call i64 @llvm.fshl.i64(i64 %add236, i64 %add236, i64 50), !dbg !581
    #dbg_value(i64 %add236, !226, !DIExpression(), !582)
    #dbg_value(i64 18, !231, !DIExpression(), !582)
  %or.i6.i463 = tail call i64 @llvm.fshl.i64(i64 %add236, i64 %add236, i64 46), !dbg !584
  %xor.i464 = xor i64 %or.i.i462, %or.i6.i463, !dbg !585
    #dbg_value(i64 %add236, !226, !DIExpression(), !586)
    #dbg_value(i64 41, !231, !DIExpression(), !586)
  %or.i7.i465 = tail call i64 @llvm.fshl.i64(i64 %add236, i64 %add236, i64 23), !dbg !588
  %xor3.i466 = xor i64 %xor.i464, %or.i7.i465, !dbg !589
    #dbg_value(i64 %add236, !303, !DIExpression(), !590)
    #dbg_value(i64 %add208, !308, !DIExpression(), !590)
    #dbg_value(i64 %add180, !309, !DIExpression(), !590)
  %xor.i467 = xor i64 %add208, %add180, !dbg !592
  %and.i468 = and i64 %add236, %xor.i467, !dbg !593
  %xor1.i469 = xor i64 %and.i468, %add180, !dbg !594
  %206 = or disjoint i64 %indvars.iv503, 7, !dbg !595
  %arrayidx250 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %206, !dbg !595
  %207 = load i64, ptr %arrayidx250, align 8, !dbg !595
  %arrayidx254 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %206, !dbg !595
  %208 = load i64, ptr %arrayidx254, align 8, !dbg !595
  %add242 = add i64 %207, %add152, !dbg !595
  %add247 = add i64 %add242, %208, !dbg !595
  %add251 = add i64 %add247, %xor1.i469, !dbg !595
  %add255 = add i64 %add251, %xor3.i466, !dbg !595
    #dbg_value(i64 %add255, !170, !DIExpression(), !183)
    #dbg_value(i64 %add237, !315, !DIExpression(), !596)
    #dbg_value(i64 %add237, !226, !DIExpression(), !598)
    #dbg_value(i64 28, !231, !DIExpression(), !598)
  %or.i.i470 = tail call i64 @llvm.fshl.i64(i64 %add237, i64 %add237, i64 36), !dbg !600
    #dbg_value(i64 %add237, !226, !DIExpression(), !601)
    #dbg_value(i64 34, !231, !DIExpression(), !601)
  %or.i6.i471 = tail call i64 @llvm.fshl.i64(i64 %add237, i64 %add237, i64 30), !dbg !603
  %xor.i472 = xor i64 %or.i.i470, %or.i6.i471, !dbg !604
    #dbg_value(i64 %add237, !226, !DIExpression(), !605)
    #dbg_value(i64 39, !231, !DIExpression(), !605)
  %or.i7.i473 = tail call i64 @llvm.fshl.i64(i64 %add237, i64 %add237, i64 25), !dbg !607
  %xor3.i474 = xor i64 %xor.i472, %or.i7.i473, !dbg !608
    #dbg_value(i64 %add237, !331, !DIExpression(), !609)
    #dbg_value(i64 %add209, !334, !DIExpression(), !609)
    #dbg_value(i64 %add181, !335, !DIExpression(), !609)
  %or.i475 = or i64 %add237, %add209, !dbg !611
  %and.i476 = and i64 %or.i475, %add181, !dbg !612
  %and1.i477 = and i64 %add237, %add209, !dbg !613
  %or2.i478 = or i64 %and.i476, %and1.i477, !dbg !614
  %add262 = add i64 %xor3.i474, %or2.i478, !dbg !595
    #dbg_value(i64 %add262, !171, !DIExpression(), !183)
  %add264 = add i64 %add255, %add153, !dbg !595
    #dbg_value(i64 %add264, !166, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !183)
  %add265 = add i64 %add262, %add255, !dbg !595
    #dbg_value(i64 %add265, !166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !183)
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 8, !dbg !615
    #dbg_value(i64 %indvars.iv.next504, !178, !DIExpression(), !282)
  %cmp40 = icmp ult i64 %indvars.iv503, 72, !dbg !616
  br i1 %cmp40, label %for.body42, label %for.cond271.preheader, !dbg !617, !llvm.loop !618
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !620 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha_done(ptr nocapture noundef %md, ptr nocapture noundef writeonly %out) local_unnamed_addr #3 !dbg !624 {
entry:
    #dbg_value(ptr %md, !628, !DIExpression(), !632)
    #dbg_value(ptr %out, !629, !DIExpression(), !632)
  %curlen = getelementptr inbounds i8, ptr %md, i64 72, !dbg !633
  %0 = load i32, ptr %curlen, align 8, !dbg !633
  %conv = zext i32 %0 to i64, !dbg !634
  %mul = shl nuw nsw i64 %conv, 3, !dbg !635
  %1 = load i64, ptr %md, align 8, !dbg !636
  %add = add i64 %mul, %1, !dbg !636
  store i64 %add, ptr %md, align 8, !dbg !636
  %buf = getelementptr inbounds i8, ptr %md, i64 76, !dbg !637
  %inc = add i32 %0, 1, !dbg !638
  store i32 %inc, ptr %curlen, align 8, !dbg !638
  %arrayidx = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 %conv, !dbg !639
  store i8 -128, ptr %arrayidx, align 1, !dbg !640
  %cmp = icmp ugt i32 %inc, 112, !dbg !641
  br i1 %cmp, label %while.cond.preheader, label %while.end24, !dbg !643

while.cond.preheader:                             ; preds = %entry
  %cmp581 = icmp ult i32 %inc, 128, !dbg !644
  br i1 %cmp581, label %while.body.preheader, label %while.end, !dbg !646

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = getelementptr i8, ptr %md, i64 %conv, !dbg !646
  %scevgep = getelementptr i8, ptr %2, i64 77, !dbg !646
  %narrow = sub i32 127, %0, !dbg !646
  %3 = zext i32 %narrow to i64, !dbg !646
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %3, i1 false), !dbg !647
  store i32 128, ptr %curlen, align 8, !dbg !648
  br label %while.end, !dbg !646

while.end:                                        ; preds = %while.body.preheader, %while.cond.preheader
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef nonnull %buf), !dbg !649
  br label %while.end24, !dbg !650

while.end24:                                      ; preds = %while.end, %entry
  %.pr = phi i32 [ 0, %while.end ], [ %inc, %entry ], !dbg !651
  %4 = zext nneg i32 %.pr to i64, !dbg !652
  %5 = getelementptr i8, ptr %md, i64 %4, !dbg !652
  %scevgep85 = getelementptr i8, ptr %5, i64 76, !dbg !652
  %narrow90 = sub nsw i32 120, %.pr, !dbg !652
  %6 = zext i32 %narrow90 to i64, !dbg !652
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep85, i8 0, i64 %6, i1 false), !dbg !653
  store i32 120, ptr %curlen, align 8, !dbg !654
  %7 = load i64, ptr %md, align 8, !dbg !655
  %add.ptr = getelementptr inbounds i8, ptr %md, i64 196, !dbg !656
    #dbg_value(i64 %7, !657, !DIExpression(), !665)
    #dbg_value(ptr %add.ptr, !662, !DIExpression(), !665)
    #dbg_value(i64 0, !663, !DIExpression(), !667)
  %shr.i = lshr i64 %7, 56, !dbg !668
  %conv.i = trunc nuw i64 %shr.i to i8, !dbg !670
  store i8 %conv.i, ptr %add.ptr, align 1, !dbg !671
    #dbg_value(i64 1, !663, !DIExpression(), !667)
  %shr.1.i = lshr i64 %7, 48, !dbg !668
  %conv.1.i = trunc i64 %shr.1.i to i8, !dbg !670
  %arrayidx.1.i = getelementptr inbounds i8, ptr %md, i64 197, !dbg !672
  store i8 %conv.1.i, ptr %arrayidx.1.i, align 1, !dbg !671
    #dbg_value(i64 2, !663, !DIExpression(), !667)
  %shr.2.i = lshr i64 %7, 40, !dbg !668
  %conv.2.i = trunc i64 %shr.2.i to i8, !dbg !670
  %arrayidx.2.i = getelementptr inbounds i8, ptr %md, i64 198, !dbg !672
  store i8 %conv.2.i, ptr %arrayidx.2.i, align 1, !dbg !671
    #dbg_value(i64 3, !663, !DIExpression(), !667)
  %shr.3.i = lshr i64 %7, 32, !dbg !668
  %conv.3.i = trunc i64 %shr.3.i to i8, !dbg !670
  %arrayidx.3.i = getelementptr inbounds i8, ptr %md, i64 199, !dbg !672
  store i8 %conv.3.i, ptr %arrayidx.3.i, align 1, !dbg !671
    #dbg_value(i64 4, !663, !DIExpression(), !667)
  %shr.4.i = lshr i64 %7, 24, !dbg !668
  %conv.4.i = trunc i64 %shr.4.i to i8, !dbg !670
  %arrayidx.4.i = getelementptr inbounds i8, ptr %md, i64 200, !dbg !672
  store i8 %conv.4.i, ptr %arrayidx.4.i, align 1, !dbg !671
    #dbg_value(i64 5, !663, !DIExpression(), !667)
  %shr.5.i = lshr i64 %7, 16, !dbg !668
  %conv.5.i = trunc i64 %shr.5.i to i8, !dbg !670
  %arrayidx.5.i = getelementptr inbounds i8, ptr %md, i64 201, !dbg !672
  store i8 %conv.5.i, ptr %arrayidx.5.i, align 1, !dbg !671
    #dbg_value(i64 6, !663, !DIExpression(), !667)
  %shr.6.i = lshr i64 %7, 8, !dbg !668
  %conv.6.i = trunc i64 %shr.6.i to i8, !dbg !670
  %arrayidx.6.i = getelementptr inbounds i8, ptr %md, i64 202, !dbg !672
  store i8 %conv.6.i, ptr %arrayidx.6.i, align 1, !dbg !671
    #dbg_value(i64 7, !663, !DIExpression(), !667)
  %conv.7.i = trunc i64 %7 to i8, !dbg !670
  %arrayidx.7.i = getelementptr inbounds i8, ptr %md, i64 203, !dbg !672
  store i8 %conv.7.i, ptr %arrayidx.7.i, align 1, !dbg !671
    #dbg_value(i64 8, !663, !DIExpression(), !667)
  tail call fastcc void @sha_compress(ptr noundef nonnull %md, ptr noundef nonnull %buf), !dbg !673
    #dbg_value(i32 0, !630, !DIExpression(), !674)
  %state = getelementptr inbounds i8, ptr %md, i64 8
    #dbg_value(i64 0, !630, !DIExpression(), !674)
  %8 = load i64, ptr %state, align 8, !dbg !675
    #dbg_value(i64 %8, !657, !DIExpression(), !677)
    #dbg_value(ptr %out, !662, !DIExpression(), !677)
    #dbg_value(i64 0, !663, !DIExpression(), !679)
  %shr.i59 = lshr i64 %8, 56, !dbg !680
  %conv.i60 = trunc nuw i64 %shr.i59 to i8, !dbg !681
  store i8 %conv.i60, ptr %out, align 1, !dbg !682
    #dbg_value(i64 1, !663, !DIExpression(), !679)
  %shr.1.i61 = lshr i64 %8, 48, !dbg !680
  %conv.1.i62 = trunc i64 %shr.1.i61 to i8, !dbg !681
  %arrayidx.1.i63 = getelementptr inbounds i8, ptr %out, i64 1, !dbg !683
  store i8 %conv.1.i62, ptr %arrayidx.1.i63, align 1, !dbg !682
    #dbg_value(i64 2, !663, !DIExpression(), !679)
  %shr.2.i64 = lshr i64 %8, 40, !dbg !680
  %conv.2.i65 = trunc i64 %shr.2.i64 to i8, !dbg !681
  %arrayidx.2.i66 = getelementptr inbounds i8, ptr %out, i64 2, !dbg !683
  store i8 %conv.2.i65, ptr %arrayidx.2.i66, align 1, !dbg !682
    #dbg_value(i64 3, !663, !DIExpression(), !679)
  %shr.3.i67 = lshr i64 %8, 32, !dbg !680
  %conv.3.i68 = trunc i64 %shr.3.i67 to i8, !dbg !681
  %arrayidx.3.i69 = getelementptr inbounds i8, ptr %out, i64 3, !dbg !683
  store i8 %conv.3.i68, ptr %arrayidx.3.i69, align 1, !dbg !682
    #dbg_value(i64 4, !663, !DIExpression(), !679)
  %shr.4.i70 = lshr i64 %8, 24, !dbg !680
  %conv.4.i71 = trunc i64 %shr.4.i70 to i8, !dbg !681
  %arrayidx.4.i72 = getelementptr inbounds i8, ptr %out, i64 4, !dbg !683
  store i8 %conv.4.i71, ptr %arrayidx.4.i72, align 1, !dbg !682
    #dbg_value(i64 5, !663, !DIExpression(), !679)
  %shr.5.i73 = lshr i64 %8, 16, !dbg !680
  %conv.5.i74 = trunc i64 %shr.5.i73 to i8, !dbg !681
  %arrayidx.5.i75 = getelementptr inbounds i8, ptr %out, i64 5, !dbg !683
  store i8 %conv.5.i74, ptr %arrayidx.5.i75, align 1, !dbg !682
    #dbg_value(i64 6, !663, !DIExpression(), !679)
  %shr.6.i76 = lshr i64 %8, 8, !dbg !680
  %conv.6.i77 = trunc i64 %shr.6.i76 to i8, !dbg !681
  %arrayidx.6.i78 = getelementptr inbounds i8, ptr %out, i64 6, !dbg !683
  store i8 %conv.6.i77, ptr %arrayidx.6.i78, align 1, !dbg !682
    #dbg_value(i64 7, !663, !DIExpression(), !679)
  %conv.7.i79 = trunc i64 %8 to i8, !dbg !681
  %arrayidx.7.i80 = getelementptr inbounds i8, ptr %out, i64 7, !dbg !683
  store i8 %conv.7.i79, ptr %arrayidx.7.i80, align 1, !dbg !682
    #dbg_value(i64 8, !663, !DIExpression(), !679)
    #dbg_value(i64 1, !630, !DIExpression(), !674)
  %arrayidx33.1 = getelementptr inbounds i8, ptr %md, i64 16, !dbg !675
  %9 = load i64, ptr %arrayidx33.1, align 8, !dbg !675
  %add.ptr35.1 = getelementptr inbounds i8, ptr %out, i64 8, !dbg !684
    #dbg_value(i64 %9, !657, !DIExpression(), !677)
    #dbg_value(ptr %add.ptr35.1, !662, !DIExpression(), !677)
    #dbg_value(i64 0, !663, !DIExpression(), !679)
  %shr.i59.1 = lshr i64 %9, 56, !dbg !680
  %conv.i60.1 = trunc nuw i64 %shr.i59.1 to i8, !dbg !681
  store i8 %conv.i60.1, ptr %add.ptr35.1, align 1, !dbg !682
    #dbg_value(i64 1, !663, !DIExpression(), !679)
  %shr.1.i61.1 = lshr i64 %9, 48, !dbg !680
  %conv.1.i62.1 = trunc i64 %shr.1.i61.1 to i8, !dbg !681
  %arrayidx.1.i63.1 = getelementptr inbounds i8, ptr %out, i64 9, !dbg !683
  store i8 %conv.1.i62.1, ptr %arrayidx.1.i63.1, align 1, !dbg !682
    #dbg_value(i64 2, !663, !DIExpression(), !679)
  %shr.2.i64.1 = lshr i64 %9, 40, !dbg !680
  %conv.2.i65.1 = trunc i64 %shr.2.i64.1 to i8, !dbg !681
  %arrayidx.2.i66.1 = getelementptr inbounds i8, ptr %out, i64 10, !dbg !683
  store i8 %conv.2.i65.1, ptr %arrayidx.2.i66.1, align 1, !dbg !682
    #dbg_value(i64 3, !663, !DIExpression(), !679)
  %shr.3.i67.1 = lshr i64 %9, 32, !dbg !680
  %conv.3.i68.1 = trunc i64 %shr.3.i67.1 to i8, !dbg !681
  %arrayidx.3.i69.1 = getelementptr inbounds i8, ptr %out, i64 11, !dbg !683
  store i8 %conv.3.i68.1, ptr %arrayidx.3.i69.1, align 1, !dbg !682
    #dbg_value(i64 4, !663, !DIExpression(), !679)
  %shr.4.i70.1 = lshr i64 %9, 24, !dbg !680
  %conv.4.i71.1 = trunc i64 %shr.4.i70.1 to i8, !dbg !681
  %arrayidx.4.i72.1 = getelementptr inbounds i8, ptr %out, i64 12, !dbg !683
  store i8 %conv.4.i71.1, ptr %arrayidx.4.i72.1, align 1, !dbg !682
    #dbg_value(i64 5, !663, !DIExpression(), !679)
  %shr.5.i73.1 = lshr i64 %9, 16, !dbg !680
  %conv.5.i74.1 = trunc i64 %shr.5.i73.1 to i8, !dbg !681
  %arrayidx.5.i75.1 = getelementptr inbounds i8, ptr %out, i64 13, !dbg !683
  store i8 %conv.5.i74.1, ptr %arrayidx.5.i75.1, align 1, !dbg !682
    #dbg_value(i64 6, !663, !DIExpression(), !679)
  %shr.6.i76.1 = lshr i64 %9, 8, !dbg !680
  %conv.6.i77.1 = trunc i64 %shr.6.i76.1 to i8, !dbg !681
  %arrayidx.6.i78.1 = getelementptr inbounds i8, ptr %out, i64 14, !dbg !683
  store i8 %conv.6.i77.1, ptr %arrayidx.6.i78.1, align 1, !dbg !682
    #dbg_value(i64 7, !663, !DIExpression(), !679)
  %conv.7.i79.1 = trunc i64 %9 to i8, !dbg !681
  %arrayidx.7.i80.1 = getelementptr inbounds i8, ptr %out, i64 15, !dbg !683
  store i8 %conv.7.i79.1, ptr %arrayidx.7.i80.1, align 1, !dbg !682
    #dbg_value(i64 8, !663, !DIExpression(), !679)
    #dbg_value(i64 2, !630, !DIExpression(), !674)
  %arrayidx33.2 = getelementptr inbounds i8, ptr %md, i64 24, !dbg !675
  %10 = load i64, ptr %arrayidx33.2, align 8, !dbg !675
  %add.ptr35.2 = getelementptr inbounds i8, ptr %out, i64 16, !dbg !684
    #dbg_value(i64 %10, !657, !DIExpression(), !677)
    #dbg_value(ptr %add.ptr35.2, !662, !DIExpression(), !677)
    #dbg_value(i64 0, !663, !DIExpression(), !679)
  %shr.i59.2 = lshr i64 %10, 56, !dbg !680
  %conv.i60.2 = trunc nuw i64 %shr.i59.2 to i8, !dbg !681
  store i8 %conv.i60.2, ptr %add.ptr35.2, align 1, !dbg !682
    #dbg_value(i64 1, !663, !DIExpression(), !679)
  %shr.1.i61.2 = lshr i64 %10, 48, !dbg !680
  %conv.1.i62.2 = trunc i64 %shr.1.i61.2 to i8, !dbg !681
  %arrayidx.1.i63.2 = getelementptr inbounds i8, ptr %out, i64 17, !dbg !683
  store i8 %conv.1.i62.2, ptr %arrayidx.1.i63.2, align 1, !dbg !682
    #dbg_value(i64 2, !663, !DIExpression(), !679)
  %shr.2.i64.2 = lshr i64 %10, 40, !dbg !680
  %conv.2.i65.2 = trunc i64 %shr.2.i64.2 to i8, !dbg !681
  %arrayidx.2.i66.2 = getelementptr inbounds i8, ptr %out, i64 18, !dbg !683
  store i8 %conv.2.i65.2, ptr %arrayidx.2.i66.2, align 1, !dbg !682
    #dbg_value(i64 3, !663, !DIExpression(), !679)
  %shr.3.i67.2 = lshr i64 %10, 32, !dbg !680
  %conv.3.i68.2 = trunc i64 %shr.3.i67.2 to i8, !dbg !681
  %arrayidx.3.i69.2 = getelementptr inbounds i8, ptr %out, i64 19, !dbg !683
  store i8 %conv.3.i68.2, ptr %arrayidx.3.i69.2, align 1, !dbg !682
    #dbg_value(i64 4, !663, !DIExpression(), !679)
  %shr.4.i70.2 = lshr i64 %10, 24, !dbg !680
  %conv.4.i71.2 = trunc i64 %shr.4.i70.2 to i8, !dbg !681
  %arrayidx.4.i72.2 = getelementptr inbounds i8, ptr %out, i64 20, !dbg !683
  store i8 %conv.4.i71.2, ptr %arrayidx.4.i72.2, align 1, !dbg !682
    #dbg_value(i64 5, !663, !DIExpression(), !679)
  %shr.5.i73.2 = lshr i64 %10, 16, !dbg !680
  %conv.5.i74.2 = trunc i64 %shr.5.i73.2 to i8, !dbg !681
  %arrayidx.5.i75.2 = getelementptr inbounds i8, ptr %out, i64 21, !dbg !683
  store i8 %conv.5.i74.2, ptr %arrayidx.5.i75.2, align 1, !dbg !682
    #dbg_value(i64 6, !663, !DIExpression(), !679)
  %shr.6.i76.2 = lshr i64 %10, 8, !dbg !680
  %conv.6.i77.2 = trunc i64 %shr.6.i76.2 to i8, !dbg !681
  %arrayidx.6.i78.2 = getelementptr inbounds i8, ptr %out, i64 22, !dbg !683
  store i8 %conv.6.i77.2, ptr %arrayidx.6.i78.2, align 1, !dbg !682
    #dbg_value(i64 7, !663, !DIExpression(), !679)
  %conv.7.i79.2 = trunc i64 %10 to i8, !dbg !681
  %arrayidx.7.i80.2 = getelementptr inbounds i8, ptr %out, i64 23, !dbg !683
  store i8 %conv.7.i79.2, ptr %arrayidx.7.i80.2, align 1, !dbg !682
    #dbg_value(i64 8, !663, !DIExpression(), !679)
    #dbg_value(i64 3, !630, !DIExpression(), !674)
  %arrayidx33.3 = getelementptr inbounds i8, ptr %md, i64 32, !dbg !675
  %11 = load i64, ptr %arrayidx33.3, align 8, !dbg !675
  %add.ptr35.3 = getelementptr inbounds i8, ptr %out, i64 24, !dbg !684
    #dbg_value(i64 %11, !657, !DIExpression(), !677)
    #dbg_value(ptr %add.ptr35.3, !662, !DIExpression(), !677)
    #dbg_value(i64 0, !663, !DIExpression(), !679)
  %shr.i59.3 = lshr i64 %11, 56, !dbg !680
  %conv.i60.3 = trunc nuw i64 %shr.i59.3 to i8, !dbg !681
  store i8 %conv.i60.3, ptr %add.ptr35.3, align 1, !dbg !682
    #dbg_value(i64 1, !663, !DIExpression(), !679)
  %shr.1.i61.3 = lshr i64 %11, 48, !dbg !680
  %conv.1.i62.3 = trunc i64 %shr.1.i61.3 to i8, !dbg !681
  %arrayidx.1.i63.3 = getelementptr inbounds i8, ptr %out, i64 25, !dbg !683
  store i8 %conv.1.i62.3, ptr %arrayidx.1.i63.3, align 1, !dbg !682
    #dbg_value(i64 2, !663, !DIExpression(), !679)
  %shr.2.i64.3 = lshr i64 %11, 40, !dbg !680
  %conv.2.i65.3 = trunc i64 %shr.2.i64.3 to i8, !dbg !681
  %arrayidx.2.i66.3 = getelementptr inbounds i8, ptr %out, i64 26, !dbg !683
  store i8 %conv.2.i65.3, ptr %arrayidx.2.i66.3, align 1, !dbg !682
    #dbg_value(i64 3, !663, !DIExpression(), !679)
  %shr.3.i67.3 = lshr i64 %11, 32, !dbg !680
  %conv.3.i68.3 = trunc i64 %shr.3.i67.3 to i8, !dbg !681
  %arrayidx.3.i69.3 = getelementptr inbounds i8, ptr %out, i64 27, !dbg !683
  store i8 %conv.3.i68.3, ptr %arrayidx.3.i69.3, align 1, !dbg !682
    #dbg_value(i64 4, !663, !DIExpression(), !679)
  %shr.4.i70.3 = lshr i64 %11, 24, !dbg !680
  %conv.4.i71.3 = trunc i64 %shr.4.i70.3 to i8, !dbg !681
  %arrayidx.4.i72.3 = getelementptr inbounds i8, ptr %out, i64 28, !dbg !683
  store i8 %conv.4.i71.3, ptr %arrayidx.4.i72.3, align 1, !dbg !682
    #dbg_value(i64 5, !663, !DIExpression(), !679)
  %shr.5.i73.3 = lshr i64 %11, 16, !dbg !680
  %conv.5.i74.3 = trunc i64 %shr.5.i73.3 to i8, !dbg !681
  %arrayidx.5.i75.3 = getelementptr inbounds i8, ptr %out, i64 29, !dbg !683
  store i8 %conv.5.i74.3, ptr %arrayidx.5.i75.3, align 1, !dbg !682
    #dbg_value(i64 6, !663, !DIExpression(), !679)
  %shr.6.i76.3 = lshr i64 %11, 8, !dbg !680
  %conv.6.i77.3 = trunc i64 %shr.6.i76.3 to i8, !dbg !681
  %arrayidx.6.i78.3 = getelementptr inbounds i8, ptr %out, i64 30, !dbg !683
  store i8 %conv.6.i77.3, ptr %arrayidx.6.i78.3, align 1, !dbg !682
    #dbg_value(i64 7, !663, !DIExpression(), !679)
  %conv.7.i79.3 = trunc i64 %11 to i8, !dbg !681
  %arrayidx.7.i80.3 = getelementptr inbounds i8, ptr %out, i64 31, !dbg !683
  store i8 %conv.7.i79.3, ptr %arrayidx.7.i80.3, align 1, !dbg !682
    #dbg_value(i64 8, !663, !DIExpression(), !679)
    #dbg_value(i64 4, !630, !DIExpression(), !674)
  %arrayidx33.4 = getelementptr inbounds i8, ptr %md, i64 40, !dbg !675
  %12 = load i64, ptr %arrayidx33.4, align 8, !dbg !675
  %add.ptr35.4 = getelementptr inbounds i8, ptr %out, i64 32, !dbg !684
    #dbg_value(i64 %12, !657, !DIExpression(), !677)
    #dbg_value(ptr %add.ptr35.4, !662, !DIExpression(), !677)
    #dbg_value(i64 0, !663, !DIExpression(), !679)
  %shr.i59.4 = lshr i64 %12, 56, !dbg !680
  %conv.i60.4 = trunc nuw i64 %shr.i59.4 to i8, !dbg !681
  store i8 %conv.i60.4, ptr %add.ptr35.4, align 1, !dbg !682
    #dbg_value(i64 1, !663, !DIExpression(), !679)
  %shr.1.i61.4 = lshr i64 %12, 48, !dbg !680
  %conv.1.i62.4 = trunc i64 %shr.1.i61.4 to i8, !dbg !681
  %arrayidx.1.i63.4 = getelementptr inbounds i8, ptr %out, i64 33, !dbg !683
  store i8 %conv.1.i62.4, ptr %arrayidx.1.i63.4, align 1, !dbg !682
    #dbg_value(i64 2, !663, !DIExpression(), !679)
  %shr.2.i64.4 = lshr i64 %12, 40, !dbg !680
  %conv.2.i65.4 = trunc i64 %shr.2.i64.4 to i8, !dbg !681
  %arrayidx.2.i66.4 = getelementptr inbounds i8, ptr %out, i64 34, !dbg !683
  store i8 %conv.2.i65.4, ptr %arrayidx.2.i66.4, align 1, !dbg !682
    #dbg_value(i64 3, !663, !DIExpression(), !679)
  %shr.3.i67.4 = lshr i64 %12, 32, !dbg !680
  %conv.3.i68.4 = trunc i64 %shr.3.i67.4 to i8, !dbg !681
  %arrayidx.3.i69.4 = getelementptr inbounds i8, ptr %out, i64 35, !dbg !683
  store i8 %conv.3.i68.4, ptr %arrayidx.3.i69.4, align 1, !dbg !682
    #dbg_value(i64 4, !663, !DIExpression(), !679)
  %shr.4.i70.4 = lshr i64 %12, 24, !dbg !680
  %conv.4.i71.4 = trunc i64 %shr.4.i70.4 to i8, !dbg !681
  %arrayidx.4.i72.4 = getelementptr inbounds i8, ptr %out, i64 36, !dbg !683
  store i8 %conv.4.i71.4, ptr %arrayidx.4.i72.4, align 1, !dbg !682
    #dbg_value(i64 5, !663, !DIExpression(), !679)
  %shr.5.i73.4 = lshr i64 %12, 16, !dbg !680
  %conv.5.i74.4 = trunc i64 %shr.5.i73.4 to i8, !dbg !681
  %arrayidx.5.i75.4 = getelementptr inbounds i8, ptr %out, i64 37, !dbg !683
  store i8 %conv.5.i74.4, ptr %arrayidx.5.i75.4, align 1, !dbg !682
    #dbg_value(i64 6, !663, !DIExpression(), !679)
  %shr.6.i76.4 = lshr i64 %12, 8, !dbg !680
  %conv.6.i77.4 = trunc i64 %shr.6.i76.4 to i8, !dbg !681
  %arrayidx.6.i78.4 = getelementptr inbounds i8, ptr %out, i64 38, !dbg !683
  store i8 %conv.6.i77.4, ptr %arrayidx.6.i78.4, align 1, !dbg !682
    #dbg_value(i64 7, !663, !DIExpression(), !679)
  %conv.7.i79.4 = trunc i64 %12 to i8, !dbg !681
  %arrayidx.7.i80.4 = getelementptr inbounds i8, ptr %out, i64 39, !dbg !683
  store i8 %conv.7.i79.4, ptr %arrayidx.7.i80.4, align 1, !dbg !682
    #dbg_value(i64 8, !663, !DIExpression(), !679)
    #dbg_value(i64 5, !630, !DIExpression(), !674)
  %arrayidx33.5 = getelementptr inbounds i8, ptr %md, i64 48, !dbg !675
  %13 = load i64, ptr %arrayidx33.5, align 8, !dbg !675
  %add.ptr35.5 = getelementptr inbounds i8, ptr %out, i64 40, !dbg !684
    #dbg_value(i64 %13, !657, !DIExpression(), !677)
    #dbg_value(ptr %add.ptr35.5, !662, !DIExpression(), !677)
    #dbg_value(i64 0, !663, !DIExpression(), !679)
  %shr.i59.5 = lshr i64 %13, 56, !dbg !680
  %conv.i60.5 = trunc nuw i64 %shr.i59.5 to i8, !dbg !681
  store i8 %conv.i60.5, ptr %add.ptr35.5, align 1, !dbg !682
    #dbg_value(i64 1, !663, !DIExpression(), !679)
  %shr.1.i61.5 = lshr i64 %13, 48, !dbg !680
  %conv.1.i62.5 = trunc i64 %shr.1.i61.5 to i8, !dbg !681
  %arrayidx.1.i63.5 = getelementptr inbounds i8, ptr %out, i64 41, !dbg !683
  store i8 %conv.1.i62.5, ptr %arrayidx.1.i63.5, align 1, !dbg !682
    #dbg_value(i64 2, !663, !DIExpression(), !679)
  %shr.2.i64.5 = lshr i64 %13, 40, !dbg !680
  %conv.2.i65.5 = trunc i64 %shr.2.i64.5 to i8, !dbg !681
  %arrayidx.2.i66.5 = getelementptr inbounds i8, ptr %out, i64 42, !dbg !683
  store i8 %conv.2.i65.5, ptr %arrayidx.2.i66.5, align 1, !dbg !682
    #dbg_value(i64 3, !663, !DIExpression(), !679)
  %shr.3.i67.5 = lshr i64 %13, 32, !dbg !680
  %conv.3.i68.5 = trunc i64 %shr.3.i67.5 to i8, !dbg !681
  %arrayidx.3.i69.5 = getelementptr inbounds i8, ptr %out, i64 43, !dbg !683
  store i8 %conv.3.i68.5, ptr %arrayidx.3.i69.5, align 1, !dbg !682
    #dbg_value(i64 4, !663, !DIExpression(), !679)
  %shr.4.i70.5 = lshr i64 %13, 24, !dbg !680
  %conv.4.i71.5 = trunc i64 %shr.4.i70.5 to i8, !dbg !681
  %arrayidx.4.i72.5 = getelementptr inbounds i8, ptr %out, i64 44, !dbg !683
  store i8 %conv.4.i71.5, ptr %arrayidx.4.i72.5, align 1, !dbg !682
    #dbg_value(i64 5, !663, !DIExpression(), !679)
  %shr.5.i73.5 = lshr i64 %13, 16, !dbg !680
  %conv.5.i74.5 = trunc i64 %shr.5.i73.5 to i8, !dbg !681
  %arrayidx.5.i75.5 = getelementptr inbounds i8, ptr %out, i64 45, !dbg !683
  store i8 %conv.5.i74.5, ptr %arrayidx.5.i75.5, align 1, !dbg !682
    #dbg_value(i64 6, !663, !DIExpression(), !679)
  %shr.6.i76.5 = lshr i64 %13, 8, !dbg !680
  %conv.6.i77.5 = trunc i64 %shr.6.i76.5 to i8, !dbg !681
  %arrayidx.6.i78.5 = getelementptr inbounds i8, ptr %out, i64 46, !dbg !683
  store i8 %conv.6.i77.5, ptr %arrayidx.6.i78.5, align 1, !dbg !682
    #dbg_value(i64 7, !663, !DIExpression(), !679)
  %conv.7.i79.5 = trunc i64 %13 to i8, !dbg !681
  %arrayidx.7.i80.5 = getelementptr inbounds i8, ptr %out, i64 47, !dbg !683
  store i8 %conv.7.i79.5, ptr %arrayidx.7.i80.5, align 1, !dbg !682
    #dbg_value(i64 8, !663, !DIExpression(), !679)
    #dbg_value(i64 6, !630, !DIExpression(), !674)
  %arrayidx33.6 = getelementptr inbounds i8, ptr %md, i64 56, !dbg !675
  %14 = load i64, ptr %arrayidx33.6, align 8, !dbg !675
  %add.ptr35.6 = getelementptr inbounds i8, ptr %out, i64 48, !dbg !684
    #dbg_value(i64 %14, !657, !DIExpression(), !677)
    #dbg_value(ptr %add.ptr35.6, !662, !DIExpression(), !677)
    #dbg_value(i64 0, !663, !DIExpression(), !679)
  %shr.i59.6 = lshr i64 %14, 56, !dbg !680
  %conv.i60.6 = trunc nuw i64 %shr.i59.6 to i8, !dbg !681
  store i8 %conv.i60.6, ptr %add.ptr35.6, align 1, !dbg !682
    #dbg_value(i64 1, !663, !DIExpression(), !679)
  %shr.1.i61.6 = lshr i64 %14, 48, !dbg !680
  %conv.1.i62.6 = trunc i64 %shr.1.i61.6 to i8, !dbg !681
  %arrayidx.1.i63.6 = getelementptr inbounds i8, ptr %out, i64 49, !dbg !683
  store i8 %conv.1.i62.6, ptr %arrayidx.1.i63.6, align 1, !dbg !682
    #dbg_value(i64 2, !663, !DIExpression(), !679)
  %shr.2.i64.6 = lshr i64 %14, 40, !dbg !680
  %conv.2.i65.6 = trunc i64 %shr.2.i64.6 to i8, !dbg !681
  %arrayidx.2.i66.6 = getelementptr inbounds i8, ptr %out, i64 50, !dbg !683
  store i8 %conv.2.i65.6, ptr %arrayidx.2.i66.6, align 1, !dbg !682
    #dbg_value(i64 3, !663, !DIExpression(), !679)
  %shr.3.i67.6 = lshr i64 %14, 32, !dbg !680
  %conv.3.i68.6 = trunc i64 %shr.3.i67.6 to i8, !dbg !681
  %arrayidx.3.i69.6 = getelementptr inbounds i8, ptr %out, i64 51, !dbg !683
  store i8 %conv.3.i68.6, ptr %arrayidx.3.i69.6, align 1, !dbg !682
    #dbg_value(i64 4, !663, !DIExpression(), !679)
  %shr.4.i70.6 = lshr i64 %14, 24, !dbg !680
  %conv.4.i71.6 = trunc i64 %shr.4.i70.6 to i8, !dbg !681
  %arrayidx.4.i72.6 = getelementptr inbounds i8, ptr %out, i64 52, !dbg !683
  store i8 %conv.4.i71.6, ptr %arrayidx.4.i72.6, align 1, !dbg !682
    #dbg_value(i64 5, !663, !DIExpression(), !679)
  %shr.5.i73.6 = lshr i64 %14, 16, !dbg !680
  %conv.5.i74.6 = trunc i64 %shr.5.i73.6 to i8, !dbg !681
  %arrayidx.5.i75.6 = getelementptr inbounds i8, ptr %out, i64 53, !dbg !683
  store i8 %conv.5.i74.6, ptr %arrayidx.5.i75.6, align 1, !dbg !682
    #dbg_value(i64 6, !663, !DIExpression(), !679)
  %shr.6.i76.6 = lshr i64 %14, 8, !dbg !680
  %conv.6.i77.6 = trunc i64 %shr.6.i76.6 to i8, !dbg !681
  %arrayidx.6.i78.6 = getelementptr inbounds i8, ptr %out, i64 54, !dbg !683
  store i8 %conv.6.i77.6, ptr %arrayidx.6.i78.6, align 1, !dbg !682
    #dbg_value(i64 7, !663, !DIExpression(), !679)
  %conv.7.i79.6 = trunc i64 %14 to i8, !dbg !681
  %arrayidx.7.i80.6 = getelementptr inbounds i8, ptr %out, i64 55, !dbg !683
  store i8 %conv.7.i79.6, ptr %arrayidx.7.i80.6, align 1, !dbg !682
    #dbg_value(i64 8, !663, !DIExpression(), !679)
    #dbg_value(i64 7, !630, !DIExpression(), !674)
  %arrayidx33.7 = getelementptr inbounds i8, ptr %md, i64 64, !dbg !675
  %15 = load i64, ptr %arrayidx33.7, align 8, !dbg !675
  %add.ptr35.7 = getelementptr inbounds i8, ptr %out, i64 56, !dbg !684
    #dbg_value(i64 %15, !657, !DIExpression(), !677)
    #dbg_value(ptr %add.ptr35.7, !662, !DIExpression(), !677)
    #dbg_value(i64 0, !663, !DIExpression(), !679)
  %shr.i59.7 = lshr i64 %15, 56, !dbg !680
  %conv.i60.7 = trunc nuw i64 %shr.i59.7 to i8, !dbg !681
  store i8 %conv.i60.7, ptr %add.ptr35.7, align 1, !dbg !682
    #dbg_value(i64 1, !663, !DIExpression(), !679)
  %shr.1.i61.7 = lshr i64 %15, 48, !dbg !680
  %conv.1.i62.7 = trunc i64 %shr.1.i61.7 to i8, !dbg !681
  %arrayidx.1.i63.7 = getelementptr inbounds i8, ptr %out, i64 57, !dbg !683
  store i8 %conv.1.i62.7, ptr %arrayidx.1.i63.7, align 1, !dbg !682
    #dbg_value(i64 2, !663, !DIExpression(), !679)
  %shr.2.i64.7 = lshr i64 %15, 40, !dbg !680
  %conv.2.i65.7 = trunc i64 %shr.2.i64.7 to i8, !dbg !681
  %arrayidx.2.i66.7 = getelementptr inbounds i8, ptr %out, i64 58, !dbg !683
  store i8 %conv.2.i65.7, ptr %arrayidx.2.i66.7, align 1, !dbg !682
    #dbg_value(i64 3, !663, !DIExpression(), !679)
  %shr.3.i67.7 = lshr i64 %15, 32, !dbg !680
  %conv.3.i68.7 = trunc i64 %shr.3.i67.7 to i8, !dbg !681
  %arrayidx.3.i69.7 = getelementptr inbounds i8, ptr %out, i64 59, !dbg !683
  store i8 %conv.3.i68.7, ptr %arrayidx.3.i69.7, align 1, !dbg !682
    #dbg_value(i64 4, !663, !DIExpression(), !679)
  %shr.4.i70.7 = lshr i64 %15, 24, !dbg !680
  %conv.4.i71.7 = trunc i64 %shr.4.i70.7 to i8, !dbg !681
  %arrayidx.4.i72.7 = getelementptr inbounds i8, ptr %out, i64 60, !dbg !683
  store i8 %conv.4.i71.7, ptr %arrayidx.4.i72.7, align 1, !dbg !682
    #dbg_value(i64 5, !663, !DIExpression(), !679)
  %shr.5.i73.7 = lshr i64 %15, 16, !dbg !680
  %conv.5.i74.7 = trunc i64 %shr.5.i73.7 to i8, !dbg !681
  %arrayidx.5.i75.7 = getelementptr inbounds i8, ptr %out, i64 61, !dbg !683
  store i8 %conv.5.i74.7, ptr %arrayidx.5.i75.7, align 1, !dbg !682
    #dbg_value(i64 6, !663, !DIExpression(), !679)
  %shr.6.i76.7 = lshr i64 %15, 8, !dbg !680
  %conv.6.i77.7 = trunc i64 %shr.6.i76.7 to i8, !dbg !681
  %arrayidx.6.i78.7 = getelementptr inbounds i8, ptr %out, i64 62, !dbg !683
  store i8 %conv.6.i77.7, ptr %arrayidx.6.i78.7, align 1, !dbg !682
    #dbg_value(i64 7, !663, !DIExpression(), !679)
  %conv.7.i79.7 = trunc i64 %15 to i8, !dbg !681
  %arrayidx.7.i80.7 = getelementptr inbounds i8, ptr %out, i64 63, !dbg !683
  store i8 %conv.7.i79.7, ptr %arrayidx.7.i80.7, align 1, !dbg !682
    #dbg_value(i64 8, !663, !DIExpression(), !679)
    #dbg_value(i64 8, !630, !DIExpression(), !674)
  ret void, !dbg !685
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !686 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !691 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare !dbg !755 void @exit(i32 noundef) local_unnamed_addr #8

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

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "sha-2/sha512.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "73f1443c0cdda2381c045f9baefb232f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 15)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "K", scope: !14, file: !2, line: 13, type: !28, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !15, globals: !27, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !18, !19, !20, !21, !22}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !2, line: 11, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !24, line: 27, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !26, line: 45, baseType: !21)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!27 = !{!0, !7, !12}
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 5120, elements: !30)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!30 = !{!31}
!31 = !DISubrange(count: 80)
!32 = !{i32 7, !"Dwarf Version", i32 5}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 8, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 2}
!38 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!39 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!40 = distinct !DISubprogram(name: "sha_init", scope: !2, file: !2, line: 105, type: !41, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !61)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha512_state", file: !45, line: 13, baseType: !46)
!45 = !DIFile(filename: "sha-2/sha512.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a9972f2f4bb45d8b6de350a024786c")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 7, size: 1664, elements: !47)
!47 = !{!48, !49, !53, !57}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !46, file: !45, line: 9, baseType: !23, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !46, file: !45, line: 10, baseType: !50, size: 512, offset: 64)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 8)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "curlen", scope: !46, file: !45, line: 11, baseType: !54, size: 32, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !24, line: 26, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !26, line: 42, baseType: !56)
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !46, file: !45, line: 12, baseType: !58, size: 1024, offset: 608)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1024, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 128)
!61 = !{!62}
!62 = !DILocalVariable(name: "md", arg: 1, scope: !40, file: !2, line: 105, type: !43)
!63 = !DILocation(line: 0, scope: !40)
!64 = !DILocation(line: 107, column: 9, scope: !40)
!65 = !DILocation(line: 107, column: 16, scope: !40)
!66 = !DILocation(line: 108, column: 16, scope: !40)
!67 = !DILocation(line: 109, column: 9, scope: !40)
!68 = !DILocation(line: 109, column: 18, scope: !40)
!69 = !DILocation(line: 110, column: 5, scope: !40)
!70 = !DILocation(line: 110, column: 18, scope: !40)
!71 = !DILocation(line: 111, column: 5, scope: !40)
!72 = !DILocation(line: 111, column: 18, scope: !40)
!73 = !DILocation(line: 112, column: 5, scope: !40)
!74 = !DILocation(line: 112, column: 18, scope: !40)
!75 = !DILocation(line: 113, column: 5, scope: !40)
!76 = !DILocation(line: 113, column: 18, scope: !40)
!77 = !DILocation(line: 114, column: 5, scope: !40)
!78 = !DILocation(line: 114, column: 18, scope: !40)
!79 = !DILocation(line: 115, column: 5, scope: !40)
!80 = !DILocation(line: 115, column: 18, scope: !40)
!81 = !DILocation(line: 116, column: 5, scope: !40)
!82 = !DILocation(line: 116, column: 18, scope: !40)
!83 = !DILocation(line: 117, column: 1, scope: !40)
!84 = distinct !DISubprogram(name: "sha_process", scope: !2, file: !2, line: 134, type: !85, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !90)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !43, !87, !89}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !2, line: 10, baseType: !54)
!90 = !{!91, !92, !93, !94, !96, !97, !98}
!91 = !DILocalVariable(name: "md", arg: 1, scope: !84, file: !2, line: 134, type: !43)
!92 = !DILocalVariable(name: "src", arg: 2, scope: !84, file: !2, line: 134, type: !87)
!93 = !DILocalVariable(name: "inlen", arg: 3, scope: !84, file: !2, line: 134, type: !89)
!94 = !DILocalVariable(name: "block_size", scope: !84, file: !2, line: 136, type: !95)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!96 = !DILocalVariable(name: "in", scope: !84, file: !2, line: 137, type: !19)
!97 = !DILocalVariable(name: "freeme", scope: !84, file: !2, line: 138, type: !19)
!98 = !DILocalVariable(name: "n", scope: !99, file: !2, line: 151, type: !89)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 150, column: 9)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 142, column: 12)
!101 = distinct !DILexicalBlock(scope: !84, file: !2, line: 141, column: 5)
!102 = !DILocation(line: 0, scope: !84)
!103 = !DILocalVariable(name: "str", arg: 1, scope: !104, file: !2, line: 127, type: !16)
!104 = distinct !DISubprogram(name: "sortof_strdup", scope: !2, file: !2, line: 127, type: !105, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !108)
!105 = !DISubroutineType(types: !106)
!106 = !{!19, !16, !107}
!107 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!108 = !{!103, !109, !110}
!109 = !DILocalVariable(name: "len", arg: 2, scope: !104, file: !2, line: 127, type: !107)
!110 = !DILocalVariable(name: "newstr", scope: !104, file: !2, line: 128, type: !19)
!111 = !DILocation(line: 0, scope: !104, inlinedAt: !112)
!112 = distinct !DILocation(line: 137, column: 25, scope: !84)
!113 = !DILocation(line: 129, column: 5, scope: !104, inlinedAt: !112)
!114 = !DILocation(line: 129, column: 5, scope: !115, inlinedAt: !112)
!115 = distinct !DILexicalBlock(scope: !104, file: !2, line: 129, column: 5)
!116 = !DILocation(line: 129, column: 5, scope: !117, inlinedAt: !112)
!117 = distinct !DILexicalBlock(scope: !115, file: !2, line: 129, column: 5)
!118 = !DILocation(line: 130, column: 5, scope: !104, inlinedAt: !112)
!119 = !DILocation(line: 140, column: 17, scope: !84)
!120 = !DILocation(line: 140, column: 5, scope: !84)
!121 = !DILocation(line: 142, column: 16, scope: !100)
!122 = !DILocation(line: 142, column: 23, scope: !100)
!123 = !DILocation(line: 142, column: 28, scope: !100)
!124 = !DILocation(line: 144, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !100, file: !2, line: 143, column: 9)
!126 = !DILocation(line: 145, column: 24, scope: !125)
!127 = !DILocation(line: 146, column: 23, scope: !125)
!128 = !DILocation(line: 147, column: 23, scope: !125)
!129 = !DILocation(line: 148, column: 9, scope: !125)
!130 = !DILocation(line: 151, column: 48, scope: !99)
!131 = !DILocalVariable(name: "x", arg: 1, scope: !132, file: !2, line: 33, type: !89)
!132 = distinct !DISubprogram(name: "sha_min", scope: !2, file: !2, line: 33, type: !133, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !135)
!133 = !DISubroutineType(types: !134)
!134 = !{!89, !89, !89}
!135 = !{!131, !136}
!136 = !DILocalVariable(name: "y", arg: 2, scope: !132, file: !2, line: 33, type: !89)
!137 = !DILocation(line: 0, scope: !132, inlinedAt: !138)
!138 = distinct !DILocation(line: 151, column: 21, scope: !99)
!139 = !DILocation(line: 35, column: 12, scope: !132, inlinedAt: !138)
!140 = !DILocation(line: 0, scope: !99)
!141 = !DILocation(line: 152, column: 28, scope: !99)
!142 = !DILocation(line: 152, column: 46, scope: !99)
!143 = !DILocation(line: 152, column: 13, scope: !99)
!144 = !DILocation(line: 153, column: 24, scope: !99)
!145 = !DILocation(line: 154, column: 23, scope: !99)
!146 = !DILocation(line: 155, column: 23, scope: !99)
!147 = !DILocation(line: 157, column: 27, scope: !148)
!148 = distinct !DILexicalBlock(scope: !99, file: !2, line: 157, column: 16)
!149 = !DILocation(line: 157, column: 16, scope: !99)
!150 = !DILocation(line: 159, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !2, line: 158, column: 13)
!152 = !DILocation(line: 160, column: 28, scope: !151)
!153 = !DILocation(line: 161, column: 28, scope: !151)
!154 = !DILocation(line: 162, column: 13, scope: !151)
!155 = !DILocation(line: 0, scope: !100)
!156 = distinct !{!156, !120, !157}
!157 = !DILocation(line: 164, column: 5, scope: !84)
!158 = !DILocation(line: 165, column: 5, scope: !84)
!159 = !DILocation(line: 166, column: 1, scope: !84)
!160 = distinct !DISubprogram(name: "sha_compress", scope: !2, file: !2, line: 70, type: !161, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !163)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !43, !16}
!163 = !{!164, !165, !166, !168, !170, !171, !172, !174, !176, !178, !180}
!164 = !DILocalVariable(name: "md", arg: 1, scope: !160, file: !2, line: 70, type: !43)
!165 = !DILocalVariable(name: "buf", arg: 2, scope: !160, file: !2, line: 70, type: !16)
!166 = !DILocalVariable(name: "S", scope: !160, file: !2, line: 72, type: !167)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !51)
!168 = !DILocalVariable(name: "W", scope: !160, file: !2, line: 72, type: !169)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 5120, elements: !30)
!170 = !DILocalVariable(name: "t0", scope: !160, file: !2, line: 72, type: !22)
!171 = !DILocalVariable(name: "t1", scope: !160, file: !2, line: 72, type: !22)
!172 = !DILocalVariable(name: "i", scope: !173, file: !2, line: 75, type: !107)
!173 = distinct !DILexicalBlock(scope: !160, file: !2, line: 75, column: 5)
!174 = !DILocalVariable(name: "i", scope: !175, file: !2, line: 79, type: !107)
!175 = distinct !DILexicalBlock(scope: !160, file: !2, line: 79, column: 5)
!176 = !DILocalVariable(name: "i", scope: !177, file: !2, line: 83, type: !107)
!177 = distinct !DILexicalBlock(scope: !160, file: !2, line: 83, column: 5)
!178 = !DILocalVariable(name: "i", scope: !179, file: !2, line: 86, type: !107)
!179 = distinct !DILexicalBlock(scope: !160, file: !2, line: 86, column: 5)
!180 = !DILocalVariable(name: "i", scope: !181, file: !2, line: 99, type: !107)
!181 = distinct !DILexicalBlock(scope: !160, file: !2, line: 99, column: 6)
!182 = distinct !DIAssignID()
!183 = !DILocation(line: 0, scope: !160)
!184 = !DILocation(line: 72, column: 5, scope: !160)
!185 = !DILocation(line: 0, scope: !173)
!186 = !DILocation(line: 76, column: 14, scope: !187)
!187 = distinct !DILexicalBlock(scope: !173, file: !2, line: 75, column: 5)
!188 = !DILocation(line: 79, column: 5, scope: !175)
!189 = !DILocation(line: 79, column: 29, scope: !190)
!190 = distinct !DILexicalBlock(scope: !175, file: !2, line: 79, column: 5)
!191 = !DILocation(line: 80, column: 31, scope: !190)
!192 = !DILocation(line: 80, column: 27, scope: !190)
!193 = !DILocation(line: 48, column: 22, scope: !194, inlinedAt: !203)
!194 = distinct !DILexicalBlock(scope: !195, file: !2, line: 47, column: 5)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 47, column: 5)
!196 = distinct !DISubprogram(name: "load64", scope: !2, file: !2, line: 44, type: !197, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !199)
!197 = !DISubroutineType(types: !198)
!198 = !{!22, !16}
!199 = !{!200, !201, !202}
!200 = !DILocalVariable(name: "y", arg: 1, scope: !196, file: !2, line: 44, type: !16)
!201 = !DILocalVariable(name: "res", scope: !196, file: !2, line: 46, type: !22)
!202 = !DILocalVariable(name: "i", scope: !195, file: !2, line: 47, type: !107)
!203 = distinct !DILocation(line: 80, column: 16, scope: !190)
!204 = !DILocation(line: 48, column: 16, scope: !194, inlinedAt: !203)
!205 = !DILocation(line: 48, column: 28, scope: !194, inlinedAt: !203)
!206 = !DILocation(line: 48, column: 13, scope: !194, inlinedAt: !203)
!207 = !DILocation(line: 80, column: 9, scope: !190)
!208 = !DILocation(line: 80, column: 14, scope: !190)
!209 = distinct !{!209, !188, !210, !211, !212}
!210 = !DILocation(line: 80, column: 34, scope: !175)
!211 = !{!"llvm.loop.isvectorized", i32 1}
!212 = !{!"llvm.loop.unroll.runtime.disable"}
!213 = !DILocation(line: 84, column: 66, scope: !214)
!214 = distinct !DILexicalBlock(scope: !177, file: !2, line: 83, column: 5)
!215 = !DILocation(line: 83, column: 5, scope: !177)
!216 = !DILocation(line: 0, scope: !177)
!217 = !DILocation(line: 84, column: 27, scope: !214)
!218 = !DILocation(line: 84, column: 23, scope: !214)
!219 = !DILocalVariable(name: "x", arg: 1, scope: !220, file: !2, line: 59, type: !22)
!220 = distinct !DISubprogram(name: "Gamma1", scope: !2, file: !2, line: 59, type: !221, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !223)
!221 = !DISubroutineType(types: !222)
!222 = !{!22, !22}
!223 = !{!219}
!224 = !DILocation(line: 0, scope: !220, inlinedAt: !225)
!225 = distinct !DILocation(line: 84, column: 16, scope: !214)
!226 = !DILocalVariable(name: "x", arg: 1, scope: !227, file: !2, line: 54, type: !22)
!227 = distinct !DISubprogram(name: "Rot", scope: !2, file: !2, line: 54, type: !228, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!22, !22, !22}
!230 = !{!226, !231}
!231 = !DILocalVariable(name: "n", arg: 2, scope: !227, file: !2, line: 54, type: !22)
!232 = !DILocation(line: 0, scope: !227, inlinedAt: !233)
!233 = distinct !DILocation(line: 59, column: 46, scope: !220, inlinedAt: !225)
!234 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !233)
!235 = !DILocation(line: 0, scope: !227, inlinedAt: !236)
!236 = distinct !DILocation(line: 59, column: 59, scope: !220, inlinedAt: !225)
!237 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !236)
!238 = !DILocation(line: 59, column: 57, scope: !220, inlinedAt: !225)
!239 = !DILocalVariable(name: "x", arg: 1, scope: !240, file: !2, line: 55, type: !22)
!240 = distinct !DISubprogram(name: "Sh", scope: !2, file: !2, line: 55, type: !228, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !241)
!241 = !{!239, !242}
!242 = !DILocalVariable(name: "n", arg: 2, scope: !240, file: !2, line: 55, type: !22)
!243 = !DILocation(line: 0, scope: !240, inlinedAt: !244)
!244 = distinct !DILocation(line: 59, column: 72, scope: !220, inlinedAt: !225)
!245 = !DILocation(line: 55, column: 48, scope: !240, inlinedAt: !244)
!246 = !DILocation(line: 59, column: 70, scope: !220, inlinedAt: !225)
!247 = !DILocation(line: 84, column: 39, scope: !214)
!248 = !DILocation(line: 84, column: 35, scope: !214)
!249 = !DILocation(line: 84, column: 33, scope: !214)
!250 = !DILocation(line: 84, column: 57, scope: !214)
!251 = !DILocation(line: 84, column: 53, scope: !214)
!252 = !DILocalVariable(name: "x", arg: 1, scope: !253, file: !2, line: 58, type: !22)
!253 = distinct !DISubprogram(name: "Gamma0", scope: !2, file: !2, line: 58, type: !221, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !254)
!254 = !{!252}
!255 = !DILocation(line: 0, scope: !253, inlinedAt: !256)
!256 = distinct !DILocation(line: 84, column: 46, scope: !214)
!257 = !DILocation(line: 0, scope: !227, inlinedAt: !258)
!258 = distinct !DILocation(line: 58, column: 46, scope: !253, inlinedAt: !256)
!259 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !258)
!260 = !DILocation(line: 0, scope: !227, inlinedAt: !261)
!261 = distinct !DILocation(line: 58, column: 58, scope: !253, inlinedAt: !256)
!262 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !261)
!263 = !DILocation(line: 58, column: 56, scope: !253, inlinedAt: !256)
!264 = !DILocation(line: 0, scope: !240, inlinedAt: !265)
!265 = distinct !DILocation(line: 58, column: 70, scope: !253, inlinedAt: !256)
!266 = !DILocation(line: 55, column: 48, scope: !240, inlinedAt: !265)
!267 = !DILocation(line: 58, column: 68, scope: !253, inlinedAt: !256)
!268 = !DILocation(line: 84, column: 44, scope: !214)
!269 = !DILocation(line: 84, column: 64, scope: !214)
!270 = !DILocation(line: 84, column: 9, scope: !214)
!271 = !DILocation(line: 84, column: 14, scope: !214)
!272 = !DILocation(line: 83, column: 30, scope: !214)
!273 = !DILocation(line: 83, column: 23, scope: !214)
!274 = distinct !{!274, !215, !275}
!275 = !DILocation(line: 84, column: 74, scope: !177)
!276 = !DILocation(line: 0, scope: !181)
!277 = !DILocation(line: 100, column: 25, scope: !278)
!278 = distinct !DILexicalBlock(scope: !181, file: !2, line: 99, column: 6)
!279 = !DILocation(line: 100, column: 38, scope: !278)
!280 = !DILocation(line: 100, column: 23, scope: !278)
!281 = !DILocation(line: 101, column: 1, scope: !160)
!282 = !DILocation(line: 0, scope: !179)
!283 = !DILocalVariable(name: "x", arg: 1, scope: !284, file: !2, line: 57, type: !22)
!284 = distinct !DISubprogram(name: "Sigma1", scope: !2, file: !2, line: 57, type: !221, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !285)
!285 = !{!283}
!286 = !DILocation(line: 0, scope: !284, inlinedAt: !287)
!287 = distinct !DILocation(line: 88, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !2, line: 88, column: 9)
!289 = distinct !DILexicalBlock(scope: !290, file: !2, line: 87, column: 5)
!290 = distinct !DILexicalBlock(scope: !179, file: !2, line: 86, column: 5)
!291 = !DILocation(line: 0, scope: !227, inlinedAt: !292)
!292 = distinct !DILocation(line: 57, column: 46, scope: !284, inlinedAt: !287)
!293 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !292)
!294 = !DILocation(line: 0, scope: !227, inlinedAt: !295)
!295 = distinct !DILocation(line: 57, column: 59, scope: !284, inlinedAt: !287)
!296 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !295)
!297 = !DILocation(line: 57, column: 57, scope: !284, inlinedAt: !287)
!298 = !DILocation(line: 0, scope: !227, inlinedAt: !299)
!299 = distinct !DILocation(line: 57, column: 72, scope: !284, inlinedAt: !287)
!300 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !299)
!301 = !DILocation(line: 57, column: 70, scope: !284, inlinedAt: !287)
!302 = !DILocation(line: 88, column: 9, scope: !288)
!303 = !DILocalVariable(name: "x", arg: 1, scope: !304, file: !2, line: 52, type: !22)
!304 = distinct !DISubprogram(name: "Ch", scope: !2, file: !2, line: 52, type: !305, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !307)
!305 = !DISubroutineType(types: !306)
!306 = !{!22, !22, !22, !22}
!307 = !{!303, !308, !309}
!308 = !DILocalVariable(name: "y", arg: 2, scope: !304, file: !2, line: 52, type: !22)
!309 = !DILocalVariable(name: "z", arg: 3, scope: !304, file: !2, line: 52, type: !22)
!310 = !DILocation(line: 0, scope: !304, inlinedAt: !311)
!311 = distinct !DILocation(line: 88, column: 9, scope: !288)
!312 = !DILocation(line: 52, column: 58, scope: !304, inlinedAt: !311)
!313 = !DILocation(line: 52, column: 53, scope: !304, inlinedAt: !311)
!314 = !DILocation(line: 52, column: 48, scope: !304, inlinedAt: !311)
!315 = !DILocalVariable(name: "x", arg: 1, scope: !316, file: !2, line: 56, type: !22)
!316 = distinct !DISubprogram(name: "Sigma0", scope: !2, file: !2, line: 56, type: !221, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !317)
!317 = !{!315}
!318 = !DILocation(line: 0, scope: !316, inlinedAt: !319)
!319 = distinct !DILocation(line: 88, column: 9, scope: !288)
!320 = !DILocation(line: 0, scope: !227, inlinedAt: !321)
!321 = distinct !DILocation(line: 56, column: 46, scope: !316, inlinedAt: !319)
!322 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !321)
!323 = !DILocation(line: 0, scope: !227, inlinedAt: !324)
!324 = distinct !DILocation(line: 56, column: 59, scope: !316, inlinedAt: !319)
!325 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !324)
!326 = !DILocation(line: 56, column: 57, scope: !316, inlinedAt: !319)
!327 = !DILocation(line: 0, scope: !227, inlinedAt: !328)
!328 = distinct !DILocation(line: 56, column: 72, scope: !316, inlinedAt: !319)
!329 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !328)
!330 = !DILocation(line: 56, column: 70, scope: !316, inlinedAt: !319)
!331 = !DILocalVariable(name: "x", arg: 1, scope: !332, file: !2, line: 53, type: !22)
!332 = distinct !DISubprogram(name: "Maj", scope: !2, file: !2, line: 53, type: !305, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !333)
!333 = !{!331, !334, !335}
!334 = !DILocalVariable(name: "y", arg: 2, scope: !332, file: !2, line: 53, type: !22)
!335 = !DILocalVariable(name: "z", arg: 3, scope: !332, file: !2, line: 53, type: !22)
!336 = !DILocation(line: 0, scope: !332, inlinedAt: !337)
!337 = distinct !DILocation(line: 88, column: 9, scope: !288)
!338 = !DILocation(line: 53, column: 50, scope: !332, inlinedAt: !337)
!339 = !DILocation(line: 53, column: 55, scope: !332, inlinedAt: !337)
!340 = !DILocation(line: 53, column: 65, scope: !332, inlinedAt: !337)
!341 = !DILocation(line: 53, column: 60, scope: !332, inlinedAt: !337)
!342 = !DILocation(line: 0, scope: !284, inlinedAt: !343)
!343 = distinct !DILocation(line: 89, column: 9, scope: !344)
!344 = distinct !DILexicalBlock(scope: !289, file: !2, line: 89, column: 9)
!345 = !DILocation(line: 0, scope: !227, inlinedAt: !346)
!346 = distinct !DILocation(line: 57, column: 46, scope: !284, inlinedAt: !343)
!347 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !346)
!348 = !DILocation(line: 0, scope: !227, inlinedAt: !349)
!349 = distinct !DILocation(line: 57, column: 59, scope: !284, inlinedAt: !343)
!350 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !349)
!351 = !DILocation(line: 57, column: 57, scope: !284, inlinedAt: !343)
!352 = !DILocation(line: 0, scope: !227, inlinedAt: !353)
!353 = distinct !DILocation(line: 57, column: 72, scope: !284, inlinedAt: !343)
!354 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !353)
!355 = !DILocation(line: 57, column: 70, scope: !284, inlinedAt: !343)
!356 = !DILocation(line: 0, scope: !304, inlinedAt: !357)
!357 = distinct !DILocation(line: 89, column: 9, scope: !344)
!358 = !DILocation(line: 52, column: 58, scope: !304, inlinedAt: !357)
!359 = !DILocation(line: 52, column: 53, scope: !304, inlinedAt: !357)
!360 = !DILocation(line: 52, column: 48, scope: !304, inlinedAt: !357)
!361 = !DILocation(line: 89, column: 9, scope: !344)
!362 = !DILocation(line: 0, scope: !316, inlinedAt: !363)
!363 = distinct !DILocation(line: 89, column: 9, scope: !344)
!364 = !DILocation(line: 0, scope: !227, inlinedAt: !365)
!365 = distinct !DILocation(line: 56, column: 46, scope: !316, inlinedAt: !363)
!366 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !365)
!367 = !DILocation(line: 0, scope: !227, inlinedAt: !368)
!368 = distinct !DILocation(line: 56, column: 59, scope: !316, inlinedAt: !363)
!369 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !368)
!370 = !DILocation(line: 56, column: 57, scope: !316, inlinedAt: !363)
!371 = !DILocation(line: 0, scope: !227, inlinedAt: !372)
!372 = distinct !DILocation(line: 56, column: 72, scope: !316, inlinedAt: !363)
!373 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !372)
!374 = !DILocation(line: 56, column: 70, scope: !316, inlinedAt: !363)
!375 = !DILocation(line: 0, scope: !332, inlinedAt: !376)
!376 = distinct !DILocation(line: 89, column: 9, scope: !344)
!377 = !DILocation(line: 53, column: 50, scope: !332, inlinedAt: !376)
!378 = !DILocation(line: 53, column: 55, scope: !332, inlinedAt: !376)
!379 = !DILocation(line: 53, column: 65, scope: !332, inlinedAt: !376)
!380 = !DILocation(line: 53, column: 60, scope: !332, inlinedAt: !376)
!381 = !DILocation(line: 0, scope: !284, inlinedAt: !382)
!382 = distinct !DILocation(line: 90, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !289, file: !2, line: 90, column: 9)
!384 = !DILocation(line: 0, scope: !227, inlinedAt: !385)
!385 = distinct !DILocation(line: 57, column: 46, scope: !284, inlinedAt: !382)
!386 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !385)
!387 = !DILocation(line: 0, scope: !227, inlinedAt: !388)
!388 = distinct !DILocation(line: 57, column: 59, scope: !284, inlinedAt: !382)
!389 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !388)
!390 = !DILocation(line: 57, column: 57, scope: !284, inlinedAt: !382)
!391 = !DILocation(line: 0, scope: !227, inlinedAt: !392)
!392 = distinct !DILocation(line: 57, column: 72, scope: !284, inlinedAt: !382)
!393 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !392)
!394 = !DILocation(line: 57, column: 70, scope: !284, inlinedAt: !382)
!395 = !DILocation(line: 0, scope: !304, inlinedAt: !396)
!396 = distinct !DILocation(line: 90, column: 9, scope: !383)
!397 = !DILocation(line: 52, column: 58, scope: !304, inlinedAt: !396)
!398 = !DILocation(line: 52, column: 53, scope: !304, inlinedAt: !396)
!399 = !DILocation(line: 52, column: 48, scope: !304, inlinedAt: !396)
!400 = !DILocation(line: 90, column: 9, scope: !383)
!401 = !DILocation(line: 0, scope: !316, inlinedAt: !402)
!402 = distinct !DILocation(line: 90, column: 9, scope: !383)
!403 = !DILocation(line: 0, scope: !227, inlinedAt: !404)
!404 = distinct !DILocation(line: 56, column: 46, scope: !316, inlinedAt: !402)
!405 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !404)
!406 = !DILocation(line: 0, scope: !227, inlinedAt: !407)
!407 = distinct !DILocation(line: 56, column: 59, scope: !316, inlinedAt: !402)
!408 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !407)
!409 = !DILocation(line: 56, column: 57, scope: !316, inlinedAt: !402)
!410 = !DILocation(line: 0, scope: !227, inlinedAt: !411)
!411 = distinct !DILocation(line: 56, column: 72, scope: !316, inlinedAt: !402)
!412 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !411)
!413 = !DILocation(line: 56, column: 70, scope: !316, inlinedAt: !402)
!414 = !DILocation(line: 0, scope: !332, inlinedAt: !415)
!415 = distinct !DILocation(line: 90, column: 9, scope: !383)
!416 = !DILocation(line: 53, column: 50, scope: !332, inlinedAt: !415)
!417 = !DILocation(line: 53, column: 55, scope: !332, inlinedAt: !415)
!418 = !DILocation(line: 53, column: 65, scope: !332, inlinedAt: !415)
!419 = !DILocation(line: 53, column: 60, scope: !332, inlinedAt: !415)
!420 = !DILocation(line: 0, scope: !284, inlinedAt: !421)
!421 = distinct !DILocation(line: 91, column: 9, scope: !422)
!422 = distinct !DILexicalBlock(scope: !289, file: !2, line: 91, column: 9)
!423 = !DILocation(line: 0, scope: !227, inlinedAt: !424)
!424 = distinct !DILocation(line: 57, column: 46, scope: !284, inlinedAt: !421)
!425 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !424)
!426 = !DILocation(line: 0, scope: !227, inlinedAt: !427)
!427 = distinct !DILocation(line: 57, column: 59, scope: !284, inlinedAt: !421)
!428 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !427)
!429 = !DILocation(line: 57, column: 57, scope: !284, inlinedAt: !421)
!430 = !DILocation(line: 0, scope: !227, inlinedAt: !431)
!431 = distinct !DILocation(line: 57, column: 72, scope: !284, inlinedAt: !421)
!432 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !431)
!433 = !DILocation(line: 57, column: 70, scope: !284, inlinedAt: !421)
!434 = !DILocation(line: 0, scope: !304, inlinedAt: !435)
!435 = distinct !DILocation(line: 91, column: 9, scope: !422)
!436 = !DILocation(line: 52, column: 58, scope: !304, inlinedAt: !435)
!437 = !DILocation(line: 52, column: 53, scope: !304, inlinedAt: !435)
!438 = !DILocation(line: 52, column: 48, scope: !304, inlinedAt: !435)
!439 = !DILocation(line: 91, column: 9, scope: !422)
!440 = !DILocation(line: 0, scope: !316, inlinedAt: !441)
!441 = distinct !DILocation(line: 91, column: 9, scope: !422)
!442 = !DILocation(line: 0, scope: !227, inlinedAt: !443)
!443 = distinct !DILocation(line: 56, column: 46, scope: !316, inlinedAt: !441)
!444 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !443)
!445 = !DILocation(line: 0, scope: !227, inlinedAt: !446)
!446 = distinct !DILocation(line: 56, column: 59, scope: !316, inlinedAt: !441)
!447 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !446)
!448 = !DILocation(line: 56, column: 57, scope: !316, inlinedAt: !441)
!449 = !DILocation(line: 0, scope: !227, inlinedAt: !450)
!450 = distinct !DILocation(line: 56, column: 72, scope: !316, inlinedAt: !441)
!451 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !450)
!452 = !DILocation(line: 56, column: 70, scope: !316, inlinedAt: !441)
!453 = !DILocation(line: 0, scope: !332, inlinedAt: !454)
!454 = distinct !DILocation(line: 91, column: 9, scope: !422)
!455 = !DILocation(line: 53, column: 50, scope: !332, inlinedAt: !454)
!456 = !DILocation(line: 53, column: 55, scope: !332, inlinedAt: !454)
!457 = !DILocation(line: 53, column: 65, scope: !332, inlinedAt: !454)
!458 = !DILocation(line: 53, column: 60, scope: !332, inlinedAt: !454)
!459 = !DILocation(line: 0, scope: !284, inlinedAt: !460)
!460 = distinct !DILocation(line: 92, column: 9, scope: !461)
!461 = distinct !DILexicalBlock(scope: !289, file: !2, line: 92, column: 9)
!462 = !DILocation(line: 0, scope: !227, inlinedAt: !463)
!463 = distinct !DILocation(line: 57, column: 46, scope: !284, inlinedAt: !460)
!464 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !463)
!465 = !DILocation(line: 0, scope: !227, inlinedAt: !466)
!466 = distinct !DILocation(line: 57, column: 59, scope: !284, inlinedAt: !460)
!467 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !466)
!468 = !DILocation(line: 57, column: 57, scope: !284, inlinedAt: !460)
!469 = !DILocation(line: 0, scope: !227, inlinedAt: !470)
!470 = distinct !DILocation(line: 57, column: 72, scope: !284, inlinedAt: !460)
!471 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !470)
!472 = !DILocation(line: 57, column: 70, scope: !284, inlinedAt: !460)
!473 = !DILocation(line: 0, scope: !304, inlinedAt: !474)
!474 = distinct !DILocation(line: 92, column: 9, scope: !461)
!475 = !DILocation(line: 52, column: 58, scope: !304, inlinedAt: !474)
!476 = !DILocation(line: 52, column: 53, scope: !304, inlinedAt: !474)
!477 = !DILocation(line: 52, column: 48, scope: !304, inlinedAt: !474)
!478 = !DILocation(line: 92, column: 9, scope: !461)
!479 = !DILocation(line: 0, scope: !316, inlinedAt: !480)
!480 = distinct !DILocation(line: 92, column: 9, scope: !461)
!481 = !DILocation(line: 0, scope: !227, inlinedAt: !482)
!482 = distinct !DILocation(line: 56, column: 46, scope: !316, inlinedAt: !480)
!483 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !482)
!484 = !DILocation(line: 0, scope: !227, inlinedAt: !485)
!485 = distinct !DILocation(line: 56, column: 59, scope: !316, inlinedAt: !480)
!486 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !485)
!487 = !DILocation(line: 56, column: 57, scope: !316, inlinedAt: !480)
!488 = !DILocation(line: 0, scope: !227, inlinedAt: !489)
!489 = distinct !DILocation(line: 56, column: 72, scope: !316, inlinedAt: !480)
!490 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !489)
!491 = !DILocation(line: 56, column: 70, scope: !316, inlinedAt: !480)
!492 = !DILocation(line: 0, scope: !332, inlinedAt: !493)
!493 = distinct !DILocation(line: 92, column: 9, scope: !461)
!494 = !DILocation(line: 53, column: 50, scope: !332, inlinedAt: !493)
!495 = !DILocation(line: 53, column: 55, scope: !332, inlinedAt: !493)
!496 = !DILocation(line: 53, column: 65, scope: !332, inlinedAt: !493)
!497 = !DILocation(line: 53, column: 60, scope: !332, inlinedAt: !493)
!498 = !DILocation(line: 0, scope: !284, inlinedAt: !499)
!499 = distinct !DILocation(line: 93, column: 9, scope: !500)
!500 = distinct !DILexicalBlock(scope: !289, file: !2, line: 93, column: 9)
!501 = !DILocation(line: 0, scope: !227, inlinedAt: !502)
!502 = distinct !DILocation(line: 57, column: 46, scope: !284, inlinedAt: !499)
!503 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !502)
!504 = !DILocation(line: 0, scope: !227, inlinedAt: !505)
!505 = distinct !DILocation(line: 57, column: 59, scope: !284, inlinedAt: !499)
!506 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !505)
!507 = !DILocation(line: 57, column: 57, scope: !284, inlinedAt: !499)
!508 = !DILocation(line: 0, scope: !227, inlinedAt: !509)
!509 = distinct !DILocation(line: 57, column: 72, scope: !284, inlinedAt: !499)
!510 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !509)
!511 = !DILocation(line: 57, column: 70, scope: !284, inlinedAt: !499)
!512 = !DILocation(line: 0, scope: !304, inlinedAt: !513)
!513 = distinct !DILocation(line: 93, column: 9, scope: !500)
!514 = !DILocation(line: 52, column: 58, scope: !304, inlinedAt: !513)
!515 = !DILocation(line: 52, column: 53, scope: !304, inlinedAt: !513)
!516 = !DILocation(line: 52, column: 48, scope: !304, inlinedAt: !513)
!517 = !DILocation(line: 93, column: 9, scope: !500)
!518 = !DILocation(line: 0, scope: !316, inlinedAt: !519)
!519 = distinct !DILocation(line: 93, column: 9, scope: !500)
!520 = !DILocation(line: 0, scope: !227, inlinedAt: !521)
!521 = distinct !DILocation(line: 56, column: 46, scope: !316, inlinedAt: !519)
!522 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !521)
!523 = !DILocation(line: 0, scope: !227, inlinedAt: !524)
!524 = distinct !DILocation(line: 56, column: 59, scope: !316, inlinedAt: !519)
!525 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !524)
!526 = !DILocation(line: 56, column: 57, scope: !316, inlinedAt: !519)
!527 = !DILocation(line: 0, scope: !227, inlinedAt: !528)
!528 = distinct !DILocation(line: 56, column: 72, scope: !316, inlinedAt: !519)
!529 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !528)
!530 = !DILocation(line: 56, column: 70, scope: !316, inlinedAt: !519)
!531 = !DILocation(line: 0, scope: !332, inlinedAt: !532)
!532 = distinct !DILocation(line: 93, column: 9, scope: !500)
!533 = !DILocation(line: 53, column: 50, scope: !332, inlinedAt: !532)
!534 = !DILocation(line: 53, column: 55, scope: !332, inlinedAt: !532)
!535 = !DILocation(line: 53, column: 65, scope: !332, inlinedAt: !532)
!536 = !DILocation(line: 53, column: 60, scope: !332, inlinedAt: !532)
!537 = !DILocation(line: 0, scope: !284, inlinedAt: !538)
!538 = distinct !DILocation(line: 94, column: 9, scope: !539)
!539 = distinct !DILexicalBlock(scope: !289, file: !2, line: 94, column: 9)
!540 = !DILocation(line: 0, scope: !227, inlinedAt: !541)
!541 = distinct !DILocation(line: 57, column: 46, scope: !284, inlinedAt: !538)
!542 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !541)
!543 = !DILocation(line: 0, scope: !227, inlinedAt: !544)
!544 = distinct !DILocation(line: 57, column: 59, scope: !284, inlinedAt: !538)
!545 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !544)
!546 = !DILocation(line: 57, column: 57, scope: !284, inlinedAt: !538)
!547 = !DILocation(line: 0, scope: !227, inlinedAt: !548)
!548 = distinct !DILocation(line: 57, column: 72, scope: !284, inlinedAt: !538)
!549 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !548)
!550 = !DILocation(line: 57, column: 70, scope: !284, inlinedAt: !538)
!551 = !DILocation(line: 0, scope: !304, inlinedAt: !552)
!552 = distinct !DILocation(line: 94, column: 9, scope: !539)
!553 = !DILocation(line: 52, column: 58, scope: !304, inlinedAt: !552)
!554 = !DILocation(line: 52, column: 53, scope: !304, inlinedAt: !552)
!555 = !DILocation(line: 52, column: 48, scope: !304, inlinedAt: !552)
!556 = !DILocation(line: 94, column: 9, scope: !539)
!557 = !DILocation(line: 0, scope: !316, inlinedAt: !558)
!558 = distinct !DILocation(line: 94, column: 9, scope: !539)
!559 = !DILocation(line: 0, scope: !227, inlinedAt: !560)
!560 = distinct !DILocation(line: 56, column: 46, scope: !316, inlinedAt: !558)
!561 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !560)
!562 = !DILocation(line: 0, scope: !227, inlinedAt: !563)
!563 = distinct !DILocation(line: 56, column: 59, scope: !316, inlinedAt: !558)
!564 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !563)
!565 = !DILocation(line: 56, column: 57, scope: !316, inlinedAt: !558)
!566 = !DILocation(line: 0, scope: !227, inlinedAt: !567)
!567 = distinct !DILocation(line: 56, column: 72, scope: !316, inlinedAt: !558)
!568 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !567)
!569 = !DILocation(line: 56, column: 70, scope: !316, inlinedAt: !558)
!570 = !DILocation(line: 0, scope: !332, inlinedAt: !571)
!571 = distinct !DILocation(line: 94, column: 9, scope: !539)
!572 = !DILocation(line: 53, column: 50, scope: !332, inlinedAt: !571)
!573 = !DILocation(line: 53, column: 55, scope: !332, inlinedAt: !571)
!574 = !DILocation(line: 53, column: 65, scope: !332, inlinedAt: !571)
!575 = !DILocation(line: 53, column: 60, scope: !332, inlinedAt: !571)
!576 = !DILocation(line: 0, scope: !284, inlinedAt: !577)
!577 = distinct !DILocation(line: 95, column: 9, scope: !578)
!578 = distinct !DILexicalBlock(scope: !289, file: !2, line: 95, column: 9)
!579 = !DILocation(line: 0, scope: !227, inlinedAt: !580)
!580 = distinct !DILocation(line: 57, column: 46, scope: !284, inlinedAt: !577)
!581 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !580)
!582 = !DILocation(line: 0, scope: !227, inlinedAt: !583)
!583 = distinct !DILocation(line: 57, column: 59, scope: !284, inlinedAt: !577)
!584 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !583)
!585 = !DILocation(line: 57, column: 57, scope: !284, inlinedAt: !577)
!586 = !DILocation(line: 0, scope: !227, inlinedAt: !587)
!587 = distinct !DILocation(line: 57, column: 72, scope: !284, inlinedAt: !577)
!588 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !587)
!589 = !DILocation(line: 57, column: 70, scope: !284, inlinedAt: !577)
!590 = !DILocation(line: 0, scope: !304, inlinedAt: !591)
!591 = distinct !DILocation(line: 95, column: 9, scope: !578)
!592 = !DILocation(line: 52, column: 58, scope: !304, inlinedAt: !591)
!593 = !DILocation(line: 52, column: 53, scope: !304, inlinedAt: !591)
!594 = !DILocation(line: 52, column: 48, scope: !304, inlinedAt: !591)
!595 = !DILocation(line: 95, column: 9, scope: !578)
!596 = !DILocation(line: 0, scope: !316, inlinedAt: !597)
!597 = distinct !DILocation(line: 95, column: 9, scope: !578)
!598 = !DILocation(line: 0, scope: !227, inlinedAt: !599)
!599 = distinct !DILocation(line: 56, column: 46, scope: !316, inlinedAt: !597)
!600 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !599)
!601 = !DILocation(line: 0, scope: !227, inlinedAt: !602)
!602 = distinct !DILocation(line: 56, column: 59, scope: !316, inlinedAt: !597)
!603 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !602)
!604 = !DILocation(line: 56, column: 57, scope: !316, inlinedAt: !597)
!605 = !DILocation(line: 0, scope: !227, inlinedAt: !606)
!606 = distinct !DILocation(line: 56, column: 72, scope: !316, inlinedAt: !597)
!607 = !DILocation(line: 54, column: 62, scope: !227, inlinedAt: !606)
!608 = !DILocation(line: 56, column: 70, scope: !316, inlinedAt: !597)
!609 = !DILocation(line: 0, scope: !332, inlinedAt: !610)
!610 = distinct !DILocation(line: 95, column: 9, scope: !578)
!611 = !DILocation(line: 53, column: 50, scope: !332, inlinedAt: !610)
!612 = !DILocation(line: 53, column: 55, scope: !332, inlinedAt: !610)
!613 = !DILocation(line: 53, column: 65, scope: !332, inlinedAt: !610)
!614 = !DILocation(line: 53, column: 60, scope: !332, inlinedAt: !610)
!615 = !DILocation(line: 86, column: 30, scope: !290)
!616 = !DILocation(line: 86, column: 22, scope: !290)
!617 = !DILocation(line: 86, column: 5, scope: !179)
!618 = distinct !{!618, !617, !619}
!619 = !DILocation(line: 96, column: 5, scope: !179)
!620 = !DISubprogram(name: "free", scope: !621, file: !621, line: 555, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!621 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!622 = !DISubroutineType(types: !623)
!623 = !{null, !20}
!624 = distinct !DISubprogram(name: "sha_done", scope: !2, file: !2, line: 168, type: !625, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !43, !20}
!627 = !{!628, !629, !630}
!628 = !DILocalVariable(name: "md", arg: 1, scope: !624, file: !2, line: 168, type: !43)
!629 = !DILocalVariable(name: "out", arg: 2, scope: !624, file: !2, line: 168, type: !20)
!630 = !DILocalVariable(name: "i", scope: !631, file: !2, line: 197, type: !107)
!631 = distinct !DILexicalBlock(scope: !624, file: !2, line: 197, column: 5)
!632 = !DILocation(line: 0, scope: !624)
!633 = !DILocation(line: 171, column: 23, scope: !624)
!634 = !DILocation(line: 171, column: 19, scope: !624)
!635 = !DILocation(line: 171, column: 30, scope: !624)
!636 = !DILocation(line: 171, column: 16, scope: !624)
!637 = !DILocation(line: 174, column: 9, scope: !624)
!638 = !DILocation(line: 174, column: 23, scope: !624)
!639 = !DILocation(line: 174, column: 5, scope: !624)
!640 = !DILocation(line: 174, column: 27, scope: !624)
!641 = !DILocation(line: 178, column: 19, scope: !642)
!642 = distinct !DILexicalBlock(scope: !624, file: !2, line: 178, column: 8)
!643 = !DILocation(line: 178, column: 8, scope: !624)
!644 = !DILocation(line: 180, column: 26, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !2, line: 179, column: 5)
!646 = !DILocation(line: 180, column: 9, scope: !645)
!647 = !DILocation(line: 181, column: 35, scope: !645)
!648 = !DILocation(line: 181, column: 31, scope: !645)
!649 = !DILocation(line: 182, column: 9, scope: !645)
!650 = !DILocation(line: 184, column: 5, scope: !645)
!651 = !DILocation(line: 189, column: 15, scope: !624)
!652 = !DILocation(line: 189, column: 5, scope: !624)
!653 = !DILocation(line: 190, column: 31, scope: !624)
!654 = !DILocation(line: 190, column: 27, scope: !624)
!655 = !DILocation(line: 193, column: 17, scope: !624)
!656 = !DILocation(line: 193, column: 32, scope: !624)
!657 = !DILocalVariable(name: "x", arg: 1, scope: !658, file: !2, line: 38, type: !22)
!658 = distinct !DISubprogram(name: "store64", scope: !2, file: !2, line: 38, type: !659, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !661)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !22, !19}
!661 = !{!657, !662, !663}
!662 = !DILocalVariable(name: "y", arg: 2, scope: !658, file: !2, line: 38, type: !19)
!663 = !DILocalVariable(name: "i", scope: !664, file: !2, line: 40, type: !107)
!664 = distinct !DILexicalBlock(scope: !658, file: !2, line: 40, column: 5)
!665 = !DILocation(line: 0, scope: !658, inlinedAt: !666)
!666 = distinct !DILocation(line: 193, column: 5, scope: !624)
!667 = !DILocation(line: 0, scope: !664, inlinedAt: !666)
!668 = !DILocation(line: 41, column: 19, scope: !669, inlinedAt: !666)
!669 = distinct !DILexicalBlock(scope: !664, file: !2, line: 40, column: 5)
!670 = !DILocation(line: 41, column: 16, scope: !669, inlinedAt: !666)
!671 = !DILocation(line: 41, column: 14, scope: !669, inlinedAt: !666)
!672 = !DILocation(line: 41, column: 9, scope: !669, inlinedAt: !666)
!673 = !DILocation(line: 194, column: 5, scope: !624)
!674 = !DILocation(line: 0, scope: !631)
!675 = !DILocation(line: 198, column: 17, scope: !676)
!676 = distinct !DILexicalBlock(scope: !631, file: !2, line: 197, column: 5)
!677 = !DILocation(line: 0, scope: !658, inlinedAt: !678)
!678 = distinct !DILocation(line: 198, column: 9, scope: !676)
!679 = !DILocation(line: 0, scope: !664, inlinedAt: !678)
!680 = !DILocation(line: 41, column: 19, scope: !669, inlinedAt: !678)
!681 = !DILocation(line: 41, column: 16, scope: !669, inlinedAt: !678)
!682 = !DILocation(line: 41, column: 14, scope: !669, inlinedAt: !678)
!683 = !DILocation(line: 41, column: 9, scope: !669, inlinedAt: !678)
!684 = !DILocation(line: 198, column: 54, scope: !676)
!685 = !DILocation(line: 199, column: 1, scope: !624)
!686 = !DISubprogram(name: "malloc", scope: !621, file: !621, line: 540, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!687 = !DISubroutineType(types: !688)
!688 = !{!20, !689}
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !690, line: 18, baseType: !21)
!690 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!691 = !DISubprogram(name: "fprintf", scope: !692, file: !692, line: 350, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!692 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!693 = !DISubroutineType(types: !694)
!694 = !{!107, !695, !752, null}
!695 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !698, line: 7, baseType: !699)
!698 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !700, line: 49, size: 1728, elements: !701)
!700 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!701 = !{!702, !703, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !718, !720, !721, !722, !725, !727, !729, !733, !736, !738, !741, !744, !745, !746, !747, !748}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !699, file: !700, line: 51, baseType: !107, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !699, file: !700, line: 54, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !699, file: !700, line: 55, baseType: !704, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !699, file: !700, line: 56, baseType: !704, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !699, file: !700, line: 57, baseType: !704, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !699, file: !700, line: 58, baseType: !704, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !699, file: !700, line: 59, baseType: !704, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !699, file: !700, line: 60, baseType: !704, size: 64, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !699, file: !700, line: 61, baseType: !704, size: 64, offset: 512)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !699, file: !700, line: 64, baseType: !704, size: 64, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !699, file: !700, line: 65, baseType: !704, size: 64, offset: 640)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !699, file: !700, line: 66, baseType: !704, size: 64, offset: 704)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !699, file: !700, line: 68, baseType: !716, size: 64, offset: 768)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !700, line: 36, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !699, file: !700, line: 70, baseType: !719, size: 64, offset: 832)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !699, file: !700, line: 72, baseType: !107, size: 32, offset: 896)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !699, file: !700, line: 73, baseType: !107, size: 32, offset: 928)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !699, file: !700, line: 74, baseType: !723, size: 64, offset: 960)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !26, line: 152, baseType: !724)
!724 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !699, file: !700, line: 77, baseType: !726, size: 16, offset: 1024)
!726 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !699, file: !700, line: 78, baseType: !728, size: 8, offset: 1040)
!728 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !699, file: !700, line: 79, baseType: !730, size: 8, offset: 1048)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 1)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !699, file: !700, line: 81, baseType: !734, size: 64, offset: 1088)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !700, line: 43, baseType: null)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !699, file: !700, line: 89, baseType: !737, size: 64, offset: 1152)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !26, line: 153, baseType: !724)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !699, file: !700, line: 91, baseType: !739, size: 64, offset: 1216)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !700, line: 37, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !699, file: !700, line: 92, baseType: !742, size: 64, offset: 1280)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !700, line: 38, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !699, file: !700, line: 93, baseType: !719, size: 64, offset: 1344)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !699, file: !700, line: 94, baseType: !20, size: 64, offset: 1408)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !699, file: !700, line: 95, baseType: !689, size: 64, offset: 1472)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !699, file: !700, line: 96, baseType: !107, size: 32, offset: 1536)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !699, file: !700, line: 98, baseType: !749, size: 160, offset: 1568)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 20)
!752 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!755 = !DISubprogram(name: "exit", scope: !621, file: !621, line: 624, type: !756, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !107}
