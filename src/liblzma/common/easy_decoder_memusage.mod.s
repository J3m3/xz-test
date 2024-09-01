	.text
	.file	"easy_decoder_memusage.c"
	.globl	lzma_easy_decoder_memusage      # -- Begin function lzma_easy_decoder_memusage
	.p2align	4, 0x90
	.type	lzma_easy_decoder_memusage,@function
lzma_easy_decoder_memusage:             # @lzma_easy_decoder_memusage
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$200, %rsp
	.cfi_def_cfa_offset 208
	movl	%edi, %esi
	leaq	8(%rsp), %rdi
	callq	lzma_easy_preset@PLT
	movl	%eax, %ecx
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	testb	%cl, %cl
	jne	.LBB0_2
# %bb.1:                                # %if.end
	leaq	8(%rsp), %rdi
	callq	lzma_raw_decoder_memusage@PLT
.LBB0_2:                                # %cleanup
	addq	$200, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_easy_decoder_memusage, .Lfunc_end0-lzma_easy_decoder_memusage
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
