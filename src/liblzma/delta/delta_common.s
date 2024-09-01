	.text
	.file	"delta_common.c"
	.globl	lzma_delta_coder_init           # -- Begin function lzma_delta_coder_init
	.p2align	4, 0x90
	.type	lzma_delta_coder_init,@function
lzma_delta_coder_init:                  # @lzma_delta_coder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	cmpq	$0, (%rdi)
	je	.LBB0_1
# %bb.4:                                # %if.end9
	movq	16(%rdx), %rcx
	movl	$8, %eax
	testq	%rcx, %rcx
	jne	.LBB0_5
.LBB0_7:                                # %return
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:                                # %if.then
	.cfi_def_cfa_offset 32
	movq	%rdx, %r14
	movl	$336, %edi                      # imm = 0x150
	movq	%rsi, %r15
	callq	lzma_alloc@PLT
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB0_2
# %bb.3:                                # %if.end
	movq	$delta_coder_end, 32(%rbx)
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	%r14, %rdx
	movq	%r15, %rsi
	movq	16(%rdx), %rcx
	movl	$8, %eax
	testq	%rcx, %rcx
	je	.LBB0_7
.LBB0_5:                                # %lor.lhs.false.i
	cmpl	$0, (%rcx)
	jne	.LBB0_7
# %bb.6:                                # %lor.lhs.false2.i
	movl	4(%rcx), %ecx
	leal	-257(%rcx), %edi
	cmpl	$-256, %edi
	jb	.LBB0_7
# %bb.8:                                # %if.end13
	movq	(%rbx), %rax
	movq	%rcx, 64(%rax)
	movq	(%rbx), %rax
	movb	$0, 72(%rax)
	movq	(%rbx), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 313(%rax)
	movups	%xmm0, 297(%rax)
	movups	%xmm0, 281(%rax)
	movups	%xmm0, 265(%rax)
	movups	%xmm0, 249(%rax)
	movups	%xmm0, 233(%rax)
	movups	%xmm0, 217(%rax)
	movups	%xmm0, 201(%rax)
	movups	%xmm0, 185(%rax)
	movups	%xmm0, 169(%rax)
	movups	%xmm0, 153(%rax)
	movups	%xmm0, 137(%rax)
	movups	%xmm0, 121(%rax)
	movups	%xmm0, 105(%rax)
	movups	%xmm0, 89(%rax)
	movups	%xmm0, 73(%rax)
	movq	(%rbx), %rdi
	addq	$24, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	lzma_next_filter_init@PLT       # TAILCALL
.LBB0_2:
	.cfi_def_cfa_offset 32
	movl	$5, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_delta_coder_init, .Lfunc_end0-lzma_delta_coder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function delta_coder_end
	.type	delta_coder_end,@function
delta_coder_end:                        # @delta_coder_end
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	lzma_next_end@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Lfunc_end1:
	.size	delta_coder_end, .Lfunc_end1-delta_coder_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_delta_coder_memusage       # -- Begin function lzma_delta_coder_memusage
	.p2align	4, 0x90
	.type	lzma_delta_coder_memusage,@function
lzma_delta_coder_memusage:              # @lzma_delta_coder_memusage
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$-1, %rax
	testq	%rdi, %rdi
	je	.LBB2_3
# %bb.1:                                # %lor.lhs.false
	cmpl	$0, (%rdi)
	je	.LBB2_2
.LBB2_3:                                # %cleanup
	retq
.LBB2_2:                                # %lor.lhs.false2
	movl	$-257, %ecx                     # imm = 0xFEFF
	addl	4(%rdi), %ecx
	xorl	%eax, %eax
	cmpl	$-256, %ecx
	sbbq	%rax, %rax
	orq	$336, %rax                      # imm = 0x150
	retq
.Lfunc_end2:
	.size	lzma_delta_coder_memusage, .Lfunc_end2-lzma_delta_coder_memusage
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
