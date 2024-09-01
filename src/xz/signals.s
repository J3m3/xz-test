	.text
	.file	"signals.c"
	.globl	signals_init                    # -- Begin function signals_init
	.p2align	4, 0x90
	.type	signals_init,@function
signals_init:                           # @signals_init
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end0:
	.size	signals_init, .Lfunc_end0-signals_init
	.cfi_endproc
                                        # -- End function
	.globl	signals_block                   # -- Begin function signals_block
	.p2align	4, 0x90
	.type	signals_block,@function
signals_block:                          # @signals_block
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end1:
	.size	signals_block, .Lfunc_end1-signals_block
	.cfi_endproc
                                        # -- End function
	.globl	signals_unblock                 # -- Begin function signals_unblock
	.p2align	4, 0x90
	.type	signals_unblock,@function
signals_unblock:                        # @signals_unblock
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end2:
	.size	signals_unblock, .Lfunc_end2-signals_unblock
	.cfi_endproc
                                        # -- End function
	.globl	signals_exit                    # -- Begin function signals_exit
	.p2align	4, 0x90
	.type	signals_exit,@function
signals_exit:                           # @signals_exit
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end3:
	.size	signals_exit, .Lfunc_end3-signals_exit
	.cfi_endproc
                                        # -- End function
	.type	user_abort,@object              # @user_abort
	.bss
	.globl	user_abort
	.p2align	2, 0x0
user_abort:
	.long	0                               # 0x0
	.size	user_abort, 4

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
