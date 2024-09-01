	.text
	.file	"alone_decoder.c"
	.globl	lzma_alone_decoder_init         # -- Begin function lzma_alone_decoder_init
	.p2align	4, 0x90
	.type	lzma_alone_decoder_init,@function
lzma_alone_decoder_init:                # @lzma_alone_decoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpq	$lzma_alone_decoder_init, 16(%rdi)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	lzma_next_end@PLT
.LBB0_2:                                # %if.end
	movq	$lzma_alone_decoder_init, 16(%r14)
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.4:                                # %if.end4
	movq	(%r14), %rax
	testq	%rax, %rax
	jne	.LBB0_8
# %bb.5:                                # %if.then6
	movl	$216, %edi
	movq	%r15, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB0_6
# %bb.7:                                # %if.end11
	movq	$alone_decode, 24(%r14)
	movq	$alone_decoder_end, 32(%r14)
	movq	$alone_decoder_memconfig, 48(%r14)
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	(%r14), %rax
.LBB0_8:                                # %if.end19
	movl	$0, 64(%rax)
	movq	(%r14), %rax
	movb	%bpl, 68(%rax)
	movq	(%r14), %rax
	movq	$0, 72(%rax)
	movq	(%r14), %rax
	movl	$0, 104(%rax)
	movq	(%r14), %rax
	movq	$0, 112(%rax)
	movq	(%r14), %rax
	movl	$0, 120(%rax)
	movq	(%r14), %rax
	movq	$0, 80(%rax)
	movq	(%r14), %rax
	movq	%rbx, 88(%rax)
	movq	(%r14), %rax
	movq	$32768, 96(%rax)                # imm = 0x8000
	xorl	%eax, %eax
	jmp	.LBB0_9
.LBB0_3:
	movl	$11, %eax
.LBB0_9:                                # %return
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_6:
	.cfi_def_cfa_offset 48
	movl	$5, %eax
	jmp	.LBB0_9
.Lfunc_end0:
	.size	lzma_alone_decoder_init, .Lfunc_end0-lzma_alone_decoder_init
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function alone_decode
.LCPI1_0:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	alone_decode,@function
alone_decode:                           # @alone_decode
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 24(%rsp)                   # 8-byte Spill
	movq	%rcx, %r13
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	152(%rsp), %rcx
	movq	144(%rsp), %rax
	xorl	%ebx, %ebx
	cmpq	%rcx, (%rax)
	jae	.LBB1_4
# %bb.1:                                # %land.rhs.lr.ph
	movq	%r8, %r12
	movq	%rdx, %rbp
	movq	%rdi, %r14
	movl	64(%rdi), %ecx
	cmpl	$4, %ecx
	jne	.LBB1_5
.LBB1_2:                                # %sw.bb98
	movl	160(%rsp), %eax
	movq	(%r14), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%rbp, %rdx
	movq	%r13, %rcx
	movq	%r12, %r8
	movq	32(%rsp), %r9                   # 8-byte Reload
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	*24(%r14)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
.LBB1_3:                                # %cleanup95
	movl	%eax, %ebx
.LBB1_4:                                # %cleanup103
	movl	%ebx, %eax
	addq	$88, %rsp
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
.LBB1_5:                                # %lor.rhs.preheader
	.cfi_def_cfa_offset 144
	leaq	104(%r14), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB1_9
.LBB1_6:                                # %if.end39
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	$0, 72(%r14)
	movl	$2, 64(%r14)
	movl	$2, %ecx
.LBB1_7:                                # %if.end42
                                        #   in Loop: Header=BB1_9 Depth=1
	incq	%r15
	movq	%r15, (%r13)
.LBB1_8:                                # %sw.epilog
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpl	$4, %ecx
	je	.LBB1_2
.LBB1_9:                                # %lor.rhs
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r15
	cmpq	%r12, %r15
	jae	.LBB1_4
# %bb.10:                               # %while.body
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpl	$3, %ecx
	ja	.LBB1_28
# %bb.11:                               # %while.body
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	%ecx, %eax
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_12:                               # %sw.bb
                                        #   in Loop: Header=BB1_9 Depth=1
	movzbl	(%rbp,%r15), %esi
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	lzma_lzma_lclppb_decode@PLT
	testb	%al, %al
	jne	.LBB1_29
# %bb.13:                               # %if.end
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	$1, 64(%r14)
	incq	%r15
	movq	%r15, (%r13)
	movl	$1, %ecx
	jmp	.LBB1_8
	.p2align	4, 0x90
.LBB1_14:                               # %sw.bb44
                                        #   in Loop: Header=BB1_9 Depth=1
	movzbl	(%rbp,%r15), %eax
	movq	72(%r14), %rdx
	leal	(,%rdx,8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rax
	orq	80(%r14), %rax
	movq	%rax, 80(%r14)
	incq	%r15
	movq	%r15, (%r13)
	incq	%rdx
	movq	%rdx, 72(%r14)
	movl	$2, %ecx
	cmpq	$8, %rdx
	jb	.LBB1_8
# %bb.15:                               # %if.end57
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpb	$1, 68(%r14)
	jne	.LBB1_17
# %bb.16:                               # %if.end57
                                        #   in Loop: Header=BB1_9 Depth=1
	movabsq	$-274877906945, %rcx            # imm = 0xFFFFFFBFFFFFFFFF
	addq	%rcx, %rax
	incq	%rax
	cmpq	%rcx, %rax
	jb	.LBB1_29
.LBB1_17:                               # %if.end70
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	lzma_lzma_decoder_memusage@PLT
	addq	$32768, %rax                    # imm = 0x8000
	movq	%rax, 96(%r14)
	movq	$0, 72(%r14)
	movl	$3, 64(%r14)
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_18:                               # %while.body.sw.bb75_crit_edge
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	96(%r14), %rax
.LBB1_19:                               # %sw.bb75
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpq	88(%r14), %rax
	ja	.LBB1_27
# %bb.20:                               # %if.end80
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	$0, 32(%rsp)
	movq	lzma_lzma_decoder_init@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, 48(%rsp)
	leaq	56(%rsp), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	leaq	32(%rsp), %rdx
	callq	lzma_next_filter_init@PLT
	testl	%eax, %eax
	jne	.LBB1_3
# %bb.21:                               # %cleanup95.thread
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	(%r14), %rdi
	movq	80(%r14), %rsi
	callq	lzma_lz_decoder_uncompressed@PLT
	movl	$4, 64(%r14)
	movl	$4, %ecx
	jmp	.LBB1_8
	.p2align	4, 0x90
.LBB1_22:                               # %sw.bb5
                                        #   in Loop: Header=BB1_9 Depth=1
	movzbl	(%rbp,%r15), %eax
	movq	72(%r14), %rdx
	leal	(,%rdx,8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rax
	orl	104(%r14), %eax
	movl	%eax, 104(%r14)
	incq	%rdx
	movq	%rdx, 72(%r14)
	movl	$1, %ecx
	cmpq	$4, %rdx
	jne	.LBB1_7
# %bb.23:                               # %if.then14
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpb	$1, 68(%r14)
	jne	.LBB1_6
# %bb.24:                               # %if.then14
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpl	$-1, %eax
	je	.LBB1_6
# %bb.25:                               # %if.then20
                                        #   in Loop: Header=BB1_9 Depth=1
	leal	-1(%rax), %ecx
	movl	%ecx, %edx
	shrl	$2, %edx
	orl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$3, %ecx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$4, %edx
	orl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$8, %ecx
	orl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$16, %edx
	orl	%ecx, %edx
	incl	%edx
	cmpl	%eax, %edx
	je	.LBB1_6
.LBB1_29:
	movl	$7, %ebx
	jmp	.LBB1_4
.LBB1_27:
	movl	$6, %ebx
	jmp	.LBB1_4
.LBB1_28:
	movl	$11, %ebx
	jmp	.LBB1_4
.Lfunc_end1:
	.size	alone_decode, .Lfunc_end1-alone_decode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_12
	.quad	.LBB1_22
	.quad	.LBB1_14
	.quad	.LBB1_18
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function alone_decoder_end
	.type	alone_decoder_end,@function
alone_decoder_end:                      # @alone_decoder_end
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
	callq	lzma_next_end@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Lfunc_end2:
	.size	alone_decoder_end, .Lfunc_end2-alone_decoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function alone_decoder_memconfig
	.type	alone_decoder_memconfig,@function
alone_decoder_memconfig:                # @alone_decoder_memconfig
	.cfi_startproc
# %bb.0:                                # %entry
	movq	96(%rdi), %rax
	movq	%rax, (%rsi)
	movq	88(%rdi), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB3_3
# %bb.1:                                # %if.then
	movl	$6, %eax
	cmpq	%rcx, 96(%rdi)
	ja	.LBB3_3
# %bb.2:                                # %if.end
	movq	%rcx, 88(%rdi)
	xorl	%eax, %eax
.LBB3_3:                                # %cleanup
	retq
.Lfunc_end3:
	.size	alone_decoder_memconfig, .Lfunc_end3-alone_decoder_memconfig
	.cfi_endproc
                                        # -- End function
	.globl	lzma_alone_decoder              # -- Begin function lzma_alone_decoder
	.p2align	4, 0x90
	.type	lzma_alone_decoder,@function
lzma_alone_decoder:                     # @lzma_alone_decoder
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	lzma_strm_init@PLT
	testl	%eax, %eax
	jne	.LBB4_11
# %bb.1:                                # %do.end
	movq	48(%rbx), %r12
	movq	56(%rbx), %r15
	cmpq	$lzma_alone_decoder_init, 16(%r15)
	je	.LBB4_3
# %bb.2:                                # %if.then.i
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	lzma_next_end@PLT
.LBB4_3:                                # %if.end.i
	movq	$lzma_alone_decoder_init, 16(%r15)
	testq	%r14, %r14
	je	.LBB4_4
# %bb.5:                                # %if.end4.i
	movq	(%r15), %rax
	testq	%rax, %rax
	jne	.LBB4_10
# %bb.6:                                # %if.then6.i
	movl	$216, %edi
	movq	%r12, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB4_7
# %bb.9:                                # %if.end11.i
	movq	$alone_decode, 24(%r15)
	movq	$alone_decoder_end, 32(%r15)
	movq	$alone_decoder_memconfig, 48(%r15)
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	(%r15), %rax
.LBB4_10:                               # %do.end10
	movl	$0, 64(%rax)
	movq	(%r15), %rax
	movb	$0, 68(%rax)
	movq	(%r15), %rax
	movq	$0, 72(%rax)
	movq	(%r15), %rax
	movl	$0, 104(%rax)
	movq	(%r15), %rax
	movq	$0, 112(%rax)
	movq	(%r15), %rax
	movl	$0, 120(%rax)
	movq	(%r15), %rax
	movq	$0, 80(%rax)
	movq	(%r15), %rax
	movq	%r14, 88(%rax)
	movq	(%r15), %rax
	movq	$32768, 96(%rax)                # imm = 0x8000
	movq	56(%rbx), %rax
	movb	$1, 80(%rax)
	movq	56(%rbx), %rax
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	jmp	.LBB4_11
.LBB4_4:
	movl	$11, %ebp
.LBB4_8:                                # %cleanup7
	movq	%rbx, %rdi
	callq	lzma_end@PLT
	movl	%ebp, %eax
.LBB4_11:                               # %return
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB4_7:
	.cfi_def_cfa_offset 48
	movl	$5, %ebp
	jmp	.LBB4_8
.Lfunc_end4:
	.size	lzma_alone_decoder, .Lfunc_end4-lzma_alone_decoder
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
