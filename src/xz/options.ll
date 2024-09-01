; ModuleID = 'xz/options.c'
source_filename = "xz/options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option_map = type { ptr, ptr, i64, i64 }
%struct.name_id_map = type { ptr, i64 }

@options_delta.opts = internal constant [2 x %struct.option_map] [%struct.option_map { ptr @.str, ptr null, i64 1, i64 256 }, %struct.option_map zeroinitializer], align 16, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"dist\00", align 1, !dbg !69
@options_bcj.opts = internal constant [2 x %struct.option_map] [%struct.option_map { ptr @.str.1, ptr null, i64 0, i64 4294967295 }, %struct.option_map zeroinitializer], align 16, !dbg !79
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1, !dbg !74
@options_lzma.modes = internal constant [3 x %struct.name_id_map] [%struct.name_id_map { ptr @.str.2, i64 1 }, %struct.name_id_map { ptr @.str.3, i64 2 }, %struct.name_id_map zeroinitializer], align 16, !dbg !121
@.str.2 = private unnamed_addr constant [5 x i8] c"fast\00", align 1, !dbg !114
@.str.3 = private unnamed_addr constant [7 x i8] c"normal\00", align 1, !dbg !116
@options_lzma.mfs = internal constant [6 x %struct.name_id_map] [%struct.name_id_map { ptr @.str.4, i64 3 }, %struct.name_id_map { ptr @.str.5, i64 4 }, %struct.name_id_map { ptr @.str.6, i64 18 }, %struct.name_id_map { ptr @.str.7, i64 19 }, %struct.name_id_map { ptr @.str.8, i64 20 }, %struct.name_id_map zeroinitializer], align 16, !dbg !183
@.str.4 = private unnamed_addr constant [4 x i8] c"hc3\00", align 1, !dbg !170
@.str.5 = private unnamed_addr constant [4 x i8] c"hc4\00", align 1, !dbg !175
@.str.6 = private unnamed_addr constant [4 x i8] c"bt2\00", align 1, !dbg !177
@.str.7 = private unnamed_addr constant [4 x i8] c"bt3\00", align 1, !dbg !179
@.str.8 = private unnamed_addr constant [4 x i8] c"bt4\00", align 1, !dbg !181
@options_lzma.opts = internal constant [10 x %struct.option_map] [%struct.option_map { ptr @.str.9, ptr null, i64 -1, i64 0 }, %struct.option_map { ptr @.str.10, ptr null, i64 4096, i64 1610612736 }, %struct.option_map { ptr @.str.11, ptr null, i64 0, i64 4 }, %struct.option_map { ptr @.str.12, ptr null, i64 0, i64 4 }, %struct.option_map { ptr @.str.13, ptr null, i64 0, i64 4 }, %struct.option_map { ptr @.str.14, ptr @options_lzma.modes, i64 0, i64 0 }, %struct.option_map { ptr @.str.15, ptr null, i64 2, i64 273 }, %struct.option_map { ptr @.str.16, ptr @options_lzma.mfs, i64 0, i64 0 }, %struct.option_map { ptr @.str.17, ptr null, i64 0, i64 4294967295 }, %struct.option_map zeroinitializer], align 16, !dbg !205
@.str.9 = private unnamed_addr constant [7 x i8] c"preset\00", align 1, !dbg !186
@.str.10 = private unnamed_addr constant [5 x i8] c"dict\00", align 1, !dbg !188
@.str.11 = private unnamed_addr constant [3 x i8] c"lc\00", align 1, !dbg !190
@.str.12 = private unnamed_addr constant [3 x i8] c"lp\00", align 1, !dbg !193
@.str.13 = private unnamed_addr constant [3 x i8] c"pb\00", align 1, !dbg !195
@.str.14 = private unnamed_addr constant [5 x i8] c"mode\00", align 1, !dbg !197
@.str.15 = private unnamed_addr constant [5 x i8] c"nice\00", align 1, !dbg !199
@.str.16 = private unnamed_addr constant [3 x i8] c"mf\00", align 1, !dbg !201
@.str.17 = private unnamed_addr constant [6 x i8] c"depth\00", align 1, !dbg !203
@.str.18 = private unnamed_addr constant [39 x i8] c"The sum of lc and lp must not exceed 4\00", align 1, !dbg !210
@.str.19 = private unnamed_addr constant [52 x i8] c"The selected match finder requires at least nice=%u\00", align 1, !dbg !215
@.str.20 = private unnamed_addr constant [61 x i8] c"%s: Options must be `name=value' pairs separated with commas\00", align 1, !dbg !220
@.str.21 = private unnamed_addr constant [24 x i8] c"%s: Invalid option name\00", align 1, !dbg !225
@.str.22 = private unnamed_addr constant [25 x i8] c"%s: Invalid option value\00", align 1, !dbg !230
@.str.23 = private unnamed_addr constant [35 x i8] c"Unsupported LZMA1/LZMA2 preset: %s\00", align 1, !dbg !235

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @options_delta(ptr noundef %str) local_unnamed_addr #0 !dbg !2 {
entry:
    #dbg_value(ptr %str, !241, !DIExpression(), !251)
  %call = tail call ptr @xrealloc(ptr noundef null, i64 noundef 40) #6, !dbg !252
    #dbg_value(ptr %call, !242, !DIExpression(), !251)
  store i32 0, ptr %call, align 8, !dbg !253
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %call, i64 4, !dbg !253
  store i32 1, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4, !dbg !253
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %call, i64 8, !dbg !253
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.compoundliteral.sroa.4.0..sroa_idx, i8 0, i64 32, i1 false), !dbg !253
  tail call fastcc void @parse_options(ptr noundef %str, ptr noundef nonnull @options_delta.opts, ptr noundef nonnull @set_delta, ptr noundef nonnull %call), !dbg !254
  ret ptr %call, !dbg !255
}

declare !dbg !256 ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_options(ptr noundef %str, ptr nocapture noundef readonly %opts, ptr nocapture noundef readonly %set, ptr noundef %filter_options) unnamed_addr #0 !dbg !262 {
entry:
    #dbg_value(ptr %str, !270, !DIExpression(), !288)
    #dbg_value(ptr %opts, !271, !DIExpression(), !288)
    #dbg_value(ptr %set, !272, !DIExpression(), !288)
    #dbg_value(ptr %filter_options, !273, !DIExpression(), !288)
  %cmp = icmp eq ptr %str, null, !dbg !289
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !291

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %str, align 1, !dbg !292
  %cmp1 = icmp eq i8 %0, 0, !dbg !293
  br i1 %cmp1, label %return, label %if.end, !dbg !294

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @xstrdup(ptr noundef nonnull %str) #6, !dbg !295
    #dbg_value(ptr %call, !274, !DIExpression(), !288)
    #dbg_value(ptr %call, !276, !DIExpression(), !288)
  br label %while.cond, !dbg !296

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %name.0 = phi ptr [ %call, %if.end ], [ %name.0.be, %while.cond.backedge ], !dbg !288
    #dbg_value(ptr %name.0, !276, !DIExpression(), !288)
  %1 = load i8, ptr %name.0, align 1, !dbg !297
  switch i8 %1, label %if.end10 [
    i8 0, label %while.end97
    i8 44, label %while.cond.backedge
  ], !dbg !296

while.cond.backedge:                              ; preds = %while.cond, %if.end90
  %name.0.pn = phi ptr [ %call11, %if.end90 ], [ %name.0, %while.cond ]
  %name.0.be = getelementptr inbounds i8, ptr %name.0.pn, i64 1, !dbg !298
  br label %while.cond, !dbg !297, !llvm.loop !299

if.end10:                                         ; preds = %while.cond
  %call11 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %name.0, i32 noundef 44) #7, !dbg !301
    #dbg_value(ptr %call11, !277, !DIExpression(), !298)
  %cmp12.not = icmp eq ptr %call11, null, !dbg !302
  br i1 %cmp12.not, label %if.end15, label %if.then14, !dbg !304

if.then14:                                        ; preds = %if.end10
  store i8 0, ptr %call11, align 1, !dbg !305
  br label %if.end15, !dbg !306

if.end15:                                         ; preds = %if.then14, %if.end10
  %call16 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %name.0, i32 noundef 61) #7, !dbg !307
    #dbg_value(ptr %call16, !279, !DIExpression(), !298)
  %cmp17.not = icmp eq ptr %call16, null, !dbg !308
  br i1 %cmp17.not, label %if.then29, label %lor.lhs.false24, !dbg !310

lor.lhs.false24:                                  ; preds = %if.end15
  %incdec.ptr20 = getelementptr inbounds i8, ptr %call16, i64 1, !dbg !311
    #dbg_value(ptr %incdec.ptr20, !279, !DIExpression(), !298)
  store i8 0, ptr %call16, align 1, !dbg !312
  %2 = load i8, ptr %incdec.ptr20, align 1, !dbg !313
  %cmp27 = icmp eq i8 %2, 0, !dbg !315
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !316

if.then29:                                        ; preds = %if.end15, %lor.lhs.false24
  %value.0157 = phi ptr [ %incdec.ptr20, %lor.lhs.false24 ], [ null, %if.end15 ]
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.20, ptr noundef nonnull %str) #6, !dbg !317
  br label %if.end30, !dbg !317

if.end30:                                         ; preds = %if.then29, %lor.lhs.false24
  %value.0156 = phi ptr [ %value.0157, %if.then29 ], [ %incdec.ptr20, %lor.lhs.false24 ]
    #dbg_value(i64 0, !280, !DIExpression(), !298)
  br label %while.cond31, !dbg !318

while.cond31:                                     ; preds = %if.end38, %if.end30
  %i.0 = phi i64 [ 0, %if.end30 ], [ %inc, %if.end38 ], !dbg !298
    #dbg_value(i64 %i.0, !280, !DIExpression(), !298)
  %arrayidx33 = getelementptr inbounds %struct.option_map, ptr %opts, i64 %i.0, !dbg !319
  %3 = load ptr, ptr %arrayidx33, align 8, !dbg !322
  %cmp35 = icmp eq ptr %3, null, !dbg !323
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !324

if.then37:                                        ; preds = %while.cond31
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.21, ptr noundef nonnull %name.0) #6, !dbg !325
  %.pre = load ptr, ptr %arrayidx33, align 8, !dbg !326
  br label %if.end38, !dbg !325

if.end38:                                         ; preds = %if.then37, %while.cond31
  %4 = phi ptr [ %.pre, %if.then37 ], [ %3, %while.cond31 ], !dbg !326
  %call41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.0, ptr noundef nonnull dereferenceable(1) %4) #7, !dbg !328
  %cmp42 = icmp eq i32 %call41, 0, !dbg !329
  %inc = add i64 %i.0, 1, !dbg !330
    #dbg_value(i64 %inc, !280, !DIExpression(), !298)
  br i1 %cmp42, label %while.end, label %while.cond31, !dbg !331, !llvm.loop !332

while.end:                                        ; preds = %if.end38
  %map = getelementptr inbounds i8, ptr %arrayidx33, i64 8, !dbg !334
  %5 = load ptr, ptr %map, align 8, !dbg !334
  %cmp47.not = icmp eq ptr %5, null, !dbg !335
  br i1 %cmp47.not, label %if.else, label %for.cond.preheader, !dbg !336

for.cond.preheader:                               ; preds = %while.end
    #dbg_value(i64 0, !281, !DIExpression(), !337)
  %6 = load ptr, ptr %5, align 8, !dbg !338
  %cmp54.not160 = icmp eq ptr %6, null, !dbg !341
  br i1 %cmp54.not160, label %if.then72, label %for.body, !dbg !342

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %7 = phi ptr [ %8, %for.inc ], [ %6, %for.cond.preheader ]
  %j.0161 = phi i64 [ %inc65, %for.inc ], [ 0, %for.cond.preheader ]
    #dbg_value(i64 %j.0161, !281, !DIExpression(), !337)
  %call60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %value.0156) #7, !dbg !343
  %cmp61 = icmp eq i32 %call60, 0, !dbg !346
  br i1 %cmp61, label %if.end73, label %for.inc, !dbg !347

for.inc:                                          ; preds = %for.body
  %inc65 = add i64 %j.0161, 1, !dbg !348
    #dbg_value(i64 %inc65, !281, !DIExpression(), !337)
  %arrayidx52 = getelementptr inbounds %struct.name_id_map, ptr %5, i64 %inc65, !dbg !349
  %8 = load ptr, ptr %arrayidx52, align 8, !dbg !338
  %cmp54.not = icmp eq ptr %8, null, !dbg !341
  br i1 %cmp54.not, label %if.then72, label %for.body, !dbg !342, !llvm.loop !350

if.then72:                                        ; preds = %for.inc, %for.cond.preheader
  %j.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %inc65, %for.inc ], !dbg !352
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.22, ptr noundef %value.0156) #6, !dbg !353
  %.pre163 = load ptr, ptr %map, align 8, !dbg !355
  br label %if.end73, !dbg !353

if.end73:                                         ; preds = %for.body, %if.then72
  %9 = phi ptr [ %.pre163, %if.then72 ], [ %5, %for.body ], !dbg !355
  %j.0159 = phi i64 [ %j.0.lcssa, %if.then72 ], [ %j.0161, %for.body ]
  %conv74 = trunc i64 %i.0 to i32, !dbg !356
  %id = getelementptr inbounds %struct.name_id_map, ptr %9, i64 %j.0159, i32 1, !dbg !357
  %10 = load i64, ptr %id, align 8, !dbg !357
  tail call void %set(ptr noundef %filter_options, i32 noundef %conv74, i64 noundef %10, ptr noundef %value.0156) #6, !dbg !358, !callees !359
  br label %if.end90, !dbg !360

if.else:                                          ; preds = %while.end
  %min = getelementptr inbounds i8, ptr %arrayidx33, i64 16, !dbg !361
  %11 = load i64, ptr %min, align 8, !dbg !361
  %cmp79 = icmp eq i64 %11, -1, !dbg !362
  br i1 %cmp79, label %if.then81, label %if.else83, !dbg !363

if.then81:                                        ; preds = %if.else
  %conv82 = trunc i64 %i.0 to i32, !dbg !364
  tail call void %set(ptr noundef %filter_options, i32 noundef %conv82, i64 noundef 0, ptr noundef %value.0156) #6, !dbg !366, !callees !359
  br label %if.end90, !dbg !367

if.else83:                                        ; preds = %if.else
  %max = getelementptr inbounds i8, ptr %arrayidx33, i64 24, !dbg !368
  %12 = load i64, ptr %max, align 8, !dbg !368
  %call87 = tail call i64 @str_to_uint64(ptr noundef nonnull %name.0, ptr noundef %value.0156, i64 noundef %11, i64 noundef %12) #6, !dbg !369
    #dbg_value(i64 %call87, !284, !DIExpression(), !370)
  %conv88 = trunc i64 %i.0 to i32, !dbg !371
  tail call void %set(ptr noundef %filter_options, i32 noundef %conv88, i64 noundef %call87, ptr noundef %value.0156) #6, !dbg !372, !callees !359
  br label %if.end90

if.end90:                                         ; preds = %if.then81, %if.else83, %if.end73
    #dbg_value(ptr poison, !276, !DIExpression(), !288)
  br i1 %cmp12.not, label %while.end97, label %while.cond.backedge

while.end97:                                      ; preds = %if.end90, %while.cond
  tail call void @free(ptr noundef %call) #6, !dbg !373
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %while.end97
  ret void, !dbg !374
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @set_delta(ptr nocapture noundef writeonly %options, i32 noundef %key, i64 noundef %value, ptr nocapture readnone %valuestr) #3 !dbg !375 {
entry:
    #dbg_value(ptr %options, !377, !DIExpression(), !382)
    #dbg_value(i32 %key, !378, !DIExpression(), !382)
    #dbg_value(i64 %value, !379, !DIExpression(), !382)
    #dbg_value(ptr poison, !380, !DIExpression(), !382)
    #dbg_value(ptr %options, !381, !DIExpression(), !382)
  %cond = icmp eq i32 %key, 0, !dbg !383
  br i1 %cond, label %sw.bb, label %sw.epilog, !dbg !383

sw.bb:                                            ; preds = %entry
  %conv = trunc i64 %value to i32, !dbg !384
  %dist = getelementptr inbounds i8, ptr %options, i64 4, !dbg !386
  store i32 %conv, ptr %dist, align 4, !dbg !387
  br label %sw.epilog, !dbg !388

sw.epilog:                                        ; preds = %entry, %sw.bb
  ret void, !dbg !389
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @options_bcj(ptr noundef %str) local_unnamed_addr #0 !dbg !81 {
entry:
    #dbg_value(ptr %str, !91, !DIExpression(), !390)
  %call = tail call ptr @xrealloc(ptr noundef null, i64 noundef 4) #6, !dbg !391
    #dbg_value(ptr %call, !92, !DIExpression(), !390)
  store i32 0, ptr %call, align 4, !dbg !392
  tail call fastcc void @parse_options(ptr noundef %str, ptr noundef nonnull @options_bcj.opts, ptr noundef nonnull @set_bcj, ptr noundef nonnull %call), !dbg !393
  ret ptr %call, !dbg !394
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @set_bcj(ptr nocapture noundef writeonly %options, i32 noundef %key, i64 noundef %value, ptr nocapture readnone %valuestr) #3 !dbg !395 {
entry:
    #dbg_value(ptr %options, !397, !DIExpression(), !402)
    #dbg_value(i32 %key, !398, !DIExpression(), !402)
    #dbg_value(i64 %value, !399, !DIExpression(), !402)
    #dbg_value(ptr poison, !400, !DIExpression(), !402)
    #dbg_value(ptr %options, !401, !DIExpression(), !402)
  %cond = icmp eq i32 %key, 0, !dbg !403
  br i1 %cond, label %sw.bb, label %sw.epilog, !dbg !403

sw.bb:                                            ; preds = %entry
  %conv = trunc i64 %value to i32, !dbg !404
  store i32 %conv, ptr %options, align 4, !dbg !406
  br label %sw.epilog, !dbg !407

sw.epilog:                                        ; preds = %entry, %sw.bb
  ret void, !dbg !408
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @options_lzma(ptr noundef %str) local_unnamed_addr #0 !dbg !123 {
entry:
    #dbg_value(ptr %str, !163, !DIExpression(), !409)
  %call = tail call ptr @xrealloc(ptr noundef null, i64 noundef 112) #6, !dbg !410
    #dbg_value(ptr %call, !164, !DIExpression(), !409)
  %call1 = tail call zeroext i8 @lzma_lzma_preset(ptr noundef %call, i32 noundef 6) #6, !dbg !411
  %tobool.not = icmp eq i8 %call1, 0, !dbg !411
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !413

if.then:                                          ; preds = %entry
  tail call void @message_bug() #6, !dbg !414
  br label %if.end, !dbg !414

if.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @parse_options(ptr noundef %str, ptr noundef nonnull @options_lzma.opts, ptr noundef nonnull @set_lzma, ptr noundef %call), !dbg !415
  %lc = getelementptr inbounds i8, ptr %call, i64 20, !dbg !416
  %0 = load i32, ptr %lc, align 4, !dbg !416
  %lp = getelementptr inbounds i8, ptr %call, i64 24, !dbg !418
  %1 = load i32, ptr %lp, align 8, !dbg !418
  %add = add i32 %1, %0, !dbg !419
  %cmp = icmp ugt i32 %add, 4, !dbg !420
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !421

if.then2:                                         ; preds = %if.end
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.18) #6, !dbg !422
  br label %if.end3, !dbg !422

if.end3:                                          ; preds = %if.then2, %if.end
  %mf = getelementptr inbounds i8, ptr %call, i64 40, !dbg !423
  %2 = load i32, ptr %mf, align 8, !dbg !423
  %and = and i32 %2, 15, !dbg !424
    #dbg_value(i32 %and, !165, !DIExpression(), !409)
  %nice_len = getelementptr inbounds i8, ptr %call, i64 36, !dbg !425
  %3 = load i32, ptr %nice_len, align 4, !dbg !425
  %cmp4 = icmp ult i32 %3, %and, !dbg !427
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !428

if.then5:                                         ; preds = %if.end3
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.19, i32 noundef %and) #6, !dbg !429
  br label %if.end6, !dbg !429

if.end6:                                          ; preds = %if.then5, %if.end3
  ret ptr %call, !dbg !430
}

declare !dbg !431 zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !435 void @message_bug() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @set_lzma(ptr noundef %options, i32 noundef %key, i64 noundef %value, ptr noundef %valuestr) #0 !dbg !439 {
entry:
    #dbg_value(ptr %options, !441, !DIExpression(), !449)
    #dbg_value(i32 %key, !442, !DIExpression(), !449)
    #dbg_value(i64 %value, !443, !DIExpression(), !449)
    #dbg_value(ptr %valuestr, !444, !DIExpression(), !449)
    #dbg_value(ptr %options, !445, !DIExpression(), !449)
  switch i32 %key, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %sw.bb30
    i32 3, label %sw.bb32
    i32 4, label %sw.bb34
    i32 5, label %sw.bb36
    i32 6, label %sw.bb38
    i32 7, label %sw.bb40
    i32 8, label %sw.bb42
  ], !dbg !450

sw.bb:                                            ; preds = %entry
  %0 = load i8, ptr %valuestr, align 1, !dbg !451
  %1 = add i8 %0, -58, !dbg !453
  %or.cond = icmp ult i8 %1, -10, !dbg !453
  br i1 %or.cond, label %if.then, label %if.end, !dbg !453

if.then:                                          ; preds = %sw.bb
    #dbg_value(ptr %valuestr, !454, !DIExpression(), !459)
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.23, ptr noundef nonnull %valuestr) #6, !dbg !461
  %.pre = load i8, ptr %valuestr, align 1, !dbg !462
  br label %if.end, !dbg !463

if.end:                                           ; preds = %sw.bb, %if.then
  %2 = phi i8 [ %0, %sw.bb ], [ %.pre, %if.then ], !dbg !462
  %conv7 = sext i8 %2 to i32, !dbg !462
  %sub = add nsw i32 %conv7, -48, !dbg !464
    #dbg_value(i32 %sub, !446, !DIExpression(), !465)
  %arrayidx8 = getelementptr inbounds i8, ptr %valuestr, i64 1, !dbg !466
  %3 = load i8, ptr %arrayidx8, align 1, !dbg !466
  switch i8 %3, label %if.else [
    i8 0, label %if.end25
    i8 101, label %if.then17
  ], !dbg !468

if.then17:                                        ; preds = %if.end
  %or = or i32 %sub, -2147483648, !dbg !469
    #dbg_value(i32 %or, !446, !DIExpression(), !465)
  br label %if.end18, !dbg !472

if.else:                                          ; preds = %if.end
    #dbg_value(ptr %valuestr, !454, !DIExpression(), !473)
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.23, ptr noundef nonnull %valuestr) #6, !dbg !475
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  %preset.0 = phi i32 [ %or, %if.then17 ], [ %sub, %if.else ], !dbg !465
    #dbg_value(i32 %preset.0, !446, !DIExpression(), !465)
  %arrayidx19 = getelementptr inbounds i8, ptr %valuestr, i64 2, !dbg !476
  %4 = load i8, ptr %arrayidx19, align 1, !dbg !476
  %cmp21.not = icmp eq i8 %4, 0, !dbg !478
  br i1 %cmp21.not, label %if.end25, label %if.then23, !dbg !479

if.then23:                                        ; preds = %if.end18
    #dbg_value(ptr %valuestr, !454, !DIExpression(), !480)
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.23, ptr noundef nonnull %valuestr) #6, !dbg !482
  br label %if.end25, !dbg !483

if.end25:                                         ; preds = %if.end, %if.end18, %if.then23
  %preset.1 = phi i32 [ %preset.0, %if.then23 ], [ %preset.0, %if.end18 ], [ %sub, %if.end ], !dbg !465
    #dbg_value(i32 %preset.1, !446, !DIExpression(), !465)
  %call = tail call zeroext i8 @lzma_lzma_preset(ptr noundef %options, i32 noundef %preset.1) #6, !dbg !484
  %tobool.not = icmp eq i8 %call, 0, !dbg !484
  br i1 %tobool.not, label %sw.epilog, label %if.then26, !dbg !486

if.then26:                                        ; preds = %if.end25
    #dbg_value(ptr %valuestr, !454, !DIExpression(), !487)
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.23, ptr noundef nonnull %valuestr) #6, !dbg !489
  br label %sw.epilog, !dbg !490

sw.bb28:                                          ; preds = %entry
  %conv29 = trunc i64 %value to i32, !dbg !491
  store i32 %conv29, ptr %options, align 8, !dbg !492
  br label %sw.epilog, !dbg !493

sw.bb30:                                          ; preds = %entry
  %conv31 = trunc i64 %value to i32, !dbg !494
  %lc = getelementptr inbounds i8, ptr %options, i64 20, !dbg !495
  store i32 %conv31, ptr %lc, align 4, !dbg !496
  br label %sw.epilog, !dbg !497

sw.bb32:                                          ; preds = %entry
  %conv33 = trunc i64 %value to i32, !dbg !498
  %lp = getelementptr inbounds i8, ptr %options, i64 24, !dbg !499
  store i32 %conv33, ptr %lp, align 8, !dbg !500
  br label %sw.epilog, !dbg !501

sw.bb34:                                          ; preds = %entry
  %conv35 = trunc i64 %value to i32, !dbg !502
  %pb = getelementptr inbounds i8, ptr %options, i64 28, !dbg !503
  store i32 %conv35, ptr %pb, align 4, !dbg !504
  br label %sw.epilog, !dbg !505

sw.bb36:                                          ; preds = %entry
  %conv37 = trunc i64 %value to i32, !dbg !506
  %mode = getelementptr inbounds i8, ptr %options, i64 32, !dbg !507
  store i32 %conv37, ptr %mode, align 8, !dbg !508
  br label %sw.epilog, !dbg !509

sw.bb38:                                          ; preds = %entry
  %conv39 = trunc i64 %value to i32, !dbg !510
  %nice_len = getelementptr inbounds i8, ptr %options, i64 36, !dbg !511
  store i32 %conv39, ptr %nice_len, align 4, !dbg !512
  br label %sw.epilog, !dbg !513

sw.bb40:                                          ; preds = %entry
  %conv41 = trunc i64 %value to i32, !dbg !514
  %mf = getelementptr inbounds i8, ptr %options, i64 40, !dbg !515
  store i32 %conv41, ptr %mf, align 8, !dbg !516
  br label %sw.epilog, !dbg !517

sw.bb42:                                          ; preds = %entry
  %conv43 = trunc i64 %value to i32, !dbg !518
  %depth = getelementptr inbounds i8, ptr %options, i64 44, !dbg !519
  store i32 %conv43, ptr %depth, align 4, !dbg !520
  br label %sw.epilog, !dbg !521

sw.epilog:                                        ; preds = %if.end25, %if.then26, %entry, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28
  ret void, !dbg !522
}

declare !dbg !523 void @message_fatal(ptr noundef, ...) local_unnamed_addr #1

declare !dbg !526 ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !529 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !534 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !537 i64 @str_to_uint64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !540 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!32}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249}
!llvm.ident = !{!250}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "opts", scope: !2, file: !3, line: 167, type: !93, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "options_delta", scope: !3, file: !3, line: 165, type: !4, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !240)
!3 = !DIFile(filename: "xz/options.c", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "0c80b77c8e14162661050690b3287426")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !29}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_delta", file: !8, line: 77, baseType: !9)
!8 = !DIFile(filename: "liblzma/api/lzma/delta.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "397cde14a8f4a544385c9c6ecc7e0cc9")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 45, size: 320, elements: !10)
!10 = !{!11, !17, !22, !23, !24, !25, !26, !28}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !8, line: 47, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_delta_type", file: !8, line: 37, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 35, baseType: !14, size: 32, elements: !15)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16}
!16 = !DIEnumerator(name: "LZMA_DELTA_TYPE_BYTE", value: 0)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !9, file: !8, line: 59, baseType: !18, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !19, line: 26, baseType: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !21, line: 42, baseType: !14)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!22 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !9, file: !8, line: 70, baseType: !18, size: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !9, file: !8, line: 71, baseType: !18, size: 32, offset: 96)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !9, file: !8, line: 72, baseType: !18, size: 32, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !9, file: !8, line: 73, baseType: !18, size: 32, offset: 160)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !9, file: !8, line: 74, baseType: !27, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !9, file: !8, line: 75, baseType: !27, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !67, globals: !68, splitDebugInlining: false, nameTableKind: None)
!33 = !{!13, !34, !39, !46, !50, !53, !56}
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 138, baseType: !14, size: 32, elements: !36)
!35 = !DIFile(filename: "liblzma/api/lzma/lzma.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!38 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 58, baseType: !14, size: 32, elements: !40)
!40 = !{!41, !42, !43, !44, !45}
!41 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!42 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!43 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!44 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!45 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !47, line: 44, baseType: !14, size: 32, elements: !48)
!47 = !DIFile(filename: "liblzma/api/lzma/base.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!48 = !{!49}
!49 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 146, baseType: !14, size: 32, elements: !51)
!51 = !{!52}
!52 = !DIEnumerator(name: "OPT_DIST", value: 0)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 190, baseType: !14, size: 32, elements: !54)
!54 = !{!55}
!55 = !DIEnumerator(name: "OPT_START_OFFSET", value: 0)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 231, baseType: !14, size: 32, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66}
!58 = !DIEnumerator(name: "OPT_PRESET", value: 0)
!59 = !DIEnumerator(name: "OPT_DICT", value: 1)
!60 = !DIEnumerator(name: "OPT_LC", value: 2)
!61 = !DIEnumerator(name: "OPT_LP", value: 3)
!62 = !DIEnumerator(name: "OPT_PB", value: 4)
!63 = !DIEnumerator(name: "OPT_MODE", value: 5)
!64 = !DIEnumerator(name: "OPT_NICE", value: 6)
!65 = !DIEnumerator(name: "OPT_MF", value: 7)
!66 = !DIEnumerator(name: "OPT_DEPTH", value: 8)
!67 = !{!27}
!68 = !{!69, !0, !74, !79, !114, !116, !121, !170, !175, !177, !179, !181, !183, !186, !188, !190, !193, !195, !197, !199, !201, !203, !205, !210, !215, !220, !225, !230, !235}
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !3, line: 168, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 40, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 5)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !3, line: 212, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 48, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 6)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "opts", scope: !81, file: !3, line: 211, type: !93, isLocal: true, isDefinition: true)
!81 = distinct !DISubprogram(name: "options_bcj", scope: !3, file: !3, line: 209, type: !82, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !90)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !29}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_bcj", file: !86, line: 90, baseType: !87)
!86 = !DIFile(filename: "liblzma/api/lzma/bcj.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "a1035092336f34cf9afafbb05b1edd83")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 73, size: 32, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "start_offset", scope: !87, file: !86, line: 88, baseType: !18, size: 32)
!90 = !{!91, !92}
!91 = !DILocalVariable(name: "str", arg: 1, scope: !81, file: !3, line: 209, type: !29)
!92 = !DILocalVariable(name: "options", scope: !81, file: !3, line: 216, type: !84)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 512, elements: !112)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "option_map", file: !3, line: 31, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 26, size: 256, elements: !97)
!97 = !{!98, !99, !110, !111}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !96, file: !3, line: 27, baseType: !29, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !96, file: !3, line: 28, baseType: !100, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "name_id_map", file: !3, line: 23, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 20, size: 128, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !3, line: 21, baseType: !29, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !103, file: !3, line: 22, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !19, line: 27, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !21, line: 45, baseType: !109)
!109 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !96, file: !3, line: 29, baseType: !107, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !96, file: !3, line: 30, baseType: !107, size: 64, offset: 192)
!112 = !{!113}
!113 = !DISubrange(count: 2)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !3, line: 320, type: !71, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 56, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 7)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "modes", scope: !123, file: !3, line: 319, type: !167, isLocal: true, isDefinition: true)
!123 = distinct !DISubprogram(name: "options_lzma", scope: !3, file: !3, line: 317, type: !124, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !162)
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !29}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !35, line: 399, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 185, size: 896, elements: !129)
!129 = !{!130, !131, !137, !138, !139, !140, !141, !143, !144, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !157, !158, !159, !160, !161}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !128, file: !35, line: 217, baseType: !18, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !128, file: !35, line: 240, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !19, line: 24, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !21, line: 38, baseType: !136)
!136 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !128, file: !35, line: 254, baseType: !18, size: 32, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !128, file: !35, line: 281, baseType: !18, size: 32, offset: 160)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !128, file: !35, line: 293, baseType: !18, size: 32, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !128, file: !35, line: 316, baseType: !18, size: 32, offset: 224)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !128, file: !35, line: 322, baseType: !142, size: 32, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !35, line: 155, baseType: !34)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !128, file: !35, line: 342, baseType: !18, size: 32, offset: 288)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !128, file: !35, line: 345, baseType: !145, size: 32, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !35, line: 111, baseType: !39)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !128, file: !35, line: 375, baseType: !18, size: 32, offset: 352)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !128, file: !35, line: 384, baseType: !18, size: 32, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !128, file: !35, line: 385, baseType: !18, size: 32, offset: 416)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !128, file: !35, line: 386, baseType: !18, size: 32, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !128, file: !35, line: 387, baseType: !18, size: 32, offset: 480)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !128, file: !35, line: 388, baseType: !18, size: 32, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !128, file: !35, line: 389, baseType: !18, size: 32, offset: 544)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !128, file: !35, line: 390, baseType: !18, size: 32, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !128, file: !35, line: 391, baseType: !18, size: 32, offset: 608)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !128, file: !35, line: 392, baseType: !156, size: 32, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !47, line: 46, baseType: !46)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !128, file: !35, line: 393, baseType: !156, size: 32, offset: 672)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !128, file: !35, line: 394, baseType: !156, size: 32, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !128, file: !35, line: 395, baseType: !156, size: 32, offset: 736)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !128, file: !35, line: 396, baseType: !27, size: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !128, file: !35, line: 397, baseType: !27, size: 64, offset: 832)
!162 = !{!163, !164, !165}
!163 = !DILocalVariable(name: "str", arg: 1, scope: !123, file: !3, line: 317, type: !29)
!164 = !DILocalVariable(name: "options", scope: !123, file: !3, line: 348, type: !126)
!165 = !DILocalVariable(name: "nice_len_min", scope: !123, file: !3, line: 357, type: !166)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 384, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 3)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !3, line: 326, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 4)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !3, line: 327, type: !172, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 328, type: !172, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !172, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 330, type: !172, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "mfs", scope: !123, file: !3, line: 325, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 768, elements: !77)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 335, type: !118, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 336, type: !71, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !3, line: 338, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, elements: !168)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 339, type: !192, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !3, line: 340, type: !192, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !3, line: 341, type: !71, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !3, line: 342, type: !71, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !3, line: 343, type: !192, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !3, line: 344, type: !76, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "opts", scope: !123, file: !3, line: 334, type: !207, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2560, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 10)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !3, line: 355, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 312, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 39)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !3, line: 359, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 416, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 52)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 488, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 61)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 192, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 24)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 200, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 25)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 280, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 35)
!240 = !{!241, !242}
!241 = !DILocalVariable(name: "str", arg: 1, scope: !2, file: !3, line: 165, type: !29)
!242 = !DILocalVariable(name: "options", scope: !2, file: !3, line: 173, type: !6)
!243 = !{i32 7, !"Dwarf Version", i32 5}
!244 = !{i32 2, !"Debug Info Version", i32 3}
!245 = !{i32 1, !"wchar_size", i32 4}
!246 = !{i32 8, !"PIC Level", i32 2}
!247 = !{i32 7, !"PIE Level", i32 2}
!248 = !{i32 7, !"uwtable", i32 2}
!249 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!250 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!251 = !DILocation(line: 0, scope: !2)
!252 = !DILocation(line: 173, column: 32, scope: !2)
!253 = !DILocation(line: 174, column: 13, scope: !2)
!254 = !DILocation(line: 180, column: 2, scope: !2)
!255 = !DILocation(line: 182, column: 2, scope: !2)
!256 = !DISubprogram(name: "xrealloc", scope: !257, file: !257, line: 22, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DIFile(filename: "xz/util.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "36136e1fc433f9fd7b2b728f8484a043")
!258 = !DISubroutineType(types: !259)
!259 = !{!27, !27, !260}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !261, line: 18, baseType: !109)
!261 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!262 = distinct !DISubprogram(name: "parse_options", scope: !3, file: !3, line: 60, type: !263, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !269)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !29, !265, !266, !27}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !27, !18, !107, !29}
!269 = !{!270, !271, !272, !273, !274, !276, !277, !279, !280, !281, !284}
!270 = !DILocalVariable(name: "str", arg: 1, scope: !262, file: !3, line: 60, type: !29)
!271 = !DILocalVariable(name: "opts", arg: 2, scope: !262, file: !3, line: 60, type: !265)
!272 = !DILocalVariable(name: "set", arg: 3, scope: !262, file: !3, line: 61, type: !266)
!273 = !DILocalVariable(name: "filter_options", arg: 4, scope: !262, file: !3, line: 63, type: !27)
!274 = !DILocalVariable(name: "s", scope: !262, file: !3, line: 68, type: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!276 = !DILocalVariable(name: "name", scope: !262, file: !3, line: 69, type: !275)
!277 = !DILocalVariable(name: "split", scope: !278, file: !3, line: 77, type: !275)
!278 = distinct !DILexicalBlock(scope: !262, file: !3, line: 71, column: 24)
!279 = !DILocalVariable(name: "value", scope: !278, file: !3, line: 81, type: !275)
!280 = !DILocalVariable(name: "i", scope: !278, file: !3, line: 90, type: !260)
!281 = !DILocalVariable(name: "j", scope: !282, file: !3, line: 106, type: !260)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 103, column: 28)
!283 = distinct !DILexicalBlock(scope: !278, file: !3, line: 103, column: 7)
!284 = !DILocalVariable(name: "v", scope: !285, file: !3, line: 125, type: !287)
!285 = distinct !DILexicalBlock(scope: !286, file: !3, line: 123, column: 10)
!286 = distinct !DILexicalBlock(scope: !283, file: !3, line: 118, column: 14)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!288 = !DILocation(line: 0, scope: !262)
!289 = !DILocation(line: 65, column: 10, scope: !290)
!290 = distinct !DILexicalBlock(scope: !262, file: !3, line: 65, column: 6)
!291 = !DILocation(line: 65, column: 18, scope: !290)
!292 = !DILocation(line: 65, column: 21, scope: !290)
!293 = !DILocation(line: 65, column: 28, scope: !290)
!294 = !DILocation(line: 65, column: 6, scope: !262)
!295 = !DILocation(line: 68, column: 12, scope: !262)
!296 = !DILocation(line: 71, column: 2, scope: !262)
!297 = !DILocation(line: 71, column: 9, scope: !262)
!298 = !DILocation(line: 0, scope: !278)
!299 = distinct !{!299, !296, !300}
!300 = !DILocation(line: 135, column: 2, scope: !262)
!301 = !DILocation(line: 77, column: 17, scope: !278)
!302 = !DILocation(line: 78, column: 13, scope: !303)
!303 = distinct !DILexicalBlock(scope: !278, file: !3, line: 78, column: 7)
!304 = !DILocation(line: 78, column: 7, scope: !278)
!305 = !DILocation(line: 79, column: 11, scope: !303)
!306 = !DILocation(line: 79, column: 4, scope: !303)
!307 = !DILocation(line: 81, column: 17, scope: !278)
!308 = !DILocation(line: 82, column: 13, scope: !309)
!309 = distinct !DILexicalBlock(scope: !278, file: !3, line: 82, column: 7)
!310 = !DILocation(line: 82, column: 7, scope: !278)
!311 = !DILocation(line: 83, column: 10, scope: !309)
!312 = !DILocation(line: 83, column: 13, scope: !309)
!313 = !DILocation(line: 85, column: 24, scope: !314)
!314 = distinct !DILexicalBlock(scope: !278, file: !3, line: 85, column: 7)
!315 = !DILocation(line: 85, column: 33, scope: !314)
!316 = !DILocation(line: 85, column: 7, scope: !278)
!317 = !DILocation(line: 86, column: 4, scope: !314)
!318 = !DILocation(line: 91, column: 3, scope: !278)
!319 = !DILocation(line: 92, column: 8, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !3, line: 92, column: 8)
!321 = distinct !DILexicalBlock(scope: !278, file: !3, line: 91, column: 16)
!322 = !DILocation(line: 92, column: 16, scope: !320)
!323 = !DILocation(line: 92, column: 21, scope: !320)
!324 = !DILocation(line: 92, column: 8, scope: !321)
!325 = !DILocation(line: 93, column: 5, scope: !320)
!326 = !DILocation(line: 96, column: 29, scope: !327)
!327 = distinct !DILexicalBlock(scope: !321, file: !3, line: 96, column: 8)
!328 = !DILocation(line: 96, column: 8, scope: !327)
!329 = !DILocation(line: 96, column: 35, scope: !327)
!330 = !DILocation(line: 99, column: 4, scope: !321)
!331 = !DILocation(line: 96, column: 8, scope: !321)
!332 = distinct !{!332, !318, !333}
!333 = !DILocation(line: 100, column: 3, scope: !278)
!334 = !DILocation(line: 103, column: 15, scope: !283)
!335 = !DILocation(line: 103, column: 19, scope: !283)
!336 = !DILocation(line: 103, column: 7, scope: !278)
!337 = !DILocation(line: 0, scope: !282)
!338 = !DILocation(line: 107, column: 31, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 107, column: 4)
!340 = distinct !DILexicalBlock(scope: !282, file: !3, line: 107, column: 4)
!341 = !DILocation(line: 107, column: 36, scope: !339)
!342 = !DILocation(line: 107, column: 4, scope: !340)
!343 = !DILocation(line: 108, column: 9, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 108, column: 9)
!345 = distinct !DILexicalBlock(scope: !339, file: !3, line: 107, column: 50)
!346 = !DILocation(line: 108, column: 44, scope: !344)
!347 = !DILocation(line: 108, column: 9, scope: !345)
!348 = !DILocation(line: 107, column: 45, scope: !339)
!349 = !DILocation(line: 107, column: 16, scope: !339)
!350 = distinct !{!350, !342, !351}
!351 = !DILocation(line: 110, column: 4, scope: !340)
!352 = !DILocation(line: 107, scope: !340)
!353 = !DILocation(line: 113, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !282, file: !3, line: 112, column: 8)
!355 = !DILocation(line: 116, column: 35, scope: !282)
!356 = !DILocation(line: 116, column: 24, scope: !282)
!357 = !DILocation(line: 116, column: 42, scope: !282)
!358 = !DILocation(line: 116, column: 4, scope: !282)
!359 = !{ptr @set_bcj, ptr @set_delta, ptr @set_lzma}
!360 = !DILocation(line: 118, column: 3, scope: !282)
!361 = !DILocation(line: 118, column: 22, scope: !286)
!362 = !DILocation(line: 118, column: 26, scope: !286)
!363 = !DILocation(line: 118, column: 14, scope: !283)
!364 = !DILocation(line: 121, column: 24, scope: !365)
!365 = distinct !DILexicalBlock(scope: !286, file: !3, line: 118, column: 41)
!366 = !DILocation(line: 121, column: 4, scope: !365)
!367 = !DILocation(line: 123, column: 3, scope: !365)
!368 = !DILocation(line: 126, column: 27, scope: !285)
!369 = !DILocation(line: 125, column: 23, scope: !285)
!370 = !DILocation(line: 0, scope: !285)
!371 = !DILocation(line: 127, column: 24, scope: !285)
!372 = !DILocation(line: 127, column: 4, scope: !285)
!373 = !DILocation(line: 137, column: 2, scope: !262)
!374 = !DILocation(line: 139, column: 1, scope: !262)
!375 = distinct !DISubprogram(name: "set_delta", scope: !3, file: !3, line: 152, type: !267, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !376)
!376 = !{!377, !378, !379, !380, !381}
!377 = !DILocalVariable(name: "options", arg: 1, scope: !375, file: !3, line: 152, type: !27)
!378 = !DILocalVariable(name: "key", arg: 2, scope: !375, file: !3, line: 152, type: !18)
!379 = !DILocalVariable(name: "value", arg: 3, scope: !375, file: !3, line: 152, type: !107)
!380 = !DILocalVariable(name: "valuestr", arg: 4, scope: !375, file: !3, line: 153, type: !29)
!381 = !DILocalVariable(name: "opt", scope: !375, file: !3, line: 155, type: !6)
!382 = !DILocation(line: 0, scope: !375)
!383 = !DILocation(line: 156, column: 2, scope: !375)
!384 = !DILocation(line: 158, column: 15, scope: !385)
!385 = distinct !DILexicalBlock(scope: !375, file: !3, line: 156, column: 15)
!386 = !DILocation(line: 158, column: 8, scope: !385)
!387 = !DILocation(line: 158, column: 13, scope: !385)
!388 = !DILocation(line: 159, column: 3, scope: !385)
!389 = !DILocation(line: 161, column: 1, scope: !375)
!390 = !DILocation(line: 0, scope: !81)
!391 = !DILocation(line: 216, column: 30, scope: !81)
!392 = !DILocation(line: 217, column: 13, scope: !81)
!393 = !DILocation(line: 221, column: 2, scope: !81)
!394 = !DILocation(line: 223, column: 2, scope: !81)
!395 = distinct !DISubprogram(name: "set_bcj", scope: !3, file: !3, line: 196, type: !267, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !396)
!396 = !{!397, !398, !399, !400, !401}
!397 = !DILocalVariable(name: "options", arg: 1, scope: !395, file: !3, line: 196, type: !27)
!398 = !DILocalVariable(name: "key", arg: 2, scope: !395, file: !3, line: 196, type: !18)
!399 = !DILocalVariable(name: "value", arg: 3, scope: !395, file: !3, line: 196, type: !107)
!400 = !DILocalVariable(name: "valuestr", arg: 4, scope: !395, file: !3, line: 197, type: !29)
!401 = !DILocalVariable(name: "opt", scope: !395, file: !3, line: 199, type: !84)
!402 = !DILocation(line: 0, scope: !395)
!403 = !DILocation(line: 200, column: 2, scope: !395)
!404 = !DILocation(line: 202, column: 23, scope: !405)
!405 = distinct !DILexicalBlock(scope: !395, file: !3, line: 200, column: 15)
!406 = !DILocation(line: 202, column: 21, scope: !405)
!407 = !DILocation(line: 203, column: 3, scope: !405)
!408 = !DILocation(line: 205, column: 1, scope: !395)
!409 = !DILocation(line: 0, scope: !123)
!410 = !DILocation(line: 348, column: 31, scope: !123)
!411 = !DILocation(line: 349, column: 6, scope: !412)
!412 = distinct !DILexicalBlock(scope: !123, file: !3, line: 349, column: 6)
!413 = !DILocation(line: 349, column: 6, scope: !123)
!414 = !DILocation(line: 350, column: 3, scope: !412)
!415 = !DILocation(line: 352, column: 2, scope: !123)
!416 = !DILocation(line: 354, column: 15, scope: !417)
!417 = distinct !DILexicalBlock(scope: !123, file: !3, line: 354, column: 6)
!418 = !DILocation(line: 354, column: 29, scope: !417)
!419 = !DILocation(line: 354, column: 18, scope: !417)
!420 = !DILocation(line: 354, column: 32, scope: !417)
!421 = !DILocation(line: 354, column: 6, scope: !123)
!422 = !DILocation(line: 355, column: 3, scope: !417)
!423 = !DILocation(line: 357, column: 41, scope: !123)
!424 = !DILocation(line: 357, column: 44, scope: !123)
!425 = !DILocation(line: 358, column: 15, scope: !426)
!426 = distinct !DILexicalBlock(scope: !123, file: !3, line: 358, column: 6)
!427 = !DILocation(line: 358, column: 24, scope: !426)
!428 = !DILocation(line: 358, column: 6, scope: !123)
!429 = !DILocation(line: 359, column: 3, scope: !426)
!430 = !DILocation(line: 362, column: 2, scope: !123)
!431 = !DISubprogram(name: "lzma_lzma_preset", scope: !35, file: !35, line: 419, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DISubroutineType(types: !433)
!433 = !{!434, !126, !18}
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !47, line: 29, baseType: !136)
!435 = !DISubprogram(name: "message_bug", scope: !436, file: !436, line: 77, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DIFile(filename: "xz/message.h", directory: "/home/yjs/workspace/xz-test/src", checksumkind: CSK_MD5, checksum: "46ce4fae4ea23be71658f9b2e1a5aef3")
!437 = !DISubroutineType(types: !438)
!438 = !{null}
!439 = distinct !DISubprogram(name: "set_lzma", scope: !3, file: !3, line: 252, type: !267, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !440)
!440 = !{!441, !442, !443, !444, !445, !446}
!441 = !DILocalVariable(name: "options", arg: 1, scope: !439, file: !3, line: 252, type: !27)
!442 = !DILocalVariable(name: "key", arg: 2, scope: !439, file: !3, line: 252, type: !18)
!443 = !DILocalVariable(name: "value", arg: 3, scope: !439, file: !3, line: 252, type: !107)
!444 = !DILocalVariable(name: "valuestr", arg: 4, scope: !439, file: !3, line: 252, type: !29)
!445 = !DILocalVariable(name: "opt", scope: !439, file: !3, line: 254, type: !126)
!446 = !DILocalVariable(name: "preset", scope: !447, file: !3, line: 261, type: !18)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 257, column: 19)
!448 = distinct !DILexicalBlock(scope: !439, file: !3, line: 256, column: 15)
!449 = !DILocation(line: 0, scope: !439)
!450 = !DILocation(line: 256, column: 2, scope: !439)
!451 = !DILocation(line: 258, column: 7, scope: !452)
!452 = distinct !DILexicalBlock(scope: !447, file: !3, line: 258, column: 7)
!453 = !DILocation(line: 258, column: 25, scope: !452)
!454 = !DILocalVariable(name: "valuestr", arg: 1, scope: !455, file: !3, line: 245, type: !29)
!455 = distinct !DISubprogram(name: "error_lzma_preset", scope: !3, file: !3, line: 245, type: !456, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !458)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !29}
!458 = !{!454}
!459 = !DILocation(line: 0, scope: !455, inlinedAt: !460)
!460 = distinct !DILocation(line: 259, column: 4, scope: !452)
!461 = !DILocation(line: 247, column: 2, scope: !455, inlinedAt: !460)
!462 = !DILocation(line: 261, column: 21, scope: !447)
!463 = !DILocation(line: 259, column: 4, scope: !452)
!464 = !DILocation(line: 261, column: 33, scope: !447)
!465 = !DILocation(line: 0, scope: !447)
!466 = !DILocation(line: 265, column: 7, scope: !467)
!467 = distinct !DILexicalBlock(scope: !447, file: !3, line: 265, column: 7)
!468 = !DILocation(line: 265, column: 7, scope: !447)
!469 = !DILocation(line: 267, column: 12, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !3, line: 266, column: 8)
!471 = distinct !DILexicalBlock(scope: !467, file: !3, line: 265, column: 28)
!472 = !DILocation(line: 267, column: 5, scope: !470)
!473 = !DILocation(line: 0, scope: !455, inlinedAt: !474)
!474 = distinct !DILocation(line: 269, column: 5, scope: !470)
!475 = !DILocation(line: 247, column: 2, scope: !455, inlinedAt: !474)
!476 = !DILocation(line: 271, column: 8, scope: !477)
!477 = distinct !DILexicalBlock(scope: !471, file: !3, line: 271, column: 8)
!478 = !DILocation(line: 271, column: 20, scope: !477)
!479 = !DILocation(line: 271, column: 8, scope: !471)
!480 = !DILocation(line: 0, scope: !455, inlinedAt: !481)
!481 = distinct !DILocation(line: 272, column: 5, scope: !477)
!482 = !DILocation(line: 247, column: 2, scope: !455, inlinedAt: !481)
!483 = !DILocation(line: 272, column: 5, scope: !477)
!484 = !DILocation(line: 275, column: 7, scope: !485)
!485 = distinct !DILexicalBlock(scope: !447, file: !3, line: 275, column: 7)
!486 = !DILocation(line: 275, column: 7, scope: !447)
!487 = !DILocation(line: 0, scope: !455, inlinedAt: !488)
!488 = distinct !DILocation(line: 276, column: 4, scope: !485)
!489 = !DILocation(line: 247, column: 2, scope: !455, inlinedAt: !488)
!490 = !DILocation(line: 276, column: 4, scope: !485)
!491 = !DILocation(line: 282, column: 20, scope: !448)
!492 = !DILocation(line: 282, column: 18, scope: !448)
!493 = !DILocation(line: 283, column: 3, scope: !448)
!494 = !DILocation(line: 286, column: 13, scope: !448)
!495 = !DILocation(line: 286, column: 8, scope: !448)
!496 = !DILocation(line: 286, column: 11, scope: !448)
!497 = !DILocation(line: 287, column: 3, scope: !448)
!498 = !DILocation(line: 290, column: 13, scope: !448)
!499 = !DILocation(line: 290, column: 8, scope: !448)
!500 = !DILocation(line: 290, column: 11, scope: !448)
!501 = !DILocation(line: 291, column: 3, scope: !448)
!502 = !DILocation(line: 294, column: 13, scope: !448)
!503 = !DILocation(line: 294, column: 8, scope: !448)
!504 = !DILocation(line: 294, column: 11, scope: !448)
!505 = !DILocation(line: 295, column: 3, scope: !448)
!506 = !DILocation(line: 298, column: 15, scope: !448)
!507 = !DILocation(line: 298, column: 8, scope: !448)
!508 = !DILocation(line: 298, column: 13, scope: !448)
!509 = !DILocation(line: 299, column: 3, scope: !448)
!510 = !DILocation(line: 302, column: 19, scope: !448)
!511 = !DILocation(line: 302, column: 8, scope: !448)
!512 = !DILocation(line: 302, column: 17, scope: !448)
!513 = !DILocation(line: 303, column: 3, scope: !448)
!514 = !DILocation(line: 306, column: 13, scope: !448)
!515 = !DILocation(line: 306, column: 8, scope: !448)
!516 = !DILocation(line: 306, column: 11, scope: !448)
!517 = !DILocation(line: 307, column: 3, scope: !448)
!518 = !DILocation(line: 310, column: 16, scope: !448)
!519 = !DILocation(line: 310, column: 8, scope: !448)
!520 = !DILocation(line: 310, column: 14, scope: !448)
!521 = !DILocation(line: 311, column: 3, scope: !448)
!522 = !DILocation(line: 313, column: 1, scope: !439)
!523 = !DISubprogram(name: "message_fatal", scope: !436, file: !436, line: 70, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !29, null}
!526 = !DISubprogram(name: "xstrdup", scope: !257, file: !257, line: 27, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!527 = !DISubroutineType(types: !528)
!528 = !{!275, !29}
!529 = !DISubprogram(name: "strchr", scope: !530, file: !530, line: 246, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!530 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!531 = !DISubroutineType(types: !532)
!532 = !{!275, !29, !533}
!533 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!534 = !DISubprogram(name: "strcmp", scope: !530, file: !530, line: 156, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!535 = !DISubroutineType(types: !536)
!536 = !{!533, !29, !29}
!537 = !DISubprogram(name: "str_to_uint64", scope: !257, file: !257, line: 41, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DISubroutineType(types: !539)
!539 = !{!107, !29, !29, !107, !107}
!540 = !DISubprogram(name: "free", scope: !541, file: !541, line: 555, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!542 = !DISubroutineType(types: !543)
!543 = !{null, !27}
