	.text
	.file	"vli_size.c"
	.globl	lzma_vli_size                   # -- Begin function lzma_vli_size
	.p2align	4, 0x90
	.type	lzma_vli_size,@function
lzma_vli_size:                          # @lzma_vli_size
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	js	.LBB0_3
# %bb.1:                                # %do.body.preheader
	movq	%rdi, %rcx
	.p2align	4, 0x90
.LBB0_2:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	shrq	$7, %rcx
	incl	%eax
	cmpq	$127, %rdi
	movq	%rcx, %rdi
	ja	.LBB0_2
.LBB0_3:                                # %return
	retq
.Lfunc_end0:
	.size	lzma_vli_size, .Lfunc_end0-lzma_vli_size
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
