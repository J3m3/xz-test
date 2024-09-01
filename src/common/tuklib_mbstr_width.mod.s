	.text
	.file	"tuklib_mbstr_width.c"
	.globl	tuklib_mbstr_width              # -- Begin function tuklib_mbstr_width
	.p2align	4, 0x90
	.type	tuklib_mbstr_width,@function
tuklib_mbstr_width:                     # @tuklib_mbstr_width
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	callq	strlen@PLT
	testq	%rbx, %rbx
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	%rax, (%rbx)
.LBB0_2:                                # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	tuklib_mbstr_width, .Lfunc_end0-tuklib_mbstr_width
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
