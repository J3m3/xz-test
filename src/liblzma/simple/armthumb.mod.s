	.text
	.file	"armthumb.c"
	.globl	lzma_simple_armthumb_encoder_init # -- Begin function lzma_simple_armthumb_encoder_init
	.p2align	4, 0x90
	.type	lzma_simple_armthumb_encoder_init,@function
lzma_simple_armthumb_encoder_init:      # @lzma_simple_armthumb_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$armthumb_code, %ecx
	movl	$4, %r9d
	xorl	%r8d, %r8d
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$2
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_simple_armthumb_encoder_init, .Lfunc_end0-lzma_simple_armthumb_encoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_simple_armthumb_decoder_init # -- Begin function lzma_simple_armthumb_decoder_init
	.p2align	4, 0x90
	.type	lzma_simple_armthumb_decoder_init,@function
lzma_simple_armthumb_decoder_init:      # @lzma_simple_armthumb_decoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$armthumb_code, %ecx
	movl	$4, %r9d
	xorl	%r8d, %r8d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$2
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	lzma_simple_armthumb_decoder_init, .Lfunc_end1-lzma_simple_armthumb_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function armthumb_code
	.type	armthumb_code,@function
armthumb_code:                          # @armthumb_code
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $esi killed $esi def $rsi
	cmpq	$4, %r8
	jae	.LBB2_2
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB2_2:                                # %for.body.lr.ph
	testb	%dl, %dl
	je	.LBB2_3
# %bb.8:                                # %for.body.us.preheader
	addl	$4, %esi
	xorl	%edx, %edx
	jmp	.LBB2_9
	.p2align	4, 0x90
.LBB2_12:                               # %for.inc.us
                                        #   in Loop: Header=BB2_9 Depth=1
	leaq	2(%rdx), %rax
	addq	$6, %rdx
	cmpq	%r8, %rdx
	movq	%rax, %rdx
	ja	.LBB2_13
.LBB2_9:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rcx,%rdx), %edi
	movl	%edi, %eax
	andl	$-8, %eax
	cmpl	$240, %eax
	jne	.LBB2_12
# %bb.10:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB2_9 Depth=1
	movzbl	3(%rcx,%rdx), %eax
	movl	%eax, %r9d
	notl	%r9d
	testb	$-8, %r9b
	jne	.LBB2_12
# %bb.11:                               # %if.then.us
                                        #   in Loop: Header=BB2_9 Depth=1
	andl	$7, %edi
	shll	$19, %edi
	movzbl	(%rcx,%rdx), %r9d
	shll	$11, %r9d
	orl	%edi, %r9d
	andl	$7, %eax
	shll	$8, %eax
	orl	%r9d, %eax
	movzbl	2(%rcx,%rdx), %edi
	orl	%eax, %edi
	leal	(%rsi,%rdx), %eax
	leal	(%rax,%rdi,2), %eax
	movl	%eax, %edi
	shrl	%edi
	movl	%eax, %r9d
	shrl	$20, %r9d
	andb	$7, %r9b
	orb	$-16, %r9b
	movb	%r9b, 1(%rcx,%rdx)
	movl	%eax, %r9d
	shrl	$12, %r9d
	movb	%r9b, (%rcx,%rdx)
	shrl	$9, %eax
	orb	$-8, %al
	movb	%al, 3(%rcx,%rdx)
	movb	%dil, 2(%rcx,%rdx)
	addq	$2, %rdx
	jmp	.LBB2_12
.LBB2_3:                                # %for.body.preheader
	xorl	%edx, %edx
	jmp	.LBB2_4
	.p2align	4, 0x90
.LBB2_7:                                # %for.inc
                                        #   in Loop: Header=BB2_4 Depth=1
	leaq	2(%rdx), %rax
	addq	$6, %rdx
	cmpq	%r8, %rdx
	movq	%rax, %rdx
	ja	.LBB2_13
.LBB2_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rcx,%rdx), %eax
	movl	%eax, %edi
	andl	$-8, %edi
	cmpl	$240, %edi
	jne	.LBB2_7
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_4 Depth=1
	movzbl	3(%rcx,%rdx), %edi
	movl	%edi, %r9d
	notl	%r9d
	testb	$-8, %r9b
	jne	.LBB2_7
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB2_4 Depth=1
	andl	$7, %eax
	shll	$19, %eax
	movzbl	(%rcx,%rdx), %r9d
	shll	$11, %r9d
	orl	%eax, %r9d
	andl	$7, %edi
	shll	$8, %edi
	orl	%r9d, %edi
	movzbl	2(%rcx,%rdx), %eax
	orl	%edi, %eax
	addl	%eax, %eax
	subl	%edx, %eax
	subl	%esi, %eax
	addl	$-4, %eax
	movl	%eax, %edi
	shrl	%edi
	movl	%eax, %r9d
	shrl	$20, %r9d
	andb	$7, %r9b
	orb	$-16, %r9b
	movb	%r9b, 1(%rcx,%rdx)
	movl	%eax, %r9d
	shrl	$12, %r9d
	movb	%r9b, (%rcx,%rdx)
	shrl	$9, %eax
	orb	$-8, %al
	movb	%al, 3(%rcx,%rdx)
	movb	%dil, 2(%rcx,%rdx)
	addq	$2, %rdx
	jmp	.LBB2_7
.LBB2_13:                               # %for.end
	retq
.Lfunc_end2:
	.size	armthumb_code, .Lfunc_end2-armthumb_code
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
