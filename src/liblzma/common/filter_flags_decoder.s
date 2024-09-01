	.text
	.file	"filter_flags_decoder.c"
	.globl	lzma_filter_flags_decode        # -- Begin function lzma_filter_flags_decode
	.p2align	4, 0x90
	.type	lzma_filter_flags_decode,@function
lzma_filter_flags_decode:               # @lzma_filter_flags_decode
	.cfi_startproc
# %bb.0:                                # %entry
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r8, %r13
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	$0, 8(%rdi)
	xorl	%esi, %esi
	callq	lzma_vli_decode@PLT
	testl	%eax, %eax
	jne	.LBB0_5
# %bb.1:                                # %do.end
	movq	(%r12), %rax
	shrq	$62, %rax
	movl	$9, %eax
	jne	.LBB0_5
# %bb.2:                                # %if.end4
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	%r13, %r8
	callq	lzma_vli_decode@PLT
	testl	%eax, %eax
	jne	.LBB0_5
# %bb.3:                                # %do.end14
	movq	(%rbx), %rdx
	subq	%rdx, %r13
	movq	8(%rsp), %rcx
	movl	$9, %eax
	cmpq	%rcx, %r13
	jb	.LBB0_5
# %bb.4:                                # %if.end17
	addq	%rdx, %r14
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	lzma_properties_decode@PLT
	movq	8(%rsp), %rcx
	addq	%rcx, (%rbx)
.LBB0_5:                                # %return
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
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
.Lfunc_end0:
	.size	lzma_filter_flags_decode, .Lfunc_end0-lzma_filter_flags_decode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
