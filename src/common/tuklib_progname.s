	.text
	.file	"tuklib_progname.c"
	.globl	tuklib_progname_init            # -- Begin function tuklib_progname_init
	.p2align	4, 0x90
	.type	tuklib_progname_init,@function
tuklib_progname_init:                   # @tuklib_progname_init
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end0:
	.size	tuklib_progname_init, .Lfunc_end0-tuklib_progname_init
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata,"a",@progbits
.L.str:
	.asciz	"xzbench\000"
	.size	.L.str, 9

	.type	progname,@object                # @progname
	.data
	.globl	progname
	.p2align	3, 0x0
progname:
	.quad	.L.str
	.size	progname, 8

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
