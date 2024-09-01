	.text
	.file	"ia64.c"
	.globl	lzma_simple_ia64_encoder_init   # -- Begin function lzma_simple_ia64_encoder_init
	.p2align	4, 0x90
	.type	lzma_simple_ia64_encoder_init,@function
lzma_simple_ia64_encoder_init:          # @lzma_simple_ia64_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$ia64_code, %ecx
	movl	$16, %r9d
	xorl	%r8d, %r8d
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_simple_ia64_encoder_init, .Lfunc_end0-lzma_simple_ia64_encoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_simple_ia64_decoder_init   # -- Begin function lzma_simple_ia64_decoder_init
	.p2align	4, 0x90
	.type	lzma_simple_ia64_decoder_init,@function
lzma_simple_ia64_decoder_init:          # @lzma_simple_ia64_decoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$ia64_code, %ecx
	movl	$16, %r9d
	xorl	%r8d, %r8d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	lzma_simple_ia64_decoder_init, .Lfunc_end1-lzma_simple_ia64_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function ia64_code
	.type	ia64_code,@function
ia64_code:                              # @ia64_code
	.cfi_startproc
# %bb.0:                                # %entry
	cmpq	$16, %r8
	jae	.LBB2_3
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB2_3:                                # %for.body.preheader
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
	movl	$3425763327, %eax               # imm = 0xCC30FFFF
	movl	%esi, %r9d
	negl	%esi
	xorl	%r10d, %r10d
	leal	855834624(%rax), %r11d
	jmp	.LBB2_4
	.p2align	4, 0x90
.LBB2_13:                               # %for.inc82.2
                                        #   in Loop: Header=BB2_4 Depth=1
	leaq	16(%r10), %rax
	addq	$32, %r10
	addl	$-16, %esi
	cmpq	%r8, %r10
	movq	%rax, %r10
	ja	.LBB2_14
.LBB2_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%r10), %ebx
	movl	%ebx, %r14d
	andl	$31, %r14d
	leal	(%r9,%r10), %eax
	testb	%dl, %dl
	cmovel	%esi, %eax
	shrl	$4, %eax
	leal	-24(%r14), %r15d
	cmpb	$-2, %r15b
	jb	.LBB2_7
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB2_4 Depth=1
	movzbl	1(%rcx,%r10), %r12d
	movl	%r12d, %r15d
	shll	$8, %r15d
	movzbl	2(%rcx,%r10), %r13d
	shll	$16, %r13d
	orl	%r15d, %r13d
	orq	%rbx, %r13
	movzbl	3(%rcx,%r10), %ebp
	shll	$24, %ebp
	movzbl	4(%rcx,%r10), %r15d
	shlq	$32, %r15
	orq	%rbp, %r15
	orq	%r13, %r15
	movzbl	5(%rcx,%r10), %r13d
	shlq	$40, %r13
	orq	%r15, %r13
	movq	%r13, %rbp
	movabsq	$65970697781248, %rdi           # imm = 0x3C000001C000
	andq	%rdi, %rbp
	movabsq	$21990232555520, %rdi           # imm = 0x140000000000
	cmpq	%rdi, %rbp
	jne	.LBB2_7
# %bb.6:                                # %if.then32
                                        #   in Loop: Header=BB2_4 Depth=1
	shrq	$18, %r15
	andl	$1048575, %r15d                 # imm = 0xFFFFF
	movq	%r13, %rbp
	shrq	$21, %rbp
	andl	$1048576, %ebp                  # imm = 0x100000
	orl	%r15d, %ebp
	addl	%eax, %ebp
	movabsq	$235020610584544, %rdi          # imm = 0xD5C000023FE0
	andq	%rdi, %r13
	movl	%ebp, %r15d
	andl	$1048575, %r15d                 # imm = 0xFFFFF
	shlq	$18, %r15
	orq	%r13, %r15
	andl	$1048576, %ebp                  # imm = 0x100000
	shlq	$21, %rbp
	andl	$31, %ebx
	orq	%rbp, %rbx
	orq	%r15, %rbx
	movb	%bl, (%rcx,%r10)
	movb	%r12b, 1(%rcx,%r10)
	movl	%ebx, %ebp
	shrl	$16, %ebp
	movb	%bpl, 2(%rcx,%r10)
	movl	%ebx, %ebp
	shrl	$24, %ebp
	movb	%bpl, 3(%rcx,%r10)
	movq	%rbx, %r15
	shrq	$32, %r15
	movb	%r15b, 4(%rcx,%r10)
	shrq	$40, %rbx
	movb	%bl, 5(%rcx,%r10)
.LBB2_7:                                # %for.inc82
                                        #   in Loop: Header=BB2_4 Depth=1
	btl	%r14d, %r11d
	jb	.LBB2_10
# %bb.8:                                # %if.end.1
                                        #   in Loop: Header=BB2_4 Depth=1
	movzbl	5(%rcx,%r10), %ebx
	movzbl	6(%rcx,%r10), %r12d
	movl	%r12d, %ebp
	shll	$8, %ebp
	movzbl	7(%rcx,%r10), %r13d
	shll	$16, %r13d
	orl	%ebp, %r13d
	orq	%rbx, %r13
	movzbl	8(%rcx,%r10), %ebp
	shll	$24, %ebp
	movzbl	9(%rcx,%r10), %r15d
	shlq	$32, %r15
	orq	%rbp, %r15
	orq	%r13, %r15
	movzbl	10(%rcx,%r10), %r13d
	shlq	$40, %r13
	orq	%r15, %r13
	movq	%r13, %rbp
	movabsq	$131941395562496, %rdi          # imm = 0x780000038000
	andq	%rdi, %rbp
	movl	%r11d, %edi
	movq	%r9, %r11
	movabsq	$43980465111040, %r9            # imm = 0x280000000000
	cmpq	%r9, %rbp
	movq	%r11, %r9
	movl	%edi, %r11d
	jne	.LBB2_10
# %bb.9:                                # %if.then32.1
                                        #   in Loop: Header=BB2_4 Depth=1
	shrq	$19, %r15
	andl	$1048575, %r15d                 # imm = 0xFFFFF
	movq	%r13, %rbp
	shrq	$22, %rbp
	andl	$1048576, %ebp                  # imm = 0x100000
	orl	%r15d, %ebp
	addl	%eax, %ebp
	movabsq	$188566244458432, %rdi          # imm = 0xAB8000047FC0
	andq	%rdi, %r13
	movl	%ebp, %r15d
	andl	$1048575, %r15d                 # imm = 0xFFFFF
	shlq	$19, %r15
	orq	%r13, %r15
	andl	$1048576, %ebp                  # imm = 0x100000
	shlq	$22, %rbp
	andl	$63, %ebx
	orq	%rbp, %rbx
	orq	%r15, %rbx
	movb	%bl, 5(%rcx,%r10)
	movb	%r12b, 6(%rcx,%r10)
	movl	%ebx, %ebp
	shrl	$16, %ebp
	movb	%bpl, 7(%rcx,%r10)
	movl	%ebx, %ebp
	shrl	$24, %ebp
	movb	%bpl, 8(%rcx,%r10)
	movq	%rbx, %r15
	shrq	$32, %r15
	movb	%r15b, 9(%rcx,%r10)
	shrq	$40, %rbx
	movb	%bl, 10(%rcx,%r10)
.LBB2_10:                               # %for.inc82.1
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	$3425763327, %edi               # imm = 0xCC30FFFF
	btl	%r14d, %edi
	jb	.LBB2_13
# %bb.11:                               # %if.end.2
                                        #   in Loop: Header=BB2_4 Depth=1
	movzbl	10(%rcx,%r10), %ebx
	movzbl	11(%rcx,%r10), %r14d
	movl	%r14d, %ebp
	shll	$8, %ebp
	movzbl	12(%rcx,%r10), %r12d
	shll	$16, %r12d
	orl	%ebp, %r12d
	orq	%rbx, %r12
	movzbl	13(%rcx,%r10), %r13d
	shll	$24, %r13d
	movzbl	14(%rcx,%r10), %r15d
	shlq	$32, %r15
	orq	%r13, %r15
	orq	%r12, %r15
	movzbl	15(%rcx,%r10), %r12d
	shlq	$40, %r12
	orq	%r15, %r12
	movq	%r12, %r13
	movabsq	$263882791124992, %rdi          # imm = 0xF00000070000
	andq	%rdi, %r13
	movabsq	$87960930222080, %rdi           # imm = 0x500000000000
	cmpq	%rdi, %r13
	jne	.LBB2_13
# %bb.12:                               # %if.then32.2
                                        #   in Loop: Header=BB2_4 Depth=1
	shrq	$20, %r15
	movq	%r12, %r13
	shrq	$23, %r13
	andl	$1048576, %r13d                 # imm = 0x100000
	orl	%r13d, %r15d
	addl	%r15d, %eax
	movabsq	$95657512206208, %rdi           # imm = 0x57000008FF80
	andq	%rdi, %r12
	movl	%eax, %r15d
	andl	$1048575, %r15d                 # imm = 0xFFFFF
	shlq	$20, %r15
	orq	%r12, %r15
	andl	$1048576, %eax                  # imm = 0x100000
	shlq	$23, %rax
	andl	$127, %ebx
	orq	%rax, %rbx
	orq	%r15, %rbx
	movb	%bl, 10(%rcx,%r10)
	movb	%r14b, 11(%rcx,%r10)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 12(%rcx,%r10)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 13(%rcx,%r10)
	movq	%rbx, %rax
	shrq	$32, %rax
	movb	%al, 14(%rcx,%r10)
	shrq	$40, %rbx
	movb	%bl, 15(%rcx,%r10)
	jmp	.LBB2_13
.LBB2_14:
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
	.size	ia64_code, .Lfunc_end2-ia64_code
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
