	.text
	.file	"x86.c"
	.globl	lzma_simple_x86_encoder_init    # -- Begin function lzma_simple_x86_encoder_init
	.p2align	4, 0x90
	.type	lzma_simple_x86_encoder_init,@function
lzma_simple_x86_encoder_init:           # @lzma_simple_x86_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$x86_code, %ecx
	movl	$8, %r8d
	movl	$5, %r9d
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:                                # %x86_coder_init.exit
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:                                # %if.then.i
	.cfi_def_cfa_offset 16
	movq	(%rbx), %rcx
	movq	80(%rcx), %rcx
	movl	$0, (%rcx)
	movq	(%rbx), %rcx
	movq	80(%rcx), %rcx
	movl	$-5, 4(%rcx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_simple_x86_encoder_init, .Lfunc_end0-lzma_simple_x86_encoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_simple_x86_decoder_init    # -- Begin function lzma_simple_x86_decoder_init
	.p2align	4, 0x90
	.type	lzma_simple_x86_decoder_init,@function
lzma_simple_x86_decoder_init:           # @lzma_simple_x86_decoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$x86_code, %ecx
	movl	$8, %r8d
	movl	$5, %r9d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	testl	%eax, %eax
	je	.LBB1_1
# %bb.2:                                # %x86_coder_init.exit
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB1_1:                                # %if.then.i
	.cfi_def_cfa_offset 16
	movq	(%rbx), %rcx
	movq	80(%rcx), %rcx
	movl	$0, (%rcx)
	movq	(%rbx), %rcx
	movq	80(%rcx), %rcx
	movl	$-5, 4(%rcx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	lzma_simple_x86_decoder_init, .Lfunc_end1-lzma_simple_x86_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x86_code
	.type	x86_code,@function
x86_code:                               # @x86_code
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $esi killed $esi def $rsi
	cmpq	$5, %r8
	jae	.LBB2_2
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB2_2:                                # %if.end
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movl	(%rdi), %ecx
	movl	4(%rdi), %eax
	movl	%esi, %r9d
	subl	%eax, %r9d
	leal	-5(%rsi), %r11d
	cmpl	$6, %r9d
	cmovbl	%eax, %r11d
	addq	$-5, %r8
	xorl	%eax, %eax
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_4:                                # %if.then14
                                        #   in Loop: Header=BB2_3 Depth=1
	incq	%rax
	cmpq	%r8, %rax
	ja	.LBB2_22
.LBB2_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
                                        #     Child Loop BB2_15 Depth 2
	movzbl	(%rbp,%rax), %r9d
	addb	$22, %r9b
	cmpb	$-3, %r9b
	jbe	.LBB2_4
# %bb.5:                                # %if.end15
                                        #   in Loop: Header=BB2_3 Depth=1
	leal	(%rax,%rsi), %r10d
	movl	%r10d, %ebx
	subl	%r11d, %ebx
	xorl	%r9d, %r9d
	cmpl	$5, %ebx
	ja	.LBB2_10
# %bb.6:                                # %for.cond.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	%r11d, %r10d
	jne	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	movl	%ecx, %r9d
	jmp	.LBB2_10
.LBB2_8:                                # %for.body.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1, %ebx
	adcl	$0, %ebx
	movl	%ecx, %r9d
	.p2align	4, 0x90
.LBB2_9:                                # %for.body.epil
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$119, %r9d
	addl	%r9d, %r9d
	decl	%ebx
	jne	.LBB2_9
.LBB2_10:                               # %if.end26
                                        #   in Loop: Header=BB2_3 Depth=1
	movzbl	4(%rbp,%rax), %r11d
	leal	1(%r11), %ebx
	movl	$1, %ecx
	cmpb	$1, %bl
	ja	.LBB2_19
# %bb.11:                               # %land.lhs.true35
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	%r9d, %r14d
	shrl	%r14d
	movl	%r14d, %ebx
	andl	$7, %ebx
	movl	$17, %ecx
	cmpb	$1, x86_code.MASK_TO_ALLOWED_STATUS(%rbx)
	jne	.LBB2_19
# %bb.12:                               # %land.lhs.true35
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$31, %r9d
	ja	.LBB2_19
# %bb.13:                               # %if.then43
                                        #   in Loop: Header=BB2_3 Depth=1
	shll	$24, %r11d
	movzbl	3(%rbp,%rax), %ecx
	shll	$16, %ecx
	orl	%r11d, %ecx
	movzbl	2(%rbp,%rax), %r11d
	shll	$8, %r11d
	orl	%ecx, %r11d
	movzbl	1(%rbp,%rax), %ebx
	orl	%r11d, %ebx
	leal	5(%r10), %ecx
	movl	$-5, %r11d
	subl	%r10d, %r11d
	testb	%dl, %dl
	cmovnel	%ecx, %r11d
	addl	%r11d, %ebx
	testl	%r9d, %r9d
	je	.LBB2_18
# %bb.14:                               # %if.end76.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	%r14d, %ecx
	movl	x86_code.MASK_TO_BIT_NUMBER(,%rcx,4), %ecx
	shll	$3, %ecx
	movl	$24, %r9d
	subl	%ecx, %r9d
	negb	%cl
	movl	$-1, %r14d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r14d
	jmp	.LBB2_15
	.p2align	4, 0x90
.LBB2_17:                               # %cleanup
                                        #   in Loop: Header=BB2_15 Depth=2
	xorl	%r14d, %ebx
	notl	%ebx
	addl	%r11d, %ebx
.LBB2_15:                               # %if.end76
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %r15d
	movl	%r9d, %ecx
	shrl	%cl, %r15d
	cmpb	$-1, %r15b
	je	.LBB2_17
# %bb.16:                               # %if.end76
                                        #   in Loop: Header=BB2_15 Depth=2
	movzbl	%r15b, %ecx
	testl	%ecx, %ecx
	je	.LBB2_17
.LBB2_18:                               # %while.end
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	%ebx, %ecx
	shll	$7, %ecx
	sarl	$31, %ecx
	movb	%cl, 4(%rbp,%rax)
	movl	%ebx, %ecx
	shrl	$16, %ecx
	movb	%cl, 3(%rbp,%rax)
	movb	%bh, 2(%rbp,%rax)
	movb	%bl, 1(%rbp,%rax)
	addq	$5, %rax
	xorl	%ecx, %ecx
	movl	%r10d, %r11d
	cmpq	%r8, %rax
	jbe	.LBB2_3
	jmp	.LBB2_22
	.p2align	4, 0x90
.LBB2_19:                               # %if.else115
                                        #   in Loop: Header=BB2_3 Depth=1
	incq	%rax
	orl	%r9d, %ecx
	movl	%r10d, %r11d
	cmpq	%r8, %rax
	jbe	.LBB2_3
.LBB2_22:                               # %while.end132
	movl	%ecx, (%rdi)
	movl	%r11d, 4(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	retq
.Lfunc_end2:
	.size	x86_code, .Lfunc_end2-x86_code
	.cfi_endproc
                                        # -- End function
	.type	x86_code.MASK_TO_ALLOWED_STATUS,@object # @x86_code.MASK_TO_ALLOWED_STATUS
	.section	.rodata.cst8,"aM",@progbits,8
x86_code.MASK_TO_ALLOWED_STATUS:
	.asciz	"\001\001\001\000\001\000\000"
	.size	x86_code.MASK_TO_ALLOWED_STATUS, 8

	.type	x86_code.MASK_TO_BIT_NUMBER,@object # @x86_code.MASK_TO_BIT_NUMBER
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
x86_code.MASK_TO_BIT_NUMBER:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	3                               # 0x3
	.long	3                               # 0x3
	.long	3                               # 0x3
	.size	x86_code.MASK_TO_BIT_NUMBER, 32

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
