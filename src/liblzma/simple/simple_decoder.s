	.text
	.file	"simple_decoder.c"
	.globl	lzma_simple_props_decode        # -- Begin function lzma_simple_props_decode
	.p2align	4, 0x90
	.type	lzma_simple_props_decode,@function
lzma_simple_props_decode:               # @lzma_simple_props_decode
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB0_3
# %bb.1:                                # %entry
	cmpq	$4, %rcx
	jne	.LBB0_2
# %bb.4:                                # %if.end3
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rdi, %r14
	movl	$4, %edi
	movq	%rsi, %rbx
	callq	lzma_alloc@PLT
	testq	%rax, %rax
	je	.LBB0_5
# %bb.6:                                # %if.end6
	movq	%rax, %rdi
	movl	(%r15), %eax
	movl	%eax, (%rdi)
	testl	%eax, %eax
	movl	$0, %eax
	je	.LBB0_7
# %bb.8:                                # %if.else
	movq	%rdi, (%r14)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	retq
.LBB0_2:                                # %if.then2
	movl	$8, %eax
.LBB0_3:                                # %return
	retq
.LBB0_5:
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$5, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	retq
.LBB0_7:                                # %if.then10
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rbx, %rsi
	callq	lzma_free@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	retq
.Lfunc_end0:
	.size	lzma_simple_props_decode, .Lfunc_end0-lzma_simple_props_decode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
