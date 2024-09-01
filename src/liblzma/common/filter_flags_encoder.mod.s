	.text
	.file	"filter_flags_encoder.c"
	.globl	lzma_filter_flags_size          # -- Begin function lzma_filter_flags_size
	.p2align	4, 0x90
	.type	lzma_filter_flags_size,@function
lzma_filter_flags_size:                 # @lzma_filter_flags_size
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rsi), %rax
	shrq	$62, %rax
	movl	$11, %eax
	jne	.LBB0_4
# %bb.1:                                # %do.body
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	lzma_properties_size@PLT
	testl	%eax, %eax
	jne	.LBB0_3
# %bb.2:                                # %do.end
	movq	(%r14), %rdi
	callq	lzma_vli_size@PLT
	movl	%eax, %ebp
	movl	(%rbx), %edi
	callq	lzma_vli_size@PLT
	addl	%ebp, %eax
	addl	%eax, (%rbx)
	xorl	%eax, %eax
.LBB0_3:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %rbp
.LBB0_4:                                # %return
	retq
.Lfunc_end0:
	.size	lzma_filter_flags_size, .Lfunc_end0-lzma_filter_flags_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_filter_flags_encode        # -- Begin function lzma_filter_flags_encode
	.p2align	4, 0x90
	.type	lzma_filter_flags_encode,@function
lzma_filter_flags_encode:               # @lzma_filter_flags_encode
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
	movq	%rdi, %r15
	movq	(%rdi), %rdi
	movq	%rdi, %rax
	shrq	$62, %rax
	movl	$11, %eax
	jne	.LBB1_7
# %bb.1:                                # %do.body
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r14
	xorl	%esi, %esi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	%r12, %r8
	callq	lzma_vli_encode@PLT
	testl	%eax, %eax
	jne	.LBB1_7
# %bb.2:                                # %do.end
	leaq	4(%rsp), %rdi
	movq	%r15, %rsi
	callq	lzma_properties_size@PLT
	testl	%eax, %eax
	jne	.LBB1_7
# %bb.3:                                # %do.body15
	movl	4(%rsp), %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	%r12, %r8
	callq	lzma_vli_encode@PLT
	testl	%eax, %eax
	jne	.LBB1_7
# %bb.4:                                # %do.end26
	movq	(%rbx), %rcx
	subq	%rcx, %r12
	movl	4(%rsp), %edx
	movl	$11, %eax
	cmpq	%rdx, %r12
	jb	.LBB1_7
# %bb.5:                                # %do.body32
	addq	%rcx, %r14
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	lzma_properties_encode@PLT
	testl	%eax, %eax
	jne	.LBB1_7
# %bb.6:                                # %do.end43
	movl	4(%rsp), %eax
	addq	%rax, (%rbx)
	xorl	%eax, %eax
.LBB1_7:                                # %return
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
.Lfunc_end1:
	.size	lzma_filter_flags_encode, .Lfunc_end1-lzma_filter_flags_encode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
