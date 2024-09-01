	.text
	.file	"block_header_decoder.c"
	.globl	lzma_block_header_decode        # -- Begin function lzma_block_header_decode
	.p2align	4, 0x90
	.type	lzma_block_header_decode,@function
lzma_block_header_decode:               # @lzma_block_header_decode
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
	movq	32(%rdi), %rax
	movq	$-1, (%rax)
	movq	32(%rdi), %rax
	movq	$0, 8(%rax)
	movq	32(%rdi), %rax
	movq	$-1, 16(%rax)
	movq	32(%rdi), %rax
	movq	$0, 24(%rax)
	movq	32(%rdi), %rax
	movq	$-1, 32(%rax)
	movq	32(%rdi), %rax
	movq	$0, 40(%rax)
	movq	32(%rdi), %rax
	movq	$-1, 48(%rax)
	movq	32(%rdi), %rax
	movq	$0, 56(%rax)
	movq	32(%rdi), %rax
	movq	$-1, 64(%rax)
	movq	32(%rdi), %rax
	movq	$0, 72(%rax)
	movl	$0, (%rdi)
	movzbl	(%rdx), %r12d
	leal	4(,%r12,4), %ecx
	movl	$11, %eax
	cmpl	4(%rdi), %ecx
	jne	.LBB0_20
# %bb.1:                                # %lor.lhs.false
	movq	%rdi, %rbx
	cmpl	$15, 8(%rdi)
	ja	.LBB0_20
# %bb.2:                                # %if.end
	movq	%rdx, %r15
	movq	%rsi, %r14
	shll	$2, %r12d
	movq	%rdx, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	lzma_crc32@PLT
	movl	%eax, %ecx
	movl	$9, %eax
	cmpl	(%r15,%r12), %ecx
	jne	.LBB0_20
# %bb.3:                                # %if.end14
	movzbl	1(%r15), %ecx
	movl	$8, %eax
	testb	$60, %cl
	je	.LBB0_4
.LBB0_20:                               # %return
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
.LBB0_4:                                # %if.end18
	.cfi_def_cfa_offset 64
	movq	$2, (%rsp)
	leaq	16(%rbx), %rdi
	testb	$64, %cl
	jne	.LBB0_5
# %bb.8:                                # %if.else
	movq	$-1, (%rdi)
.LBB0_9:                                # %if.end35
	leaq	24(%rbx), %rdi
	cmpb	$0, 1(%r15)
	js	.LBB0_10
# %bb.11:                               # %if.else53
	movq	$-1, (%rdi)
.LBB0_12:                               # %if.end55
	movzbl	1(%r15), %ebp
	andl	$3, %ebp
	shll	$4, %ebp
	addq	$16, %rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_13:                               # %for.body66
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rdi
	addq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%rsp, %rcx
	movq	%r12, %r8
	callq	lzma_filter_flags_decode@PLT
	testl	%eax, %eax
	jne	.LBB0_21
# %bb.14:                               # %for.cond62
                                        #   in Loop: Header=BB0_13 Depth=1
	addq	$16, %r13
	cmpq	%r13, %rbp
	jne	.LBB0_13
# %bb.15:                               # %while.cond.preheader
	movq	(%rsp), %rax
.LBB0_16:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r12, %rax
	jae	.LBB0_17
# %bb.18:                               # %while.body
                                        #   in Loop: Header=BB0_16 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsp)
	cmpb	$0, (%r15,%rax)
	movq	%rcx, %rax
	je	.LBB0_16
# %bb.19:                               # %if.then89
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	free_properties
	movl	$8, %eax
	jmp	.LBB0_20
.LBB0_5:                                # %do.body
	movq	%rsp, %rcx
	xorl	%esi, %esi
	movq	%r15, %rdx
	movq	%r12, %r8
	callq	lzma_vli_decode@PLT
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.6:                                # %do.end
	movq	%rbx, %rdi
	callq	lzma_block_unpadded_size@PLT
	testq	%rax, %rax
	jne	.LBB0_9
# %bb.7:
	movl	$9, %eax
	jmp	.LBB0_20
.LBB0_21:                               # %cleanup79.thread
	movq	32(%rbx), %rcx
	movq	8(%rcx), %rdi
	movq	%r14, %rsi
	movl	%eax, %ebp
	callq	lzma_free@PLT
	movq	32(%rbx), %rax
	movq	$-1, (%rax)
	movq	32(%rbx), %rax
	movq	$0, 8(%rax)
	movq	32(%rbx), %rax
	movq	24(%rax), %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
	movq	32(%rbx), %rax
	movq	$-1, 16(%rax)
	movq	32(%rbx), %rax
	movq	$0, 24(%rax)
	movq	32(%rbx), %rax
	movq	40(%rax), %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
	movq	32(%rbx), %rax
	movq	$-1, 32(%rax)
	movq	32(%rbx), %rax
	movq	$0, 40(%rax)
	movq	32(%rbx), %rax
	movq	56(%rax), %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
	movl	%ebp, %eax
	movq	32(%rbx), %rcx
	movq	$-1, 48(%rcx)
	movq	32(%rbx), %rcx
	movq	$0, 56(%rcx)
	jmp	.LBB0_20
.LBB0_10:                               # %do.body41
	movq	%rsp, %rcx
	xorl	%esi, %esi
	movq	%r15, %rdx
	movq	%r12, %r8
	callq	lzma_vli_decode@PLT
	testl	%eax, %eax
	jne	.LBB0_20
	jmp	.LBB0_12
.LBB0_17:
	xorl	%eax, %eax
	jmp	.LBB0_20
.Lfunc_end0:
	.size	lzma_block_header_decode, .Lfunc_end0-lzma_block_header_decode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function free_properties
	.type	free_properties,@function
free_properties:                        # @free_properties
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
	movq	32(%rdi), %rax
	movq	8(%rax), %rdi
	callq	lzma_free@PLT
	movq	32(%rbx), %rax
	movq	$-1, (%rax)
	movq	32(%rbx), %rax
	movq	$0, 8(%rax)
	movq	32(%rbx), %rax
	movq	24(%rax), %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
	movq	32(%rbx), %rax
	movq	$-1, 16(%rax)
	movq	32(%rbx), %rax
	movq	$0, 24(%rax)
	movq	32(%rbx), %rax
	movq	40(%rax), %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
	movq	32(%rbx), %rax
	movq	$-1, 32(%rax)
	movq	32(%rbx), %rax
	movq	$0, 40(%rax)
	movq	32(%rbx), %rax
	movq	56(%rax), %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
	movq	32(%rbx), %rax
	movq	$-1, 48(%rax)
	movq	32(%rbx), %rax
	movq	$0, 56(%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	free_properties, .Lfunc_end1-free_properties
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
