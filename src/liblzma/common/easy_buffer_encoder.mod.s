	.text
	.file	"easy_buffer_encoder.c"
	.globl	lzma_easy_buffer_encode         # -- Begin function lzma_easy_buffer_encode
	.p2align	4, 0x90
	.type	lzma_easy_buffer_encode,@function
lzma_easy_buffer_encode:                # @lzma_easy_buffer_encode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$192, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movl	%esi, %ebp
	movl	%edi, %esi
	movq	%rsp, %rdi
	callq	lzma_easy_preset@PLT
	movl	%eax, %ecx
	movl	$8, %eax
	testb	%cl, %cl
	jne	.LBB0_2
# %bb.1:                                # %if.end
	movq	%rsp, %rdi
	movl	%ebp, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	movq	%rbx, %r9
	pushq	248(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	248(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	lzma_stream_buffer_encode@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB0_2:                                # %cleanup
	addq	$192, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_easy_buffer_encode, .Lfunc_end0-lzma_easy_buffer_encode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
