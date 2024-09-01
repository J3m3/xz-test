	.text
	.file	"easy_encoder.c"
	.globl	lzma_easy_encoder               # -- Begin function lzma_easy_encoder
	.p2align	4, 0x90
	.type	lzma_easy_encoder,@function
lzma_easy_encoder:                      # @lzma_easy_encoder
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$200, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	%edx, %ebx
	movq	%rdi, %r14
	leaq	8(%rsp), %rdi
	callq	lzma_easy_preset@PLT
	movl	%eax, %ecx
	movl	$8, %eax
	testb	%cl, %cl
	jne	.LBB0_2
# %bb.1:                                # %if.end
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	lzma_stream_encoder@PLT
.LBB0_2:                                # %cleanup
	addq	$200, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_easy_encoder, .Lfunc_end0-lzma_easy_encoder
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
