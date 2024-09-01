	.text
	.file	"hardware_physmem.c"
	.globl	lzma_physmem                    # -- Begin function lzma_physmem
	.p2align	4, 0x90
	.type	lzma_physmem,@function
lzma_physmem:                           # @lzma_physmem
	.cfi_startproc
# %bb.0:                                # %entry
	jmp	tuklib_physmem@PLT              # TAILCALL
.Lfunc_end0:
	.size	lzma_physmem, .Lfunc_end0-lzma_physmem
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
