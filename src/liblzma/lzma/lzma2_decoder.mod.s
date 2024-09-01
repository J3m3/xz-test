	.text
	.file	"lzma2_decoder.c"
	.globl	lzma_lzma2_decoder_init         # -- Begin function lzma_lzma2_decoder_init
	.p2align	4, 0x90
	.type	lzma_lzma2_decoder_init,@function
lzma_lzma2_decoder_init:                # @lzma_lzma2_decoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$lzma2_decoder_init, %ecx
	jmp	lzma_lz_decoder_init@PLT        # TAILCALL
.Lfunc_end0:
	.size	lzma_lzma2_decoder_init, .Lfunc_end0-lzma_lzma2_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma2_decoder_init
	.type	lzma2_decoder_init,@function
lzma2_decoder_init:                     # @lzma2_decoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	testq	%rax, %rax
	jne	.LBB1_3
# %bb.1:                                # %if.then
	movq	%rdx, %r14
	movq	%rcx, %r15
	movl	$184, %edi
	movq	%rsi, %r12
	callq	lzma_alloc@PLT
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB1_7
# %bb.2:                                # %if.end
	movq	$lzma2_decode, 8(%rbx)
	movq	$lzma2_decoder_end, 32(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movups	%xmm0, 8(%rax)
	movq	$0, 40(%rax)
	movq	(%rbx), %rax
	movq	%r15, %rcx
	movq	%r14, %rdx
	movq	%r12, %rsi
.LBB1_3:                                # %if.end9
	movl	$0, (%rax)
	movq	(%rbx), %rax
	movb	$1, 64(%rax)
	cmpq	$0, 8(%rdx)
	je	.LBB1_4
# %bb.5:                                # %lor.rhs
	cmpl	$0, 16(%rdx)
	sete	%al
	jmp	.LBB1_6
.LBB1_4:
	movb	$1, %al
.LBB1_6:                                # %lor.end
	movq	(%rbx), %rdi
	movb	%al, 65(%rdi)
	movq	(%rbx), %rdi
	addq	$8, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	lzma_lzma_decoder_create@PLT    # TAILCALL
.LBB1_7:                                # %return
	.cfi_def_cfa_offset 48
	movl	$5, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	lzma2_decoder_init, .Lfunc_end1-lzma2_decoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma2_decoder_memusage     # -- Begin function lzma_lzma2_decoder_memusage
	.p2align	4, 0x90
	.type	lzma_lzma2_decoder_memusage,@function
lzma_lzma2_decoder_memusage:            # @lzma_lzma2_decoder_memusage
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	lzma_lzma_decoder_memusage_nocheck@PLT
	addq	$184, %rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	lzma_lzma2_decoder_memusage, .Lfunc_end2-lzma_lzma2_decoder_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma2_props_decode         # -- Begin function lzma_lzma2_props_decode
	.p2align	4, 0x90
	.type	lzma_lzma2_props_decode,@function
lzma_lzma2_props_decode:                # @lzma_lzma2_props_decode
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$8, %eax
	cmpq	$1, %rcx
	jne	.LBB3_8
# %bb.1:                                # %if.end
	cmpb	$40, (%rdx)
	ja	.LBB3_8
# %bb.2:                                # %if.end8
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$112, %edi
	callq	lzma_alloc@PLT
	testq	%rax, %rax
	je	.LBB3_3
# %bb.4:                                # %if.end12
	movzbl	(%r14), %edx
	movl	$-1, %esi
	cmpl	$40, %edx
	je	.LBB3_6
# %bb.5:                                # %if.else
	andl	$1, %edx
	orl	$2, %edx
	movl	%edx, (%rax)
	movzbl	(%r14), %ecx
	shrl	%ecx
	addb	$11, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %esi
.LBB3_6:                                # %if.end25
	movl	%esi, (%rax)
	movq	$0, 8(%rax)
	movl	$0, 16(%rax)
	movq	%rax, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB3_7
.LBB3_3:
	movl	$5, %eax
.LBB3_7:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB3_8:                                # %return
	retq
.Lfunc_end3:
	.size	lzma_lzma2_props_decode, .Lfunc_end3-lzma_lzma2_props_decode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma2_decode
	.type	lzma2_decode,@function
lzma2_decode:                           # @lzma2_decode
	.cfi_startproc
# %bb.0:                                # %entry
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	leaq	8(%rsi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	72(%rdi), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	.p2align	4, 0x90
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rbp
	movq	%rbx, %rax
	movl	(%r13), %ecx
	subq	%rbp, %rax
	jbe	.LBB4_7
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$7, %ecx
	ja	.LBB4_36
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	%ecx, %ecx
	jmpq	*.LJTI4_0(,%rcx,8)
.LBB4_4:                                # %sw.bb
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	(%r12,%rbp), %eax
	incq	%rbp
	movq	%rbp, (%r15)
	testq	%rax, %rax
	je	.LBB4_37
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpb	$-32, %al
	setb	%cl
	cmpq	$1, %rax
	setne	%dl
	testb	%dl, %cl
	jne	.LBB4_22
# %bb.6:                                # %if.then9
                                        #   in Loop: Header=BB4_1 Depth=1
	movw	$257, 64(%r13)                  # imm = 0x101
	movb	$1, %cl
	movq	(%rsp), %rsi                    # 8-byte Reload
	jmp	.LBB4_23
	.p2align	4, 0x90
.LBB4_7:                                # %lor.rhs
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$6, %ecx
	jne	.LBB4_33
.LBB4_8:                                # %sw.bb100
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	8(%r13), %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%rbx, %r8
	callq	*16(%r13)
	movl	%eax, %ecx
	movq	(%r15), %rdx
	subq	%rbp, %rdx
	movq	56(%r13), %rsi
	movl	$9, %eax
	movq	%rsi, %rdi
	subq	%rdx, %rdi
	jb	.LBB4_35
# %bb.9:                                # %if.end109
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rdi, 56(%r13)
	cmpl	$1, %ecx
	jne	.LBB4_34
# %bb.10:                               # %if.end115
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	%rdx, %rsi
	jne	.LBB4_35
# %bb.11:                               # %cleanup122
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, (%r13)
	jmp	.LBB4_1
.LBB4_12:                               # %sw.bb78
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	1(%rbp), %rax
	movq	%rax, (%r15)
	movzbl	(%r12,%rbp), %eax
	movq	56(%r13), %rcx
	addq	%rcx, %rax
	incq	%rax
	movq	%rax, 56(%r13)
	movl	4(%r13), %eax
	movl	%eax, (%r13)
	jmp	.LBB4_1
.LBB4_13:                               # %sw.bb58
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	1(%rbp), %rax
	movq	%rax, (%r15)
	movzbl	(%r12,%rbp), %eax
	movq	8(%r13), %rdi
	movq	48(%r13), %rcx
	leaq	(%rax,%rcx), %rsi
	incq	%rsi
	movq	%rsi, 48(%r13)
	movl	$3, (%r13)
	callq	*32(%r13)
	jmp	.LBB4_1
.LBB4_14:                               # %sw.bb71
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	1(%rbp), %rax
	movq	%rax, (%r15)
	movzbl	(%r12,%rbp), %eax
	shll	$8, %eax
	movq	%rax, 56(%r13)
	movl	$4, (%r13)
	jmp	.LBB4_1
.LBB4_15:                               # %sw.bb126
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r12, %rdi
	movq	56(%r13), %r12
	addq	%r12, %rbp
	cmpq	%r12, %rax
	cmovbeq	%rbx, %rbp
	movq	(%r14), %rcx
	movq	24(%r14), %r9
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	16(%rsp), %r8                   # 8-byte Reload
	callq	lzma_bufcpy@PLT
	movq	%r12, %rcx
	subq	%rax, %rcx
	movq	%rcx, 56(%r13)
	movq	8(%r14), %rcx
	movq	%r14, %rdx
	cmpq	16(%r14), %rcx
	jbe	.LBB4_17
# %bb.16:                               # %if.then4.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rcx, 16(%rdx)
.LBB4_17:                               # %dict_write.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	%rax, %r12
	jne	.LBB4_33
# %bb.18:                               # %if.end132
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, (%r13)
	movq	%rdx, %r14
	movq	8(%rsp), %r12                   # 8-byte Reload
	jmp	.LBB4_1
.LBB4_19:                               # %sw.bb50
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	1(%rbp), %rax
	movq	%rax, (%r15)
	movzbl	(%r12,%rbp), %eax
	shll	$8, %eax
	addq	%rax, 48(%r13)
	movl	$2, (%r13)
	jmp	.LBB4_1
.LBB4_20:                               # %sw.bb88
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	1(%rbp), %rax
	movq	%rax, (%r15)
	movzbl	(%r12,%rbp), %esi
	movq	(%rsp), %rbp                    # 8-byte Reload
	movq	%rbp, %rdi
	callq	lzma_lzma_lclppb_decode@PLT
	testb	%al, %al
	jne	.LBB4_40
# %bb.21:                               # %if.end93
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	8(%r13), %rdi
	movq	%rbp, %rsi
	callq	*24(%r13)
	movl	$6, (%r13)
	jmp	.LBB4_1
.LBB4_22:                               # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	65(%r13), %ecx
	testb	%cl, %cl
	movq	(%rsp), %rsi                    # 8-byte Reload
	jne	.LBB4_40
.LBB4_23:                               # %if.end13
                                        #   in Loop: Header=BB4_1 Depth=1
	testb	%al, %al
	js	.LBB4_26
# %bb.24:                               # %if.else37
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpb	$2, %al
	ja	.LBB4_40
# %bb.25:                               # %if.end41
                                        #   in Loop: Header=BB4_1 Depth=1
	movabsq	$30064771075, %rax              # imm = 0x700000003
	movq	%rax, (%r13)
	jmp	.LBB4_31
.LBB4_26:                               # %if.then16
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	%eax, %edx
	andl	$31, %edx
	shll	$16, %edx
	movq	%rdx, 48(%r13)
	movl	$1, (%r13)
	cmpb	$-64, %al
	jb	.LBB4_28
# %bb.27:                               # %if.then21
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	$0, 64(%r13)
	movl	$5, 4(%r13)
	jmp	.LBB4_31
.LBB4_28:                               # %if.else23
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpb	$0, 64(%r13)
	jne	.LBB4_40
# %bb.29:                               # %if.else27
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$6, 4(%r13)
	cmpb	$-96, %al
	jb	.LBB4_31
# %bb.30:                               # %if.then31
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	8(%r13), %rdi
	callq	*24(%r13)
	movzbl	65(%r13), %ecx
.LBB4_31:                               # %if.end44
                                        #   in Loop: Header=BB4_1 Depth=1
	testb	$1, %cl
	je	.LBB4_1
# %bb.32:                               # %if.then47
	movb	$0, 65(%r13)
	movb	$1, 40(%r14)
.LBB4_33:
	xorl	%eax, %eax
	jmp	.LBB4_35
.LBB4_34:
	movl	%ecx, %eax
	jmp	.LBB4_35
.LBB4_40:
	movl	$9, %eax
	jmp	.LBB4_35
.LBB4_36:
	movl	$11, %eax
	jmp	.LBB4_35
.LBB4_37:
	movl	$1, %eax
.LBB4_35:                               # %cleanup134
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
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
	retq
.Lfunc_end4:
	.size	lzma2_decode, .Lfunc_end4-lzma2_decode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI4_0:
	.quad	.LBB4_4
	.quad	.LBB4_19
	.quad	.LBB4_13
	.quad	.LBB4_14
	.quad	.LBB4_12
	.quad	.LBB4_20
	.quad	.LBB4_8
	.quad	.LBB4_15
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function lzma2_decoder_end
	.type	lzma2_decoder_end,@function
lzma2_decoder_end:                      # @lzma2_decoder_end
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	8(%rdi), %rdi
	callq	lzma_free@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Lfunc_end5:
	.size	lzma2_decoder_end, .Lfunc_end5-lzma2_decoder_end
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
