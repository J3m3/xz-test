	.text
	.file	"check.c"
	.globl	lzma_check_is_supported         # -- Begin function lzma_check_is_supported
	.p2align	4, 0x90
	.type	lzma_check_is_supported,@function
lzma_check_is_supported:                # @lzma_check_is_supported
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$15, %edi
	jbe	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.LBB0_2:                                # %if.end
	movl	%edi, %eax
	movzbl	lzma_check_is_supported.available_checks(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end0:
	.size	lzma_check_is_supported, .Lfunc_end0-lzma_check_is_supported
	.cfi_endproc
                                        # -- End function
	.globl	lzma_check_size                 # -- Begin function lzma_check_size
	.p2align	4, 0x90
	.type	lzma_check_size,@function
lzma_check_size:                        # @lzma_check_size
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$-1, %eax
	cmpl	$15, %edi
	ja	.LBB1_2
# %bb.1:                                # %if.end
	movl	%edi, %eax
	movzbl	lzma_check_size.check_sizes(%rax), %eax
.LBB1_2:                                # %return
	retq
.Lfunc_end1:
	.size	lzma_check_size, .Lfunc_end1-lzma_check_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_check_init                 # -- Begin function lzma_check_init
	.p2align	4, 0x90
	.type	lzma_check_init,@function
lzma_check_init:                        # @lzma_check_init
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$10, %esi
	je	lzma_sha256_init@PLT            # TAILCALL
# %bb.1:                                # %entry
	cmpl	$4, %esi
	je	.LBB2_4
# %bb.2:                                # %entry
	cmpl	$1, %esi
	jne	.LBB2_5
# %bb.3:                                # %sw.bb
	movl	$0, 64(%rdi)
	retq
.LBB2_4:                                # %sw.bb1
	movq	$0, 64(%rdi)
.LBB2_5:                                # %sw.epilog
	retq
.Lfunc_end2:
	.size	lzma_check_init, .Lfunc_end2-lzma_check_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_check_update               # -- Begin function lzma_check_update
	.p2align	4, 0x90
	.type	lzma_check_update,@function
lzma_check_update:                      # @lzma_check_update
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$10, %esi
	je	.LBB3_4
# %bb.1:                                # %entry
	cmpl	$4, %esi
	je	.LBB3_5
# %bb.2:                                # %entry
	cmpl	$1, %esi
	jne	.LBB3_6
# %bb.3:                                # %sw.bb
	movl	64(%rbx), %eax
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movl	%eax, %edx
	callq	lzma_crc32@PLT
	movl	%eax, 64(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB3_5:                                # %sw.bb2
	.cfi_def_cfa_offset 16
	movq	64(%rbx), %rax
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	lzma_crc64@PLT
	movq	%rax, 64(%rbx)
.LBB3_6:                                # %sw.epilog
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB3_4:                                # %sw.bb6
	.cfi_def_cfa_offset 16
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	lzma_sha256_update@PLT          # TAILCALL
.Lfunc_end3:
	.size	lzma_check_update, .Lfunc_end3-lzma_check_update
	.cfi_endproc
                                        # -- End function
	.globl	lzma_check_finish               # -- Begin function lzma_check_finish
	.p2align	4, 0x90
	.type	lzma_check_finish,@function
lzma_check_finish:                      # @lzma_check_finish
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$10, %esi
	je	lzma_sha256_finish@PLT          # TAILCALL
# %bb.1:                                # %entry
	cmpl	$4, %esi
	je	.LBB4_4
# %bb.2:                                # %entry
	cmpl	$1, %esi
	jne	.LBB4_5
# %bb.3:                                # %sw.bb
	movl	64(%rdi), %eax
	movl	%eax, (%rdi)
	retq
.LBB4_4:                                # %sw.bb1
	movq	64(%rdi), %rax
	movq	%rax, (%rdi)
.LBB4_5:                                # %sw.epilog
	retq
.Lfunc_end4:
	.size	lzma_check_finish, .Lfunc_end4-lzma_check_finish
	.cfi_endproc
                                        # -- End function
	.type	lzma_check_is_supported.available_checks,@object # @lzma_check_is_supported.available_checks
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
lzma_check_is_supported.available_checks:
	.asciz	"\001\001\000\000\001\000\000\000\000\000\001\000\000\000\000"
	.size	lzma_check_is_supported.available_checks, 16

	.type	lzma_check_size.check_sizes,@object # @lzma_check_size.check_sizes
	.p2align	4, 0x0
lzma_check_size.check_sizes:
	.ascii	"\000\004\004\004\b\b\b\020\020\020   @@@"
	.size	lzma_check_size.check_sizes, 16

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
