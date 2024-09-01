	.text
	.file	"block_encoder.c"
	.globl	lzma_block_encoder_init         # -- Begin function lzma_block_encoder_init
	.p2align	4, 0x90
	.type	lzma_block_encoder_init,@function
lzma_block_encoder_init:                # @lzma_block_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpq	$lzma_block_encoder_init, 16(%rdi)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	lzma_next_end@PLT
.LBB0_2:                                # %if.end
	movq	$lzma_block_encoder_init, 16(%r15)
	movl	$11, %eax
	testq	%r14, %r14
	je	.LBB0_7
# %bb.3:                                # %if.end4
	movl	$8, %eax
	cmpl	$0, (%r14)
	je	.LBB0_4
.LBB0_7:                                # %return
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %if.end7
	.cfi_def_cfa_offset 32
	movl	8(%r14), %edi
	movl	$11, %eax
	cmpl	$15, %edi
	ja	.LBB0_7
# %bb.5:                                # %if.end10
	callq	lzma_check_is_supported@PLT
	testb	%al, %al
	je	.LBB0_6
# %bb.8:                                # %if.end13
	movq	(%r15), %rax
	testq	%rax, %rax
	jne	.LBB0_12
# %bb.9:                                # %if.then15
	movl	$208, %edi
	movq	%rbx, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB0_10
# %bb.11:                               # %if.end21
	movq	$block_encode, 24(%r15)
	movq	$block_encoder_end, 32(%r15)
	movq	$block_encoder_update, 56(%r15)
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	(%r15), %rax
.LBB0_12:                               # %if.end29
	movl	$0, 72(%rax)
	movq	(%r15), %rax
	movq	%r14, 64(%rax)
	movq	(%r15), %rax
	movq	$0, 80(%rax)
	movq	(%r15), %rax
	movq	$0, 88(%rax)
	movq	(%r15), %rax
	movq	$0, 96(%rax)
	movq	(%r15), %rdi
	addq	$104, %rdi
	movl	8(%r14), %esi
	callq	lzma_check_init@PLT
	movq	(%r15), %rdi
	movq	32(%r14), %rdx
	movq	%rbx, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	lzma_raw_encoder_init@PLT       # TAILCALL
.LBB0_6:
	.cfi_def_cfa_offset 32
	movl	$3, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_10:
	.cfi_def_cfa_offset 32
	movl	$5, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_block_encoder_init, .Lfunc_end0-lzma_block_encoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_encode
	.type	block_encode,@function
block_encode:                           # @block_encode
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%rdi, %rbx
	movabsq	$9223372036854774716, %r12      # imm = 0x7FFFFFFFFFFFFBBC
	movq	88(%rdi), %rax
	negq	%rax
	leaq	(%r12,%rax), %rdi
	addq	$1091, %rdi                     # imm = 0x443
	movq	(%rcx), %r15
	movq	%r8, %r9
	subq	%r15, %r9
	movl	$9, %eax
	cmpq	%r9, %rdi
	jae	.LBB1_1
.LBB1_21:                               # %cleanup62
	addq	$8, %rsp
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
.LBB1_1:                                # %if.end
	.cfi_def_cfa_offset 64
	movq	72(%rsp), %r10
	movq	64(%rsp), %r13
	movl	72(%rbx), %edi
	cmpl	$2, %edi
	je	.LBB1_18
# %bb.2:                                # %if.end
	cmpl	$1, %edi
	je	.LBB1_7
# %bb.3:                                # %if.end
	movl	$11, %eax
	testl	%edi, %edi
	jne	.LBB1_21
# %bb.4:                                # %sw.bb
	movl	80(%rsp), %eax
	movq	(%r13), %rdi
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movq	(%rbx), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%rdx, %r13
	movq	%rcx, %rbp
	movq	%r14, %r9
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	*24(%rbx)
	movq	%rbp, %rcx
	movq	%r13, %rdx
	movq	96(%rsp), %r13
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	%eax, %ebp
	movq	(%r13), %rsi
	subq	(%rsp), %rsi                    # 8-byte Folded Reload
	movq	80(%rbx), %rdi
	subq	%rdi, %r12
	movl	$9, %eax
	cmpq	%rsi, %r12
	jb	.LBB1_21
# %bb.5:                                # %if.end9
	movq	(%rcx), %rcx
	subq	%r15, %rcx
	addq	%rsi, %rdi
	movq	%rdi, 80(%rbx)
	addq	%rcx, 88(%rbx)
	leaq	104(%rbx), %rdi
	movq	64(%rbx), %rax
	movl	8(%rax), %esi
	addq	%r15, %rdx
	callq	lzma_check_update@PLT
	movq	72(%rsp), %r10
	cmpl	$1, %ebp
	setne	%al
	movl	80(%rsp), %ecx
	cmpl	$1, %ecx
	sete	%cl
	orb	%al, %cl
	movl	%ebp, %eax
	jne	.LBB1_21
# %bb.6:                                # %cleanup
	movq	64(%rbx), %rax
	movq	80(%rbx), %rcx
	movq	%rcx, 16(%rax)
	movq	64(%rbx), %rax
	movq	88(%rbx), %rcx
	movq	%rcx, 24(%rax)
	movl	$1, 72(%rbx)
.LBB1_7:                                # %sw.bb29
	movq	80(%rbx), %rcx
	testb	$3, %cl
	je	.LBB1_16
# %bb.8:                                # %while.body.lr.ph
	movq	(%r13), %rdx
	xorl	%eax, %eax
	cmpq	%r10, %rdx
	jae	.LBB1_21
# %bb.9:                                # %if.end33
	movb	$0, (%r14,%rdx)
	leaq	1(%rdx), %rsi
	movq	%rsi, (%r13)
	leaq	1(%rcx), %rdi
	movq	%rdi, 80(%rbx)
	testb	$3, %dil
	je	.LBB1_16
# %bb.10:                               # %while.body.1
	cmpq	%r10, %rsi
	jae	.LBB1_21
# %bb.11:                               # %if.end33.1
	movb	$0, 1(%r14,%rdx)
	leaq	2(%rdx), %rsi
	movq	%rsi, (%r13)
	leaq	2(%rcx), %rdi
	movq	%rdi, 80(%rbx)
	testb	$3, %dil
	je	.LBB1_16
# %bb.12:                               # %while.body.2
	cmpq	%r10, %rsi
	jae	.LBB1_21
# %bb.13:                               # %if.end33.2
	movb	$0, 2(%r14,%rdx)
	leaq	3(%rdx), %rsi
	movq	%rsi, (%r13)
	leaq	3(%rcx), %rdi
	movq	%rdi, 80(%rbx)
	testb	$3, %dil
	je	.LBB1_16
# %bb.14:                               # %while.body.3
	cmpq	%r10, %rsi
	jae	.LBB1_21
# %bb.15:                               # %if.end33.3
	movb	$0, 3(%r14,%rdx)
	addq	$4, %rdx
	movq	%rdx, (%r13)
	addq	$4, %rcx
	movq	%rcx, 80(%rbx)
.LBB1_16:                               # %while.end
	movq	64(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	.LBB1_20
# %bb.17:                               # %if.end40
	leaq	104(%rbx), %rdi
	movq	%r10, %r15
	callq	lzma_check_finish@PLT
	movq	%r15, %r10
	movl	$2, 72(%rbx)
.LBB1_18:                               # %sw.bb45
	movq	64(%rbx), %rax
	movl	8(%rax), %edi
	movq	%r10, %r15
	callq	lzma_check_size@PLT
	movq	%r13, %r8
	movl	%eax, %r13d
	leaq	104(%rbx), %rbp
	leaq	96(%rbx), %rsi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	lzma_bufcpy@PLT
	xorl	%eax, %eax
	cmpq	%r13, 96(%rbx)
	jb	.LBB1_21
# %bb.19:                               # %if.end55
	movq	64(%rbx), %rdi
	addq	$40, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memcpy@PLT
.LBB1_20:                               # %cleanup62
	movl	$1, %eax
	jmp	.LBB1_21
.Lfunc_end1:
	.size	block_encode, .Lfunc_end1-block_encode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_encoder_end
	.type	block_encoder_end,@function
block_encoder_end:                      # @block_encoder_end
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
	.size	block_encoder_end, .Lfunc_end2-block_encoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_encoder_update
	.type	block_encoder_update,@function
block_encoder_update:                   # @block_encoder_update
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 72(%rdi)
	je	.LBB3_2
# %bb.1:                                # %cleanup
	movl	$11, %eax
	retq
.LBB3_2:                                # %if.end
	movq	%rcx, %rdx
	jmp	lzma_next_filter_update@PLT     # TAILCALL
.Lfunc_end3:
	.size	block_encoder_update, .Lfunc_end3-block_encoder_update
	.cfi_endproc
                                        # -- End function
	.globl	lzma_block_encoder              # -- Begin function lzma_block_encoder
	.p2align	4, 0x90
	.type	lzma_block_encoder,@function
lzma_block_encoder:                     # @lzma_block_encoder
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
	je	.LBB4_1
# %bb.4:                                # %return
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB4_1:                                # %do.end
	.cfi_def_cfa_offset 32
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movq	%r14, %rdx
	callq	lzma_block_encoder_init
	testl	%eax, %eax
	je	.LBB4_3
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
.LBB4_3:                                # %do.end10
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
.Lfunc_end4:
	.size	lzma_block_encoder, .Lfunc_end4-lzma_block_encoder
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
