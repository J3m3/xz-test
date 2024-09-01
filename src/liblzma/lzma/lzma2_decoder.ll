; ModuleID = 'liblzma/lzma/lzma2_decoder.c'
source_filename = "liblzma/lzma/lzma2_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma2_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @lzma_lz_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @lzma2_decoder_init) #4
  ret i32 %call
}

declare i32 @lzma_lz_decoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_decoder_init(ptr nocapture noundef %lz, ptr noundef %allocator, ptr noundef %opt, ptr noundef %lz_options) #0 {
entry:
  %0 = load ptr, ptr %lz, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 184, ptr noundef %allocator) #4
  store ptr %call, ptr %lz, align 8
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds i8, ptr %lz, i64 8
  store ptr @lzma2_decode, ptr %code, align 8
  %end = getelementptr inbounds i8, ptr %lz, i64 32
  store ptr @lzma2_decoder_end, ptr %end, align 8
  %lzma = getelementptr inbounds i8, ptr %call, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %lzma, i8 0, i64 40, i1 false)
  %.pre = load ptr, ptr %lz, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %1 = phi ptr [ %.pre, %if.end ], [ %0, %entry ]
  store i32 0, ptr %1, align 8
  %2 = load ptr, ptr %lz, align 8
  %need_properties = getelementptr inbounds i8, ptr %2, i64 64
  store i8 1, ptr %need_properties, align 8
  %preset_dict = getelementptr inbounds i8, ptr %opt, i64 8
  %3 = load ptr, ptr %preset_dict, align 8
  %cmp12 = icmp eq ptr %3, null
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end9
  %preset_dict_size = getelementptr inbounds i8, ptr %opt, i64 16
  %4 = load i32, ptr %preset_dict_size, align 8
  %cmp13 = icmp eq i32 %4, 0
  %5 = zext i1 %cmp13 to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end9
  %storedv = phi i8 [ 1, %if.end9 ], [ %5, %lor.rhs ]
  %6 = load ptr, ptr %lz, align 8
  %need_dictionary_reset = getelementptr inbounds i8, ptr %6, i64 65
  store i8 %storedv, ptr %need_dictionary_reset, align 1
  %7 = load ptr, ptr %lz, align 8
  %lzma16 = getelementptr inbounds i8, ptr %7, i64 8
  %call17 = tail call i32 @lzma_lzma_decoder_create(ptr noundef nonnull %lzma16, ptr noundef %allocator, ptr noundef nonnull %opt, ptr noundef %lz_options) #4
  br label %return

return:                                           ; preds = %if.then, %lor.end
  %retval.0 = phi i32 [ %call17, %lor.end ], [ 5, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_lzma2_decoder_memusage(ptr noundef %options) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @lzma_lzma_decoder_memusage_nocheck(ptr noundef %options) #4
  %add = add i64 %call, 184
  ret i64 %add
}

declare i64 @lzma_lzma_decoder_memusage_nocheck(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 9) i32 @lzma_lzma2_props_decode(ptr nocapture noundef writeonly %options, ptr noundef %allocator, ptr nocapture noundef readonly %props, i64 noundef %props_size) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i64 %props_size, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load i8, ptr %props, align 1
  %cmp5 = icmp ugt i8 %0, 40
  br i1 %cmp5, label %return, label %if.end8

if.end8:                                          ; preds = %if.end
  %call = tail call ptr @lzma_alloc(i64 noundef 112, ptr noundef %allocator) #4
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %return, label %if.end12

if.end12:                                         ; preds = %if.end8
  %1 = load i8, ptr %props, align 1
  %cmp15 = icmp eq i8 %1, 40
  br i1 %cmp15, label %if.end25, label %if.else

if.else:                                          ; preds = %if.end12
  %2 = and i8 %1, 1
  %3 = or disjoint i8 %2, 2
  %or = zext nneg i8 %3 to i32
  store i32 %or, ptr %call, align 8
  %4 = load i8, ptr %props, align 1
  %5 = lshr i8 %4, 1
  %narrow = add nuw i8 %5, 11
  %add = zext nneg i8 %narrow to i32
  %shl = shl i32 %or, %add
  br label %if.end25

if.end25:                                         ; preds = %if.end12, %if.else
  %storemerge = phi i32 [ %shl, %if.else ], [ -1, %if.end12 ]
  store i32 %storemerge, ptr %call, align 8
  %preset_dict = getelementptr inbounds i8, ptr %call, i64 8
  store ptr null, ptr %preset_dict, align 8
  %preset_dict_size = getelementptr inbounds i8, ptr %call, i64 16
  store i32 0, ptr %preset_dict_size, align 8
  store ptr %call, ptr %options, align 8
  br label %return

return:                                           ; preds = %if.end25, %if.end8, %if.end, %entry
  %retval.1 = phi i32 [ 8, %entry ], [ 8, %if.end ], [ 0, %if.end25 ], [ 5, %if.end8 ]
  ret i32 %retval.1
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_decode(ptr noundef %pcoder, ptr noalias noundef %dict, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size) #0 {
entry:
  %compressed_size127 = getelementptr inbounds i8, ptr %pcoder, i64 56
  %pos.i = getelementptr inbounds i8, ptr %dict, i64 8
  %limit.i = getelementptr inbounds i8, ptr %dict, i64 24
  %full.i = getelementptr inbounds i8, ptr %dict, i64 16
  %lzma101 = getelementptr inbounds i8, ptr %pcoder, i64 8
  %code = getelementptr inbounds i8, ptr %pcoder, i64 16
  %options89 = getelementptr inbounds i8, ptr %pcoder, i64 72
  %reset95 = getelementptr inbounds i8, ptr %pcoder, i64 24
  %next_sequence86 = getelementptr inbounds i8, ptr %pcoder, i64 4
  %uncompressed_size64 = getelementptr inbounds i8, ptr %pcoder, i64 48
  %set_uncompressed = getelementptr inbounds i8, ptr %pcoder, i64 32
  %need_dictionary_reset10 = getelementptr inbounds i8, ptr %pcoder, i64 65
  %need_properties = getelementptr inbounds i8, ptr %pcoder, i64 64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %0 = load i64, ptr %in_pos, align 8
  %cmp = icmp ult i64 %0, %in_size
  %.pr = load i32, ptr %pcoder, align 8
  br i1 %cmp, label %while.body, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %cmp1 = icmp eq i32 %.pr, 6
  br i1 %cmp1, label %sw.bb100, label %cleanup134

while.body:                                       ; preds = %while.cond
  switch i32 %.pr, label %cleanup134 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb50
    i32 2, label %sw.bb58
    i32 3, label %sw.bb71
    i32 4, label %sw.bb78
    i32 5, label %sw.bb88
    i32 6, label %sw.bb100
    i32 7, label %sw.bb126
  ]

sw.bb:                                            ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %inc = add nuw i64 %0, 1
  store i64 %inc, ptr %in_pos, align 8
  %cmp3 = icmp eq i8 %1, 0
  br i1 %cmp3, label %cleanup134, label %if.end

if.end:                                           ; preds = %sw.bb
  %cmp5 = icmp ugt i8 %1, -33
  %cmp7 = icmp eq i8 %1, 1
  %or.cond = or i1 %cmp5, %cmp7
  br i1 %or.cond, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  store i8 1, ptr %need_properties, align 8
  store i8 1, ptr %need_dictionary_reset10, align 1
  br label %if.end13

if.else:                                          ; preds = %if.end
  %2 = load i8, ptr %need_dictionary_reset10, align 1, !range !5, !noundef !6
  %loadedv = trunc nuw i8 %2 to i1
  br i1 %loadedv, label %cleanup134, label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %3 = phi i8 [ %2, %if.else ], [ 1, %if.then9 ]
  %cmp14 = icmp slt i8 %1, 0
  br i1 %cmp14, label %if.then16, label %if.else37

if.then16:                                        ; preds = %if.end13
  %and = shl nuw nsw i64 %conv, 16
  %shl = and i64 %and, 2031616
  store i64 %shl, ptr %uncompressed_size64, align 8
  store i32 1, ptr %pcoder, align 8
  %cmp19 = icmp ugt i8 %1, -65
  br i1 %cmp19, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.then16
  store i8 0, ptr %need_properties, align 8
  store i32 5, ptr %next_sequence86, align 4
  br label %if.end44

if.else23:                                        ; preds = %if.then16
  %4 = load i8, ptr %need_properties, align 8, !range !5, !noundef !6
  %loadedv25 = trunc nuw i8 %4 to i1
  br i1 %loadedv25, label %cleanup134, label %if.else27

if.else27:                                        ; preds = %if.else23
  store i32 6, ptr %next_sequence86, align 4
  %cmp29 = icmp ugt i8 %1, -97
  br i1 %cmp29, label %if.then31, label %if.end44

if.then31:                                        ; preds = %if.else27
  %5 = load ptr, ptr %reset95, align 8
  %6 = load ptr, ptr %lzma101, align 8
  tail call void %5(ptr noundef %6, ptr noundef nonnull %options89) #4
  %.pre = load i8, ptr %need_dictionary_reset10, align 1, !range !5
  br label %if.end44

if.else37:                                        ; preds = %if.end13
  %cmp38 = icmp ugt i8 %1, 2
  br i1 %cmp38, label %cleanup134, label %if.end41

if.end41:                                         ; preds = %if.else37
  store i32 3, ptr %pcoder, align 8
  store i32 7, ptr %next_sequence86, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then21, %if.else27, %if.then31, %if.end41
  %7 = phi i8 [ %3, %if.then21 ], [ %3, %if.else27 ], [ %.pre, %if.then31 ], [ %3, %if.end41 ]
  %loadedv46 = trunc nuw i8 %7 to i1
  br i1 %loadedv46, label %if.then47, label %while.cond.backedge

if.then47:                                        ; preds = %if.end44
  store i8 0, ptr %need_dictionary_reset10, align 1
  %need_reset.i = getelementptr inbounds i8, ptr %dict, i64 40
  store i8 1, ptr %need_reset.i, align 8
  br label %cleanup134

sw.bb50:                                          ; preds = %while.body
  %inc51 = add nuw i64 %0, 1
  store i64 %inc51, ptr %in_pos, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %in, i64 %0
  %8 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %8 to i64
  %shl54 = shl nuw nsw i64 %conv53, 8
  %9 = load i64, ptr %uncompressed_size64, align 8
  %add = add i64 %shl54, %9
  store i64 %add, ptr %uncompressed_size64, align 8
  store i32 2, ptr %pcoder, align 8
  br label %while.cond.backedge

sw.bb58:                                          ; preds = %while.body
  %inc59 = add nuw i64 %0, 1
  store i64 %inc59, ptr %in_pos, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %in, i64 %0
  %10 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %10 to i64
  %add62 = add nuw nsw i64 %conv61, 1
  %11 = load i64, ptr %uncompressed_size64, align 8
  %add65 = add i64 %add62, %11
  store i64 %add65, ptr %uncompressed_size64, align 8
  store i32 3, ptr %pcoder, align 8
  %12 = load ptr, ptr %set_uncompressed, align 8
  %13 = load ptr, ptr %lzma101, align 8
  tail call void %12(ptr noundef %13, i64 noundef %add65) #4
  br label %while.cond.backedge

sw.bb71:                                          ; preds = %while.body
  %inc72 = add nuw i64 %0, 1
  store i64 %inc72, ptr %in_pos, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %in, i64 %0
  %14 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %14 to i64
  %shl75 = shl nuw nsw i64 %conv74, 8
  store i64 %shl75, ptr %compressed_size127, align 8
  store i32 4, ptr %pcoder, align 8
  br label %while.cond.backedge

sw.bb78:                                          ; preds = %while.body
  %inc79 = add nuw i64 %0, 1
  store i64 %inc79, ptr %in_pos, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %in, i64 %0
  %15 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %15 to i64
  %add82 = add nuw nsw i64 %conv81, 1
  %16 = load i64, ptr %compressed_size127, align 8
  %add85 = add i64 %add82, %16
  store i64 %add85, ptr %compressed_size127, align 8
  %17 = load i32, ptr %next_sequence86, align 4
  store i32 %17, ptr %pcoder, align 8
  br label %while.cond.backedge

sw.bb88:                                          ; preds = %while.body
  %inc90 = add nuw i64 %0, 1
  store i64 %inc90, ptr %in_pos, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %in, i64 %0
  %18 = load i8, ptr %arrayidx91, align 1
  %call = tail call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %options89, i8 noundef zeroext %18) #4
  br i1 %call, label %cleanup134, label %if.end93

if.end93:                                         ; preds = %sw.bb88
  %19 = load ptr, ptr %reset95, align 8
  %20 = load ptr, ptr %lzma101, align 8
  tail call void %19(ptr noundef %20, ptr noundef nonnull %options89) #4
  store i32 6, ptr %pcoder, align 8
  br label %while.cond.backedge

sw.bb100:                                         ; preds = %lor.rhs, %while.body
  %21 = load ptr, ptr %code, align 8
  %22 = load ptr, ptr %lzma101, align 8
  %call104 = tail call i32 %21(ptr noundef %22, ptr noundef %dict, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size) #4
  %23 = load i64, ptr %in_pos, align 8
  %sub = sub i64 %23, %0
  %24 = load i64, ptr %compressed_size127, align 8
  %cmp106 = icmp ugt i64 %sub, %24
  br i1 %cmp106, label %cleanup134, label %if.end109

if.end109:                                        ; preds = %sw.bb100
  %sub111 = sub i64 %24, %sub
  store i64 %sub111, ptr %compressed_size127, align 8
  %cmp112.not = icmp eq i32 %call104, 1
  br i1 %cmp112.not, label %if.end115, label %cleanup134

if.end115:                                        ; preds = %if.end109
  %cmp117.not = icmp eq i64 %24, %sub
  br i1 %cmp117.not, label %cleanup122, label %cleanup134

cleanup122:                                       ; preds = %if.end115
  store i32 0, ptr %pcoder, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cleanup122, %if.end44, %if.end132, %if.end93, %sw.bb78, %sw.bb71, %sw.bb58, %sw.bb50
  br label %while.cond

sw.bb126:                                         ; preds = %while.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %sub.i = sub i64 %in_size, %0
  %25 = load i64, ptr %compressed_size127, align 8, !alias.scope !10, !noalias !12
  %cmp.i = icmp ugt i64 %sub.i, %25
  %add.i = add i64 %25, %0
  %spec.select.i = select i1 %cmp.i, i64 %add.i, i64 %in_size
  %26 = load ptr, ptr %dict, align 8, !alias.scope !7, !noalias !15
  %27 = load i64, ptr %limit.i, align 8, !alias.scope !7, !noalias !15
  %call.i = tail call i64 @lzma_bufcpy(ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %spec.select.i, ptr noundef %26, ptr noundef nonnull %pos.i, i64 noundef %27) #4, !noalias !10
  %sub1.i = sub i64 %25, %call.i
  store i64 %sub1.i, ptr %compressed_size127, align 8, !alias.scope !10, !noalias !12
  %28 = load i64, ptr %pos.i, align 8, !alias.scope !7, !noalias !15
  %29 = load i64, ptr %full.i, align 8, !alias.scope !7, !noalias !15
  %cmp3.i = icmp ugt i64 %28, %29
  br i1 %cmp3.i, label %if.then4.i, label %dict_write.exit

if.then4.i:                                       ; preds = %sw.bb126
  store i64 %28, ptr %full.i, align 8, !alias.scope !7, !noalias !15
  br label %dict_write.exit

dict_write.exit:                                  ; preds = %sw.bb126, %if.then4.i
  %cmp129.not = icmp eq i64 %25, %call.i
  br i1 %cmp129.not, label %if.end132, label %cleanup134

if.end132:                                        ; preds = %dict_write.exit
  store i32 0, ptr %pcoder, align 8
  br label %while.cond.backedge

cleanup134:                                       ; preds = %if.end115, %if.end109, %sw.bb100, %if.else37, %if.else23, %if.else, %sw.bb, %lor.rhs, %while.body, %dict_write.exit, %sw.bb88, %if.then47
  %retval.4 = phi i32 [ 0, %if.then47 ], [ 9, %sw.bb100 ], [ %call104, %if.end109 ], [ 9, %if.end115 ], [ 1, %sw.bb ], [ 9, %if.else ], [ 9, %if.else23 ], [ 9, %if.else37 ], [ 0, %lor.rhs ], [ 11, %while.body ], [ 0, %dict_write.exit ], [ 9, %sw.bb88 ]
  ret i32 %retval.4
}

; Function Attrs: nounwind uwtable
define internal void @lzma2_decoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 {
entry:
  %lzma = getelementptr inbounds i8, ptr %pcoder, i64 8
  %0 = load ptr, ptr %lzma, align 8
  tail call void @lzma_free(ptr noundef %0, ptr noundef %allocator) #4
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @lzma_lzma_decoder_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!8}
!8 = distinct !{!8, !9, !"dict_write: %dict"}
!9 = distinct !{!9, !"dict_write"}
!10 = !{!11}
!11 = distinct !{!11, !9, !"dict_write: %left"}
!12 = !{!8, !13, !14}
!13 = distinct !{!13, !9, !"dict_write: %in"}
!14 = distinct !{!14, !9, !"dict_write: %in_pos"}
!15 = !{!13, !14, !11}
