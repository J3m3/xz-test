; ModuleID = 'xz/options.c'
source_filename = "xz/options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option_map = type { ptr, ptr, i64, i64 }
%struct.name_id_map = type { ptr, i64 }

@options_delta.opts = internal constant [2 x %struct.option_map] [%struct.option_map { ptr @.str, ptr null, i64 1, i64 256 }, %struct.option_map zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"dist\00", align 1
@options_bcj.opts = internal constant [2 x %struct.option_map] [%struct.option_map { ptr @.str.1, ptr null, i64 0, i64 4294967295 }, %struct.option_map zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@options_lzma.modes = internal constant [3 x %struct.name_id_map] [%struct.name_id_map { ptr @.str.2, i64 1 }, %struct.name_id_map { ptr @.str.3, i64 2 }, %struct.name_id_map zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@options_lzma.mfs = internal constant [6 x %struct.name_id_map] [%struct.name_id_map { ptr @.str.4, i64 3 }, %struct.name_id_map { ptr @.str.5, i64 4 }, %struct.name_id_map { ptr @.str.6, i64 18 }, %struct.name_id_map { ptr @.str.7, i64 19 }, %struct.name_id_map { ptr @.str.8, i64 20 }, %struct.name_id_map zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"hc3\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"hc4\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bt2\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"bt3\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bt4\00", align 1
@options_lzma.opts = internal constant [10 x %struct.option_map] [%struct.option_map { ptr @.str.9, ptr null, i64 -1, i64 0 }, %struct.option_map { ptr @.str.10, ptr null, i64 4096, i64 1610612736 }, %struct.option_map { ptr @.str.11, ptr null, i64 0, i64 4 }, %struct.option_map { ptr @.str.12, ptr null, i64 0, i64 4 }, %struct.option_map { ptr @.str.13, ptr null, i64 0, i64 4 }, %struct.option_map { ptr @.str.14, ptr @options_lzma.modes, i64 0, i64 0 }, %struct.option_map { ptr @.str.15, ptr null, i64 2, i64 273 }, %struct.option_map { ptr @.str.16, ptr @options_lzma.mfs, i64 0, i64 0 }, %struct.option_map { ptr @.str.17, ptr null, i64 0, i64 4294967295 }, %struct.option_map zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"lc\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"lp\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"pb\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"mf\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"The sum of lc and lp must not exceed 4\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"The selected match finder requires at least nice=%u\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"%s: Options must be `name=value' pairs separated with commas\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"%s: Invalid option name\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"%s: Invalid option value\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Unsupported LZMA1/LZMA2 preset: %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @options_delta(ptr noundef %str) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @xrealloc(ptr noundef null, i64 noundef 40) #6
  store i32 0, ptr %call, align 8
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %call, i64 4
  store i32 1, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %call, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.compoundliteral.sroa.4.0..sroa_idx, i8 0, i64 32, i1 false)
  tail call fastcc void @parse_options(ptr noundef %str, ptr noundef nonnull @options_delta.opts, ptr noundef nonnull @set_delta, ptr noundef nonnull %call)
  ret ptr %call
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_options(ptr noundef %str, ptr nocapture noundef readonly %opts, ptr nocapture noundef readonly %set, ptr noundef %filter_options) unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %str, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %str, align 1
  %cmp1 = icmp eq i8 %0, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @xstrdup(ptr noundef nonnull %str) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %name.0 = phi ptr [ %call, %if.end ], [ %name.0.be, %while.cond.backedge ]
  %1 = load i8, ptr %name.0, align 1
  switch i8 %1, label %if.end10 [
    i8 0, label %while.end97
    i8 44, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %if.end90
  %name.0.pn = phi ptr [ %call11, %if.end90 ], [ %name.0, %while.cond ]
  %name.0.be = getelementptr inbounds i8, ptr %name.0.pn, i64 1
  br label %while.cond

if.end10:                                         ; preds = %while.cond
  %call11 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %name.0, i32 noundef 44) #7
  %cmp12.not = icmp eq ptr %call11, null
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end10
  store i8 0, ptr %call11, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10
  %call16 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %name.0, i32 noundef 61) #7
  %cmp17.not = icmp eq ptr %call16, null
  br i1 %cmp17.not, label %if.then29, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end15
  %incdec.ptr20 = getelementptr inbounds i8, ptr %call16, i64 1
  store i8 0, ptr %call16, align 1
  %2 = load i8, ptr %incdec.ptr20, align 1
  %cmp27 = icmp eq i8 %2, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end15, %lor.lhs.false24
  %value.0157 = phi ptr [ %incdec.ptr20, %lor.lhs.false24 ], [ null, %if.end15 ]
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.20, ptr noundef nonnull %str) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %lor.lhs.false24
  %value.0156 = phi ptr [ %value.0157, %if.then29 ], [ %incdec.ptr20, %lor.lhs.false24 ]
  br label %while.cond31

while.cond31:                                     ; preds = %if.end38, %if.end30
  %i.0 = phi i64 [ 0, %if.end30 ], [ %inc, %if.end38 ]
  %arrayidx33 = getelementptr inbounds %struct.option_map, ptr %opts, i64 %i.0
  %3 = load ptr, ptr %arrayidx33, align 8
  %cmp35 = icmp eq ptr %3, null
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %while.cond31
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.21, ptr noundef nonnull %name.0) #6
  %.pre = load ptr, ptr %arrayidx33, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %while.cond31
  %4 = phi ptr [ %.pre, %if.then37 ], [ %3, %while.cond31 ]
  %call41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.0, ptr noundef nonnull dereferenceable(1) %4) #7
  %cmp42 = icmp eq i32 %call41, 0
  %inc = add i64 %i.0, 1
  br i1 %cmp42, label %while.end, label %while.cond31

while.end:                                        ; preds = %if.end38
  %map = getelementptr inbounds i8, ptr %arrayidx33, i64 8
  %5 = load ptr, ptr %map, align 8
  %cmp47.not = icmp eq ptr %5, null
  br i1 %cmp47.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.end
  %6 = load ptr, ptr %5, align 8
  %cmp54.not160 = icmp eq ptr %6, null
  br i1 %cmp54.not160, label %if.then72, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %7 = phi ptr [ %8, %for.inc ], [ %6, %for.cond.preheader ]
  %j.0161 = phi i64 [ %inc65, %for.inc ], [ 0, %for.cond.preheader ]
  %call60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %value.0156) #7
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.end73, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc65 = add i64 %j.0161, 1
  %arrayidx52 = getelementptr inbounds %struct.name_id_map, ptr %5, i64 %inc65
  %8 = load ptr, ptr %arrayidx52, align 8
  %cmp54.not = icmp eq ptr %8, null
  br i1 %cmp54.not, label %if.then72, label %for.body

if.then72:                                        ; preds = %for.inc, %for.cond.preheader
  %j.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %inc65, %for.inc ]
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.22, ptr noundef %value.0156) #6
  %.pre163 = load ptr, ptr %map, align 8
  br label %if.end73

if.end73:                                         ; preds = %for.body, %if.then72
  %9 = phi ptr [ %.pre163, %if.then72 ], [ %5, %for.body ]
  %j.0159 = phi i64 [ %j.0.lcssa, %if.then72 ], [ %j.0161, %for.body ]
  %conv74 = trunc i64 %i.0 to i32
  %id = getelementptr inbounds %struct.name_id_map, ptr %9, i64 %j.0159, i32 1
  %10 = load i64, ptr %id, align 8
  tail call void %set(ptr noundef %filter_options, i32 noundef %conv74, i64 noundef %10, ptr noundef %value.0156) #6, !callees !5
  br label %if.end90

if.else:                                          ; preds = %while.end
  %min = getelementptr inbounds i8, ptr %arrayidx33, i64 16
  %11 = load i64, ptr %min, align 8
  %cmp79 = icmp eq i64 %11, -1
  br i1 %cmp79, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.else
  %conv82 = trunc i64 %i.0 to i32
  tail call void %set(ptr noundef %filter_options, i32 noundef %conv82, i64 noundef 0, ptr noundef %value.0156) #6, !callees !5
  br label %if.end90

if.else83:                                        ; preds = %if.else
  %max = getelementptr inbounds i8, ptr %arrayidx33, i64 24
  %12 = load i64, ptr %max, align 8
  %call87 = tail call i64 @str_to_uint64(ptr noundef nonnull %name.0, ptr noundef %value.0156, i64 noundef %11, i64 noundef %12) #6
  %conv88 = trunc i64 %i.0 to i32
  tail call void %set(ptr noundef %filter_options, i32 noundef %conv88, i64 noundef %call87, ptr noundef %value.0156) #6, !callees !5
  br label %if.end90

if.end90:                                         ; preds = %if.then81, %if.else83, %if.end73
  br i1 %cmp12.not, label %while.end97, label %while.cond.backedge

while.end97:                                      ; preds = %if.end90, %while.cond
  tail call void @free(ptr noundef %call) #6
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %while.end97
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @set_delta(ptr nocapture noundef writeonly %options, i32 noundef %key, i64 noundef %value, ptr nocapture readnone %valuestr) #3 {
entry:
  %cond = icmp eq i32 %key, 0
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  %conv = trunc i64 %value to i32
  %dist = getelementptr inbounds i8, ptr %options, i64 4
  store i32 %conv, ptr %dist, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @options_bcj(ptr noundef %str) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @xrealloc(ptr noundef null, i64 noundef 4) #6
  store i32 0, ptr %call, align 4
  tail call fastcc void @parse_options(ptr noundef %str, ptr noundef nonnull @options_bcj.opts, ptr noundef nonnull @set_bcj, ptr noundef nonnull %call)
  ret ptr %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @set_bcj(ptr nocapture noundef writeonly %options, i32 noundef %key, i64 noundef %value, ptr nocapture readnone %valuestr) #3 {
entry:
  %cond = icmp eq i32 %key, 0
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  %conv = trunc i64 %value to i32
  store i32 %conv, ptr %options, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @options_lzma(ptr noundef %str) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @xrealloc(ptr noundef null, i64 noundef 112) #6
  %call1 = tail call zeroext i8 @lzma_lzma_preset(ptr noundef %call, i32 noundef 6) #6
  %tobool.not = icmp eq i8 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @message_bug() #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @parse_options(ptr noundef %str, ptr noundef nonnull @options_lzma.opts, ptr noundef nonnull @set_lzma, ptr noundef %call)
  %lc = getelementptr inbounds i8, ptr %call, i64 20
  %0 = load i32, ptr %lc, align 4
  %lp = getelementptr inbounds i8, ptr %call, i64 24
  %1 = load i32, ptr %lp, align 8
  %add = add i32 %1, %0
  %cmp = icmp ugt i32 %add, 4
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.18) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %mf = getelementptr inbounds i8, ptr %call, i64 40
  %2 = load i32, ptr %mf, align 8
  %and = and i32 %2, 15
  %nice_len = getelementptr inbounds i8, ptr %call, i64 36
  %3 = load i32, ptr %nice_len, align 4
  %cmp4 = icmp ult i32 %3, %and
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.19, i32 noundef %and) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  ret ptr %call
}

declare zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @message_bug() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @set_lzma(ptr noundef %options, i32 noundef %key, i64 noundef %value, ptr noundef %valuestr) #0 {
entry:
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
  ]

sw.bb:                                            ; preds = %entry
  %0 = load i8, ptr %valuestr, align 1
  %1 = add i8 %0, -58
  %or.cond = icmp ult i8 %1, -10
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.23, ptr noundef nonnull %valuestr) #6
  %.pre = load i8, ptr %valuestr, align 1
  br label %if.end

if.end:                                           ; preds = %sw.bb, %if.then
  %2 = phi i8 [ %0, %sw.bb ], [ %.pre, %if.then ]
  %conv7 = sext i8 %2 to i32
  %sub = add nsw i32 %conv7, -48
  %arrayidx8 = getelementptr inbounds i8, ptr %valuestr, i64 1
  %3 = load i8, ptr %arrayidx8, align 1
  switch i8 %3, label %if.else [
    i8 0, label %if.end25
    i8 101, label %if.then17
  ]

if.then17:                                        ; preds = %if.end
  %or = or i32 %sub, -2147483648
  br label %if.end18

if.else:                                          ; preds = %if.end
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.23, ptr noundef nonnull %valuestr) #6
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  %preset.0 = phi i32 [ %or, %if.then17 ], [ %sub, %if.else ]
  %arrayidx19 = getelementptr inbounds i8, ptr %valuestr, i64 2
  %4 = load i8, ptr %arrayidx19, align 1
  %cmp21.not = icmp eq i8 %4, 0
  br i1 %cmp21.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end18
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.23, ptr noundef nonnull %valuestr) #6
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.end18, %if.then23
  %preset.1 = phi i32 [ %preset.0, %if.then23 ], [ %preset.0, %if.end18 ], [ %sub, %if.end ]
  %call = tail call zeroext i8 @lzma_lzma_preset(ptr noundef %options, i32 noundef %preset.1) #6
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %sw.epilog, label %if.then26

if.then26:                                        ; preds = %if.end25
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.23, ptr noundef nonnull %valuestr) #6
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %conv29 = trunc i64 %value to i32
  store i32 %conv29, ptr %options, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %conv31 = trunc i64 %value to i32
  %lc = getelementptr inbounds i8, ptr %options, i64 20
  store i32 %conv31, ptr %lc, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  %conv33 = trunc i64 %value to i32
  %lp = getelementptr inbounds i8, ptr %options, i64 24
  store i32 %conv33, ptr %lp, align 8
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %conv35 = trunc i64 %value to i32
  %pb = getelementptr inbounds i8, ptr %options, i64 28
  store i32 %conv35, ptr %pb, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %conv37 = trunc i64 %value to i32
  %mode = getelementptr inbounds i8, ptr %options, i64 32
  store i32 %conv37, ptr %mode, align 8
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  %conv39 = trunc i64 %value to i32
  %nice_len = getelementptr inbounds i8, ptr %options, i64 36
  store i32 %conv39, ptr %nice_len, align 4
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  %conv41 = trunc i64 %value to i32
  %mf = getelementptr inbounds i8, ptr %options, i64 40
  store i32 %conv41, ptr %mf, align 8
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  %conv43 = trunc i64 %value to i32
  %depth = getelementptr inbounds i8, ptr %options, i64 44
  store i32 %conv43, ptr %depth, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end25, %if.then26, %entry, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28
  ret void
}

declare void @message_fatal(ptr noundef, ...) local_unnamed_addr #1

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i64 @str_to_uint64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{ptr @set_bcj, ptr @set_delta, ptr @set_lzma}
