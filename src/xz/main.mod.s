	.text
	.file	"main.c"
	.globl	set_exit_status                 # -- Begin function set_exit_status
	.p2align	4, 0x90
	.type	set_exit_status,@function
set_exit_status:                        # @set_exit_status
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$1, exit_status(%rip)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movl	%edi, exit_status(%rip)
.LBB0_2:                                # %if.end
	retq
.Lfunc_end0:
	.size	set_exit_status, .Lfunc_end0-set_exit_status
	.cfi_endproc
                                        # -- End function
	.globl	set_exit_no_warn                # -- Begin function set_exit_no_warn
	.p2align	4, 0x90
	.type	set_exit_no_warn,@function
set_exit_no_warn:                       # @set_exit_no_warn
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end1:
	.size	set_exit_no_warn, .Lfunc_end1-set_exit_no_warn
	.cfi_endproc
                                        # -- End function
	.type	exit_status,@object             # @exit_status
	.local	exit_status
	.comm	exit_status,4,4
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
