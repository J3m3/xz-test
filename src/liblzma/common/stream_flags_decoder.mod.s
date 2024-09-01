	.text
	.file	"stream_flags_decoder.c"
	.globl	lzma_stream_header_decode       # -- Begin function lzma_stream_header_decode
	.p2align	4, 0x90
	.type	lzma_stream_header_decode,@function
lzma_stream_header_decode:              # @lzma_stream_header_decode
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
	movl	(%rsi), %eax
	movq	lzma_header_magic@GOTPCREL(%rip), %rcx
	xorl	(%rcx), %eax
	movzwl	4(%rsi), %edx
	xorw	4(%rcx), %dx
	movzwl	%dx, %ecx
	orl	%eax, %ecx
	movl	$7, %eax
	je	.LBB0_1
.LBB0_5:                                # %return
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:                                # %if.end
	.cfi_def_cfa_offset 32
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	6(%rsi), %r15
	movl	$2, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	lzma_crc32@PLT
	movl	%eax, %ecx
	movl	$9, %eax
	cmpl	8(%rbx), %ecx
	jne	.LBB0_5
# %bb.2:                                # %if.end7
	movl	$8, %eax
	cmpb	$0, (%r15)
	jne	.LBB0_5
# %bb.3:                                # %lor.lhs.false.i
	cmpb	$15, 7(%rbx)
	ja	.LBB0_5
# %bb.4:                                # %if.end11
	movl	$0, (%r14)
	movzbl	7(%rbx), %eax
	andl	$15, %eax
	movl	%eax, 16(%r14)
	movq	$-1, 8(%r14)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_stream_header_decode, .Lfunc_end0-lzma_stream_header_decode
	.cfi_endproc
                                        # -- End function
	.globl	lzma_stream_footer_decode       # -- Begin function lzma_stream_footer_decode
	.p2align	4, 0x90
	.type	lzma_stream_footer_decode,@function
lzma_stream_footer_decode:              # @lzma_stream_footer_decode
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
	movzwl	10(%rsi), %ecx
	movq	lzma_footer_magic@GOTPCREL(%rip), %rdx
	movl	$7, %eax
	cmpw	(%rdx), %cx
	je	.LBB1_1
.LBB1_5:                                # %return
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB1_1:                                # %if.end
	.cfi_def_cfa_offset 32
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	4(%rsi), %rdi
	movl	$6, %esi
	xorl	%edx, %edx
	callq	lzma_crc32@PLT
	movl	%eax, %ecx
	movl	$9, %eax
	cmpl	(%r14), %ecx
	jne	.LBB1_5
# %bb.2:                                # %if.end7
	movl	$8, %eax
	cmpb	$0, 8(%r14)
	jne	.LBB1_5
# %bb.3:                                # %lor.lhs.false.i
	cmpb	$15, 9(%r14)
	ja	.LBB1_5
# %bb.4:                                # %if.end11
	movl	$0, (%rbx)
	movzbl	9(%r14), %eax
	andl	$15, %eax
	movl	%eax, 16(%rbx)
	movl	4(%r14), %eax
	leaq	4(,%rax,4), %rax
	movq	%rax, 8(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	lzma_stream_footer_decode, .Lfunc_end1-lzma_stream_footer_decode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
