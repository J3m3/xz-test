	.text
	.file	"block_decoder.c"
	.globl	lzma_block_decoder_init         # -- Begin function lzma_block_decoder_init
	.p2align	4, 0x90
	.type	lzma_block_decoder_init,@function
lzma_block_decoder_init:                # @lzma_block_decoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpq	$lzma_block_decoder_init, 16(%rdi)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	lzma_next_end@PLT
.LBB0_2:                                # %if.end
	movq	$lzma_block_decoder_init, 16(%r15)
	movq	%r14, %rdi
	callq	lzma_block_unpadded_size@PLT
	movq	%rax, %rcx
	movl	$11, %eax
	testq	%rcx, %rcx
	je	.LBB0_7
# %bb.3:                                # %lor.lhs.false
	cmpq	$-1, 24(%r14)
	jl	.LBB0_7
# %bb.4:                                # %if.end8
	movq	(%r15), %rax
	testq	%rax, %rax
	jne	.LBB0_9
# %bb.5:                                # %if.then10
	movl	$216, %edi
	movq	%rbx, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB0_6
# %bb.8:                                # %if.end16
	movq	$block_decode, 24(%r15)
	movq	$block_decoder_end, 32(%r15)
	movq	$0, 8(%rax)
	movq	$-1, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movups	%xmm0, 40(%rax)
	movups	%xmm0, 56(%rax)
	movq	(%r15), %rax
.LBB0_9:                                # %if.end23
	movl	$0, (%rax)
	movq	(%r15), %rax
	movq	%r14, 72(%rax)
	movq	(%r15), %rax
	movq	$0, 80(%rax)
	movq	(%r15), %rax
	movq	$0, 88(%rax)
	movq	16(%r14), %rax
	cmpq	$-1, %rax
	jne	.LBB0_11
# %bb.10:                               # %cond.true
	movl	4(%r14), %r12d
	movl	8(%r14), %edi
	callq	lzma_check_size@PLT
	movl	%eax, %ecx
	addq	%r12, %rcx
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	subq	%rcx, %rax
.LBB0_11:                               # %cond.end
	movq	(%r15), %rcx
	movq	%rax, 96(%rcx)
	movq	(%r15), %rax
	movq	$0, 104(%rax)
	movq	(%r15), %rdi
	addq	$112, %rdi
	movl	8(%r14), %esi
	callq	lzma_check_init@PLT
	movq	(%r15), %rdi
	addq	$8, %rdi
	movq	32(%r14), %rdx
	movq	%rbx, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	lzma_raw_decoder_init@PLT       # TAILCALL
.LBB0_6:
	.cfi_def_cfa_offset 48
	movl	$5, %eax
.LBB0_7:                                # %return
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_block_decoder_init, .Lfunc_end0-lzma_block_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_decode
	.type	block_decode,@function
block_decode:                           # @block_decode
	.cfi_startproc
# %bb.0:                                # %entry
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rdi, %rbx
	movl	(%rdi), %ecx
	cmpl	$2, %ecx
	je	.LBB1_30
# %bb.1:                                # %entry
	cmpl	$1, %ecx
	je	.LBB1_12
# %bb.2:                                # %entry
	movl	$11, %eax
	testl	%ecx, %ecx
	jne	.LBB1_34
# %bb.3:                                # %sw.bb
	movl	96(%rsp), %eax
	movq	80(%rsp), %rbp
	movq	(%r14), %r13
	movq	(%rbp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	8(%rbx), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	movq	%r9, 16(%rsp)                   # 8-byte Spill
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	104(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	*32(%rbx)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	(%r14), %rsi
	subq	%r13, %rsi
	movq	80(%rbx), %rdi
	movq	96(%rbx), %rcx
	movabsq	$9223372036854775807, %rdx      # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rdx, %rcx
	cmovaeq	%rdx, %rcx
	subq	%rdi, %rcx
	setb	%r8b
	cmpq	%rsi, %rcx
	setb	%cl
	orb	%r8b, %cl
	jne	.LBB1_4
# %bb.5:                                # %lor.lhs.false
	movq	(%rbp), %rcx
	movq	16(%rsp), %r9                   # 8-byte Reload
	subq	%r9, %rcx
	addq	%rsi, %rdi
	movq	%rdi, 80(%rbx)
	movq	72(%rbx), %rsi
	movq	88(%rbx), %rdi
	movq	24(%rsi), %r8
	cmpq	%rdx, %r8
	cmovbq	%r8, %rdx
	subq	%rdi, %rdx
	setb	%r8b
	cmpq	%rcx, %rdx
	setb	%dl
	orb	%r8b, %dl
	jne	.LBB1_4
# %bb.7:                                # %if.end
	addq	%rcx, %rdi
	movq	%rdi, 88(%rbx)
	leaq	112(%rbx), %rdi
	movl	8(%rsi), %esi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	addq	%r9, %rdx
	movl	%eax, %ebp
	callq	lzma_check_update@PLT
	movl	%ebp, %eax
	cmpl	$1, %ebp
	jne	.LBB1_34
# %bb.8:                                # %if.end10
	movq	72(%rbx), %rcx
	movq	80(%rbx), %rdx
	movq	16(%rcx), %rax
	cmpq	$-1, %rax
	setne	%sil
	cmpq	%rdx, %rax
	setne	%al
	testb	%al, %sil
	jne	.LBB1_4
# %bb.9:                                # %lor.lhs.false15
	movq	24(%rcx), %rsi
	cmpq	$-1, %rsi
	je	.LBB1_11
# %bb.10:                               # %lor.lhs.false15
	movl	$9, %eax
	cmpq	88(%rbx), %rsi
	jne	.LBB1_34
.LBB1_11:                               # %cleanup
	movq	%rdx, 16(%rcx)
	movq	72(%rbx), %rax
	movq	88(%rbx), %rcx
	movq	%rcx, 24(%rax)
	movl	$1, (%rbx)
.LBB1_12:                               # %sw.bb33
	movq	80(%rbx), %rcx
	testb	$3, %cl
	je	.LBB1_28
# %bb.13:                               # %while.body
	movq	(%r14), %rdx
	xorl	%eax, %eax
	cmpq	%r15, %rdx
	jae	.LBB1_34
# %bb.14:                               # %if.end37
	leaq	1(%rcx), %rsi
	movq	%rsi, 80(%rbx)
	leaq	1(%rdx), %rdi
	movq	%rdi, (%r14)
	cmpb	$0, (%r12,%rdx)
	je	.LBB1_16
.LBB1_4:
	movl	$9, %eax
	jmp	.LBB1_34
.LBB1_16:                               # %while.cond.1
	testb	$3, %sil
	je	.LBB1_28
# %bb.17:                               # %while.body.1
	movq	(%r14), %rdx
	cmpq	%r15, %rdx
	jae	.LBB1_34
# %bb.18:                               # %if.end37.1
	leaq	2(%rcx), %rsi
	movq	%rsi, 80(%rbx)
	leaq	1(%rdx), %rdi
	movq	%rdi, (%r14)
	cmpb	$0, (%r12,%rdx)
	jne	.LBB1_4
# %bb.21:                               # %while.cond.2
	testb	$3, %sil
	je	.LBB1_28
# %bb.22:                               # %while.body.2
	movq	(%r14), %rdx
	cmpq	%r15, %rdx
	jae	.LBB1_34
# %bb.23:                               # %if.end37.2
	leaq	3(%rcx), %rsi
	movq	%rsi, 80(%rbx)
	leaq	1(%rdx), %rdi
	movq	%rdi, (%r14)
	cmpb	$0, (%r12,%rdx)
	jne	.LBB1_4
# %bb.25:                               # %while.cond.3
	testb	$3, %sil
	je	.LBB1_28
# %bb.26:                               # %while.body.3
	movq	(%r14), %rdx
	cmpq	%r15, %rdx
	jae	.LBB1_34
# %bb.27:                               # %if.end37.3
	addq	$4, %rcx
	movq	%rcx, 80(%rbx)
	incq	%rdx
	movq	%rdx, (%r14)
	movl	$9, %eax
	jmp	.LBB1_34
.LBB1_28:                               # %while.end
	movq	72(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	.LBB1_33
# %bb.29:                               # %if.end49
	leaq	112(%rbx), %rdi
	callq	lzma_check_finish@PLT
	movl	$2, (%rbx)
.LBB1_30:                               # %sw.bb54
	movq	72(%rbx), %rax
	movl	8(%rax), %edi
	callq	lzma_check_size@PLT
	movl	%eax, %r13d
	movq	72(%rbx), %rcx
	addq	$40, %rcx
	leaq	104(%rbx), %r8
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r13, %r9
	callq	lzma_bufcpy@PLT
	xorl	%eax, %eax
	cmpq	%r13, 104(%rbx)
	jb	.LBB1_34
# %bb.31:                               # %if.end65
	movq	72(%rbx), %rax
	movl	8(%rax), %edi
	callq	lzma_check_is_supported@PLT
	testb	%al, %al
	je	.LBB1_33
# %bb.32:                               # %land.lhs.true
	movq	72(%rbx), %rdi
	addq	$40, %rdi
	addq	$112, %rbx
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	bcmp@PLT
	movl	%eax, %ecx
	movl	$9, %eax
	testl	%ecx, %ecx
	jne	.LBB1_34
.LBB1_33:                               # %if.end80
	movl	$1, %eax
.LBB1_34:                               # %cleanup82
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	block_decode, .Lfunc_end1-block_decode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_decoder_end
	.type	block_decoder_end,@function
block_decoder_end:                      # @block_decoder_end
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	addq	$8, %rdi
	callq	lzma_next_end@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Lfunc_end2:
	.size	block_decoder_end, .Lfunc_end2-block_decoder_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_block_decoder              # -- Begin function lzma_block_decoder
	.p2align	4, 0x90
	.type	lzma_block_decoder,@function
lzma_block_decoder:                     # @lzma_block_decoder
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	lzma_strm_init@PLT
	testl	%eax, %eax
	je	.LBB3_1
# %bb.4:                                # %return
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB3_1:                                # %do.end
	.cfi_def_cfa_offset 32
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movq	%r14, %rdx
	callq	lzma_block_decoder_init
	testl	%eax, %eax
	je	.LBB3_3
# %bb.2:                                # %cleanup7
	movq	%rbx, %rdi
	movl	%eax, %ebx
	callq	lzma_end@PLT
	movl	%ebx, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB3_3:                                # %do.end10
	.cfi_def_cfa_offset 32
	movq	56(%rbx), %rax
	movb	$1, 80(%rax)
	movq	56(%rbx), %rax
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	lzma_block_decoder, .Lfunc_end3-lzma_block_decoder
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
