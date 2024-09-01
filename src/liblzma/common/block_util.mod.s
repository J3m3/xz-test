	.text
	.file	"block_util.c"
	.globl	lzma_block_compressed_size      # -- Begin function lzma_block_compressed_size
	.p2align	4, 0x90
	.type	lzma_block_compressed_size,@function
lzma_block_compressed_size:             # @lzma_block_compressed_size
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$11, %eax
	testq	%rdi, %rdi
	je	.LBB0_13
# %bb.1:                                # %lor.lhs.false.i
	cmpl	$0, (%rdi)
	je	.LBB0_2
.LBB0_13:                               # %return
	retq
.LBB0_2:                                # %lor.lhs.false2.i
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	4(%rdi), %ebx
	leal	-8(%rbx), %ecx
	cmpl	$1017, %ecx                     # imm = 0x3F9
	setae	%cl
	testb	$3, %bl
	setne	%dl
	orb	%cl, %dl
	jne	.LBB0_12
# %bb.3:                                # %lor.lhs.false9.i
	movq	16(%rdi), %r15
	cmpq	$-1, %r15
	setl	%cl
	testq	%r15, %r15
	sete	%dl
	orb	%cl, %dl
	je	.LBB0_4
.LBB0_12:
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
.LBB0_4:                                # %lor.lhs.false17.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	cmpq	$-1, %r15
	sete	%dl
	movl	8(%rdi), %ecx
	cmpl	$16, %ecx
	setae	%sil
	orb	%dl, %sil
	je	.LBB0_5
# %bb.7:                                # %lzma_block_unpadded_size.exit
	cmpl	$15, %ecx
	ja	.LBB0_12
	jmp	.LBB0_8
.LBB0_5:                                # %if.end22.i
	addq	%rbx, %r15
	movq	%rdi, %rbx
	movl	%ecx, %edi
	callq	lzma_check_size@PLT
	movl	%eax, %ecx
	movl	$11, %eax
	movl	%ecx, %ecx
	addq	%r15, %rcx
	movabsq	$9223372036854775804, %rdx      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rdx, %rcx
	ja	.LBB0_12
# %bb.6:                                # %if.end22.i.if.end_crit_edge
	movq	%rbx, %rdi
	movl	4(%rbx), %ebx
	movl	8(%rdi), %ecx
.LBB0_8:                                # %if.end
	movq	%rdi, %r15
	movl	%ecx, %edi
	callq	lzma_check_size@PLT
	movl	%eax, %ecx
	addl	%ebx, %ecx
	movl	$9, %eax
	subq	%rcx, %r14
	jbe	.LBB0_12
# %bb.9:                                # %if.end5
	movq	%r14, %rcx
	movq	16(%r15), %rdx
	cmpq	$-1, %rdx
	je	.LBB0_11
# %bb.10:                               # %if.end5
	cmpq	%rcx, %rdx
	jne	.LBB0_12
.LBB0_11:                               # %if.end14
	movq	%rcx, 16(%r15)
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
	.size	lzma_block_compressed_size, .Lfunc_end0-lzma_block_compressed_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_block_unpadded_size        # -- Begin function lzma_block_unpadded_size
	.p2align	4, 0x90
	.type	lzma_block_unpadded_size,@function
lzma_block_unpadded_size:               # @lzma_block_unpadded_size
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB1_1
# %bb.3:                                # %lor.lhs.false
	cmpl	$0, (%rdi)
	jne	.LBB1_1
# %bb.4:                                # %lor.lhs.false2
	movl	4(%rdi), %ecx
	leal	-8(%rcx), %eax
	cmpl	$1017, %eax                     # imm = 0x3F9
	setae	%al
	testb	$3, %cl
	setne	%dl
	orb	%al, %dl
	jne	.LBB1_1
# %bb.5:                                # %lor.lhs.false9
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	16(%rdi), %rbx
	cmpq	$-1, %rbx
	setl	%al
	testq	%rbx, %rbx
	sete	%dl
	orb	%al, %dl
	je	.LBB1_7
# %bb.6:
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB1_1:
	xorl	%eax, %eax
	retq
.LBB1_7:                                # %lor.lhs.false17
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	$-1, %rbx
	sete	%dl
	movl	8(%rdi), %edi
	xorl	%eax, %eax
	cmpl	$16, %edi
	setae	%sil
	sbbq	%rax, %rax
	orb	%dl, %sil
	jne	.LBB1_9
# %bb.8:                                # %if.end22
	addq	%rcx, %rbx
	callq	lzma_check_size@PLT
	movl	%eax, %ecx
	addq	%rbx, %rcx
	xorl	%eax, %eax
	movabsq	$9223372036854775804, %rdx      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rdx, %rcx
	cmovbeq	%rcx, %rax
.LBB1_9:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.Lfunc_end1:
	.size	lzma_block_unpadded_size, .Lfunc_end1-lzma_block_unpadded_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_block_total_size           # -- Begin function lzma_block_total_size
	.p2align	4, 0x90
	.type	lzma_block_total_size,@function
lzma_block_total_size:                  # @lzma_block_total_size
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB2_1
# %bb.3:                                # %lor.lhs.false.i
	cmpl	$0, (%rdi)
	jne	.LBB2_1
# %bb.4:                                # %lor.lhs.false2.i
	movl	4(%rdi), %eax
	leal	-8(%rax), %ecx
	cmpl	$1017, %ecx                     # imm = 0x3F9
	setae	%cl
	testb	$3, %al
	setne	%dl
	orb	%cl, %dl
	jne	.LBB2_1
# %bb.5:                                # %lor.lhs.false9.i
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	16(%rdi), %rbx
	cmpq	$-1, %rbx
	setl	%cl
	testq	%rbx, %rbx
	sete	%dl
	orb	%cl, %dl
	je	.LBB2_7
# %bb.6:
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB2_1:
	xorl	%eax, %eax
	retq
.LBB2_7:                                # %lor.lhs.false17.i
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	$-1, %rbx
	sete	%cl
	movl	8(%rdi), %edi
	cmpl	$16, %edi
	setae	%dl
	orb	%cl, %dl
	je	.LBB2_8
# %bb.9:                                # %lzma_block_unpadded_size.exit
	xorl	%eax, %eax
	cmpl	$16, %edi
	sbbq	%rax, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB2_8:                                # %if.end22.i
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	addq	%rax, %rbx
	callq	lzma_check_size@PLT
	movl	%eax, %eax
	leaq	(%rbx,%rax), %rcx
	leaq	(%rax,%rbx), %rdx
	addq	$3, %rdx
	andq	$-4, %rdx
	xorl	%eax, %eax
	movabsq	$9223372036854775804, %rsi      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rsi, %rcx
	cmovbeq	%rdx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.Lfunc_end2:
	.size	lzma_block_total_size, .Lfunc_end2-lzma_block_total_size
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
