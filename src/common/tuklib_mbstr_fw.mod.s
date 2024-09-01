	.text
	.file	"tuklib_mbstr_fw.c"
	.globl	tuklib_mbstr_fw                 # -- Begin function tuklib_mbstr_fw
	.p2align	4, 0x90
	.type	tuklib_mbstr_fw,@function
tuklib_mbstr_fw:                        # @tuklib_mbstr_fw
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	leaq	8(%rsp), %rsi
	callq	tuklib_mbstr_width@PLT
	cmpq	$-1, %rax
	je	.LBB0_1
# %bb.2:                                # %if.end
	movq	%rax, %rcx
	movslq	%ebx, %rdx
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	ja	.LBB0_4
# %bb.3:                                # %if.end4
	xorl	%eax, %eax
	subq	%rcx, %rdx
	cmovaeq	%rdx, %rax
	addl	8(%rsp), %eax
.LBB0_4:                                # %cleanup
                                        # kill: def $eax killed $eax killed $rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:
	.cfi_def_cfa_offset 32
	movl	$-1, %eax
                                        # kill: def $eax killed $eax killed $rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	tuklib_mbstr_fw, .Lfunc_end0-tuklib_mbstr_fw
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
