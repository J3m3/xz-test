	.text
	.file	"vli_decoder.c"
	.globl	lzma_vli_decode                 # -- Begin function lzma_vli_decode
	.p2align	4, 0x90
	.type	lzma_vli_decode,@function
lzma_vli_decode:                        # @lzma_vli_decode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %r9
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.3:                                # %if.else
	movq	(%rsi), %r10
	testq	%r10, %r10
	je	.LBB0_4
# %bb.5:                                # %if.end5
	movl	$11, %eax
	cmpq	$8, %r10
	ja	.LBB0_18
# %bb.6:                                # %if.end5.lor.lhs.false_crit_edge
	movq	(%rdi), %r11
	jmp	.LBB0_7
.LBB0_1:                                # %if.then
	movq	$0, (%rdi)
	movq	(%r9), %rbx
	movl	$9, %eax
	cmpq	%r8, %rbx
	jae	.LBB0_18
# %bb.2:
	leaq	-8(%rsp), %rsi
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	jmp	.LBB0_9
.LBB0_4:                                # %if.end5.thread
	movq	$0, (%rdi)
	xorl	%r11d, %r11d
.LBB0_7:                                # %lor.lhs.false
	leal	(,%r10,8), %ecx
	subl	%r10d, %ecx
	movq	%r11, %rbx
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rbx
	movl	$11, %eax
	testq	%rbx, %rbx
	jne	.LBB0_18
# %bb.8:                                # %if.end9
	movq	(%r9), %rbx
	movl	$10, %eax
	cmpq	%r8, %rbx
	jae	.LBB0_18
.LBB0_9:                                # %if.end13
	movq	%rbx, %rax
	subq	%r10, %rax
	addq	$9, %rax
	leaq	1(%rbx), %r14
	cmpq	%r14, %r8
	cmovaq	%r8, %r14
	leaq	(,%r10,8), %rcx
	subq	%r10, %rcx
	addq	%rbx, %rdx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_10:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r11, %r12
	movzbl	(%rdx,%r15), %r13d
	movl	%r13d, %r11d
	andl	$127, %r11d
	shlq	%cl, %r11
	addq	%r12, %r11
	testb	%r13b, %r13b
	jns	.LBB0_11
# %bb.14:                               # %cleanup
                                        #   in Loop: Header=BB0_10 Depth=1
	leaq	(%r10,%r15), %r12
	addq	$-8, %r12
	testq	%r12, %r12
	je	.LBB0_17
# %bb.15:                               # %do.cond
                                        #   in Loop: Header=BB0_10 Depth=1
	addq	$7, %rcx
	leaq	(%rbx,%r15), %r12
	incq	%r12
	incq	%r15
	cmpq	%r8, %r12
	jb	.LBB0_10
# %bb.16:                               # %do.end
	movq	%r14, (%r9)
	addq	%r15, %r10
	movq	%r10, (%rsi)
	movq	%r11, (%rdi)
	leaq	-8(%rsp), %rax
	xorl	%ecx, %ecx
	cmpq	%rax, %rsi
	sete	%cl
	leal	(%rcx,%rcx,8), %eax
	jmp	.LBB0_18
.LBB0_11:                               # %if.then21
	leaq	1(%rbx,%r15), %rax
	movq	%rax, (%r9)
	leaq	1(%r10,%r15), %rcx
	movq	%rcx, (%rsi)
	movq	%r11, (%rdi)
	jne	.LBB0_13
# %bb.12:                               # %if.then21
	movl	$9, %eax
	cmpq	$1, %rcx
	ja	.LBB0_18
.LBB0_13:                               # %if.end28
	leaq	-8(%rsp), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rsi
	setne	%al
	jmp	.LBB0_18
.LBB0_17:                               # %cleanup41.loopexit
	movq	%rax, (%r9)
	movq	$9, (%rsi)
	movq	%r11, (%rdi)
	movl	$9, %eax
.LBB0_18:                               # %cleanup41
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_vli_decode, .Lfunc_end0-lzma_vli_decode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
