	.text
	.file	"lz_encoder.c"
	.globl	lzma_lz_encoder_memusage        # -- Begin function lzma_lz_encoder_memusage
	.p2align	4, 0x90
	.type	lzma_lz_encoder_memusage,@function
lzma_lz_encoder_memusage:               # @lzma_lz_encoder_memusage
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, %rdx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movq	$0, 112(%rsp)
	movq	%rsp, %rdi
	xorl	%esi, %esi
	callq	lz_encoder_prepare
	movl	%eax, %ecx
	movq	$-1, %rax
	testb	%cl, %cl
	jne	.LBB0_2
# %bb.1:                                # %if.end
	movl	8(%rsp), %eax
	movl	112(%rsp), %ecx
	addl	108(%rsp), %ecx
	leaq	(%rax,%rcx,4), %rax
	addq	$216, %rax
.LBB0_2:                                # %cleanup
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_lz_encoder_memusage, .Lfunc_end0-lzma_lz_encoder_memusage
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lz_encoder_prepare
	.type	lz_encoder_prepare,@function
lz_encoder_prepare:                     # @lz_encoder_prepare
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
	movq	8(%rdx), %rax
	leaq	-1610612737(%rax), %rcx
	movb	$1, %bl
	cmpq	$-1610608641, %rcx              # imm = 0xA0000FFF
	jb	.LBB1_21
# %bb.1:                                # %lor.lhs.false3
	movq	32(%rdx), %rcx
	cmpq	24(%rdx), %rcx
	ja	.LBB1_21
# %bb.2:                                # %if.end
	addl	(%rdx), %eax
	movl	%eax, 12(%rdi)
	movl	24(%rdx), %r8d
	addl	16(%rdx), %r8d
	movl	%r8d, 16(%rdi)
	movq	8(%rdx), %r9
	movq	24(%rdx), %r10
	shrq	%r9
	cmpl	$1073741825, %r9d               # imm = 0x40000001
	setae	%cl
	shrl	%cl, %r9d
	addq	(%rdx), %r10
	addq	16(%rdx), %r10
	shrq	%r10
	movl	8(%rdi), %ecx
	addl	%eax, %r8d
	addl	%r9d, %r8d
	addl	%r10d, %r8d
	addl	$524288, %r8d                   # imm = 0x80000
	movl	%r8d, 8(%rdi)
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_5
# %bb.3:                                # %if.end
	cmpl	%r8d, %ecx
	je	.LBB1_5
# %bb.4:                                # %if.then36
	movq	%rdi, %r15
	movq	%rax, %rdi
	movq	%rsi, %r14
	movq	%rdx, %r12
	callq	lzma_free@PLT
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%r15, %rdi
	movq	$0, (%r15)
.LBB1_5:                                # %if.end39
	movl	24(%rdx), %eax
	movl	%eax, 100(%rdi)
	movl	32(%rdx), %r8d
	movl	%r8d, 96(%rdi)
	movl	8(%rdx), %eax
	incl	%eax
	movl	%eax, 84(%rdi)
	movl	40(%rdx), %ecx
	addl	$-3, %ecx
	cmpl	$17, %ecx
	ja	.LBB1_21
# %bb.6:                                # %if.end39
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_7:
	movq	lzma_mf_hc3_skip@GOTPCREL(%rip), %rcx
	movq	lzma_mf_hc3_find@GOTPCREL(%rip), %r9
	jmp	.LBB1_12
.LBB1_9:                                # %sw.bb52
	movq	lzma_mf_bt2_skip@GOTPCREL(%rip), %rcx
	movq	lzma_mf_bt2_find@GOTPCREL(%rip), %r9
	jmp	.LBB1_12
.LBB1_8:                                # %sw.bb49
	movq	lzma_mf_hc4_skip@GOTPCREL(%rip), %rcx
	movq	lzma_mf_hc4_find@GOTPCREL(%rip), %r9
	jmp	.LBB1_12
.LBB1_10:                               # %sw.bb55
	movq	lzma_mf_bt3_skip@GOTPCREL(%rip), %rcx
	movq	lzma_mf_bt3_find@GOTPCREL(%rip), %r9
	jmp	.LBB1_12
.LBB1_11:                               # %sw.bb58
	movq	lzma_mf_bt4_skip@GOTPCREL(%rip), %rcx
	movq	lzma_mf_bt4_find@GOTPCREL(%rip), %r9
.LBB1_12:                               # %sw.epilog
	movq	%r9, 48(%rdi)
	movq	%rcx, 56(%rdi)
	movl	40(%rdx), %ebp
	movl	%ebp, %ecx
	andl	$15, %ecx
	cmpl	%r8d, %ecx
	ja	.LBB1_21
# %bb.13:                               # %if.end66
	andl	$16, %ebp
	movl	$65535, %r8d                    # imm = 0xFFFF
	cmpl	$2, %ecx
	je	.LBB1_16
# %bb.14:                               # %if.else
	movl	8(%rdx), %r8d
	decl	%r8d
	movl	%r8d, %r9d
	shrl	%r9d
	orl	%r8d, %r9d
	movl	%r9d, %r10d
	shrl	$2, %r10d
	orl	%r9d, %r10d
	movl	%r10d, %r8d
	shrl	$4, %r8d
	orl	%r10d, %r8d
	movl	%r8d, %r9d
	shrl	$9, %r9d
	shrl	%r8d
	orl	%r9d, %r8d
	orl	$65535, %r8d                    # imm = 0xFFFF
	cmpl	$16777217, %r8d                 # imm = 0x1000001
	jb	.LBB1_16
# %bb.15:                               # %if.then86
	shrl	%r8d
	cmpl	$3, %ecx
	movl	$16777215, %r9d                 # imm = 0xFFFFFF
	cmovel	%r9d, %r8d
.LBB1_16:                               # %if.end94
	movl	%r8d, 88(%rdi)
	xorl	%r9d, %r9d
	cmpl	$3, %ecx
	setae	%r9b
	shll	$10, %r9d
	addl	%r8d, %r9d
	xorl	%r8d, %r8d
	cmpl	$4, %ecx
	setae	%r8b
	shll	$16, %r8d
	leal	(%r8,%r9), %r10d
	incl	%r10d
	addl	%r9d, %r8d
	movl	112(%rdi), %r9d
	addl	108(%rdi), %r9d
	movl	%ebp, %ecx
	shrl	$4, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movl	%r10d, 108(%rdi)
	movl	%eax, 112(%rdi)
	addl	%r8d, %eax
	incl	%eax
	cmpl	%eax, %r9d
	je	.LBB1_18
# %bb.17:                               # %if.then117
	movq	64(%rdi), %rax
	movq	%rdi, %rbx
	movq	%rax, %rdi
	movq	%rdx, %r14
	callq	lzma_free@PLT
	movq	%r14, %rdx
	movq	%rbx, %rdi
	movq	$0, 64(%rbx)
.LBB1_18:                               # %if.end119
	movl	44(%rdx), %eax
	movl	%eax, 92(%rdi)
	testl	%eax, %eax
	jne	.LBB1_20
# %bb.19:                               # %if.then124
	testl	%ebp, %ebp
	sete	%cl
	movl	96(%rdi), %eax
	incb	%cl
	shrl	%cl, %eax
	leal	4(%rax), %ecx
	addl	$16, %eax
	testl	%ebp, %ebp
	cmovel	%ecx, %eax
	movl	%eax, 92(%rdi)
.LBB1_20:                               # %return
	xorl	%ebx, %ebx
.LBB1_21:                               # %return
	movl	%ebx, %eax
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
.Lfunc_end1:
	.size	lz_encoder_prepare, .Lfunc_end1-lz_encoder_prepare
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_7
	.quad	.LBB1_8
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_9
	.quad	.LBB1_10
	.quad	.LBB1_11
                                        # -- End function
	.text
	.globl	lzma_lz_encoder_init            # -- Begin function lzma_lz_encoder_init
	.p2align	4, 0x90
	.type	lzma_lz_encoder_init,@function
lzma_lz_encoder_init:                   # @lzma_lz_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB2_3
# %bb.1:                                # %if.then
	movl	$216, %edi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB2_13
# %bb.2:                                # %if.end
	movq	$lz_encode, 24(%r15)
	movq	$lz_encoder_end, 32(%r15)
	movq	$lz_encoder_update, 56(%r15)
	movq	$0, (%rax)
	movq	(%r15), %rax
	movq	$0, 8(%rax)
	movq	(%r15), %rax
	movq	$0, 16(%rax)
	movq	(%r15), %rax
	movq	$0, 32(%rax)
	movq	(%r15), %rax
	movq	$0, 96(%rax)
	movq	(%r15), %rax
	movl	$0, 140(%rax)
	movq	(%r15), %rax
	movl	$0, 144(%rax)
	movq	(%r15), %rax
	movq	$0, 152(%rax)
	movq	$-1, 160(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 168(%rax)
	movups	%xmm0, 184(%rax)
	movups	%xmm0, 200(%rax)
	movq	(%r15), %rdi
.LBB2_3:                                # %if.end26
	movq	16(%rbx), %rdx
	movq	%rsp, %rcx
	movq	%r14, %rsi
	callq	*%r12
	testl	%eax, %eax
	jne	.LBB2_14
# %bb.4:                                # %do.end
	movq	(%r15), %rdi
	addq	$32, %rdi
	movq	%rsp, %rdx
	movq	%r14, %rsi
	callq	lz_encoder_prepare
	movl	%eax, %ecx
	movl	$8, %eax
	testb	%cl, %cl
	jne	.LBB2_14
# %bb.5:                                # %if.end37
	movq	(%r15), %r13
	cmpq	$0, 32(%r13)
	jne	.LBB2_7
# %bb.6:                                # %if.then.i
	movl	40(%r13), %edi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, 32(%r13)
	testq	%rax, %rax
	je	.LBB2_13
.LBB2_7:                                # %if.end6.i
	movl	116(%r13), %eax
	movl	%eax, 52(%r13)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 56(%r13)
	movl	$0, 72(%r13)
	movq	96(%r13), %rdi
	testq	%rdi, %rdi
	jne	.LBB2_9
# %bb.8:                                # %if.then10.i
	movl	144(%r13), %edi
	addl	140(%r13), %edi
	shlq	$2, %rdi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, %rdi
	movq	%rax, 96(%r13)
	testq	%rax, %rax
	je	.LBB2_13
.LBB2_9:                                # %if.end18.i
	movl	140(%r13), %edx
	leaq	(%rdi,%rdx,4), %rax
	movq	%rax, 104(%r13)
	movl	$0, 112(%r13)
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB2_12
# %bb.10:                               # %land.lhs.true.i
	movl	56(%rsp), %eax
	testq	%rax, %rax
	je	.LBB2_12
# %bb.11:                               # %if.then29.i
	leaq	32(%r13), %r12
	movl	40(%r13), %edx
	cmpl	%edx, %eax
	cmovbl	%eax, %edx
	movl	%edx, 68(%r13)
	movq	32(%r13), %rdi
	addq	%rax, %rsi
	subq	%rdx, %rsi
	callq	memcpy@PLT
	movl	$1, 136(%r13)
	movl	68(%r13), %esi
	movq	%r12, %rdi
	callq	*88(%r13)
.LBB2_12:                               # %if.end42
	movl	$0, 136(%r13)
	movl	$152, %edi
	addq	(%r15), %rdi
	addq	$24, %rbx
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	lzma_next_filter_init@PLT
	jmp	.LBB2_14
.LBB2_13:
	movl	$5, %eax
.LBB2_14:                               # %return
	addq	$64, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	lzma_lz_encoder_init, .Lfunc_end2-lzma_lz_encoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lz_encode
	.type	lz_encode,@function
lz_encode:                              # @lz_encode
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	%rdi, %r12
	movq	104(%rsp), %rbp
	movq	96(%rsp), %r13
	leaq	32(%rdi), %r14
	jmp	.LBB3_1
.LBB3_21:                               # %fill_window.exit
                                        #   in Loop: Header=BB3_1 Depth=1
	testl	%r15d, %r15d
	jne	.LBB3_24
	.p2align	4, 0x90
.LBB3_22:                               # %if.end10
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	(%r12), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	%rbp, %r8
	callq	*8(%r12)
	testl	%eax, %eax
	jne	.LBB3_23
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%r15d, %r15d
	cmpq	%rbp, (%r13)
	jae	.LBB3_24
# %bb.2:                                # %land.rhs
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	112(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB3_4
# %bb.3:                                # %land.rhs
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	cmpq	%rax, (%rcx)
	jae	.LBB3_24
.LBB3_4:                                # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, 136(%r12)
	jne	.LBB3_22
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	56(%r12), %r15d
	cmpl	64(%r12), %r15d
	jb	.LBB3_22
# %bb.6:                                # %do.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	40(%r12), %eax
	subl	48(%r12), %eax
	cmpl	%eax, %r15d
	jae	.LBB3_8
# %bb.7:                                # %entry.if.end_crit_edge.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	68(%r12), %eax
	jmp	.LBB3_9
.LBB3_8:                                # %if.then.i
                                        #   in Loop: Header=BB3_1 Depth=1
	subl	44(%r12), %r15d
	andl	$-16, %r15d
	movl	68(%r12), %edx
	subl	%r15d, %edx
	movq	32(%r12), %rdi
	leaq	(%r15,%rdi), %rsi
	callq	memmove@PLT
	addl	%r15d, 52(%r12)
	subl	%r15d, 56(%r12)
	subl	%r15d, 64(%r12)
	movl	68(%r12), %eax
	subl	%r15d, %eax
	movl	%eax, 68(%r12)
.LBB3_9:                                # %if.end.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	(%rsp), %r11                    # 8-byte Reload
	movl	%eax, %eax
	movq	%rax, 8(%rsp)
	movq	176(%r12), %rax
	testq	%rax, %rax
	je	.LBB3_10
# %bb.14:                               # %if.else.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	152(%r12), %rdi
	movq	32(%r12), %r9
	movl	40(%r12), %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%r11, %rcx
	movl	120(%rsp), %r11d
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	leaq	32(%rsp), %r10
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	*%rax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	%eax, %r15d
	movl	8(%rsp), %eax
	movl	%eax, 68(%r12)
	cmpl	$1, %r15d
	je	.LBB3_16
.LBB3_12:                               # %if.else39.i
                                        #   in Loop: Header=BB3_1 Depth=1
	subl	48(%r12), %eax
	ja	.LBB3_17
.LBB3_18:                               # %if.end55.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	72(%r12), %esi
	testl	%esi, %esi
	jne	.LBB3_19
	jmp	.LBB3_21
.LBB3_10:                               # %if.then8.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	32(%r12), %rcx
	movl	40(%r12), %r9d
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%r11, %rsi
	movq	%r8, %rdx
	movq	%r8, %r15
	leaq	8(%rsp), %r8
	callq	lzma_bufcpy@PLT
	movl	112(%rsp), %eax
	testl	%eax, %eax
	je	.LBB3_11
# %bb.13:                               # %land.rhs.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%r15, %rax
	xorl	%r15d, %r15d
	movq	(%rsp), %rcx                    # 8-byte Reload
	cmpq	%rax, (%rcx)
	sete	%r15b
	movl	8(%rsp), %eax
	movl	%eax, 68(%r12)
	cmpl	$1, %r15d
	jne	.LBB3_12
.LBB3_16:                               # %if.then33.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	112(%rsp), %ecx
	movl	%ecx, 136(%r12)
	xorl	%r15d, %r15d
.LBB3_17:                               # %if.end55.sink.split.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	%eax, 64(%r12)
	movl	72(%r12), %esi
	testl	%esi, %esi
	je	.LBB3_21
.LBB3_19:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	56(%r12), %eax
	cmpl	64(%r12), %eax
	jae	.LBB3_21
# %bb.20:                               # %if.then65.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$0, 72(%r12)
	subl	%esi, %eax
	movl	%eax, 56(%r12)
	movq	%r14, %rdi
	callq	*88(%r12)
	jmp	.LBB3_21
.LBB3_11:                               # %if.end27.thread.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	8(%rsp), %eax
	movl	%eax, 68(%r12)
	xorl	%r15d, %r15d
	subl	48(%r12), %eax
	jbe	.LBB3_18
	jmp	.LBB3_17
.LBB3_23:                               # %cleanup20.thread
	movl	%eax, %r15d
	movl	$0, 136(%r12)
.LBB3_24:                               # %cleanup23
	movl	%r15d, %eax
	addq	$40, %rsp
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
.Lfunc_end3:
	.size	lz_encode, .Lfunc_end3-lz_encode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lz_encoder_end
	.type	lz_encoder_end,@function
lz_encoder_end:                         # @lz_encoder_end
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
	addq	$152, %rdi
	callq	lzma_next_end@PLT
	movq	96(%r14), %rdi
	movq	%rbx, %rsi
	callq	lzma_free@PLT
	movq	32(%r14), %rdi
	movq	%rbx, %rsi
	callq	lzma_free@PLT
	movq	(%r14), %rdi
	movq	16(%r14), %rax
	movq	%rbx, %rsi
	testq	%rax, %rax
	je	.LBB4_2
# %bb.1:                                # %if.then
	callq	*%rax
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	callq	lzma_free@PLT
.LBB4_3:                                # %if.end
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Lfunc_end4:
	.size	lz_encoder_end, .Lfunc_end4-lz_encoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lz_encoder_update
	.type	lz_encoder_update,@function
lz_encoder_update:                      # @lz_encoder_update
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	24(%rdi), %rax
	testq	%rax, %rax
	je	.LBB5_1
# %bb.2:                                # %do.body
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rdi), %rdi
	movq	%rcx, %rsi
	callq	*%rax
	testl	%eax, %eax
	je	.LBB5_4
# %bb.3:                                # %cleanup9
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB5_1:
	.cfi_def_cfa_offset 32
	movl	$11, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB5_4:                                # %do.end
	.cfi_def_cfa_offset 32
	movq	%r15, %rdi
	addq	$152, %rdi
	addq	$16, %rbx
	movq	%r14, %rsi
	movq	%rbx, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	lzma_next_filter_update@PLT     # TAILCALL
.Lfunc_end5:
	.size	lz_encoder_update, .Lfunc_end5-lz_encoder_update
	.cfi_endproc
                                        # -- End function
	.globl	lzma_mf_is_supported            # -- Begin function lzma_mf_is_supported
	.p2align	4, 0x90
	.type	lzma_mf_is_supported,@function
lzma_mf_is_supported:                   # @lzma_mf_is_supported
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $edi killed $edi def $rdi
	leal	-3(%rdi), %eax
	cmpl	$2, %eax
	setb	%cl
	movl	%edi, %eax
	andl	$-2, %eax
	cmpl	$18, %eax
	sete	%dl
	cmpl	$20, %edi
	sete	%al
	orb	%dl, %al
	orb	%cl, %al
	retq
.Lfunc_end6:
	.size	lzma_mf_is_supported, .Lfunc_end6-lzma_mf_is_supported
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
