	.text
	.file	"sparc.c"
	.globl	lzma_simple_sparc_encoder_init  # -- Begin function lzma_simple_sparc_encoder_init
	.p2align	4, 0x90
	.type	lzma_simple_sparc_encoder_init,@function
lzma_simple_sparc_encoder_init:         # @lzma_simple_sparc_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$sparc_code, %ecx
	movl	$4, %r9d
	xorl	%r8d, %r8d
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_simple_sparc_encoder_init, .Lfunc_end0-lzma_simple_sparc_encoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_simple_sparc_decoder_init  # -- Begin function lzma_simple_sparc_decoder_init
	.p2align	4, 0x90
	.type	lzma_simple_sparc_decoder_init,@function
lzma_simple_sparc_decoder_init:         # @lzma_simple_sparc_decoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$sparc_code, %ecx
	movl	$4, %r9d
	xorl	%r8d, %r8d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	lzma_simple_sparc_decoder_init, .Lfunc_end1-lzma_simple_sparc_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sparc_code
	.type	sparc_code,@function
sparc_code:                             # @sparc_code
	.cfi_startproc
# %bb.0:                                # %entry
	cmpq	$4, %r8
	jae	.LBB2_3
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB2_3:                                # %for.body.lr.ph
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testb	%dl, %dl
	je	.LBB2_4
# %bb.9:                                # %for.body.us.preheader
	movl	%esi, %edx
	shll	$7, %esi
	xorl	%edi, %edi
	jmp	.LBB2_10
	.p2align	4, 0x90
.LBB2_16:                               # %if.then.us
                                        #   in Loop: Header=BB2_10 Depth=1
	shll	$24, %r9d
	movzbl	%r10b, %r10d
	shll	$16, %r10d
	orl	%r9d, %r10d
	movzbl	2(%rcx,%rdi), %r9d
	shll	$8, %r9d
	orl	%r10d, %r9d
	movzbl	3(%rcx,%rdi), %r10d
	orl	%r9d, %r10d
	leal	(%rdx,%rdi), %r9d
	leal	(%r9,%r10,4), %r9d
	movl	%r9d, %r11d
	shrl	$2, %r11d
	shll	$9, %r10d
	addl	%esi, %r10d
	sarl	$9, %r10d
	andl	$1069547520, %r10d              # imm = 0x3FC00000
	movl	%r11d, %ebx
	andl	$4128768, %ebx                  # imm = 0x3F0000
	orl	%r10d, %ebx
	shrl	$24, %r10d
	orb	$64, %r10b
	movb	%r10b, (%rcx,%rdi)
	shrl	$16, %ebx
	movb	%bl, (%rcx,%rax)
	shrl	$10, %r9d
	movb	%r9b, 2(%rcx,%rdi)
	movb	%r11b, 3(%rcx,%rdi)
.LBB2_17:                               # %for.inc.us
                                        #   in Loop: Header=BB2_10 Depth=1
	leaq	4(%rdi), %rax
	addq	$8, %rdi
	addl	$512, %esi                      # imm = 0x200
	cmpq	%r8, %rdi
	movq	%rax, %rdi
	ja	.LBB2_22
.LBB2_10:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdi), %r9d
	cmpl	$64, %r9d
	je	.LBB2_14
# %bb.11:                               # %for.body.us
                                        #   in Loop: Header=BB2_10 Depth=1
	cmpl	$127, %r9d
	jne	.LBB2_17
# %bb.12:                               # %land.lhs.true12.us
                                        #   in Loop: Header=BB2_10 Depth=1
	movzbl	1(%rcx,%rdi), %r10d
	cmpb	$-65, %r10b
	jbe	.LBB2_17
# %bb.13:                               #   in Loop: Header=BB2_10 Depth=1
	movq	%rdi, %rax
	orq	$1, %rax
	jmp	.LBB2_16
	.p2align	4, 0x90
.LBB2_14:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB2_10 Depth=1
	movzbl	1(%rcx,%rdi), %r10d
	cmpb	$63, %r10b
	ja	.LBB2_17
# %bb.15:                               #   in Loop: Header=BB2_10 Depth=1
	leaq	1(%rdi), %rax
	jmp	.LBB2_16
.LBB2_4:                                # %for.body.preheader
	movl	%esi, %edx
	negl	%edx
	shll	$7, %esi
	negl	%esi
	xorl	%edi, %edi
	jmp	.LBB2_5
	.p2align	4, 0x90
.LBB2_20:                               # %if.then
                                        #   in Loop: Header=BB2_5 Depth=1
	shll	$24, %r9d
	movzbl	%r10b, %r10d
	shll	$16, %r10d
	orl	%r9d, %r10d
	movzbl	2(%rcx,%rdi), %r9d
	shll	$8, %r9d
	orl	%r10d, %r9d
	movzbl	3(%rcx,%rdi), %r10d
	orl	%r9d, %r10d
	leal	(%rdx,%r10,4), %r9d
	movl	%r9d, %r11d
	shrl	$2, %r11d
	shll	$9, %r10d
	addl	%esi, %r10d
	sarl	$9, %r10d
	andl	$1069547520, %r10d              # imm = 0x3FC00000
	movl	%r11d, %ebx
	andl	$4128768, %ebx                  # imm = 0x3F0000
	orl	%r10d, %ebx
	shrl	$24, %r10d
	orb	$64, %r10b
	movb	%r10b, (%rcx,%rdi)
	shrl	$16, %ebx
	movb	%bl, (%rcx,%rax)
	shrl	$10, %r9d
	movb	%r9b, 2(%rcx,%rdi)
	movb	%r11b, 3(%rcx,%rdi)
.LBB2_21:                               # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	4(%rdi), %rax
	addq	$8, %rdi
	addl	$-4, %edx
	addl	$-512, %esi                     # imm = 0xFE00
	cmpq	%r8, %rdi
	movq	%rax, %rdi
	ja	.LBB2_22
.LBB2_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdi), %r9d
	cmpl	$127, %r9d
	je	.LBB2_18
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB2_5 Depth=1
	cmpl	$64, %r9d
	jne	.LBB2_21
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_5 Depth=1
	movzbl	1(%rcx,%rdi), %r10d
	cmpb	$64, %r10b
	jae	.LBB2_21
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=1
	movq	%rdi, %rax
	orq	$1, %rax
	jmp	.LBB2_20
	.p2align	4, 0x90
.LBB2_18:                               # %land.lhs.true12
                                        #   in Loop: Header=BB2_5 Depth=1
	movzbl	1(%rcx,%rdi), %r10d
	cmpb	$-64, %r10b
	jb	.LBB2_21
# %bb.19:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rdi), %rax
	jmp	.LBB2_20
.LBB2_22:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.Lfunc_end2:
	.size	sparc_code, .Lfunc_end2-sparc_code
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
