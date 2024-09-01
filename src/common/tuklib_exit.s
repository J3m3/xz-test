	.text
	.file	"tuklib_exit.c"
	.globl	tuklib_exit                     # -- Begin function tuklib_exit
	.p2align	4, 0x90
	.type	tuklib_exit,@function
tuklib_exit:                            # @tuklib_exit
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	exit@PLT
.Lfunc_end0:
	.size	tuklib_exit, .Lfunc_end0-tuklib_exit
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
