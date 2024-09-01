	.text
	.file	"filter_buffer_encoder.c"
	.globl	lzma_raw_buffer_encode          # -- Begin function lzma_raw_buffer_encode
	.p2align	4, 0x90
	.type	lzma_raw_buffer_encode,@function
lzma_raw_buffer_encode:                 # @lzma_raw_buffer_encode
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rdi, %rdx
	testq	%r15, %r15
	sete	%al
	testq	%rcx, %rcx
	setne	%dil
	andb	%al, %dil
	testq	%r8, %r8
	sete	%al
	testq	%r9, %r9
	sete	%r10b
	orb	%al, %r10b
	orb	%dil, %r10b
	movl	$11, %eax
	jne	.LBB0_5
# %bb.1:                                # %lor.lhs.false5
	movq	144(%rsp), %rbp
	cmpq	%rbp, (%r9)
	ja	.LBB0_5
# %bb.2:                                # %if.end
	movq	%rcx, %r14
	movq	%r8, %rbx
	movq	%r9, %r13
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	$-1, 24(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rsi, %r12
	callq	lzma_raw_encoder_init@PLT
	testl	%eax, %eax
	jne	.LBB0_5
# %bb.3:                                # %do.end
	movq	(%r13), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	$0, 8(%rsp)
	movq	16(%rsp), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	16(%rsp), %rcx
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %r8
	movq	%rbx, %r9
	pushq	$3
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	*72(%rsp)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	%eax, %ebx
	leaq	16(%rsp), %rdi
	movq	%r12, %rsi
	callq	lzma_next_end@PLT
	xorl	%eax, %eax
	cmpl	$1, %ebx
	je	.LBB0_5
# %bb.4:                                # %if.else
	testl	%ebx, %ebx
	movl	$10, %eax
	cmovnel	%ebx, %eax
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%r13)
.LBB0_5:                                # %return
	addq	$88, %rsp
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
.Lfunc_end0:
	.size	lzma_raw_buffer_encode, .Lfunc_end0-lzma_raw_buffer_encode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
