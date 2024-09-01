	.text
	.file	"block_header_encoder.c"
	.globl	lzma_block_header_size          # -- Begin function lzma_block_header_size
	.p2align	4, 0x90
	.type	lzma_block_header_size,@function
lzma_block_header_size:                 # @lzma_block_header_size
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$8, %eax
	cmpl	$0, (%rdi)
	je	.LBB0_1
# %bb.23:                               # %return
	retq
.LBB0_1:                                # %if.end
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	16(%rdi), %rax
	cmpq	$-1, %rax
	je	.LBB0_5
# %bb.2:                                # %if.then2
	movq	%rdi, %r14
	movq	%rax, %rdi
	callq	lzma_vli_size@PLT
	movl	%eax, %ebx
	movl	$11, %eax
	testl	%ebx, %ebx
	je	.LBB0_20
# %bb.3:                                # %cleanup
	cmpq	$0, 16(%r14)
	je	.LBB0_20
# %bb.4:
	movq	%r14, %rdi
	addl	$6, %ebx
	movq	24(%rdi), %rax
	cmpq	$-1, %rax
	jne	.LBB0_6
	jmp	.LBB0_8
.LBB0_5:
	movl	$6, %ebx
	movq	24(%rdi), %rax
	cmpq	$-1, %rax
	je	.LBB0_8
.LBB0_6:                                # %if.then12
	movq	%rdi, %r14
	movq	%rax, %rdi
	callq	lzma_vli_size@PLT
	testl	%eax, %eax
	je	.LBB0_19
# %bb.7:
	addl	%eax, %ebx
	movq	%r14, %rdi
.LBB0_8:                                # %if.end23
	movq	32(%rdi), %rsi
	movl	$11, %eax
	testq	%rsi, %rsi
	je	.LBB0_20
# %bb.9:                                # %lor.lhs.false25
	cmpq	$-1, (%rsi)
	je	.LBB0_20
# %bb.10:                               # %for.body.preheader
	movq	%rdi, %r14
	leaq	4(%rsp), %rdi
	callq	lzma_filter_flags_size@PLT
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.11:                               # %for.inc
	movq	32(%r14), %rsi
	addl	4(%rsp), %ebx
	cmpq	$-1, 16(%rsi)
	je	.LBB0_21
# %bb.12:                               # %for.body.1
	addq	$16, %rsi
	leaq	4(%rsp), %rdi
	callq	lzma_filter_flags_size@PLT
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.13:                               # %for.inc.1
	movq	32(%r14), %rsi
	addl	4(%rsp), %ebx
	cmpq	$-1, 32(%rsi)
	je	.LBB0_21
# %bb.14:                               # %for.body.2
	addq	$32, %rsi
	leaq	4(%rsp), %rdi
	callq	lzma_filter_flags_size@PLT
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.15:                               # %for.inc.2
	movq	32(%r14), %rsi
	addl	4(%rsp), %ebx
	cmpq	$-1, 48(%rsi)
	je	.LBB0_21
# %bb.16:                               # %for.body.3
	addq	$48, %rsi
	leaq	4(%rsp), %rdi
	callq	lzma_filter_flags_size@PLT
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.17:                               # %for.inc.3
	movq	32(%r14), %rax
	cmpq	$-1, 64(%rax)
	movl	$11, %eax
	jne	.LBB0_20
# %bb.18:
	movq	%r14, %rcx
	addl	4(%rsp), %ebx
	jmp	.LBB0_22
.LBB0_19:
	movl	$11, %eax
.LBB0_20:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	retq
.LBB0_21:
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%r14, %rcx
.LBB0_22:                               # %for.end
	addl	$3, %ebx
	andl	$-4, %ebx
	movl	%ebx, 4(%rcx)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	retq
.Lfunc_end0:
	.size	lzma_block_header_size, .Lfunc_end0-lzma_block_header_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_block_header_encode        # -- Begin function lzma_block_header_encode
	.p2align	4, 0x90
	.type	lzma_block_header_encode,@function
lzma_block_header_encode:               # @lzma_block_header_encode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	lzma_block_unpadded_size@PLT
	movq	%rax, %rcx
	movl	$11, %eax
	testq	%rcx, %rcx
	je	.LBB1_22
# %bb.1:                                # %lor.lhs.false
	cmpq	$-1, 24(%r15)
	jl	.LBB1_22
# %bb.2:                                # %if.end
	movl	4(%r15), %r14d
	addl	$-4, %r14d
	movl	%r14d, %eax
	shrl	$2, %eax
	movb	%al, (%rbx)
	movb	$0, 1(%rbx)
	movq	$2, 8(%rsp)
	movq	16(%r15), %rdi
	cmpq	$-1, %rdi
	je	.LBB1_5
# %bb.3:                                # %do.body
	leaq	8(%rsp), %rcx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	movq	%r14, %r8
	callq	lzma_vli_encode@PLT
	testl	%eax, %eax
	jne	.LBB1_22
# %bb.4:                                # %do.end
	orb	$64, 1(%rbx)
.LBB1_5:                                # %if.end19
	movq	24(%r15), %rdi
	cmpq	$-1, %rdi
	je	.LBB1_8
# %bb.6:                                # %do.body24
	leaq	8(%rsp), %rcx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	movq	%r14, %r8
	callq	lzma_vli_encode@PLT
	testl	%eax, %eax
	jne	.LBB1_22
# %bb.7:                                # %do.end36
	orb	$-128, 1(%rbx)
.LBB1_8:                                # %if.end41
	movq	32(%r15), %rdi
	movl	$11, %eax
	testq	%rdi, %rdi
	je	.LBB1_22
# %bb.9:                                # %lor.lhs.false44
	cmpq	$-1, (%rdi)
	je	.LBB1_22
# %bb.10:                               # %do.body51.preheader
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	lzma_filter_flags_encode@PLT
	testl	%eax, %eax
	jne	.LBB1_22
# %bb.11:                               # %do.cond69
	movq	32(%r15), %rdi
	xorl	%eax, %eax
	cmpq	$-1, 16(%rdi)
	je	.LBB1_21
# %bb.12:                               # %do.body51.1
	addq	$16, %rdi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	lzma_filter_flags_encode@PLT
	testl	%eax, %eax
	jne	.LBB1_22
# %bb.13:                               # %do.cond69.1
	movq	32(%r15), %rdi
	cmpq	$-1, 32(%rdi)
	je	.LBB1_14
# %bb.15:                               # %do.body51.2
	addq	$32, %rdi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	lzma_filter_flags_encode@PLT
	testl	%eax, %eax
	jne	.LBB1_22
# %bb.16:                               # %do.cond69.2
	movq	32(%r15), %rdi
	cmpq	$-1, 48(%rdi)
	je	.LBB1_17
# %bb.18:                               # %do.body51.3
	addq	$48, %rdi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	lzma_filter_flags_encode@PLT
	testl	%eax, %eax
	jne	.LBB1_22
# %bb.19:                               # %do.cond69.3
	movq	32(%r15), %rax
	cmpq	$-1, 64(%rax)
	movl	$11, %eax
	jne	.LBB1_22
# %bb.20:
	movb	$3, %al
	jmp	.LBB1_21
.LBB1_14:
	movb	$1, %al
.LBB1_21:                               # %do.end75
	orb	%al, 1(%rbx)
	movq	8(%rsp), %rax
	leaq	(%rbx,%rax), %rdi
	movq	%r14, %rdx
	subq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	lzma_crc32@PLT
	movl	%eax, (%rbx,%r14)
	xorl	%eax, %eax
.LBB1_22:                               # %return
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_17:
	.cfi_def_cfa_offset 48
	movb	$2, %al
	jmp	.LBB1_21
.Lfunc_end1:
	.size	lzma_block_header_encode, .Lfunc_end1-lzma_block_header_encode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
