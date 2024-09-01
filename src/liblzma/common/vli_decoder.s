	.text
	.file	"vli_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/vli_decoder.c" md5 0x91d125b315a326080f5a7fe001c7add2
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	4 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.globl	lzma_vli_decode                 # -- Begin function lzma_vli_decode
	.p2align	4, 0x90
	.type	lzma_vli_decode,@function
lzma_vli_decode:                        # @lzma_vli_decode
.Lfunc_begin0:
	.loc	0 20 0                          # liblzma/common/vli_decoder.c:20:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %r9
.Ltmp0:
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- [DW_OP_constu 8, DW_OP_minus, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	.loc	0 23 14 prologue_end            # liblzma/common/vli_decoder.c:23:14
	testq	%rsi, %rsi
.Ltmp1:
	.loc	0 23 6 is_stmt 0                # liblzma/common/vli_decoder.c:23:6
	je	.LBB0_1
.Ltmp2:
# %bb.3:                                # %if.else
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	.loc	0 36 7 is_stmt 1                # liblzma/common/vli_decoder.c:36:7
	movq	(%rsi), %r10
	.loc	0 36 16 is_stmt 0               # liblzma/common/vli_decoder.c:36:16
	testq	%r10, %r10
.Ltmp3:
	.loc	0 36 7                          # liblzma/common/vli_decoder.c:36:7
	je	.LBB0_4
.Ltmp4:
# %bb.5:                                # %if.end5
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	.loc	0 0 7                           # liblzma/common/vli_decoder.c:0:7
	movl	$11, %eax
.Ltmp5:
	.loc	0 40 16 is_stmt 1               # liblzma/common/vli_decoder.c:40:16
	cmpq	$8, %r10
	.loc	0 41 5                          # liblzma/common/vli_decoder.c:41:5
	ja	.LBB0_18
.Ltmp6:
# %bb.6:                                # %if.end5.lor.lhs.false_crit_edge
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	.loc	0 41 9 is_stmt 0                # liblzma/common/vli_decoder.c:41:9
	movq	(%rdi), %r11
	jmp	.LBB0_7
.Ltmp7:
.LBB0_1:                                # %if.then
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- [DW_OP_constu 8, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 25 8 is_stmt 1                # liblzma/common/vli_decoder.c:25:8
	movq	$0, (%rdi)
.Ltmp8:
	.loc	0 31 7                          # liblzma/common/vli_decoder.c:31:7
	movq	(%r9), %rbx
	movl	$9, %eax
	.loc	0 31 15 is_stmt 0               # liblzma/common/vli_decoder.c:31:15
	cmpq	%r8, %rbx
.Ltmp9:
	.loc	0 31 7                          # liblzma/common/vli_decoder.c:31:7
	jae	.LBB0_18
.Ltmp10:
# %bb.2:
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- [DW_OP_constu 8, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lzma_vli_decode:in <- $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	.loc	0 0 7                           # liblzma/common/vli_decoder.c:0:7
	leaq	-8(%rsp), %rsi
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	.loc	0 31 7                          # liblzma/common/vli_decoder.c:31:7
	jmp	.LBB0_9
.Ltmp11:
.LBB0_4:                                # %if.end5.thread
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	.loc	0 37 9 is_stmt 1                # liblzma/common/vli_decoder.c:37:9
	movq	$0, (%rdi)
	xorl	%r11d, %r11d
.Ltmp12:
.LBB0_7:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	.loc	0 41 14                         # liblzma/common/vli_decoder.c:41:14
	leal	(,%r10,8), %ecx
.Ltmp13:
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $r9
	subl	%r10d, %ecx
	movq	%r11, %rbx
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rbx
	movl	$11, %eax
	.loc	0 41 33 is_stmt 0               # liblzma/common/vli_decoder.c:41:33
	testq	%rbx, %rbx
.Ltmp14:
	.loc	0 40 7 is_stmt 1                # liblzma/common/vli_decoder.c:40:7
	jne	.LBB0_18
.Ltmp15:
# %bb.8:                                # %if.end9
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $r9
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	.loc	0 44 7                          # liblzma/common/vli_decoder.c:44:7
	movq	(%r9), %rbx
	movl	$10, %eax
	.loc	0 44 15 is_stmt 0               # liblzma/common/vli_decoder.c:44:15
	cmpq	%r8, %rbx
.Ltmp16:
	.loc	0 44 7                          # liblzma/common/vli_decoder.c:44:7
	jae	.LBB0_18
.Ltmp17:
.LBB0_9:                                # %if.end13
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:in <- $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $r9
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	.loc	0 48 2 is_stmt 1                # liblzma/common/vli_decoder.c:48:2
	movq	%rbx, %rax
	subq	%r10, %rax
	addq	$9, %rax
	leaq	1(%rbx), %r14
	cmpq	%r14, %r8
	cmovaq	%r8, %r14
	leaq	(,%r10,8), %rcx
	subq	%r10, %rcx
	addq	%rbx, %rdx
.Ltmp18:
	#DEBUG_VALUE: lzma_vli_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 0 2 is_stmt 0                 # liblzma/common/vli_decoder.c:0:2
	xorl	%r15d, %r15d
.Ltmp19:
	.p2align	4, 0x90
.LBB0_10:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $r9
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	.loc	0 51 24 is_stmt 1               # liblzma/common/vli_decoder.c:51:24
	movq	%r11, %r12
	movzbl	(%rdx,%r15), %r13d
.Ltmp20:
	#DEBUG_VALUE: byte <- $r13b
	.loc	0 55 27                         # liblzma/common/vli_decoder.c:55:27
	movl	%r13d, %r11d
	andl	$127, %r11d
	.loc	0 55 35 is_stmt 0               # liblzma/common/vli_decoder.c:55:35
	shlq	%cl, %r11
	.loc	0 55 8                          # liblzma/common/vli_decoder.c:55:8
	addq	%r12, %r11
.Ltmp21:
	.loc	0 59 21 is_stmt 1               # liblzma/common/vli_decoder.c:59:21
	testb	%r13b, %r13b
.Ltmp22:
	.loc	0 59 7 is_stmt 0                # liblzma/common/vli_decoder.c:59:7
	jns	.LBB0_11
.Ltmp23:
# %bb.14:                               # %cleanup
                                        #   in Loop: Header=BB0_10 Depth=1
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $r9
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	#DEBUG_VALUE: byte <- $r13b
	.loc	0 0 0                           # liblzma/common/vli_decoder.c:0:0
	leaq	(%r10,%r15), %r12
	addq	$-8, %r12
.Ltmp24:
	.loc	0 80 16 is_stmt 1               # liblzma/common/vli_decoder.c:80:16
	testq	%r12, %r12
	je	.LBB0_17
.Ltmp25:
# %bb.15:                               # %do.cond
                                        #   in Loop: Header=BB0_10 Depth=1
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $r9
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	#DEBUG_VALUE: byte <- $r13b
	.loc	0 83 19                         # liblzma/common/vli_decoder.c:83:19
	addq	$7, %rcx
	leaq	(%rbx,%r15), %r12
	incq	%r12
	incq	%r15
	cmpq	%r8, %r12
.Ltmp26:
	.loc	0 83 2 is_stmt 0                # liblzma/common/vli_decoder.c:83:2
	jb	.LBB0_10
.Ltmp27:
# %bb.16:                               # %do.end
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $r9
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	#DEBUG_VALUE: byte <- $r13b
	.loc	0 0 0                           # liblzma/common/vli_decoder.c:0:0
	movq	%r14, (%r9)
	addq	%r15, %r10
	movq	%r10, (%rsi)
	.loc	0 55 8 is_stmt 1                # liblzma/common/vli_decoder.c:55:8
	movq	%r11, (%rdi)
	leaq	-8(%rsp), %rax
.Ltmp28:
	.loc	0 85 17                         # liblzma/common/vli_decoder.c:85:17
	xorl	%ecx, %ecx
	cmpq	%rax, %rsi
	sete	%cl
	.loc	0 85 9 is_stmt 0                # liblzma/common/vli_decoder.c:85:9
	leal	(%rcx,%rcx,8), %eax
	.loc	0 85 2                          # liblzma/common/vli_decoder.c:85:2
	jmp	.LBB0_18
.Ltmp29:
.LBB0_11:                               # %if.then21
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $r9
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	#DEBUG_VALUE: byte <- $r13b
	.loc	0 0 0                           # liblzma/common/vli_decoder.c:0:0
	leaq	1(%rbx,%r15), %rax
	movq	%rax, (%r9)
	leaq	1(%r10,%r15), %rcx
	movq	%rcx, (%rsi)
	.loc	0 55 8 is_stmt 1                # liblzma/common/vli_decoder.c:55:8
	movq	%r11, (%rdi)
.Ltmp30:
	.loc	0 63 21                         # liblzma/common/vli_decoder.c:63:21
	jne	.LBB0_13
.Ltmp31:
# %bb.12:                               # %if.then21
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $r9
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	#DEBUG_VALUE: byte <- $r13b
	.loc	0 0 21 is_stmt 0                # liblzma/common/vli_decoder.c:0:21
	movl	$9, %eax
	.loc	0 63 21                         # liblzma/common/vli_decoder.c:63:21
	cmpq	$1, %rcx
	ja	.LBB0_18
.Ltmp32:
.LBB0_13:                               # %if.end28
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $r9
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	#DEBUG_VALUE: byte <- $r13b
	.loc	0 0 21                          # liblzma/common/vli_decoder.c:0:21
	leaq	-8(%rsp), %rcx
	.loc	0 66 19 is_stmt 1               # liblzma/common/vli_decoder.c:66:19
	xorl	%eax, %eax
	cmpq	%rcx, %rsi
	setne	%al
	.loc	0 66 4 is_stmt 0                # liblzma/common/vli_decoder.c:66:4
	jmp	.LBB0_18
.Ltmp33:
.LBB0_17:                               # %cleanup41.loopexit
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $r9
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	#DEBUG_VALUE: byte <- $r13b
	.loc	0 0 0                           # liblzma/common/vli_decoder.c:0:0
	movq	%rax, (%r9)
	movq	$9, (%rsi)
	.loc	0 55 8 is_stmt 1                # liblzma/common/vli_decoder.c:55:8
	movq	%r11, (%rdi)
	movl	$9, %eax
.Ltmp34:
.LBB0_18:                               # %cleanup41
	#DEBUG_VALUE: lzma_vli_decode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_vli_decode:in_pos <- $r9
	#DEBUG_VALUE: lzma_vli_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_vli_decode:vli_pos_internal <- 0
	.loc	0 86 1 epilogue_begin           # liblzma/common/vli_decoder.c:86:1
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp35:
.Lfunc_end0:
	.size	lzma_vli_decode, .Lfunc_end0-lzma_vli_decode
	.cfi_endproc
                                        # -- End function
	.file	5 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	4                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	120                             # -8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	116                             # DW_AT_rnglists_base
	.byte	23                              # DW_FORM_sec_offset
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x109 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x2d DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x33:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x36:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x39:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3c:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3f:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x42:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x45:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x48:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4b:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4e:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x51:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x54:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x58:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x5c:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x5d:0x8 DW_TAG_typedef
	.long	101                             # DW_AT_type
	.byte	19                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x65:0x8 DW_TAG_typedef
	.long	109                             # DW_AT_type
	.byte	18                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x6d:0x8 DW_TAG_typedef
	.long	117                             # DW_AT_type
	.byte	17                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x75:0x4 DW_TAG_base_type
	.byte	16                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x79:0x54 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	205                             # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x88:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	213                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x92:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	223                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x9b:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	236                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa4:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xad:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	228                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xb7:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	228                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xc0:0xc DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	12                              # Abbrev [12] 0xc2:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	32                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	246                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xcd:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xd5:0x5 DW_TAG_restrict_type
	.long	218                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0xda:0x5 DW_TAG_pointer_type
	.long	93                              # DW_AT_type
	.byte	14                              # Abbrev [14] 0xdf:0x5 DW_TAG_pointer_type
	.long	228                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xe4:0x8 DW_TAG_typedef
	.long	117                             # DW_AT_type
	.byte	24                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xec:0x5 DW_TAG_restrict_type
	.long	241                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0xf1:0x5 DW_TAG_pointer_type
	.long	246                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0xf6:0x5 DW_TAG_const_type
	.long	251                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xfb:0x8 DW_TAG_typedef
	.long	259                             # DW_AT_type
	.byte	28                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x103:0x8 DW_TAG_typedef
	.long	267                             # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x10b:0x4 DW_TAG_base_type
	.byte	26                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x10f:0x5 DW_TAG_restrict_type
	.long	223                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	1                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	136                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/vli_decoder.c"  # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=134
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=166
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=179
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=187
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=203
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=217
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=240
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=255
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=270
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=290
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=308
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=327
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=343
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=358
.Linfo_string16:
	.asciz	"unsigned long"                 # string offset=374
.Linfo_string17:
	.asciz	"__uint64_t"                    # string offset=388
.Linfo_string18:
	.asciz	"uint64_t"                      # string offset=399
.Linfo_string19:
	.asciz	"lzma_vli"                      # string offset=408
.Linfo_string20:
	.asciz	"lzma_vli_decode"               # string offset=417
.Linfo_string21:
	.asciz	"lzma_ret"                      # string offset=433
.Linfo_string22:
	.asciz	"vli"                           # string offset=442
.Linfo_string23:
	.asciz	"vli_pos"                       # string offset=446
.Linfo_string24:
	.asciz	"size_t"                        # string offset=454
.Linfo_string25:
	.asciz	"in"                            # string offset=461
.Linfo_string26:
	.asciz	"unsigned char"                 # string offset=464
.Linfo_string27:
	.asciz	"__uint8_t"                     # string offset=478
.Linfo_string28:
	.asciz	"uint8_t"                       # string offset=488
.Linfo_string29:
	.asciz	"in_pos"                        # string offset=496
.Linfo_string30:
	.asciz	"in_size"                       # string offset=503
.Linfo_string31:
	.asciz	"vli_pos_internal"              # string offset=511
.Linfo_string32:
	.asciz	"byte"                          # string offset=528
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.long	.Linfo_string19
	.long	.Linfo_string20
	.long	.Linfo_string21
	.long	.Linfo_string22
	.long	.Linfo_string23
	.long	.Linfo_string24
	.long	.Linfo_string25
	.long	.Linfo_string26
	.long	.Linfo_string27
	.long	.Linfo_string28
	.long	.Linfo_string29
	.long	.Linfo_string30
	.long	.Linfo_string31
	.long	.Linfo_string32
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
