	.text
	.file	"arm.c"
	.globl	lzma_simple_arm_encoder_init    # -- Begin function lzma_simple_arm_encoder_init
	.p2align	4, 0x90
	.type	lzma_simple_arm_encoder_init,@function
lzma_simple_arm_encoder_init:           # @lzma_simple_arm_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$arm_code, %ecx
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
	.size	lzma_simple_arm_encoder_init, .Lfunc_end0-lzma_simple_arm_encoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_simple_arm_decoder_init    # -- Begin function lzma_simple_arm_decoder_init
	.p2align	4, 0x90
	.type	lzma_simple_arm_decoder_init,@function
lzma_simple_arm_decoder_init:           # @lzma_simple_arm_decoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$arm_code, %ecx
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
	.size	lzma_simple_arm_decoder_init, .Lfunc_end1-lzma_simple_arm_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function arm_code
	.type	arm_code,@function
arm_code:                               # @arm_code
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $esi killed $esi def $rsi
	cmpq	$4, %r8
	jae	.LBB2_3
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB2_3:                                # %for.body.lr.ph
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
	xorl	%edi, %edi
	movq	%r8, %rax
	addq	$-4, %rax
	adcq	$3, %rdi
	shldq	$62, %rax, %rdi
	incq	%rdi
	movl	$4, %r9d
	testb	%dl, %dl
	je	.LBB2_4
# %bb.31:                               # %for.body.us.preheader
	xorl	%edx, %edx
	cmpq	$4, %rdi
	jb	.LBB2_32
# %bb.36:                               # %vector.scevcheck88
	movq	%r8, %rax
	addq	$-4, %rax
	movl	$0, %r10d
	adcq	$-1, %r10
	shrdq	$2, %r10, %rax
	leaq	2(%rcx), %r11
	leaq	(%rcx,%rax,4), %rbx
	addq	$2, %rbx
	cmpq	%r11, %rbx
	jb	.LBB2_32
# %bb.37:                               # %vector.scevcheck88
	movabsq	$4611686018427387903, %r11      # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%r11, %rax
	ja	.LBB2_32
# %bb.38:                               # %vector.scevcheck88
	leaq	1(%rcx), %rbx
	leaq	(%rcx,%rax,4), %r14
	incq	%r14
	cmpq	%rbx, %r14
	jb	.LBB2_32
# %bb.39:                               # %vector.scevcheck88
	cmpq	%r11, %rax
	ja	.LBB2_32
# %bb.40:                               # %vector.scevcheck88
	leaq	(%rcx,%rax,4), %rbx
	cmpq	%rcx, %rbx
	jb	.LBB2_32
# %bb.41:                               # %vector.scevcheck88
	cmpq	%r11, %rax
	ja	.LBB2_32
# %bb.42:                               # %vector.scevcheck88
	leaq	(,%rax,4), %rbx
	cmpq	$-9, %rbx
	ja	.LBB2_32
# %bb.43:                               # %vector.scevcheck88
	cmpq	%r11, %rax
	ja	.LBB2_32
# %bb.44:                               # %vector.scevcheck88
	leaq	3(%rcx), %rbx
	leaq	(%rcx,%rax,4), %r14
	addq	$3, %r14
	cmpq	%rbx, %r14
	jb	.LBB2_32
# %bb.45:                               # %vector.scevcheck88
	cmpq	%r11, %rax
	ja	.LBB2_32
# %bb.46:                               # %vector.scevcheck88
	cmpq	$3, %r10
	ja	.LBB2_32
# %bb.47:                               # %vector.ph110
	movq	%rdi, %rax
	andq	$-4, %rax
	leaq	(,%rax,4), %rdx
	leaq	4(,%rax,4), %r9
	movl	%esi, %r10d
	xorl	%r11d, %r11d
	movq	%rax, %rbx
	jmp	.LBB2_48
	.p2align	4, 0x90
.LBB2_56:                               # %pred.store.continue127
                                        #   in Loop: Header=BB2_48 Depth=1
	addq	$16, %r11
	addq	$-4, %rbx
	je	.LBB2_57
.LBB2_48:                               # %vector.body117
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$-21, 3(%rcx,%r11)
	je	.LBB2_49
# %bb.50:                               # %pred.store.continue121
                                        #   in Loop: Header=BB2_48 Depth=1
	cmpb	$-21, 7(%rcx,%r11)
	je	.LBB2_51
.LBB2_52:                               # %pred.store.continue123
                                        #   in Loop: Header=BB2_48 Depth=1
	cmpb	$-21, 11(%rcx,%r11)
	je	.LBB2_53
.LBB2_54:                               # %pred.store.continue125
                                        #   in Loop: Header=BB2_48 Depth=1
	cmpb	$-21, 15(%rcx,%r11)
	jne	.LBB2_56
	jmp	.LBB2_55
	.p2align	4, 0x90
.LBB2_49:                               # %pred.store.if120
                                        #   in Loop: Header=BB2_48 Depth=1
	movzbl	2(%rcx,%r11), %ebp
	movzbl	1(%rcx,%r11), %r14d
	movzbl	(%rcx,%r11), %r15d
	shll	$16, %ebp
	shll	$8, %r14d
	orl	%ebp, %r14d
	orl	%r15d, %r14d
	leal	(%r10,%r11), %r15d
	leal	(%r15,%r14,4), %ebp
	addl	$8, %ebp
	movl	%ebp, %r14d
	shrl	$18, %r14d
	movb	%r14b, 2(%rcx,%r11)
	movl	%ebp, %r14d
	shrl	$10, %r14d
	movb	%r14b, 1(%rcx,%r11)
	shrl	$2, %ebp
	movb	%bpl, (%rcx,%r11)
	cmpb	$-21, 7(%rcx,%r11)
	jne	.LBB2_52
.LBB2_51:                               # %pred.store.if122
                                        #   in Loop: Header=BB2_48 Depth=1
	movzbl	6(%rcx,%r11), %ebp
	movzbl	5(%rcx,%r11), %r14d
	movzbl	4(%rcx,%r11), %r15d
	shll	$16, %ebp
	shll	$8, %r14d
	orl	%ebp, %r14d
	orl	%r15d, %r14d
	leal	(%r10,%r11), %r15d
	leal	(%r15,%r14,4), %ebp
	addl	$12, %ebp
	movl	%ebp, %r14d
	shrl	$18, %r14d
	movb	%r14b, 6(%rcx,%r11)
	movl	%ebp, %r14d
	shrl	$10, %r14d
	movb	%r14b, 5(%rcx,%r11)
	shrl	$2, %ebp
	movb	%bpl, 4(%rcx,%r11)
	cmpb	$-21, 11(%rcx,%r11)
	jne	.LBB2_54
.LBB2_53:                               # %pred.store.if124
                                        #   in Loop: Header=BB2_48 Depth=1
	movzbl	10(%rcx,%r11), %ebp
	movzbl	9(%rcx,%r11), %r14d
	movzbl	8(%rcx,%r11), %r15d
	shll	$16, %ebp
	shll	$8, %r14d
	orl	%ebp, %r14d
	orl	%r15d, %r14d
	leal	(%r10,%r11), %r15d
	leal	(%r15,%r14,4), %ebp
	addl	$16, %ebp
	movl	%ebp, %r14d
	shrl	$18, %r14d
	movb	%r14b, 10(%rcx,%r11)
	movl	%ebp, %r14d
	shrl	$10, %r14d
	movb	%r14b, 9(%rcx,%r11)
	shrl	$2, %ebp
	movb	%bpl, 8(%rcx,%r11)
	cmpb	$-21, 15(%rcx,%r11)
	jne	.LBB2_56
.LBB2_55:                               # %pred.store.if126
                                        #   in Loop: Header=BB2_48 Depth=1
	movzbl	14(%rcx,%r11), %ebp
	movzbl	13(%rcx,%r11), %r14d
	movzbl	12(%rcx,%r11), %r15d
	shll	$16, %ebp
	shll	$8, %r14d
	orl	%ebp, %r14d
	orl	%r15d, %r14d
	leal	(%r10,%r11), %r15d
	leal	(%r15,%r14,4), %ebp
	addl	$20, %ebp
	movl	%ebp, %r14d
	shrl	$18, %r14d
	movb	%r14b, 14(%rcx,%r11)
	movl	%ebp, %r14d
	shrl	$10, %r14d
	movb	%r14b, 13(%rcx,%r11)
	shrl	$2, %ebp
	movb	%bpl, 12(%rcx,%r11)
	jmp	.LBB2_56
.LBB2_4:                                # %for.body.preheader
	xorl	%edx, %edx
	cmpq	$3, %rdi
	jbe	.LBB2_5
# %bb.9:                                # %vector.scevcheck
	movq	%r8, %rax
	addq	$-4, %rax
	movl	$0, %r10d
	adcq	$-1, %r10
	shrdq	$2, %r10, %rax
	leaq	2(%rcx), %r11
	leaq	(%rcx,%rax,4), %rbx
	addq	$2, %rbx
	cmpq	%r11, %rbx
	jb	.LBB2_5
# %bb.10:                               # %vector.scevcheck
	movabsq	$4611686018427387903, %r11      # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%r11, %rax
	ja	.LBB2_5
# %bb.11:                               # %vector.scevcheck
	leaq	1(%rcx), %rbx
	leaq	(%rcx,%rax,4), %r14
	incq	%r14
	cmpq	%rbx, %r14
	jb	.LBB2_5
# %bb.12:                               # %vector.scevcheck
	cmpq	%r11, %rax
	ja	.LBB2_5
# %bb.13:                               # %vector.scevcheck
	leaq	(%rcx,%rax,4), %rbx
	cmpq	%rcx, %rbx
	jb	.LBB2_5
# %bb.14:                               # %vector.scevcheck
	cmpq	%r11, %rax
	ja	.LBB2_5
# %bb.15:                               # %vector.scevcheck
	leaq	(,%rax,4), %rbx
	cmpq	$-9, %rbx
	ja	.LBB2_5
# %bb.16:                               # %vector.scevcheck
	cmpq	%r11, %rax
	ja	.LBB2_5
# %bb.17:                               # %vector.scevcheck
	leaq	3(%rcx), %rbx
	leaq	(%rcx,%rax,4), %r14
	addq	$3, %r14
	cmpq	%rbx, %r14
	jb	.LBB2_5
# %bb.18:                               # %vector.scevcheck
	cmpq	%r11, %rax
	ja	.LBB2_5
# %bb.19:                               # %vector.scevcheck
	cmpq	$3, %r10
	ja	.LBB2_5
# %bb.20:                               # %vector.ph
	movq	%rdi, %rax
	andq	$-4, %rax
	leaq	(,%rax,4), %rdx
	leaq	4(,%rax,4), %r9
	movl	$-8, %r10d
	subl	%esi, %r10d
	xorl	%r11d, %r11d
	jmp	.LBB2_21
	.p2align	4, 0x90
.LBB2_29:                               # %pred.store.continue87
                                        #   in Loop: Header=BB2_21 Depth=1
	addq	$4, %r11
	addl	$-16, %r10d
	cmpq	%r11, %rax
	je	.LBB2_30
.LBB2_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$-21, 3(%rcx,%r11,4)
	je	.LBB2_22
# %bb.23:                               # %pred.store.continue
                                        #   in Loop: Header=BB2_21 Depth=1
	cmpb	$-21, 7(%rcx,%r11,4)
	je	.LBB2_24
.LBB2_25:                               # %pred.store.continue83
                                        #   in Loop: Header=BB2_21 Depth=1
	cmpb	$-21, 11(%rcx,%r11,4)
	je	.LBB2_26
.LBB2_27:                               # %pred.store.continue85
                                        #   in Loop: Header=BB2_21 Depth=1
	cmpb	$-21, 15(%rcx,%r11,4)
	jne	.LBB2_29
	jmp	.LBB2_28
	.p2align	4, 0x90
.LBB2_22:                               # %pred.store.if
                                        #   in Loop: Header=BB2_21 Depth=1
	movzbl	2(%rcx,%r11,4), %ebx
	movzbl	1(%rcx,%r11,4), %r14d
	movzbl	(%rcx,%r11,4), %ebp
	shll	$16, %ebx
	shll	$8, %r14d
	orl	%ebx, %r14d
	orl	%ebp, %r14d
	leal	(%r10,%r14,4), %ebx
	movl	%ebx, %ebp
	shrl	$18, %ebp
	movb	%bpl, 2(%rcx,%r11,4)
	movl	%ebx, %ebp
	shrl	$10, %ebp
	movb	%bpl, 1(%rcx,%r11,4)
	shrl	$2, %ebx
	movb	%bl, (%rcx,%r11,4)
	cmpb	$-21, 7(%rcx,%r11,4)
	jne	.LBB2_25
.LBB2_24:                               # %pred.store.if82
                                        #   in Loop: Header=BB2_21 Depth=1
	movzbl	6(%rcx,%r11,4), %ebx
	movzbl	5(%rcx,%r11,4), %r14d
	movzbl	4(%rcx,%r11,4), %ebp
	shll	$16, %ebx
	shll	$8, %r14d
	orl	%ebx, %r14d
	orl	%ebp, %r14d
	leal	(%r10,%r14,4), %ebx
	addl	$-4, %ebx
	movl	%ebx, %ebp
	shrl	$18, %ebp
	movb	%bpl, 6(%rcx,%r11,4)
	movl	%ebx, %ebp
	shrl	$10, %ebp
	movb	%bpl, 5(%rcx,%r11,4)
	shrl	$2, %ebx
	movb	%bl, 4(%rcx,%r11,4)
	cmpb	$-21, 11(%rcx,%r11,4)
	jne	.LBB2_27
.LBB2_26:                               # %pred.store.if84
                                        #   in Loop: Header=BB2_21 Depth=1
	movzbl	10(%rcx,%r11,4), %ebx
	movzbl	9(%rcx,%r11,4), %r14d
	movzbl	8(%rcx,%r11,4), %ebp
	shll	$16, %ebx
	shll	$8, %r14d
	orl	%ebx, %r14d
	orl	%ebp, %r14d
	leal	(%r10,%r14,4), %ebx
	addl	$-8, %ebx
	movl	%ebx, %ebp
	shrl	$18, %ebp
	movb	%bpl, 10(%rcx,%r11,4)
	movl	%ebx, %ebp
	shrl	$10, %ebp
	movb	%bpl, 9(%rcx,%r11,4)
	shrl	$2, %ebx
	movb	%bl, 8(%rcx,%r11,4)
	cmpb	$-21, 15(%rcx,%r11,4)
	jne	.LBB2_29
.LBB2_28:                               # %pred.store.if86
                                        #   in Loop: Header=BB2_21 Depth=1
	movzbl	14(%rcx,%r11,4), %ebx
	movzbl	13(%rcx,%r11,4), %r14d
	movzbl	12(%rcx,%r11,4), %ebp
	shll	$16, %ebx
	shll	$8, %r14d
	orl	%ebx, %r14d
	orl	%ebp, %r14d
	leal	(%r10,%r14,4), %ebx
	addl	$-12, %ebx
	movl	%ebx, %ebp
	shrl	$18, %ebp
	movb	%bpl, 14(%rcx,%r11,4)
	movl	%ebx, %ebp
	shrl	$10, %ebp
	movb	%bpl, 13(%rcx,%r11,4)
	shrl	$2, %ebx
	movb	%bl, 12(%rcx,%r11,4)
	jmp	.LBB2_29
.LBB2_57:                               # %middle.block107
	cmpq	%rax, %rdi
	je	.LBB2_58
.LBB2_32:                               # %for.body.us.preheader132
	addl	$8, %esi
	jmp	.LBB2_33
	.p2align	4, 0x90
.LBB2_35:                               # %for.inc.us
                                        #   in Loop: Header=BB2_33 Depth=1
	leaq	4(%rax), %r9
	movq	%rax, %rdx
	cmpq	%r8, %r9
	ja	.LBB2_8
.LBB2_33:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movq	%r9, %rax
	cmpb	$-21, 3(%rcx,%rdx)
	jne	.LBB2_35
# %bb.34:                               # %if.then.us
                                        #   in Loop: Header=BB2_33 Depth=1
	movzbl	2(%rcx,%rdx), %edi
	shll	$16, %edi
	movzbl	1(%rcx,%rdx), %r9d
	shll	$8, %r9d
	orl	%edi, %r9d
	movzbl	(%rcx,%rdx), %edi
	orl	%r9d, %edi
	leal	(%rsi,%rdx), %r9d
	leal	(%r9,%rdi,4), %edi
	movl	%edi, %r9d
	shrl	$2, %r9d
	movl	%edi, %r10d
	shrl	$18, %r10d
	movb	%r10b, 2(%rcx,%rdx)
	shrl	$10, %edi
	movb	%dil, 1(%rcx,%rdx)
	movb	%r9b, (%rcx,%rdx)
	jmp	.LBB2_35
.LBB2_30:                               # %middle.block
	cmpq	%rax, %rdi
	jne	.LBB2_5
.LBB2_58:
	shlq	$2, %rax
	jmp	.LBB2_59
	.p2align	4, 0x90
.LBB2_7:                                # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	4(%rax), %r9
	movq	%rax, %rdx
	cmpq	%r8, %r9
	ja	.LBB2_8
.LBB2_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r9, %rax
	cmpb	$-21, 3(%rcx,%rdx)
	jne	.LBB2_7
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB2_5 Depth=1
	movzbl	2(%rcx,%rdx), %edi
	shll	$16, %edi
	movzbl	1(%rcx,%rdx), %r9d
	shll	$8, %r9d
	orl	%edi, %r9d
	movzbl	(%rcx,%rdx), %edi
	orl	%r9d, %edi
	shll	$2, %edi
	subl	%edx, %edi
	subl	%esi, %edi
	addl	$-8, %edi
	movl	%edi, %r9d
	shrl	$2, %r9d
	movl	%edi, %r10d
	shrl	$18, %r10d
	movb	%r10b, 2(%rcx,%rdx)
	shrl	$10, %edi
	movb	%dil, 1(%rcx,%rdx)
	movb	%r9b, (%rcx,%rdx)
	jmp	.LBB2_7
.LBB2_8:                                # %for.end.loopexit1
	addq	$-4, %r9
	movq	%r9, %rax
.LBB2_59:
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
	.size	arm_code, .Lfunc_end2-arm_code
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
