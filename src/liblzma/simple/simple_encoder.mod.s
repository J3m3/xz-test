	.text
	.file	"simple_encoder.c"
	.globl	lzma_simple_props_size          # -- Begin function lzma_simple_props_size
	.p2align	4, 0x90
	.type	lzma_simple_props_size,@function
lzma_simple_props_size:                 # @lzma_simple_props_size
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB0_2
# %bb.1:                                # %lor.rhs
	cmpl	$0, (%rsi)
	setne	%al
	shll	$2, %eax
.LBB0_2:                                # %lor.end
	movl	%eax, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	lzma_simple_props_size, .Lfunc_end0-lzma_simple_props_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_simple_props_encode        # -- Begin function lzma_simple_props_encode
	.p2align	4, 0x90
	.type	lzma_simple_props_encode,@function
lzma_simple_props_encode:               # @lzma_simple_props_encode
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB1_3
# %bb.1:                                # %lor.lhs.false
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.LBB1_3
# %bb.2:                                # %if.end
	movl	%eax, (%rsi)
.LBB1_3:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	lzma_simple_props_encode, .Lfunc_end1-lzma_simple_props_encode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
