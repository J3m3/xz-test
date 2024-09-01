	.text
	.file	"vli_encoder.c"
	.globl	lzma_vli_encode                 # -- Begin function lzma_vli_encode
	.p2align	4, 0x90
	.type	lzma_vli_encode,@function
lzma_vli_encode:                        # @lzma_vli_encode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	$0, -8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	sete	%r11b
	movq	(%rcx), %r10
	leaq	-8(%rsp), %r9
	cmoveq	%r9, %rsi
	cmpq	%r8, %r10
	jae	.LBB0_1
# %bb.2:                                # %if.end6
	movq	(%rsi), %r11
	cmpq	$9, %r11
	setae	%al
	testq	%rdi, %rdi
	sets	%bl
	orb	%al, %bl
	movl	$11, %eax
	jne	.LBB0_8
# %bb.3:                                # %if.end10
	leal	(,%r11,8), %eax
	subl	%r11d, %eax
	movq	%rcx, %rbx
	movl	%eax, %ecx
	shrq	%cl, %rdi
	movq	%rbx, %rax
	incq	%r11
	incq	%r10
	negq	%r8
	.p2align	4, 0x90
.LBB0_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$128, %rdi
	jb	.LBB0_7
# %bb.5:                                # %while.body
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	%r11, (%rsi)
	movl	%edi, %ecx
	orb	$-128, %cl
	movb	%cl, -1(%rdx,%r10)
	shrq	$7, %rdi
	movq	%r10, (%rax)
	incq	%r11
	leaq	(%r8,%r10), %rcx
	incq	%rcx
	incq	%r10
	cmpq	$1, %rcx
	jne	.LBB0_4
# %bb.6:                                # %if.then18
	xorl	%ecx, %ecx
	cmpq	%r9, %rsi
	movl	$11, %eax
	cmovnel	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:
	.cfi_def_cfa_offset 16
	movb	%r11b, %al
	orl	$10, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_7:                                # %while.end
	.cfi_def_cfa_offset 16
	movb	%dil, -1(%rdx,%r10)
	movq	%r10, (%rax)
	movq	%r11, (%rsi)
	xorl	%eax, %eax
	cmpq	%r9, %rsi
	setne	%al
.LBB0_8:                                # %cleanup
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_vli_encode, .Lfunc_end0-lzma_vli_encode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
