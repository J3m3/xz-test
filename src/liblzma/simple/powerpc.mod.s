	.text
	.file	"powerpc.c"
	.globl	lzma_simple_powerpc_encoder_init # -- Begin function lzma_simple_powerpc_encoder_init
	.p2align	4, 0x90
	.type	lzma_simple_powerpc_encoder_init,@function
lzma_simple_powerpc_encoder_init:       # @lzma_simple_powerpc_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$powerpc_code, %ecx
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
	.size	lzma_simple_powerpc_encoder_init, .Lfunc_end0-lzma_simple_powerpc_encoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_simple_powerpc_decoder_init # -- Begin function lzma_simple_powerpc_decoder_init
	.p2align	4, 0x90
	.type	lzma_simple_powerpc_decoder_init,@function
lzma_simple_powerpc_decoder_init:       # @lzma_simple_powerpc_decoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$powerpc_code, %ecx
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
	.size	lzma_simple_powerpc_decoder_init, .Lfunc_end1-lzma_simple_powerpc_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function powerpc_code
	.type	powerpc_code,@function
powerpc_code:                           # @powerpc_code
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
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r10
	xorl	%ebx, %ebx
	movq	%r8, %rax
	addq	$-4, %rax
	adcq	$3, %rbx
	shldq	$62, %rax, %rbx
	incq	%rbx
	testb	%dl, %dl
	movq	%r8, -40(%rsp)                  # 8-byte Spill
	movq	%rsi, -48(%rsp)                 # 8-byte Spill
	movl	$4, %r9d
	je	.LBB2_4
# %bb.41:                               # %for.body.us.preheader
	xorl	%edi, %edi
	cmpq	$4, %rbx
	jb	.LBB2_52
# %bb.42:                               # %vector.scevcheck122
	movq	%r10, %rax
	addq	$-4, %rax
	movl	$0, %r11d
	adcq	$-1, %r11
	shrdq	$2, %r11, %rax
	leaq	(%rcx,%rax,4), %rdx
	cmpq	%rcx, %rdx
	jb	.LBB2_52
# %bb.43:                               # %vector.scevcheck122
	movabsq	$4611686018427387903, %rdx      # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rdx, %rax
	ja	.LBB2_52
# %bb.44:                               # %vector.scevcheck122
	leaq	1(%rcx), %rdi
	leaq	(%rcx,%rax,4), %r8
	incq	%r8
	cmpq	%rdi, %r8
	jb	.LBB2_51
# %bb.45:                               # %vector.scevcheck122
	cmpq	%rdx, %rax
	ja	.LBB2_51
# %bb.46:                               # %vector.scevcheck122
	leaq	2(%rcx), %rdi
	leaq	(%rcx,%rax,4), %r8
	addq	$2, %r8
	cmpq	%rdi, %r8
	jb	.LBB2_51
# %bb.47:                               # %vector.scevcheck122
	cmpq	%rdx, %rax
	ja	.LBB2_51
# %bb.48:                               # %vector.scevcheck122
	leaq	(,%rax,4), %rdi
	cmpq	$-9, %rdi
	ja	.LBB2_51
# %bb.49:                               # %vector.scevcheck122
	cmpq	%rdx, %rax
	ja	.LBB2_51
# %bb.50:                               # %vector.scevcheck122
	leaq	3(%rcx), %rdi
	leaq	(%rcx,%rax,4), %r8
	addq	$3, %r8
	cmpq	%rdi, %r8
	jb	.LBB2_51
# %bb.56:                               # %vector.scevcheck122
	cmpq	%rdx, %rax
	movl	$0, %edi
	ja	.LBB2_52
# %bb.57:                               # %vector.scevcheck122
	cmpq	$3, %r11
	ja	.LBB2_52
# %bb.58:                               # %vector.ph144
	movq	%rbx, -72(%rsp)                 # 8-byte Spill
	movq	%rbx, %rax
	andq	$-4, %rax
	leaq	(,%rax,4), %rdx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	leaq	4(,%rax,4), %r9
	movl	%esi, %r15d
	xorl	%ebx, %ebx
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	jmp	.LBB2_59
	.p2align	4, 0x90
.LBB2_76:                               # %pred.store.continue169
                                        #   in Loop: Header=BB2_59 Depth=1
	addq	$16, %rbx
	addq	$-4, %r11
	je	.LBB2_77
.LBB2_59:                               # %vector.body151
                                        # =>This Inner Loop Header: Depth=1
	movq	%r11, -56(%rsp)                 # 8-byte Spill
	movzbl	(%rcx,%rbx), %r10d
	movl	%r10d, %r8d
	andl	$-4, %r8d
                                        # implicit-def: $al
                                        # kill: killed $al
	cmpl	$72, %r8d
	jne	.LBB2_61
# %bb.60:                               # %pred.load.if154
                                        #   in Loop: Header=BB2_59 Depth=1
	movzbl	3(%rcx,%rbx), %eax
	movb	%al, -97(%rsp)                  # 1-byte Spill
.LBB2_61:                               # %pred.load.continue155
                                        #   in Loop: Header=BB2_59 Depth=1
	movzbl	4(%rcx,%rbx), %edi
	movl	%edi, %esi
	andl	$-4, %esi
                                        # implicit-def: $al
	cmpl	$72, %esi
	jne	.LBB2_63
# %bb.62:                               # %pred.load.if156
                                        #   in Loop: Header=BB2_59 Depth=1
	movzbl	7(%rcx,%rbx), %eax
.LBB2_63:                               # %pred.load.continue157
                                        #   in Loop: Header=BB2_59 Depth=1
	movzbl	8(%rcx,%rbx), %r12d
	movl	%r12d, -96(%rsp)                # 4-byte Spill
	andl	$-4, %r12d
                                        # implicit-def: $dl
	cmpl	$72, %r12d
	jne	.LBB2_65
# %bb.64:                               # %pred.load.if158
                                        #   in Loop: Header=BB2_59 Depth=1
	movzbl	11(%rcx,%rbx), %edx
.LBB2_65:                               # %pred.load.continue159
                                        #   in Loop: Header=BB2_59 Depth=1
	movq	%r15, %rbp
	movzbl	12(%rcx,%rbx), %r14d
	movl	%r14d, -88(%rsp)                # 4-byte Spill
	andl	$-4, %r14d
                                        # implicit-def: $r13b
	cmpl	$72, %r14d
	jne	.LBB2_67
# %bb.66:                               # %pred.load.if160
                                        #   in Loop: Header=BB2_59 Depth=1
	movzbl	15(%rcx,%rbx), %r13d
.LBB2_67:                               # %pred.load.continue161
                                        #   in Loop: Header=BB2_59 Depth=1
	xorl	$72, %r14d
	xorl	$72, %r12d
	xorl	$72, %esi
	movzbl	%al, %eax
	movzbl	%dl, %r15d
	movzbl	%r13b, %r11d
	movl	%eax, %edx
	andl	$3, %edx
	movl	%r15d, -92(%rsp)                # 4-byte Spill
	andl	$3, %r15d
	movl	%r11d, -84(%rsp)                # 4-byte Spill
	andl	$3, %r11d
	xorl	$1, %edx
	xorl	$1, %r15d
	xorl	$1, %r11d
	orl	%esi, %edx
	sete	%r13b
	orl	%r12d, %r15d
	sete	%sil
	orl	%r14d, %r11d
	sete	%r12b
	cmpl	$72, %r8d
	movq	%rbp, %r15
	jne	.LBB2_70
# %bb.68:                               # %pred.load.continue161
                                        #   in Loop: Header=BB2_59 Depth=1
	movzbl	-97(%rsp), %r8d                 # 1-byte Folded Reload
	movl	%r8d, %edx
	andl	$3, %edx
	cmpl	$1, %edx
	jne	.LBB2_70
# %bb.69:                               # %pred.store.if162
                                        #   in Loop: Header=BB2_59 Depth=1
	movzbl	1(%rcx,%rbx), %r11d
	movzbl	2(%rcx,%rbx), %edx
	andl	$3, %r10d
	shll	$24, %r10d
	movl	%r8d, %r14d
	andl	$-4, %r14d
	shll	$16, %r11d
	orl	%r10d, %r11d
	shll	$8, %edx
	orl	%r11d, %edx
	orl	%r14d, %edx
	leal	(%r15,%rbx), %r10d
	addl	%r10d, %edx
	movl	%edx, %r11d
	shrl	$24, %r11d
	andb	$3, %r11b
	orb	$72, %r11b
	movb	%r11b, (%rcx,%rbx)
	movl	%edx, %r11d
	shrl	$16, %r11d
	movb	%r11b, 1(%rcx,%rbx)
	movb	%dh, 2(%rcx,%rbx)
	movl	%r8d, %edx
	andl	$252, %edx
	addl	%r10d, %edx
	andb	$3, %r8b
	orb	%r8b, %dl
	movb	%dl, 3(%rcx,%rbx)
.LBB2_70:                               # %pred.store.continue163
                                        #   in Loop: Header=BB2_59 Depth=1
	testb	%r13b, %r13b
	jne	.LBB2_71
# %bb.72:                               # %pred.store.continue165
                                        #   in Loop: Header=BB2_59 Depth=1
	testb	%sil, %sil
	movq	-40(%rsp), %r10                 # 8-byte Reload
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	jne	.LBB2_73
.LBB2_74:                               # %pred.store.continue167
                                        #   in Loop: Header=BB2_59 Depth=1
	testb	%r12b, %r12b
	movq	-56(%rsp), %r11                 # 8-byte Reload
	je	.LBB2_76
	jmp	.LBB2_75
	.p2align	4, 0x90
.LBB2_71:                               # %pred.store.if164
                                        #   in Loop: Header=BB2_59 Depth=1
	movzbl	5(%rcx,%rbx), %edx
	movzbl	6(%rcx,%rbx), %r8d
	andl	$3, %edi
	shll	$24, %edi
	movl	%eax, %r10d
	andl	$-4, %r10d
	shll	$16, %edx
	orl	%edi, %edx
	shll	$8, %r8d
	orl	%edx, %r8d
	orl	%r10d, %r8d
	leal	(%r15,%rbx), %edi
	leal	(%rdi,%r8), %edx
	addl	$4, %edx
	movl	%edx, %r8d
	shrl	$24, %r8d
	andb	$3, %r8b
	orb	$72, %r8b
	movb	%r8b, 4(%rcx,%rbx)
	movl	%edx, %r8d
	shrl	$16, %r8d
	movb	%r8b, 5(%rcx,%rbx)
	movb	%dh, 6(%rcx,%rbx)
	movl	%eax, %edx
	andl	$252, %edx
	addl	%edi, %edx
	andb	$3, %al
	addb	$4, %dl
	orb	%al, %dl
	movb	%dl, 7(%rcx,%rbx)
	testb	%sil, %sil
	movq	-40(%rsp), %r10                 # 8-byte Reload
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	je	.LBB2_74
.LBB2_73:                               # %pred.store.if166
                                        #   in Loop: Header=BB2_59 Depth=1
	movzbl	9(%rcx,%rbx), %eax
	movzbl	10(%rcx,%rbx), %edx
	movl	-96(%rsp), %r11d                # 4-byte Reload
	andl	$3, %r11d
	shll	$24, %r11d
	movl	-92(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, %edi
	andl	$-4, %edi
	shll	$16, %eax
	orl	%r11d, %eax
	shll	$8, %edx
	orl	%eax, %edx
	orl	%edi, %edx
	leal	(%r15,%rbx), %edi
	leal	(%rdi,%rdx), %eax
	addl	$8, %eax
	movl	%eax, %edx
	shrl	$24, %edx
	andb	$3, %dl
	orb	$72, %dl
	movb	%dl, 8(%rcx,%rbx)
	movl	%eax, %edx
	shrl	$16, %edx
	movb	%dl, 9(%rcx,%rbx)
	movb	%ah, 10(%rcx,%rbx)
	movl	%r8d, %eax
	andl	$252, %eax
	addl	%edi, %eax
	andb	$3, %r8b
	addb	$8, %al
	orb	%r8b, %al
	movb	%al, 11(%rcx,%rbx)
	testb	%r12b, %r12b
	movq	-56(%rsp), %r11                 # 8-byte Reload
	je	.LBB2_76
.LBB2_75:                               # %pred.store.if168
                                        #   in Loop: Header=BB2_59 Depth=1
	movzbl	13(%rcx,%rbx), %edx
	movzbl	14(%rcx,%rbx), %r8d
	movl	-88(%rsp), %edi                 # 4-byte Reload
	andl	$3, %edi
	shll	$24, %edi
	movl	-84(%rsp), %ebp                 # 4-byte Reload
	movl	%ebp, %eax
	andl	$-4, %eax
	shll	$16, %edx
	orl	%edi, %edx
	shll	$8, %r8d
	orl	%edx, %r8d
	orl	%eax, %r8d
	leal	(%r15,%rbx), %edi
	leal	(%rdi,%r8), %edx
	addl	$12, %edx
	movl	%edx, %r8d
	shrl	$24, %r8d
	andb	$3, %r8b
	orb	$72, %r8b
	movb	%r8b, 12(%rcx,%rbx)
	movl	%edx, %r8d
	shrl	$16, %r8d
	movb	%r8b, 13(%rcx,%rbx)
	movb	%dh, 14(%rcx,%rbx)
	addl	%edi, %eax
	andb	$3, %bpl
	addb	$12, %al
	orb	%bpl, %al
	movb	%al, 15(%rcx,%rbx)
	jmp	.LBB2_76
.LBB2_4:                                # %for.body.preheader
	xorl	%r14d, %r14d
	cmpq	$3, %rbx
	jbe	.LBB2_5
# %bb.10:                               # %vector.scevcheck
	movq	%r10, %rax
	addq	$-4, %rax
	movl	$0, %r11d
	adcq	$-1, %r11
	shrdq	$2, %r11, %rax
	leaq	(%rcx,%rax,4), %rdx
	cmpq	%rcx, %rdx
	jb	.LBB2_5
# %bb.11:                               # %vector.scevcheck
	movabsq	$4611686018427387903, %rdx      # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rdx, %rax
	ja	.LBB2_5
# %bb.12:                               # %vector.scevcheck
	leaq	1(%rcx), %rdi
	leaq	(%rcx,%rax,4), %r8
	incq	%r8
	cmpq	%rdi, %r8
	jb	.LBB2_5
# %bb.13:                               # %vector.scevcheck
	cmpq	%rdx, %rax
	ja	.LBB2_5
# %bb.14:                               # %vector.scevcheck
	leaq	2(%rcx), %rdi
	leaq	(%rcx,%rax,4), %r8
	addq	$2, %r8
	cmpq	%rdi, %r8
	jb	.LBB2_5
# %bb.15:                               # %vector.scevcheck
	cmpq	%rdx, %rax
	ja	.LBB2_5
# %bb.16:                               # %vector.scevcheck
	leaq	(,%rax,4), %rdi
	cmpq	$-9, %rdi
	ja	.LBB2_5
# %bb.17:                               # %vector.scevcheck
	cmpq	%rdx, %rax
	ja	.LBB2_5
# %bb.18:                               # %vector.scevcheck
	leaq	3(%rcx), %rdi
	leaq	(%rcx,%rax,4), %r8
	addq	$3, %r8
	cmpq	%rdi, %r8
	jb	.LBB2_5
# %bb.19:                               # %vector.scevcheck
	cmpq	%rdx, %rax
	ja	.LBB2_5
# %bb.20:                               # %vector.scevcheck
	cmpq	$3, %r11
	ja	.LBB2_5
# %bb.21:                               # %vector.ph
	movq	%rbx, -72(%rsp)                 # 8-byte Spill
	movq	%rbx, %rdx
	andq	$-4, %rdx
	leaq	(,%rdx,4), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	leaq	4(,%rdx,4), %r9
	leaq	15(%rcx), %rbx
	movl	%esi, %eax
	negb	%al
	movzbl	%al, %r15d
	movl	%esi, %eax
	negl	%eax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movl	$-12, %eax
	subl	%esi, %eax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movl	$-8, %eax
	subl	%esi, %eax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movl	$-4, %eax
	subl	%esi, %eax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	xorl	%r13d, %r13d
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rdx, %rdi
	jmp	.LBB2_22
	.p2align	4, 0x90
.LBB2_39:                               # %pred.store.continue121
                                        #   in Loop: Header=BB2_22 Depth=1
	addq	$16, %rbx
	addl	$-16, %r13d
	addq	$-4, %rdi
	je	.LBB2_40
.LBB2_22:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, -56(%rsp)                 # 8-byte Spill
	movzbl	-15(%rbx), %r8d
	movl	%r8d, %edi
	andl	$-4, %edi
                                        # implicit-def: $al
                                        # kill: killed $al
	cmpl	$72, %edi
	jne	.LBB2_24
# %bb.23:                               # %pred.load.if
                                        #   in Loop: Header=BB2_22 Depth=1
	movzbl	-12(%rbx), %eax
	movb	%al, -97(%rsp)                  # 1-byte Spill
.LBB2_24:                               # %pred.load.continue
                                        #   in Loop: Header=BB2_22 Depth=1
	movzbl	-11(%rbx), %eax
	movl	%eax, %r10d
	andl	$-4, %r10d
                                        # implicit-def: $sil
	cmpl	$72, %r10d
	jne	.LBB2_26
# %bb.25:                               # %pred.load.if110
                                        #   in Loop: Header=BB2_22 Depth=1
	movzbl	-8(%rbx), %esi
.LBB2_26:                               # %pred.load.continue111
                                        #   in Loop: Header=BB2_22 Depth=1
	movq	%r15, %r14
	movzbl	-7(%rbx), %r12d
	movl	%r12d, -96(%rsp)                # 4-byte Spill
	andl	$-4, %r12d
                                        # implicit-def: $dl
	cmpl	$72, %r12d
	jne	.LBB2_28
# %bb.27:                               # %pred.load.if112
                                        #   in Loop: Header=BB2_22 Depth=1
	movzbl	-4(%rbx), %edx
.LBB2_28:                               # %pred.load.continue113
                                        #   in Loop: Header=BB2_22 Depth=1
	movzbl	-3(%rbx), %r11d
	movl	%r11d, -88(%rsp)                # 4-byte Spill
	andl	$-4, %r11d
                                        # implicit-def: $bpl
	cmpl	$72, %r11d
	jne	.LBB2_30
# %bb.29:                               # %pred.load.if114
                                        #   in Loop: Header=BB2_22 Depth=1
	movzbl	(%rbx), %ebp
.LBB2_30:                               # %pred.load.continue115
                                        #   in Loop: Header=BB2_22 Depth=1
	xorl	$72, %r11d
	xorl	$72, %r12d
	xorl	$72, %r10d
	movzbl	%sil, %esi
	movzbl	%dl, %r15d
	movzbl	%bpl, %ebp
	movl	%esi, %edx
	andl	$3, %edx
	movl	%r15d, -92(%rsp)                # 4-byte Spill
	andl	$3, %r15d
	movl	%ebp, -84(%rsp)                 # 4-byte Spill
	andl	$3, %ebp
	xorl	$1, %edx
	xorl	$1, %r15d
	xorl	$1, %ebp
	orl	%r10d, %edx
	sete	%r10b
	orl	%r12d, %r15d
	sete	%r12b
	orl	%r11d, %ebp
	sete	%bpl
	cmpl	$72, %edi
	movq	%r14, %r15
	jne	.LBB2_33
# %bb.31:                               # %pred.load.continue115
                                        #   in Loop: Header=BB2_22 Depth=1
	movzbl	-97(%rsp), %edi                 # 1-byte Folded Reload
	movl	%edi, %edx
	andl	$3, %edx
	cmpl	$1, %edx
	jne	.LBB2_33
# %bb.32:                               # %pred.store.if
                                        #   in Loop: Header=BB2_22 Depth=1
	movzbl	-14(%rbx), %r11d
	movzbl	-13(%rbx), %edx
	andl	$3, %r8d
	shll	$24, %r8d
	movl	%r12d, %r14d
	movl	%edi, %r12d
	andl	$-4, %r12d
	shll	$16, %r11d
	orl	%r8d, %r11d
	shll	$8, %edx
	orl	%r11d, %edx
	orl	%r12d, %edx
	movq	-64(%rsp), %r8                  # 8-byte Reload
	addl	%r13d, %r8d
	addl	%r8d, %edx
	movl	%edx, %r8d
	shrl	$24, %r8d
	andb	$3, %r8b
	orb	$72, %r8b
	movb	%r8b, -15(%rbx)
	movl	%edx, %r8d
	shrl	$16, %r8d
	movb	%r8b, -14(%rbx)
	movb	%dh, -13(%rbx)
	addl	%r15d, %r12d
	addl	%r13d, %r12d
	andb	$3, %dil
	orb	%dil, %r12b
	movb	%r12b, -12(%rbx)
	movl	%r14d, %r12d
.LBB2_33:                               # %pred.store.continue
                                        #   in Loop: Header=BB2_22 Depth=1
	testb	%r10b, %r10b
	jne	.LBB2_34
# %bb.35:                               # %pred.store.continue117
                                        #   in Loop: Header=BB2_22 Depth=1
	testb	%r12b, %r12b
	jne	.LBB2_36
.LBB2_37:                               # %pred.store.continue119
                                        #   in Loop: Header=BB2_22 Depth=1
	testb	%bpl, %bpl
	movq	-56(%rsp), %rdi                 # 8-byte Reload
	je	.LBB2_39
	jmp	.LBB2_38
	.p2align	4, 0x90
.LBB2_34:                               # %pred.store.if116
                                        #   in Loop: Header=BB2_22 Depth=1
	movzbl	-10(%rbx), %r8d
	movzbl	-9(%rbx), %edx
	andl	$3, %eax
	shll	$24, %eax
	movl	%esi, %edi
	andl	$-4, %edi
	shll	$16, %r8d
	orl	%eax, %r8d
	shll	$8, %edx
	orl	%r8d, %edx
	orl	%edi, %edx
	movq	-24(%rsp), %rax                 # 8-byte Reload
	addl	%r13d, %eax
	addl	%eax, %edx
	movl	%edx, %eax
	shrl	$24, %eax
	andb	$3, %al
	orb	$72, %al
	movb	%al, -11(%rbx)
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, -10(%rbx)
	movb	%dh, -9(%rbx)
	addl	%r15d, %edi
	addl	%r13d, %edi
	andb	$3, %sil
	addb	$-4, %dil
	orb	%sil, %dil
	movb	%dil, -8(%rbx)
	testb	%r12b, %r12b
	je	.LBB2_37
.LBB2_36:                               # %pred.store.if118
                                        #   in Loop: Header=BB2_22 Depth=1
	movzbl	-6(%rbx), %esi
	movzbl	-5(%rbx), %edx
	movl	-96(%rsp), %r8d                 # 4-byte Reload
	andl	$3, %r8d
	shll	$24, %r8d
	movl	-92(%rsp), %edi                 # 4-byte Reload
	movl	%edi, %eax
	andl	$-4, %eax
	shll	$16, %esi
	orl	%r8d, %esi
	shll	$8, %edx
	orl	%esi, %edx
	orl	%eax, %edx
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	addl	%r13d, %esi
	addl	%esi, %edx
	movl	%edx, %esi
	shrl	$24, %esi
	andb	$3, %sil
	orb	$72, %sil
	movb	%sil, -7(%rbx)
	movl	%edx, %esi
	shrl	$16, %esi
	movb	%sil, -6(%rbx)
	movb	%dh, -5(%rbx)
	addl	%r15d, %eax
	addl	%r13d, %eax
	andb	$3, %dil
	addb	$-8, %al
	orb	%dil, %al
	movb	%al, -4(%rbx)
	testb	%bpl, %bpl
	movq	-56(%rsp), %rdi                 # 8-byte Reload
	je	.LBB2_39
.LBB2_38:                               # %pred.store.if120
                                        #   in Loop: Header=BB2_22 Depth=1
	movzbl	-2(%rbx), %esi
	movzbl	-1(%rbx), %edx
	movl	-88(%rsp), %r10d                # 4-byte Reload
	andl	$3, %r10d
	shll	$24, %r10d
	movl	-84(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, %eax
	andl	$-4, %eax
	shll	$16, %esi
	orl	%r10d, %esi
	shll	$8, %edx
	orl	%esi, %edx
	orl	%eax, %edx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	addl	%r13d, %esi
	addl	%esi, %edx
	movl	%edx, %esi
	shrl	$24, %esi
	andb	$3, %sil
	orb	$72, %sil
	movb	%sil, -3(%rbx)
	movl	%edx, %esi
	shrl	$16, %esi
	movb	%sil, -2(%rbx)
	movb	%dh, -1(%rbx)
	addl	%r15d, %eax
	addl	%r13d, %eax
	andb	$3, %r8b
	addb	$-12, %al
	orb	%r8b, %al
	movb	%al, (%rbx)
	jmp	.LBB2_39
.LBB2_77:                               # %middle.block141
	movq	-80(%rsp), %rax                 # 8-byte Reload
	cmpq	%rax, -72(%rsp)                 # 8-byte Folded Reload
	movq	-64(%rsp), %rdi                 # 8-byte Reload
	jne	.LBB2_52
	jmp	.LBB2_78
.LBB2_40:                               # %middle.block
	movq	-80(%rsp), %rax                 # 8-byte Reload
	cmpq	%rax, -72(%rsp)                 # 8-byte Folded Reload
	movq	-40(%rsp), %r10                 # 8-byte Reload
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	-32(%rsp), %r14                 # 8-byte Reload
	jne	.LBB2_5
.LBB2_78:
	shlq	$2, %rax
	jmp	.LBB2_79
	.p2align	4, 0x90
.LBB2_8:                                # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	4(%r14), %r9
	cmpq	%r10, %r9
	ja	.LBB2_9
.LBB2_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rbp
	movq	%r9, %r14
	movzbl	(%rcx,%rbp), %eax
	movl	%eax, %edx
	andl	$-4, %edx
	cmpl	$72, %edx
	jne	.LBB2_8
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_5 Depth=1
	movzbl	3(%rcx,%rbp), %edi
	movl	%edi, %edx
	andl	$3, %edx
	cmpl	$1, %edx
	jne	.LBB2_8
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	%rbp, %rbx
	orq	$3, %rbx
	andl	$3, %eax
	shll	$24, %eax
	movzbl	1(%rcx,%rbp), %r8d
	shll	$16, %r8d
	movzbl	2(%rcx,%rbp), %edx
	shll	$8, %edx
	addl	%r8d, %edx
	movl	%edi, %r8d
	andl	$-4, %r8d
	subl	%ebp, %eax
	subl	%esi, %eax
	addl	%r8d, %eax
	addl	%eax, %edx
	movl	%edx, %r8d
	shrl	$24, %r8d
	andb	$3, %r8b
	orb	$72, %r8b
	movb	%r8b, (%rcx,%rbp)
	movl	%edx, %r8d
	shrl	$16, %r8d
	movb	%r8b, 1(%rcx,%rbp)
	movb	%dh, 2(%rcx,%rbp)
	andb	$3, %dil
	orb	%dil, %al
	movb	%al, (%rcx,%rbx)
	jmp	.LBB2_8
.LBB2_51:
	xorl	%edi, %edi
	jmp	.LBB2_52
	.p2align	4, 0x90
.LBB2_55:                               # %for.inc.us
                                        #   in Loop: Header=BB2_52 Depth=1
	leaq	4(%rdi), %r9
	cmpq	%r10, %r9
	ja	.LBB2_9
.LBB2_52:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	movq	%r9, %rdi
	movzbl	(%rcx,%rax), %r8d
	movl	%r8d, %edx
	andl	$-4, %edx
	cmpl	$72, %edx
	jne	.LBB2_55
# %bb.53:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB2_52 Depth=1
	movzbl	3(%rcx,%rax), %r11d
	movl	%r11d, %edx
	andl	$3, %edx
	cmpl	$1, %edx
	jne	.LBB2_55
# %bb.54:                               # %if.then.us
                                        #   in Loop: Header=BB2_52 Depth=1
	movq	%rdi, %r14
	movq	%rax, %rdi
	orq	$3, %rdi
	andl	$3, %r8d
	shll	$24, %r8d
	movzbl	1(%rcx,%rax), %edx
	shll	$16, %edx
	movzbl	2(%rcx,%rax), %ebx
	shll	$8, %ebx
	addl	%edx, %ebx
	movl	%r11d, %edx
	andl	$-4, %edx
	addl	%eax, %edx
	addl	%esi, %edx
	addl	%r8d, %edx
	addl	%edx, %ebx
	movl	%ebx, %r8d
	shrl	$24, %r8d
	andb	$3, %r8b
	orb	$72, %r8b
	movb	%r8b, (%rcx,%rax)
	movl	%ebx, %r8d
	shrl	$16, %r8d
	movb	%r8b, 1(%rcx,%rax)
	movb	%bh, 2(%rcx,%rax)
	andb	$3, %r11b
	orb	%r11b, %dl
	movb	%dl, (%rcx,%rdi)
	movq	%r14, %rdi
	jmp	.LBB2_55
.LBB2_9:                                # %for.end.loopexit1
	addq	$-4, %r9
	movq	%r9, %rax
.LBB2_79:
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	retq
.Lfunc_end2:
	.size	powerpc_code, .Lfunc_end2-powerpc_code
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
