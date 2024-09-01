	.text
	.file	"stream_flags_common.c"
	.globl	lzma_stream_flags_compare       # -- Begin function lzma_stream_flags_compare
	.p2align	4, 0x90
	.type	lzma_stream_flags_compare,@function
lzma_stream_flags_compare:              # @lzma_stream_flags_compare
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$8, %eax
	cmpl	$0, (%rdi)
	je	.LBB0_1
.LBB0_12:                               # %return
	retq
.LBB0_1:                                # %lor.lhs.false
	cmpl	$0, (%rsi)
	jne	.LBB0_12
# %bb.2:                                # %if.end
	movl	16(%rdi), %ecx
	movl	$11, %eax
	cmpl	$15, %ecx
	ja	.LBB0_12
# %bb.3:                                # %lor.lhs.false4
	movl	16(%rsi), %edx
	cmpl	$15, %edx
	ja	.LBB0_12
# %bb.4:                                # %if.end8
	cmpl	%edx, %ecx
	jne	.LBB0_5
# %bb.6:                                # %if.end13
	movq	8(%rdi), %rcx
	cmpq	$-1, %rcx
	je	.LBB0_11
# %bb.7:                                # %land.lhs.true
	movq	8(%rsi), %rdx
	cmpq	$-1, %rdx
	je	.LBB0_11
# %bb.8:                                # %if.then17
	movabsq	$17179869181, %rsi              # imm = 0x3FFFFFFFD
	leaq	-4(%rcx), %rdi
	cmpq	%rsi, %rdi
	setae	%dil
	testb	$3, %cl
	setne	%r8b
	orb	%dil, %r8b
	jne	.LBB0_12
# %bb.9:                                # %lor.lhs.false18
	leaq	-4(%rdx), %rdi
	cmpq	%rsi, %rdi
	setae	%sil
	testb	$3, %dl
	setne	%dil
	orb	%sil, %dil
	jne	.LBB0_12
# %bb.10:                               # %if.end21
	movl	$9, %eax
	cmpq	%rdx, %rcx
	jne	.LBB0_12
.LBB0_11:                               # %if.end27
	xorl	%eax, %eax
	retq
.LBB0_5:
	movl	$9, %eax
	retq
.Lfunc_end0:
	.size	lzma_stream_flags_compare, .Lfunc_end0-lzma_stream_flags_compare
	.cfi_endproc
                                        # -- End function
	.type	lzma_header_magic,@object       # @lzma_header_magic
	.section	.rodata,"a",@progbits
	.globl	lzma_header_magic
lzma_header_magic:
	.asciz	"\3757zXZ"
	.size	lzma_header_magic, 6

	.type	lzma_footer_magic,@object       # @lzma_footer_magic
	.globl	lzma_footer_magic
lzma_footer_magic:
	.ascii	"YZ"
	.size	lzma_footer_magic, 2

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
