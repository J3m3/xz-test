	.text
	.file	"easy_preset.c"
	.globl	lzma_easy_preset                # -- Begin function lzma_easy_preset
	.p2align	4, 0x90
	.type	lzma_easy_preset,@function
lzma_easy_preset:                       # @lzma_easy_preset
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
	movq	%rdi, %rbx
	leaq	80(%rdi), %r14
	movq	%r14, %rdi
	callq	lzma_lzma_preset@PLT
	testb	%al, %al
	jne	.LBB0_2
# %bb.1:                                # %if.end
	movq	$33, (%rbx)
	movq	%r14, 8(%rbx)
	movq	$-1, 16(%rbx)
.LBB0_2:                                # %return
	testb	%al, %al
	setne	%al
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_easy_preset, .Lfunc_end0-lzma_easy_preset
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
