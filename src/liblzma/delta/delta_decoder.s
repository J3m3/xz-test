	.text
	.file	"delta_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/delta/delta_decoder.c" md5 0x2e365ead6dc84d04de0a81ecc9b65746
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "liblzma/api/lzma" "delta.h" md5 0x397cde14a8f4a544385c9c6ecc7e0cc9
	.globl	lzma_delta_decoder_init         # -- Begin function lzma_delta_decoder_init
	.p2align	4, 0x90
	.type	lzma_delta_decoder_init,@function
lzma_delta_decoder_init:                # @lzma_delta_decoder_init
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_delta_decoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_delta_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_delta_decoder_init:filters <- $rdx
	.loc	0 55 13 prologue_end            # liblzma/delta/delta_decoder.c:55:13
	movq	$delta_decode, 24(%rdi)
.Ltmp0:
	.loc	0 56 9                          # liblzma/delta/delta_decoder.c:56:9
	jmp	lzma_delta_coder_init@PLT       # TAILCALL
.Ltmp1:
.Lfunc_end0:
	.size	lzma_delta_decoder_init, .Lfunc_end0-lzma_delta_decoder_init
	.cfi_endproc
	.file	4 "liblzma/delta" "delta_private.h" md5 0x41e9aeb6bf08fbe16153633c0856b3a7
	.file	5 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	7 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	8 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	9 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	10 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	11 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function delta_decode
	.type	delta_decode,@function
delta_decode:                           # @delta_decode
.Lfunc_begin1:
	.loc	0 35 0                          # liblzma/delta/delta_decoder.c:35:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: delta_decode:pcoder <- $rdi
	#DEBUG_VALUE: delta_decode:allocator <- $rsi
	#DEBUG_VALUE: delta_decode:in <- $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- $rcx
	#DEBUG_VALUE: delta_decode:in_size <- $r8
	#DEBUG_VALUE: delta_decode:out <- $r9
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
.Ltmp2:
	#DEBUG_VALUE: delta_decode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: delta_decode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: delta_decode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: delta_decode:coder <- $rdi
	movq	%r9, %rbx
	movq	%rdi, %r14
	movl	80(%rsp), %eax
.Ltmp3:
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	movq	64(%rsp), %r12
.Ltmp4:
	.loc	0 39 27 prologue_end            # liblzma/delta/delta_decoder.c:39:27
	movq	(%r12), %r15
.Ltmp5:
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	.loc	0 41 52                         # liblzma/delta/delta_decoder.c:41:52
	movq	(%rdi), %rdi
.Ltmp6:
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	.loc	0 41 23 is_stmt 0               # liblzma/delta/delta_decoder.c:41:23
	subq	$8, %rsp
.Ltmp7:
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	*24(%r14)
.Ltmp8:
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:ret <- $eax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	.loc	0 45 40 is_stmt 1               # liblzma/delta/delta_decoder.c:45:40
	movq	(%r12), %rcx
.Ltmp9:
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	.loc	0 23 23                         # liblzma/delta/delta_decoder.c:23:23
	movq	%rcx, %r9
	subq	%r15, %r9
.Ltmp10:
	#DEBUG_VALUE: decode_buffer:size <- $r9
	.loc	0 23 2 is_stmt 0                # liblzma/delta/delta_decoder.c:23:2
	je	.LBB1_7
.Ltmp11:
# %bb.1:                                # %for.body.lr.ph.i
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: decode_buffer:size <- $r9
	.loc	0 21 33 is_stmt 1               # liblzma/delta/delta_decoder.c:21:33
	movzbl	64(%r14), %edx
.Ltmp12:
	#DEBUG_VALUE: decode_buffer:distance <- undef
	.loc	0 24 50                         # liblzma/delta/delta_decoder.c:24:50
	movzbl	72(%r14), %r8d
.Ltmp13:
	.loc	0 23 2                          # liblzma/delta/delta_decoder.c:23:2
	cmpq	$64, %r9
	jae	.LBB1_8
.Ltmp14:
.LBB1_2:
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: decode_buffer:size <- $r9
	.loc	0 0 2 is_stmt 0                 # liblzma/delta/delta_decoder.c:0:2
	xorl	%esi, %esi
.Ltmp15:
.LBB1_3:                                # %for.body.i.preheader
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: decode_buffer:size <- $r9
	movl	%r8d, %edi
.Ltmp16:
.LBB1_4:                                # %for.body.i.preheader
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: decode_buffer:size <- $r9
	.loc	0 23 2                          # liblzma/delta/delta_decoder.c:23:2
	addq	%r15, %rsi
.Ltmp17:
	.p2align	4, 0x90
.LBB1_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_LLVM_arg 2, DW_OP_plus, DW_OP_minus, DW_OP_LLVM_arg 2, DW_OP_plus, DW_OP_stack_value] undef, undef, undef
	.loc	0 24 55 is_stmt 1               # liblzma/delta/delta_decoder.c:24:55
	leal	(%rdx,%rdi), %r8d
	movzbl	%r8b, %r8d
	.loc	0 24 13 is_stmt 0               # liblzma/delta/delta_decoder.c:24:13
	movzbl	(%rbx,%rsi), %r9d
	addb	73(%r14,%r8), %r9b
	movb	%r9b, (%rbx,%rsi)
	.loc	0 25 3 is_stmt 1                # liblzma/delta/delta_decoder.c:25:3
	movzbl	%dil, %r8d
	.loc	0 25 28 is_stmt 0               # liblzma/delta/delta_decoder.c:25:28
	decb	%dil
	.loc	0 25 39                         # liblzma/delta/delta_decoder.c:25:39
	movb	%r9b, 73(%r14,%r8)
.Ltmp18:
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_LLVM_arg 2, DW_OP_plus, DW_OP_minus, DW_OP_consts 1, DW_OP_LLVM_arg 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] undef, undef, undef
	.loc	0 23 23 is_stmt 1               # liblzma/delta/delta_decoder.c:23:23
	incq	%rsi
	cmpq	%rsi, %rcx
.Ltmp19:
	.loc	0 23 2 is_stmt 0                # liblzma/delta/delta_decoder.c:23:2
	jne	.LBB1_5
.Ltmp20:
.LBB1_6:                                # %decode_buffer.exit.loopexit
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	.loc	0 25 28 is_stmt 1               # liblzma/delta/delta_decoder.c:25:28
	movb	%dil, 72(%r14)
.Ltmp21:
.LBB1_7:                                # %decode_buffer.exit
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	.loc	0 47 2 epilogue_begin           # liblzma/delta/delta_decoder.c:47:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp22:
	#DEBUG_VALUE: delta_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp23:
	#DEBUG_VALUE: delta_decode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp25:
.LBB1_8:                                # %vector.scevcheck
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: decode_buffer:size <- $r9
	.loc	0 23 2                          # liblzma/delta/delta_decoder.c:23:2
	movq	%r15, %rdi
	notq	%rdi
	addq	%rcx, %rdi
	xorl	%esi, %esi
	cmpb	%dil, %r8b
	jb	.LBB1_3
.Ltmp26:
# %bb.9:                                # %vector.scevcheck
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: decode_buffer:size <- $r9
	.loc	0 0 2 is_stmt 0                 # liblzma/delta/delta_decoder.c:0:2
	leal	(%r8,%rdx), %r11d
	cmpb	%dil, %r11b
	jb	.LBB1_3
.Ltmp27:
# %bb.10:                               # %vector.scevcheck
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: decode_buffer:size <- $r9
	cmpq	$255, %rdi
	ja	.LBB1_3
.Ltmp28:
# %bb.11:                               # %vector.scevcheck
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: decode_buffer:size <- $r9
	movzbl	%r8b, %r10d
	leaq	(%r14,%r10), %r12
	addq	$73, %r12
	movq	%r12, %r13
	subq	%rdi, %r13
	cmpq	%r12, %r13
	ja	.LBB1_3
.Ltmp29:
# %bb.12:                               # %vector.scevcheck
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: decode_buffer:size <- $r9
	movzbl	%r11b, %r11d
	leaq	(%r14,%r11), %r12
	addq	$73, %r12
	movq	%r12, %r13
	subq	%rdi, %r13
	cmpq	%r12, %r13
	ja	.LBB1_3
.Ltmp30:
# %bb.13:                               # %vector.memcheck
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: decode_buffer:size <- $r9
	.loc	0 23 2                          # liblzma/delta/delta_decoder.c:23:2
	subq	%r10, %r11
	cmpq	$64, %r11
	jb	.LBB1_2
.Ltmp31:
# %bb.14:                               # %vector.ph
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: decode_buffer:size <- $r9
	movq	%r9, %rsi
	andq	$-64, %rsi
	movl	%r8d, %edi
	subb	%sil, %dil
	leaq	(%r15,%rbx), %r10
	addq	$48, %r10
	xorl	%r11d, %r11d
	pxor	%xmm0, %xmm0
.Ltmp32:
	.p2align	4, 0x90
.LBB1_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: decode_buffer:size <- $r9
	.loc	0 24 55 is_stmt 1               # liblzma/delta/delta_decoder.c:24:55
	leal	(%rdx,%r8), %ebp
	movzbl	%bpl, %r12d
	.loc	0 24 16 is_stmt 0               # liblzma/delta/delta_decoder.c:24:16
	movdqu	10(%r14,%r12), %xmm1
	movdqu	26(%r14,%r12), %xmm3
	movdqu	42(%r14,%r12), %xmm4
	movdqu	58(%r14,%r12), %xmm2
	movdqa	%xmm2, %xmm5
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	pshufd	$78, %xmm5, %xmm5               # xmm5 = xmm5[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm2            # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshufd	$78, %xmm2, %xmm2               # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2               # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2               # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm5, %xmm2
	movdqa	%xmm4, %xmm5
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	pshufd	$78, %xmm5, %xmm5               # xmm5 = xmm5[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm4            # xmm4 = xmm4[8],xmm0[8],xmm4[9],xmm0[9],xmm4[10],xmm0[10],xmm4[11],xmm0[11],xmm4[12],xmm0[12],xmm4[13],xmm0[13],xmm4[14],xmm0[14],xmm4[15],xmm0[15]
	pshufd	$78, %xmm4, %xmm4               # xmm4 = xmm4[2,3,0,1]
	pshuflw	$27, %xmm4, %xmm4               # xmm4 = xmm4[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm4, %xmm4               # xmm4 = xmm4[0,1,2,3,7,6,5,4]
	packuswb	%xmm5, %xmm4
	movdqa	%xmm3, %xmm5
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	pshufd	$78, %xmm5, %xmm5               # xmm5 = xmm5[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm3            # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshufd	$78, %xmm3, %xmm3               # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm6               # xmm6 = xmm3[0,1,2,3,7,6,5,4]
	packuswb	%xmm5, %xmm6
	movdqa	%xmm1, %xmm3
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pshufd	$78, %xmm3, %xmm3               # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3               # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm1            # xmm1 = xmm1[8],xmm0[8],xmm1[9],xmm0[9],xmm1[10],xmm0[10],xmm1[11],xmm0[11],xmm1[12],xmm0[12],xmm1[13],xmm0[13],xmm1[14],xmm0[14],xmm1[15],xmm0[15]
	pshufd	$78, %xmm1, %xmm1               # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1               # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm5               # xmm5 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm5
	.loc	0 24 13                         # liblzma/delta/delta_decoder.c:24:13
	movdqu	-48(%r10,%r11), %xmm7
	paddb	%xmm2, %xmm7
	movdqu	-32(%r10,%r11), %xmm3
	paddb	%xmm4, %xmm3
	movdqu	-16(%r10,%r11), %xmm2
	paddb	%xmm6, %xmm2
	movdqu	(%r10,%r11), %xmm1
	paddb	%xmm5, %xmm1
	movdqu	%xmm7, -48(%r10,%r11)
	movdqu	%xmm3, -32(%r10,%r11)
	movdqu	%xmm2, -16(%r10,%r11)
	movdqu	%xmm1, (%r10,%r11)
	.loc	0 25 3 is_stmt 1                # liblzma/delta/delta_decoder.c:25:3
	movzbl	%r8b, %r8d
	.loc	0 25 39 is_stmt 0               # liblzma/delta/delta_decoder.c:25:39
	movdqa	%xmm7, %xmm4
	punpcklbw	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	pshufd	$78, %xmm4, %xmm4               # xmm4 = xmm4[2,3,0,1]
	pshuflw	$27, %xmm4, %xmm4               # xmm4 = xmm4[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm4, %xmm4               # xmm4 = xmm4[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm7            # xmm7 = xmm7[8],xmm0[8],xmm7[9],xmm0[9],xmm7[10],xmm0[10],xmm7[11],xmm0[11],xmm7[12],xmm0[12],xmm7[13],xmm0[13],xmm7[14],xmm0[14],xmm7[15],xmm0[15]
	pshufd	$78, %xmm7, %xmm5               # xmm5 = xmm7[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	packuswb	%xmm4, %xmm5
	movdqu	%xmm5, 58(%r14,%r8)
	movdqa	%xmm3, %xmm4
	punpcklbw	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	pshufd	$78, %xmm4, %xmm4               # xmm4 = xmm4[2,3,0,1]
	pshuflw	$27, %xmm4, %xmm4               # xmm4 = xmm4[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm4, %xmm4               # xmm4 = xmm4[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm3            # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshufd	$78, %xmm3, %xmm3               # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3               # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	packuswb	%xmm4, %xmm3
	movdqu	%xmm3, 42(%r14,%r8)
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pshufd	$78, %xmm3, %xmm3               # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3               # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm2            # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshufd	$78, %xmm2, %xmm2               # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2               # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2               # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqu	%xmm2, 26(%r14,%r8)
	movdqa	%xmm1, %xmm2
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshufd	$78, %xmm2, %xmm2               # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2               # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2               # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm1            # xmm1 = xmm1[8],xmm0[8],xmm1[9],xmm0[9],xmm1[10],xmm0[10],xmm1[11],xmm0[11],xmm1[12],xmm0[12],xmm1[13],xmm0[13],xmm1[14],xmm0[14],xmm1[15],xmm0[15]
	pshufd	$78, %xmm1, %xmm1               # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1               # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1               # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm2, %xmm1
	movdqu	%xmm1, 10(%r14,%r8)
.Ltmp33:
	.loc	0 23 31 is_stmt 1               # liblzma/delta/delta_decoder.c:23:31
	addq	$64, %r11
	addb	$-64, %r8b
	cmpq	%r11, %rsi
	jne	.LBB1_15
.Ltmp34:
# %bb.16:                               # %middle.block
	#DEBUG_VALUE: delta_decode:pcoder <- $r14
	#DEBUG_VALUE: delta_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: delta_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: delta_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: delta_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: delta_decode:out <- $rbx
	#DEBUG_VALUE: delta_decode:coder <- $r14
	#DEBUG_VALUE: decode_buffer:pcoder <- $r14
	#DEBUG_VALUE: decode_buffer:coder <- $r14
	#DEBUG_VALUE: delta_decode:out_start <- $r15
	#DEBUG_VALUE: delta_decode:ret <- $eax
	#DEBUG_VALUE: decode_buffer:buffer <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r15
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: decode_buffer:size <- $r9
	.loc	0 23 2 is_stmt 0                # liblzma/delta/delta_decoder.c:23:2
	cmpq	%rsi, %r9
	jne	.LBB1_4
	jmp	.LBB1_6
.Ltmp35:
.Lfunc_end1:
	.size	delta_decode, .Lfunc_end1-delta_decode
	.cfi_endproc
                                        # -- End function
	.globl	lzma_delta_props_decode         # -- Begin function lzma_delta_props_decode
	.p2align	4, 0x90
	.type	lzma_delta_props_decode,@function
lzma_delta_props_decode:                # @lzma_delta_props_decode
.Lfunc_begin2:
	.loc	0 63 0 is_stmt 1                # liblzma/delta/delta_decoder.c:63:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_delta_props_decode:options <- $rdi
	#DEBUG_VALUE: lzma_delta_props_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_delta_props_decode:props <- $rdx
	#DEBUG_VALUE: lzma_delta_props_decode:props_size <- $rcx
	movl	$8, %eax
.Ltmp36:
	.loc	0 64 17 prologue_end            # liblzma/delta/delta_decoder.c:64:17
	cmpq	$1, %rcx
.Ltmp37:
	.loc	0 64 6 is_stmt 0                # liblzma/delta/delta_decoder.c:64:6
	jne	.LBB2_5
.Ltmp38:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: lzma_delta_props_decode:options <- $rdi
	#DEBUG_VALUE: lzma_delta_props_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_delta_props_decode:props <- $rdx
	#DEBUG_VALUE: lzma_delta_props_decode:props_size <- $rcx
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	.loc	0 68 6 is_stmt 1                # liblzma/delta/delta_decoder.c:68:6
	movl	$40, %edi
.Ltmp39:
	#DEBUG_VALUE: lzma_delta_props_decode:options <- $rbx
	callq	lzma_alloc@PLT
.Ltmp40:
	#DEBUG_VALUE: lzma_delta_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_delta_props_decode:props <- $r14
	#DEBUG_VALUE: lzma_delta_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_delta_props_decode:opt <- $rax
	.loc	0 69 10                         # liblzma/delta/delta_decoder.c:69:10
	testq	%rax, %rax
.Ltmp41:
	.loc	0 69 6 is_stmt 0                # liblzma/delta/delta_decoder.c:69:6
	je	.LBB2_2
.Ltmp42:
# %bb.3:                                # %if.end3
	#DEBUG_VALUE: lzma_delta_props_decode:options <- $rbx
	#DEBUG_VALUE: lzma_delta_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_delta_props_decode:props <- $r14
	#DEBUG_VALUE: lzma_delta_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_delta_props_decode:opt <- $rax
	.loc	0 72 12 is_stmt 1               # liblzma/delta/delta_decoder.c:72:12
	movl	$0, (%rax)
	.loc	0 73 14                         # liblzma/delta/delta_decoder.c:73:14
	movzbl	(%r14), %ecx
	.loc	0 73 23 is_stmt 0               # liblzma/delta/delta_decoder.c:73:23
	incl	%ecx
	.loc	0 73 12                         # liblzma/delta/delta_decoder.c:73:12
	movl	%ecx, 4(%rax)
	.loc	0 75 11 is_stmt 1               # liblzma/delta/delta_decoder.c:75:11
	movq	%rax, (%rbx)
	xorl	%eax, %eax
.Ltmp43:
	.loc	0 0 11 is_stmt 0                # liblzma/delta/delta_decoder.c:0:11
	jmp	.LBB2_4
.Ltmp44:
.LBB2_2:
	#DEBUG_VALUE: lzma_delta_props_decode:options <- $rbx
	#DEBUG_VALUE: lzma_delta_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_delta_props_decode:props <- $r14
	#DEBUG_VALUE: lzma_delta_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_delta_props_decode:opt <- $rax
	movl	$5, %eax
.Ltmp45:
.LBB2_4:
	#DEBUG_VALUE: lzma_delta_props_decode:options <- $rbx
	#DEBUG_VALUE: lzma_delta_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_delta_props_decode:props <- $r14
	#DEBUG_VALUE: lzma_delta_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp46:
	#DEBUG_VALUE: lzma_delta_props_decode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp47:
	#DEBUG_VALUE: lzma_delta_props_decode:props <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB2_5:                                # %return
	#DEBUG_VALUE: lzma_delta_props_decode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_delta_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_delta_props_decode:props <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_delta_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 78 1 is_stmt 1                # liblzma/delta/delta_decoder.c:78:1
	retq
.Ltmp48:
.Lfunc_end2:
	.size	lzma_delta_props_decode, .Lfunc_end2-lzma_delta_props_decode
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	22                              # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
	.long	.Ldebug_loc7-.Lloclists_table_base0
	.long	.Ldebug_loc8-.Lloclists_table_base0
	.long	.Ldebug_loc9-.Lloclists_table_base0
	.long	.Ldebug_loc10-.Lloclists_table_base0
	.long	.Ldebug_loc11-.Lloclists_table_base0
	.long	.Ldebug_loc12-.Lloclists_table_base0
	.long	.Ldebug_loc13-.Lloclists_table_base0
	.long	.Ldebug_loc14-.Lloclists_table_base0
	.long	.Ldebug_loc15-.Lloclists_table_base0
	.long	.Ldebug_loc16-.Lloclists_table_base0
	.long	.Ldebug_loc17-.Lloclists_table_base0
	.long	.Ldebug_loc18-.Lloclists_table_base0
	.long	.Ldebug_loc19-.Lloclists_table_base0
	.long	.Ldebug_loc20-.Lloclists_table_base0
	.long	.Ldebug_loc21-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	6                               # Loc expr size
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	6                               # Loc expr size
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.ascii	"\202\001"                      # DW_AT_call_tail_call
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\201\001"                      # DW_AT_call_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
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
	.byte	26                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
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
	.byte	27                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	1                               # Abbrev [1] 0xc:0x542 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	2                               # Abbrev [2] 0x5c:0x15 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x64:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x67:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6a:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6d:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x71:0x15 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x79:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7c:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7f:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x82:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x86:0xc DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x8e:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x92:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x93:0x34 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	223                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xa2:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	231                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xac:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	431                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xb6:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	763                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xc0:0x6 DW_TAG_call_site
	.long	199                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	1                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xc7:0x18 DW_TAG_subprogram
	.byte	25                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	223                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0xcf:0x5 DW_TAG_formal_parameter
	.long	231                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xd4:0x5 DW_TAG_formal_parameter
	.long	431                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xd9:0x5 DW_TAG_formal_parameter
	.long	763                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xdf:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xe7:0x5 DW_TAG_pointer_type
	.long	236                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xec:0x8 DW_TAG_typedef
	.long	244                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xf4:0x4e DW_TAG_structure_type
	.byte	55                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0xf9:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	322                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x102:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	331                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x10b:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	359                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x114:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	367                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x11d:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	596                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x126:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	621                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x12f:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	655                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x138:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	691                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x142:0x5 DW_TAG_pointer_type
	.long	327                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x147:0x4 DW_TAG_typedef
	.byte	28                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x14b:0x8 DW_TAG_typedef
	.long	339                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x153:0x8 DW_TAG_typedef
	.long	347                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x15b:0x8 DW_TAG_typedef
	.long	355                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x163:0x4 DW_TAG_base_type
	.byte	30                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x167:0x8 DW_TAG_typedef
	.long	355                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x16f:0x8 DW_TAG_typedef
	.long	375                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x177:0x5 DW_TAG_pointer_type
	.long	380                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x17c:0x33 DW_TAG_subroutine_type
	.long	223                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x181:0x5 DW_TAG_formal_parameter
	.long	322                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x186:0x5 DW_TAG_formal_parameter
	.long	431                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x18b:0x5 DW_TAG_formal_parameter
	.long	532                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x190:0x5 DW_TAG_formal_parameter
	.long	567                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x195:0x5 DW_TAG_formal_parameter
	.long	507                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x19a:0x5 DW_TAG_formal_parameter
	.long	577                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x19f:0x5 DW_TAG_formal_parameter
	.long	567                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1a4:0x5 DW_TAG_formal_parameter
	.long	507                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1a9:0x5 DW_TAG_formal_parameter
	.long	587                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1af:0x5 DW_TAG_pointer_type
	.long	436                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1b4:0x9 DW_TAG_typedef
	.long	445                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x1bd:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x1c2:0xa DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	481                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x1cc:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x1d6:0xa DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1e1:0x5 DW_TAG_pointer_type
	.long	486                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1e6:0x15 DW_TAG_subroutine_type
	.long	146                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x1eb:0x5 DW_TAG_formal_parameter
	.long	146                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1f0:0x5 DW_TAG_formal_parameter
	.long	507                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1f5:0x5 DW_TAG_formal_parameter
	.long	507                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1fb:0x8 DW_TAG_typedef
	.long	355                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x203:0x5 DW_TAG_pointer_type
	.long	520                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x208:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x209:0x5 DW_TAG_formal_parameter
	.long	146                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x20e:0x5 DW_TAG_formal_parameter
	.long	146                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x214:0x5 DW_TAG_restrict_type
	.long	537                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x219:0x5 DW_TAG_pointer_type
	.long	542                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x21e:0x5 DW_TAG_const_type
	.long	547                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x223:0x8 DW_TAG_typedef
	.long	555                             # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x22b:0x8 DW_TAG_typedef
	.long	563                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x233:0x4 DW_TAG_base_type
	.byte	42                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	21                              # Abbrev [21] 0x237:0x5 DW_TAG_restrict_type
	.long	572                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x23c:0x5 DW_TAG_pointer_type
	.long	507                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x241:0x5 DW_TAG_restrict_type
	.long	582                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x246:0x5 DW_TAG_pointer_type
	.long	547                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x24b:0x9 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x254:0x8 DW_TAG_typedef
	.long	604                             # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x25c:0x5 DW_TAG_pointer_type
	.long	609                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x261:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x262:0x5 DW_TAG_formal_parameter
	.long	322                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x267:0x5 DW_TAG_formal_parameter
	.long	431                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x26d:0x5 DW_TAG_pointer_type
	.long	626                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x272:0xb DW_TAG_subroutine_type
	.long	637                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x277:0x5 DW_TAG_formal_parameter
	.long	645                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x27d:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x285:0x5 DW_TAG_pointer_type
	.long	650                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x28a:0x5 DW_TAG_const_type
	.long	327                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x28f:0x5 DW_TAG_pointer_type
	.long	660                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x294:0x1a DW_TAG_subroutine_type
	.long	223                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x299:0x5 DW_TAG_formal_parameter
	.long	322                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x29e:0x5 DW_TAG_formal_parameter
	.long	686                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2a3:0x5 DW_TAG_formal_parameter
	.long	686                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2a8:0x5 DW_TAG_formal_parameter
	.long	339                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x2ae:0x5 DW_TAG_pointer_type
	.long	339                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2b3:0x5 DW_TAG_pointer_type
	.long	696                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2b8:0x1a DW_TAG_subroutine_type
	.long	223                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x2bd:0x5 DW_TAG_formal_parameter
	.long	322                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2c2:0x5 DW_TAG_formal_parameter
	.long	431                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2c7:0x5 DW_TAG_formal_parameter
	.long	722                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2cc:0x5 DW_TAG_formal_parameter
	.long	722                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x2d2:0x5 DW_TAG_pointer_type
	.long	727                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x2d7:0x5 DW_TAG_const_type
	.long	732                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2dc:0x8 DW_TAG_typedef
	.long	740                             # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x2e4:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x2e8:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	331                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x2f1:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x2fb:0x5 DW_TAG_pointer_type
	.long	768                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x300:0x5 DW_TAG_const_type
	.long	773                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x305:0x8 DW_TAG_typedef
	.long	781                             # DW_AT_type
	.byte	59                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x30d:0x21 DW_TAG_structure_type
	.byte	58                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x312:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	331                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x31b:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	814                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x324:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x32e:0x8 DW_TAG_typedef
	.long	822                             # DW_AT_type
	.byte	57                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x336:0x5 DW_TAG_pointer_type
	.long	827                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x33b:0x15 DW_TAG_subroutine_type
	.long	223                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x340:0x5 DW_TAG_formal_parameter
	.long	231                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x345:0x5 DW_TAG_formal_parameter
	.long	431                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x34a:0x5 DW_TAG_formal_parameter
	.long	763                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x350:0x37 DW_TAG_subprogram
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x354:0x8 DW_TAG_formal_parameter
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	322                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x35c:0x8 DW_TAG_formal_parameter
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	582                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x364:0x8 DW_TAG_formal_parameter
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	507                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x36c:0x8 DW_TAG_variable
	.byte	27                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	903                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x374:0x8 DW_TAG_variable
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.long	968                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x37c:0xa DW_TAG_lexical_block
	.byte	26                              # Abbrev [26] 0x37d:0x8 DW_TAG_variable
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	507                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x387:0x5 DW_TAG_pointer_type
	.long	908                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x38c:0x2b DW_TAG_structure_type
	.byte	69                              # DW_AT_name
	.short	336                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x392:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	236                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x39b:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	507                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3a4:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	547                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3ad:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	951                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	73                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x3b7:0xd DW_TAG_array_type
	.long	547                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x3bc:0x7 DW_TAG_subrange_type
	.long	964                             # DW_AT_type
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x3c4:0x4 DW_TAG_base_type
	.byte	68                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	22                              # Abbrev [22] 0x3c8:0x5 DW_TAG_const_type
	.long	507                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x3cd:0xae DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	4                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.byte	64
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	223                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x3df:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	322                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x3e8:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	431                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x3f1:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	532                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x3fa:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	567                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x403:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	507                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x40c:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	577                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x415:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	567                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x41e:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	507                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x427:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	587                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x430:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	27                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	903                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x439:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	968                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x442:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	1233                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x44b:0x2b DW_TAG_inlined_subroutine
	.long	848                             # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	45                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	36                              # Abbrev [36] 0x454:0x6 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.long	852                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x45a:0x6 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.long	860                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x460:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.long	868                             # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x466:0x6 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.long	876                             # DW_AT_abstract_origin
	.byte	38                              # Abbrev [38] 0x46c:0x9 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	37                              # Abbrev [37] 0x46e:0x6 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.long	893                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x476:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	94
	.byte	3                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x47b:0x43 DW_TAG_subprogram
	.byte	4                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	223                             # DW_AT_type
                                        # DW_AT_external
	.byte	33                              # Abbrev [33] 0x48a:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	1238                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x493:0x9 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	431                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x49c:0x9 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	537                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x4a5:0x9 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	507                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x4ae:0x9 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	1243                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x4b7:0x6 DW_TAG_call_site
	.long	1214                            # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x4be:0x13 DW_TAG_subprogram
	.byte	71                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	146                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x4c6:0x5 DW_TAG_formal_parameter
	.long	507                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4cb:0x5 DW_TAG_formal_parameter
	.long	431                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x4d1:0x5 DW_TAG_const_type
	.long	223                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4d6:0x5 DW_TAG_pointer_type
	.long	146                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4db:0x5 DW_TAG_pointer_type
	.long	1248                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4e0:0x8 DW_TAG_typedef
	.long	1256                            # DW_AT_type
	.byte	100                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x4e8:0x4d DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x4ec:0x9 DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1333                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4f5:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	1341                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4fe:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	1341                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x507:0x9 DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	1341                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x510:0x9 DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	1341                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x519:0x9 DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	1341                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x522:0x9 DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x52b:0x9 DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x535:0x8 DW_TAG_typedef
	.long	134                             # DW_AT_type
	.byte	90                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x53d:0x8 DW_TAG_typedef
	.long	1349                            # DW_AT_type
	.byte	93                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x545:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	92                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	2                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	408                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/delta/delta_decoder.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=135
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=167
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=180
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=188
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=204
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=218
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=241
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=256
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=271
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=291
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=309
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=328
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=344
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=359
.Linfo_string16:
	.asciz	"LZMA_RUN"                      # string offset=375
.Linfo_string17:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=384
.Linfo_string18:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=400
.Linfo_string19:
	.asciz	"LZMA_FINISH"                   # string offset=416
.Linfo_string20:
	.asciz	"LZMA_CHECK_NONE"               # string offset=428
.Linfo_string21:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=444
.Linfo_string22:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=461
.Linfo_string23:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=478
.Linfo_string24:
	.asciz	"LZMA_DELTA_TYPE_BYTE"          # string offset=496
.Linfo_string25:
	.asciz	"lzma_delta_coder_init"         # string offset=517
.Linfo_string26:
	.asciz	"lzma_ret"                      # string offset=539
.Linfo_string27:
	.asciz	"coder"                         # string offset=548
.Linfo_string28:
	.asciz	"lzma_coder"                    # string offset=554
.Linfo_string29:
	.asciz	"id"                            # string offset=565
.Linfo_string30:
	.asciz	"unsigned long"                 # string offset=568
.Linfo_string31:
	.asciz	"__uint64_t"                    # string offset=582
.Linfo_string32:
	.asciz	"uint64_t"                      # string offset=593
.Linfo_string33:
	.asciz	"lzma_vli"                      # string offset=602
.Linfo_string34:
	.asciz	"init"                          # string offset=611
.Linfo_string35:
	.asciz	"uintptr_t"                     # string offset=616
.Linfo_string36:
	.asciz	"code"                          # string offset=626
.Linfo_string37:
	.asciz	"alloc"                         # string offset=631
.Linfo_string38:
	.asciz	"size_t"                        # string offset=637
.Linfo_string39:
	.asciz	"free"                          # string offset=644
.Linfo_string40:
	.asciz	"opaque"                        # string offset=649
.Linfo_string41:
	.asciz	"lzma_allocator"                # string offset=656
.Linfo_string42:
	.asciz	"unsigned char"                 # string offset=671
.Linfo_string43:
	.asciz	"__uint8_t"                     # string offset=685
.Linfo_string44:
	.asciz	"uint8_t"                       # string offset=695
.Linfo_string45:
	.asciz	"lzma_action"                   # string offset=703
.Linfo_string46:
	.asciz	"lzma_code_function"            # string offset=715
.Linfo_string47:
	.asciz	"end"                           # string offset=734
.Linfo_string48:
	.asciz	"lzma_end_function"             # string offset=738
.Linfo_string49:
	.asciz	"get_check"                     # string offset=756
.Linfo_string50:
	.asciz	"lzma_check"                    # string offset=766
.Linfo_string51:
	.asciz	"memconfig"                     # string offset=777
.Linfo_string52:
	.asciz	"update"                        # string offset=787
.Linfo_string53:
	.asciz	"options"                       # string offset=794
.Linfo_string54:
	.asciz	"lzma_filter"                   # string offset=802
.Linfo_string55:
	.asciz	"lzma_next_coder_s"             # string offset=814
.Linfo_string56:
	.asciz	"lzma_next_coder"               # string offset=832
.Linfo_string57:
	.asciz	"lzma_init_function"            # string offset=848
.Linfo_string58:
	.asciz	"lzma_filter_info_s"            # string offset=867
.Linfo_string59:
	.asciz	"lzma_filter_info"              # string offset=886
.Linfo_string60:
	.asciz	"decode_buffer"                 # string offset=903
.Linfo_string61:
	.asciz	"pcoder"                        # string offset=917
.Linfo_string62:
	.asciz	"buffer"                        # string offset=924
.Linfo_string63:
	.asciz	"size"                          # string offset=931
.Linfo_string64:
	.asciz	"next"                          # string offset=936
.Linfo_string65:
	.asciz	"distance"                      # string offset=941
.Linfo_string66:
	.asciz	"pos"                           # string offset=950
.Linfo_string67:
	.asciz	"history"                       # string offset=954
.Linfo_string68:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=962
.Linfo_string69:
	.asciz	"lzma_coder_s"                  # string offset=982
.Linfo_string70:
	.asciz	"i"                             # string offset=995
.Linfo_string71:
	.asciz	"lzma_alloc"                    # string offset=997
.Linfo_string72:
	.asciz	"lzma_delta_decoder_init"       # string offset=1008
.Linfo_string73:
	.asciz	"delta_decode"                  # string offset=1032
.Linfo_string74:
	.asciz	"lzma_delta_props_decode"       # string offset=1045
.Linfo_string75:
	.asciz	"allocator"                     # string offset=1069
.Linfo_string76:
	.asciz	"filters"                       # string offset=1079
.Linfo_string77:
	.asciz	"in"                            # string offset=1087
.Linfo_string78:
	.asciz	"in_pos"                        # string offset=1090
.Linfo_string79:
	.asciz	"in_size"                       # string offset=1097
.Linfo_string80:
	.asciz	"out"                           # string offset=1105
.Linfo_string81:
	.asciz	"out_pos"                       # string offset=1109
.Linfo_string82:
	.asciz	"out_size"                      # string offset=1117
.Linfo_string83:
	.asciz	"action"                        # string offset=1126
.Linfo_string84:
	.asciz	"out_start"                     # string offset=1133
.Linfo_string85:
	.asciz	"ret"                           # string offset=1143
.Linfo_string86:
	.asciz	"props"                         # string offset=1147
.Linfo_string87:
	.asciz	"props_size"                    # string offset=1153
.Linfo_string88:
	.asciz	"opt"                           # string offset=1164
.Linfo_string89:
	.asciz	"type"                          # string offset=1168
.Linfo_string90:
	.asciz	"lzma_delta_type"               # string offset=1173
.Linfo_string91:
	.asciz	"dist"                          # string offset=1189
.Linfo_string92:
	.asciz	"__uint32_t"                    # string offset=1194
.Linfo_string93:
	.asciz	"uint32_t"                      # string offset=1205
.Linfo_string94:
	.asciz	"reserved_int1"                 # string offset=1214
.Linfo_string95:
	.asciz	"reserved_int2"                 # string offset=1228
.Linfo_string96:
	.asciz	"reserved_int3"                 # string offset=1242
.Linfo_string97:
	.asciz	"reserved_int4"                 # string offset=1256
.Linfo_string98:
	.asciz	"reserved_ptr1"                 # string offset=1270
.Linfo_string99:
	.asciz	"reserved_ptr2"                 # string offset=1284
.Linfo_string100:
	.asciz	"lzma_options_delta"            # string offset=1298
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
	.long	.Linfo_string33
	.long	.Linfo_string34
	.long	.Linfo_string35
	.long	.Linfo_string36
	.long	.Linfo_string37
	.long	.Linfo_string38
	.long	.Linfo_string39
	.long	.Linfo_string40
	.long	.Linfo_string41
	.long	.Linfo_string42
	.long	.Linfo_string43
	.long	.Linfo_string44
	.long	.Linfo_string45
	.long	.Linfo_string46
	.long	.Linfo_string47
	.long	.Linfo_string48
	.long	.Linfo_string49
	.long	.Linfo_string50
	.long	.Linfo_string51
	.long	.Linfo_string52
	.long	.Linfo_string53
	.long	.Linfo_string54
	.long	.Linfo_string55
	.long	.Linfo_string56
	.long	.Linfo_string57
	.long	.Linfo_string58
	.long	.Linfo_string59
	.long	.Linfo_string60
	.long	.Linfo_string61
	.long	.Linfo_string62
	.long	.Linfo_string63
	.long	.Linfo_string64
	.long	.Linfo_string65
	.long	.Linfo_string66
	.long	.Linfo_string67
	.long	.Linfo_string68
	.long	.Linfo_string69
	.long	.Linfo_string70
	.long	.Linfo_string71
	.long	.Linfo_string72
	.long	.Linfo_string73
	.long	.Linfo_string74
	.long	.Linfo_string75
	.long	.Linfo_string76
	.long	.Linfo_string77
	.long	.Linfo_string78
	.long	.Linfo_string79
	.long	.Linfo_string80
	.long	.Linfo_string81
	.long	.Linfo_string82
	.long	.Linfo_string83
	.long	.Linfo_string84
	.long	.Linfo_string85
	.long	.Linfo_string86
	.long	.Linfo_string87
	.long	.Linfo_string88
	.long	.Linfo_string89
	.long	.Linfo_string90
	.long	.Linfo_string91
	.long	.Linfo_string92
	.long	.Linfo_string93
	.long	.Linfo_string94
	.long	.Linfo_string95
	.long	.Linfo_string96
	.long	.Linfo_string97
	.long	.Linfo_string98
	.long	.Linfo_string99
	.long	.Linfo_string100
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp0
	.quad	.Lfunc_begin1
	.quad	.Ltmp8
	.quad	.Lfunc_begin2
	.quad	.Ltmp40
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
