	.text
	.file	"tuklib_physmem.c"
	.globl	tuklib_physmem                  # -- Begin function tuklib_physmem
	.p2align	4, 0x90
	.type	tuklib_physmem,@function
tuklib_physmem:                         # @tuklib_physmem
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	tuklib_physmem, .Lfunc_end0-tuklib_physmem
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
