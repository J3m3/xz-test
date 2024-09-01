	.text
	.file	"block_buffer_decoder.c"
	.globl	lzma_block_buffer_decode        # -- Begin function lzma_block_buffer_decode
	.p2align	4, 0x90
	.type	lzma_block_buffer_decode,@function
lzma_block_buffer_decode:               # @lzma_block_buffer_decode
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$11, %eax
	testq	%rcx, %rcx
	je	.LBB0_13
# %bb.1:                                # %lor.lhs.false
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testq	%rdx, %rdx
	setne	%r11b
	movq	(%rcx), %r10
	cmpq	%r8, %r10
	sete	%bl
	orb	%r11b, %bl
	cmpb	$1, %bl
	jne	.LBB0_12
# %bb.2:                                # %lor.lhs.false3
	cmpq	%r8, %r10
	seta	%r10b
	movq	160(%rsp), %r13
	testq	%r13, %r13
	sete	%r11b
	orb	%r10b, %r11b
	jne	.LBB0_12
# %bb.3:                                # %lor.lhs.false7
	movq	168(%rsp), %rbp
	testq	%r9, %r9
	sete	%r10b
	cmpq	%rbp, (%r13)
	setne	%r11b
	seta	%bl
	andb	%r10b, %r11b
	orb	%bl, %r11b
	jne	.LBB0_12
# %bb.4:                                # %if.end
	movq	%rdx, %r12
	movq	%r9, %r15
	movq	%r8, 8(%rsp)                    # 8-byte Spill
	movq	%rcx, %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	$-1, 40(%rsp)
	leaq	32(%rsp), %rax
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movq	%rsi, %rbx
	callq	lzma_block_decoder_init@PLT
	movq	%rbx, %rsi
	testl	%eax, %eax
	jne	.LBB0_11
# %bb.5:                                # %if.then14
	movq	%r14, %rcx
	movq	(%r14), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	(%r13), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r12, %rdx
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	%r15, %r9
	pushq	$3
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	*88(%rsp)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	cmpl	$1, %eax
	je	.LBB0_6
# %bb.7:                                # %if.then14
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.8:                                # %if.then19
	xorl	%eax, %eax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	cmpq	%rcx, (%r14)
	setne	%al
	addl	$9, %eax
.LBB0_9:                                # %if.end24
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%r14)
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%r13)
	jmp	.LBB0_10
.LBB0_6:
	xorl	%eax, %eax
.LBB0_10:                               # %if.end26
	movq	%rbx, %rsi
.LBB0_11:                               # %if.end26
	leaq	32(%rsp), %rdi
	movl	%eax, %ebx
	callq	lzma_next_end@PLT
	movl	%ebx, %eax
.LBB0_12:
	addq	$104, %rsp
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB0_13:                               # %return
	retq
.Lfunc_end0:
	.size	lzma_block_buffer_decode, .Lfunc_end0-lzma_block_buffer_decode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
