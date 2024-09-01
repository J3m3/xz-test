	.text
	.file	"lz_decoder.c"
	.globl	lzma_lz_decoder_init            # -- Begin function lzma_lz_decoder_init
	.p2align	4, 0x90
	.type	lzma_lz_decoder_init,@function
lzma_lz_decoder_init:                   # @lzma_lz_decoder_init
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB0_3
# %bb.1:                                # %if.then
	movl	$4272, %edi                     # imm = 0x10B0
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB0_13
# %bb.2:                                # %if.end
	movq	$lz_decode, 24(%r15)
	movq	$lz_decoder_end, 32(%r15)
	movq	$0, (%rax)
	movq	(%r15), %rax
	movq	$0, 32(%rax)
	movq	(%r15), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%rax)
	movups	%xmm0, 48(%rax)
	movq	$0, 80(%rax)
	movq	(%r15), %rax
	movq	$0, 88(%rax)
	movq	$-1, 96(%rax)
	movups	%xmm0, 104(%rax)
	movups	%xmm0, 120(%rax)
	movups	%xmm0, 136(%rax)
	movq	(%r15), %rdi
.LBB0_3:                                # %if.end18
	addq	$48, %rdi
	movq	16(%rbx), %rdx
	movq	%rsp, %rcx
	movq	%r14, %rsi
	callq	*%r12
	testl	%eax, %eax
	jne	.LBB0_14
# %bb.4:                                # %do.end
	movq	(%rsp), %rdx
	movl	$4096, %ecx                     # imm = 0x1000
	cmpq	$4096, %rdx                     # imm = 0x1000
	jb	.LBB0_6
# %bb.5:                                # %if.end28
	movl	$5, %eax
	movq	%rdx, %rcx
	cmpq	$-16, %rdx
	ja	.LBB0_14
.LBB0_6:                                # %if.end32
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rcx, (%rsp)
	movq	(%r15), %rax
	cmpq	%rcx, 32(%rax)
	je	.LBB0_9
# %bb.7:                                # %if.then40
	movq	(%rax), %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
	movq	(%rsp), %rdi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	movq	(%r15), %rcx
	movq	%rax, (%rcx)
	movq	(%r15), %rax
	cmpq	$0, (%rax)
	je	.LBB0_13
# %bb.8:                                # %if.end54
	movq	(%rsp), %rcx
	movq	%rcx, 32(%rax)
	movq	(%r15), %rax
	movq	32(%rax), %rcx
.LBB0_9:                                # %if.end59
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	movq	(%rax), %rdx
	movb	$0, -1(%rdx,%rcx)
	movb	$0, 40(%rax)
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rax
	testq	%rsi, %rsi
	setne	%cl
	testq	%rax, %rax
	setne	%dl
	andb	%cl, %dl
	cmpb	$1, %dl
	jne	.LBB0_11
# %bb.10:                               # %if.then63
	movq	(%rsp), %r12
	cmpq	%r12, %rax
	cmovbq	%rax, %r12
	subq	%r12, %rax
	movq	(%r15), %rcx
	movq	(%rcx), %rdi
	addq	%rax, %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
	movq	(%r15), %rax
	movq	%r12, 8(%rax)
	movq	(%r15), %rax
	movq	%r12, 16(%rax)
.LBB0_11:                               # %if.end78
	movq	(%r15), %rax
	movb	$0, 152(%rax)
	movq	(%r15), %rax
	movb	$0, 153(%rax)
	movq	(%r15), %rax
	movq	$0, 160(%rax)
	movq	(%r15), %rax
	movq	$0, 168(%rax)
	movq	(%r15), %rdi
	addq	$88, %rdi
	addq	$24, %rbx
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	lzma_next_filter_init@PLT
	jmp	.LBB0_14
.LBB0_13:
	movl	$5, %eax
.LBB0_14:                               # %return
	addq	$24, %rsp
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
.Lfunc_end0:
	.size	lzma_lz_decoder_init, .Lfunc_end0-lzma_lz_decoder_init
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lz_decode
.LCPI1_0:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	lz_decode,@function
lz_decode:                              # @lz_decode
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
	movq	%r9, 64(%rsp)                   # 8-byte Spill
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	movq	%rdi, %rsi
	movq	152(%rsp), %rcx
	movq	144(%rsp), %rax
	cmpq	$0, 112(%rdi)
	movq	%rdi, (%rsp)                    # 8-byte Spill
	je	.LBB1_8
# %bb.1:                                # %while.cond.preheader
	movq	(%rax), %rbp
	cmpq	%rcx, %rbp
	jae	.LBB1_31
# %bb.2:                                # %while.body.lr.ph
	leaq	160(%rsi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	168(%rsi), %r14
	leaq	176(%rsi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leaq	8(%rsi), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_27:                               # %decode_buffer.exit139
                                        #   in Loop: Header=BB1_3 Depth=1
	testl	%r12d, %r12d
	je	.LBB1_35
# %bb.28:                               # %decode_buffer.exit139
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpl	$1, %r12d
	jne	.LBB1_38
# %bb.29:                               # %if.then50
                                        #   in Loop: Header=BB1_3 Depth=1
	movb	$1, 153(%rsi)
.LBB1_30:                               # %cleanup64
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpq	%rcx, %rbp
	movq	80(%rsp), %r14                  # 8-byte Reload
	jae	.LBB1_31
.LBB1_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
	cmpb	$0, 152(%rsi)
	jne	.LBB1_18
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	cmpq	(%r14), %rax
	jne	.LBB1_18
# %bb.5:                                # %if.then4
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	88(%rsi), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%rsi, %r10
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	64(%rsp), %r9                   # 8-byte Reload
	movl	168(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$4096                           # imm = 0x1000
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*112(%r10)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	testl	%eax, %eax
	je	.LBB1_17
# %bb.6:                                # %if.then4
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	%eax, %r12d
	cmpl	$1, %eax
	jne	.LBB1_38
# %bb.7:                                # %if.then18
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	(%rsp), %rsi                    # 8-byte Reload
	movb	$1, 152(%rsi)
	movq	152(%rsp), %rcx
	jmp	.LBB1_18
.LBB1_17:                               # %lor.lhs.false
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpq	$0, (%r14)
	movq	152(%rsp), %rcx
	movq	(%rsp), %rsi                    # 8-byte Reload
	je	.LBB1_31
	.p2align	4, 0x90
.LBB1_18:                               # %if.end27
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	168(%rsi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	cmpb	$1, 153(%rsi)
	je	.LBB1_19
# %bb.21:                               # %if.end39
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rbp, %r13
	.p2align	4, 0x90
.LBB1_22:                               # %while.cond.i112
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rsi), %r15
	movq	32(%rsi), %rax
	cmpq	%rax, %r15
	jne	.LBB1_24
# %bb.23:                               # %if.then.i138
                                        #   in Loop: Header=BB1_22 Depth=2
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	$0, (%rdx)
	xorl	%r15d, %r15d
.LBB1_24:                               # %if.end.i114
                                        #   in Loop: Header=BB1_22 Depth=2
	subq	%r13, %rcx
	subq	%r15, %rax
	cmpq	%rax, %rcx
	cmovbq	%rcx, %rax
	addq	%r15, %rax
	movq	%rax, 24(%rsi)
	movq	48(%rsi), %rdi
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	(%rsp), %rax                    # 8-byte Reload
	callq	*56(%rax)
	movl	%eax, %ebx
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %r12
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	8(%rax), %r14
	movq	%r14, %rbp
	subq	%r15, %rbp
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r13), %rdi
	addq	%r12, %r15
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memcpy@PLT
	movq	(%rsp), %rsi                    # 8-byte Reload
	addq	%r13, %rbp
	movq	144(%rsp), %rax
	movq	%rbp, (%rax)
	cmpb	$1, 40(%rsi)
	jne	.LBB1_32
# %bb.25:                               # %if.then31.i133
                                        #   in Loop: Header=BB1_22 Depth=2
	movq	48(%rsp), %rax                  # 8-byte Reload
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	32(%rsi), %rax
	movb	$0, -1(%r12,%rax)
	movb	$0, 40(%rsi)
	testl	%ebx, %ebx
	movq	152(%rsp), %rcx
	movl	%ebx, %r12d
	jne	.LBB1_27
# %bb.26:                               # %if.then31.i133
                                        #   in Loop: Header=BB1_22 Depth=2
	movq	%rbp, %r13
	cmpq	%rcx, %rbp
	jne	.LBB1_22
	jmp	.LBB1_27
	.p2align	4, 0x90
.LBB1_32:                               # %if.else.i125
                                        #   in Loop: Header=BB1_22 Depth=2
	testl	%ebx, %ebx
	movq	152(%rsp), %rcx
	movl	%ebx, %r12d
	jne	.LBB1_27
# %bb.33:                               # %if.else.i125
                                        #   in Loop: Header=BB1_22 Depth=2
	cmpq	%rcx, %rbp
	je	.LBB1_27
# %bb.34:                               # %lor.lhs.false39.i129
                                        #   in Loop: Header=BB1_22 Depth=2
	movq	%rbp, %r13
	cmpq	32(%rsi), %r14
	jae	.LBB1_22
.LBB1_35:                               # %if.else55
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpb	$1, 152(%rsi)
	jne	.LBB1_30
# %bb.36:                               # %if.else55
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpq	%rcx, %rbp
	jae	.LBB1_30
# %bb.37:
	movl	$9, %r12d
	jmp	.LBB1_38
.LBB1_8:                                # %if.then
	leaq	8(%rsi), %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	(%rax), %rbp
	.p2align	4, 0x90
.LBB1_9:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %r14
	movq	32(%rsi), %rax
	cmpq	%rax, %r14
	jne	.LBB1_11
# %bb.10:                               # %if.then.i
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	$0, (%rdx)
	xorl	%r14d, %r14d
.LBB1_11:                               # %if.end.i
                                        #   in Loop: Header=BB1_9 Depth=1
	subq	%rbp, %rcx
	subq	%r14, %rax
	cmpq	%rax, %rcx
	cmovbq	%rcx, %rax
	addq	%r14, %rax
	movq	%rax, 24(%rsi)
	movq	48(%rsi), %rdi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	(%rsp), %rax                    # 8-byte Reload
	callq	*56(%rax)
	movl	%eax, %r12d
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rax), %r13
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	8(%rax), %r15
	movq	%r15, %rbx
	subq	%r14, %r15
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rbp), %rdi
	addq	%r13, %r14
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	movq	(%rsp), %rsi                    # 8-byte Reload
	addq	%r15, %rbp
	movq	144(%rsp), %rax
	movq	%rbp, (%rax)
	cmpb	$1, 40(%rsi)
	jne	.LBB1_14
# %bb.12:                               # %if.then31.i
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	32(%rsi), %rax
	movb	$0, -1(%r13,%rax)
	movb	$0, 40(%rsi)
	testl	%r12d, %r12d
	jne	.LBB1_38
# %bb.13:                               # %if.then31.i
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	152(%rsp), %rcx
	cmpq	%rcx, %rbp
	jne	.LBB1_9
	jmp	.LBB1_38
	.p2align	4, 0x90
.LBB1_14:                               # %if.else.i
                                        #   in Loop: Header=BB1_9 Depth=1
	testl	%r12d, %r12d
	jne	.LBB1_38
# %bb.15:                               # %if.else.i
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	152(%rsp), %rcx
	cmpq	%rcx, %rbp
	je	.LBB1_38
# %bb.16:                               # %lor.lhs.false39.i
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpq	32(%rsi), %rbx
	jae	.LBB1_9
.LBB1_31:
	xorl	%r12d, %r12d
.LBB1_38:                               # %cleanup67
	movl	%r12d, %eax
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
.LBB1_19:                               # %if.then29
	.cfi_def_cfa_offset 144
	movl	$9, %r12d
	cmpq	$0, 8(%rsp)                     # 8-byte Folded Reload
	jne	.LBB1_38
# %bb.20:                               # %if.end34
	movzbl	152(%rsi), %r12d
	jmp	.LBB1_38
.Lfunc_end1:
	.size	lz_decode, .Lfunc_end1-lz_decode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lz_decoder_end
	.type	lz_decoder_end,@function
lz_decoder_end:                         # @lz_decoder_end
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
	addq	$88, %rdi
	callq	lzma_next_end@PLT
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	callq	lzma_free@PLT
	movq	48(%r14), %rdi
	movq	80(%r14), %rax
	movq	%rbx, %rsi
	testq	%rax, %rax
	je	.LBB2_2
# %bb.1:                                # %if.then
	callq	*%rax
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	callq	lzma_free@PLT
.LBB2_3:                                # %if.end
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
	.size	lz_decoder_end, .Lfunc_end2-lz_decoder_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lz_decoder_memusage        # -- Begin function lzma_lz_decoder_memusage
	.p2align	4, 0x90
	.type	lzma_lz_decoder_memusage,@function
lzma_lz_decoder_memusage:               # @lzma_lz_decoder_memusage
	.cfi_startproc
# %bb.0:                                # %entry
	leaq	4272(%rdi), %rax
	retq
.Lfunc_end3:
	.size	lzma_lz_decoder_memusage, .Lfunc_end3-lzma_lz_decoder_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lz_decoder_uncompressed    # -- Begin function lzma_lz_decoder_uncompressed
	.p2align	4, 0x90
	.type	lzma_lz_decoder_uncompressed,@function
lzma_lz_decoder_uncompressed:           # @lzma_lz_decoder_uncompressed
	.cfi_startproc
# %bb.0:                                # %entry
	movq	48(%rdi), %rax
	movq	72(%rdi), %rcx
	movq	%rax, %rdi
	jmpq	*%rcx                           # TAILCALL
.Lfunc_end4:
	.size	lzma_lz_decoder_uncompressed, .Lfunc_end4-lzma_lz_decoder_uncompressed
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
