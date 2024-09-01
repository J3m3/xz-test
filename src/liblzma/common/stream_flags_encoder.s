	.text
	.file	"stream_flags_encoder.c"
	.globl	lzma_stream_header_encode       # -- Begin function lzma_stream_header_encode
	.p2align	4, 0x90
	.type	lzma_stream_header_encode,@function
lzma_stream_header_encode:              # @lzma_stream_header_encode
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$8, %eax
	cmpl	$0, (%rdi)
	je	.LBB0_1
.LBB0_3:                                # %return
	retq
.LBB0_1:                                # %if.end
	movq	lzma_header_magic@GOTPCREL(%rip), %rax
	movzwl	4(%rax), %ecx
	movw	%cx, 4(%rsi)
	movl	(%rax), %eax
	movl	%eax, (%rsi)
	movl	$11, %eax
	cmpl	$15, 16(%rdi)
	ja	.LBB0_3
# %bb.2:                                # %if.end2
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	6(%rsi), %rax
	movb	$0, 6(%rsi)
	movzbl	16(%rdi), %ecx
	movb	%cl, 7(%rsi)
	movq	%rsi, %rbx
	movl	$2, %esi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	lzma_crc32@PLT
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	%ecx, 8(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.Lfunc_end0:
	.size	lzma_stream_header_encode, .Lfunc_end0-lzma_stream_header_encode
	.cfi_endproc
                                        # -- End function
	.globl	lzma_stream_footer_encode       # -- Begin function lzma_stream_footer_encode
	.p2align	4, 0x90
	.type	lzma_stream_footer_encode,@function
lzma_stream_footer_encode:              # @lzma_stream_footer_encode
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$8, %eax
	cmpl	$0, (%rdi)
	je	.LBB1_1
.LBB1_4:                                # %return
	retq
.LBB1_1:                                # %if.end
	movq	8(%rdi), %rcx
	leaq	-4(%rcx), %rax
	movabsq	$17179869180, %rdx              # imm = 0x3FFFFFFFC
	cmpq	%rdx, %rax
	seta	%dl
	testb	$3, %cl
	setne	%r8b
	movl	$11, %eax
	orb	%dl, %r8b
	jne	.LBB1_4
# %bb.2:                                # %if.end2
	shrq	$2, %rcx
	decl	%ecx
	movl	%ecx, 4(%rsi)
	cmpl	$15, 16(%rdi)
	ja	.LBB1_4
# %bb.3:                                # %if.end6
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	4(%rsi), %rax
	movb	$0, 8(%rsi)
	movzbl	16(%rdi), %ecx
	movb	%cl, 9(%rsi)
	movq	%rsi, %rbx
	movl	$6, %esi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	lzma_crc32@PLT
	movl	%eax, %ecx
	xorl	%eax, %eax
	movb	%cl, (%rbx)
	movb	%ch, 1(%rbx)
	movl	%ecx, %edx
	shrl	$16, %edx
	movb	%dl, 2(%rbx)
	shrl	$24, %ecx
	movb	%cl, 3(%rbx)
	movq	lzma_footer_magic@GOTPCREL(%rip), %rcx
	movzwl	(%rcx), %ecx
	movw	%cx, 10(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.Lfunc_end1:
	.size	lzma_stream_footer_encode, .Lfunc_end1-lzma_stream_footer_encode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
