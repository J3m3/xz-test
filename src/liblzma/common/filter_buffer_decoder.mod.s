	.text
	.file	"filter_buffer_decoder.c"
	.globl	lzma_raw_buffer_decode          # -- Begin function lzma_raw_buffer_decode
	.p2align	4, 0x90
	.type	lzma_raw_buffer_decode,@function
lzma_raw_buffer_decode:                 # @lzma_raw_buffer_decode
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
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
	sete	%dil
	orb	%al, %dil
	movl	$11, %eax
	je	.LBB0_1
.LBB0_14:                               # %return
	addq	$120, %rsp
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
.LBB0_1:                                # %lor.lhs.false2
	.cfi_def_cfa_offset 176
	movq	176(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB0_14
# %bb.2:                                # %lor.lhs.false2
	testq	%r9, %r9
	je	.LBB0_14
# %bb.3:                                # %lor.lhs.false2
	cmpq	%r8, (%rcx)
	ja	.LBB0_14
# %bb.4:                                # %lor.lhs.false8
	movq	184(%rsp), %rbx
	cmpq	%rbx, (%rbp)
	ja	.LBB0_14
# %bb.5:                                # %if.end
	movq	%r9, %r13
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movq	%r8, %r12
	movq	%rcx, %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	$-1, 56(%rsp)
	leaq	48(%rsp), %rdi
	movq	%rsi, %r15
	callq	lzma_raw_decoder_init@PLT
	testl	%eax, %eax
	jne	.LBB0_14
# %bb.6:                                # %do.end
	movq	%r14, %rcx
	movq	(%r14), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	(%rbp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r15, %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	%r12, %r8
	movq	%r13, %r9
	pushq	$3
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	*104(%rsp)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	cmpl	$1, %eax
	je	.LBB0_7
# %bb.8:                                # %do.end
	testl	%eax, %eax
	movq	%r14, %rcx
	jne	.LBB0_12
# %bb.9:                                # %if.then17
	movl	$10, %eax
	cmpq	%r12, (%rcx)
	jne	.LBB0_12
# %bb.10:                               # %if.else20
	movl	$9, %eax
	cmpq	%rbx, (%rbp)
	jne	.LBB0_12
# %bb.11:                               # %if.else23
	movq	$0, 24(%rsp)
	movq	48(%rsp), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	32(%rsp), %rax
	leaq	23(%rsp), %r9
	movq	%r15, %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	%r14, %rcx
	movq	%r12, %r8
	pushq	$3
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	*104(%rsp)
	movq	%r14, %rcx
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	xorl	%eax, %eax
	cmpq	$1, 24(%rsp)
	sete	%al
	addl	$9, %eax
.LBB0_12:                               # %if.end33
	movl	%eax, %ebx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rcx)
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rbp)
	jmp	.LBB0_13
.LBB0_7:
	xorl	%ebx, %ebx
.LBB0_13:                               # %if.end34
	movq	%r15, %rsi
	leaq	48(%rsp), %rdi
	callq	lzma_next_end@PLT
	movl	%ebx, %eax
	jmp	.LBB0_14
.Lfunc_end0:
	.size	lzma_raw_buffer_decode, .Lfunc_end0-lzma_raw_buffer_decode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
