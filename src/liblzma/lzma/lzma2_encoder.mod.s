	.text
	.file	"lzma2_encoder.c"
	.globl	lzma_lzma2_encoder_init         # -- Begin function lzma_lzma2_encoder_init
	.p2align	4, 0x90
	.type	lzma_lzma2_encoder_init,@function
lzma_lzma2_encoder_init:                # @lzma_lzma2_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$lzma2_encoder_init, %ecx
	jmp	lzma_lz_encoder_init@PLT        # TAILCALL
.Lfunc_end0:
	.size	lzma_lzma2_encoder_init, .Lfunc_end0-lzma_lzma2_encoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma2_encoder_init
	.type	lzma2_encoder_init,@function
lzma2_encoder_init:                     # @lzma2_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdx, %rdx
	je	.LBB1_1
# %bb.3:                                # %if.end
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
	movq	%rcx, %rbx
	movq	(%rdi), %rax
	testq	%rax, %rax
	jne	.LBB1_7
# %bb.4:                                # %if.then2
	movq	%rdx, %r14
	movq	%rdi, %r12
	movl	$65704, %edi                    # imm = 0x100A8
	movq	%rsi, %r15
	callq	lzma_alloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB1_5
# %bb.6:                                # %if.end7
	movq	%r12, %rdi
	movq	$lzma2_encode, 8(%r12)
	movq	$lzma2_encoder_end, 16(%r12)
	movq	$lzma2_encoder_options_update, 24(%r12)
	movq	$0, 8(%rax)
	movq	(%r12), %rax
	movq	%r15, %rsi
	movq	%r14, %rdx
.LBB1_7:                                # %if.end9
	movups	96(%rdx), %xmm0
	movups	%xmm0, 112(%rax)
	movups	80(%rdx), %xmm0
	movups	%xmm0, 96(%rax)
	movups	64(%rdx), %xmm0
	movups	%xmm0, 80(%rax)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	32(%rdx), %xmm2
	movups	48(%rdx), %xmm3
	movups	%xmm3, 64(%rax)
	movups	%xmm2, 48(%rax)
	movups	%xmm1, 32(%rax)
	movups	%xmm0, 16(%rax)
	movq	(%rdi), %rax
	movl	$0, (%rax)
	movq	(%rdi), %rax
	movb	$1, 128(%rax)
	movq	(%rdi), %rax
	movb	$0, 129(%rax)
	movq	(%rdi), %rax
	cmpq	$0, 24(%rax)
	je	.LBB1_8
# %bb.9:                                # %lor.rhs
	cmpl	$0, 32(%rax)
	sete	%cl
	jmp	.LBB1_10
.LBB1_1:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$11, %eax
	retq
.LBB1_8:
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movb	$1, %cl
.LBB1_10:                               # %lor.end
	movb	%cl, 130(%rax)
	movq	(%rdi), %rdx
	leaq	8(%rdx), %rdi
	addq	$16, %rdx
	movq	%rbx, %rcx
	callq	lzma_lzma_encoder_create@PLT
	testl	%eax, %eax
	jne	.LBB1_13
# %bb.11:                               # %do.end
	movq	8(%rbx), %rcx
	movq	(%rbx), %rdx
	addq	%rcx, %rdx
	xorl	%eax, %eax
	cmpq	$65535, %rdx                    # imm = 0xFFFF
	ja	.LBB1_13
# %bb.12:                               # %if.then30
	movl	$65536, %edx                    # imm = 0x10000
	subq	%rcx, %rdx
	movq	%rdx, (%rbx)
	jmp	.LBB1_13
.LBB1_5:
	movl	$5, %eax
.LBB1_13:
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
	retq
.Lfunc_end1:
	.size	lzma2_encoder_init, .Lfunc_end1-lzma2_encoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma2_encoder_memusage     # -- Begin function lzma_lzma2_encoder_memusage
	.p2align	4, 0x90
	.type	lzma_lzma2_encoder_memusage,@function
lzma_lzma2_encoder_memusage:            # @lzma_lzma2_encoder_memusage
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	lzma_lzma_encoder_memusage@PLT
	leaq	65704(%rax), %rcx
	cmpq	$-1, %rax
	cmovneq	%rcx, %rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	lzma_lzma2_encoder_memusage, .Lfunc_end2-lzma_lzma2_encoder_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma2_props_encode         # -- Begin function lzma_lzma2_props_encode
	.p2align	4, 0x90
	.type	lzma_lzma2_props_encode,@function
lzma_lzma2_props_encode:                # @lzma_lzma2_props_encode
	.cfi_startproc
# %bb.0:                                # %entry
	movl	(%rdi), %eax
	leal	-1(%rax), %ecx
	cmpl	$4097, %eax                     # imm = 0x1001
	movl	$4095, %eax                     # imm = 0xFFF
	cmovael	%ecx, %eax
	movl	%eax, %ecx
	shrl	$2, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$8, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$16, %ecx
	orl	%eax, %ecx
	cmpl	$-1, %ecx
	je	.LBB3_1
# %bb.3:                                # %if.else
	movl	%ecx, %eax
	incq	%rax
	cmpl	$8190, %ecx                     # imm = 0x1FFE
	ja	.LBB3_5
# %bb.4:                                # %if.then.i
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
	movzbl	(%rcx,%rax), %eax
	addb	$-24, %al
	movb	%al, (%rsi)
	xorl	%eax, %eax
	retq
.LBB3_1:
	movb	$40, %al
	movb	%al, (%rsi)
	xorl	%eax, %eax
	retq
.LBB3_5:                                # %if.end.i
	cmpl	$33554430, %ecx                 # imm = 0x1FFFFFE
	ja	.LBB3_7
# %bb.6:                                # %if.then3.i
	shrl	$12, %eax
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
	movzbl	(%rcx,%rax), %eax
	addb	$24, %al
	addb	$-24, %al
	movb	%al, (%rsi)
	xorl	%eax, %eax
	retq
.LBB3_7:                                # %if.end7.i
	shrl	$24, %eax
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
	movzbl	(%rcx,%rax), %eax
	addb	$48, %al
	addb	$-24, %al
	movb	%al, (%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	lzma_lzma2_props_encode, .Lfunc_end3-lzma_lzma2_props_encode
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma2_encode
.LCPI4_0:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	lzma2_encode,@function
lzma2_encode:                           # @lzma2_encode
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
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	(%rcx), %rbx
	cmpq	%r8, %rbx
	jae	.LBB4_35
# %bb.1:                                # %while.body.lr.ph
	movq	%r8, %r15
	movq	%rdi, %rbp
	leaq	160(%rdi), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	leaq	152(%rdi), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	136(%rdi), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	16(%rdi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leaq	144(%rdi), %r14
	leaq	166(%rdi), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movl	(%rdi), %r13d
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB4_2
.LBB4_27:                               # %cleanup54
                                        #   in Loop: Header=BB4_2 Depth=1
	addq	%rcx, %rbx
	movq	%rbx, 136(%rbp)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	$0, 28(%rax)
	movb	$2, %al
	subb	130(%rbp), %al
	movb	%al, 160(%rbp)
	leal	-1(%rbx), %eax
	movb	%ah, 161(%rbp)
	decb	%bl
	movb	%bl, 162(%rbp)
	movq	$0, 152(%rbp)
	movw	$1, 129(%rbp)
	movl	$3, %r13d
	.p2align	4, 0x90
.LBB4_33:                               # %sw.epilog.sink.split
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	%r13d, (%rbp)
.LBB4_34:                               # %sw.epilog
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rbx
	cmpq	%r15, %rbx
	jae	.LBB4_35
.LBB4_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, %r13d
	ja	.LBB4_34
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	%r13d, %eax
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_6:                                # %sw.bb
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	36(%rcx), %eax
	subl	24(%rcx), %eax
	addl	28(%rcx), %eax
	je	.LBB4_7
# %bb.10:                               # %if.end6
                                        #   in Loop: Header=BB4_2 Depth=1
	cmpb	$1, 129(%rbp)
	jne	.LBB4_13
# %bb.11:                               # %do.body
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	8(%rbp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	lzma_lzma_encoder_reset@PLT
	testl	%eax, %eax
	jne	.LBB4_12
.LBB4_13:                               # %if.end12
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	$1, (%rbp)
	xorl	%eax, %eax
	jmp	.LBB4_14
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	movq	8(%rsp), %r12                   # 8-byte Reload
	jmp	.LBB4_32
.LBB4_28:                               # %while.body.sw.bb60_crit_edge
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	(%r14), %rdx
	movq	(%rsp), %rdi                    # 8-byte Reload
	jmp	.LBB4_29
.LBB4_30:                               # %sw.bb72
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	$3, %edx
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rsi
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	%r15, %r9
	callq	lzma_bufcpy@PLT
	cmpq	$3, (%rbx)
	jne	.LBB4_35
# %bb.31:                               # %if.end81
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	$4, (%rbp)
	movq	8(%rsp), %r12                   # 8-byte Reload
	movq	(%r12), %rbx
.LBB4_32:                               # %sw.bb83
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	24(%rcx), %esi
	movq	48(%rsp), %r15                  # 8-byte Reload
	subq	%rbx, %r15
	movq	40(%rsp), %rbp                  # 8-byte Reload
	movq	(%rbp), %r14
	cmpq	%r14, %r15
	movq	%r14, %r13
	cmovbq	%r15, %r13
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rbx), %rdi
	addq	(%rcx), %rsi
	subq	%r14, %rsi
	movq	%r13, %rdx
	callq	memcpy@PLT
	addq	%r13, %rbx
	movq	%rbx, (%r12)
	movq	%r14, %rax
	subq	%r13, %rax
	movq	%rax, (%rbp)
	xorl	%r13d, %r13d
	cmpq	%r15, %r14
	movq	48(%rsp), %r15                  # 8-byte Reload
	movq	80(%rsp), %rbp                  # 8-byte Reload
	movq	64(%rsp), %r14                  # 8-byte Reload
	jbe	.LBB4_33
	jmp	.LBB4_36
.LBB4_5:                                # %while.body.sw.bb14_crit_edge
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
.LBB4_14:                               # %sw.bb14
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	$2097152, %ecx                  # imm = 0x200000
	subl	%eax, %ecx
	movq	16(%rsp), %r12                  # 8-byte Reload
	movl	100(%r12), %eax
	movl	24(%r12), %r15d
	movl	28(%r12), %ebx
	leal	(%rcx,%r15), %r9d
	subl	%eax, %r9d
	subl	%ebx, %r9d
	xorl	%r13d, %r13d
	cmpl	%eax, %ecx
	cmovbl	%r13d, %r9d
	movq	8(%rbp), %rdi
	movl	$65536, %r8d                    # imm = 0x10000
	movq	%r12, %rsi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	64(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %rcx
	callq	lzma_lzma_encode@PLT
	movl	28(%r12), %ecx
	addl	24(%r12), %ebx
	subl	%ecx, %ebx
	subl	%r15d, %ebx
	addq	136(%rbp), %rbx
	movq	%rbx, 136(%rbp)
	cmpl	$1, %eax
	movq	48(%rsp), %r15                  # 8-byte Reload
	jne	.LBB4_36
# %bb.15:                               # %if.end39
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	(%r14), %rdx
	cmpq	%rbx, %rdx
	jae	.LBB4_27
# %bb.16:                               # %if.end52
                                        #   in Loop: Header=BB4_2 Depth=1
	movzbl	128(%rbp), %eax
	cmpb	$1, %al
	jne	.LBB4_20
# %bb.17:                               # %if.then.i
                                        #   in Loop: Header=BB4_2 Depth=1
	cmpb	$1, 130(%rbp)
	jne	.LBB4_19
# %bb.18:                               # %if.then2.i
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	(%rsp), %rdi                    # 8-byte Reload
	movb	$-32, (%rdi)
	xorl	%esi, %esi
	jmp	.LBB4_24
.LBB4_20:                               # %if.else5.i
                                        #   in Loop: Header=BB4_2 Depth=1
	cmpb	$1, 129(%rbp)
	jne	.LBB4_22
# %bb.21:                               # %if.then7.i
                                        #   in Loop: Header=BB4_2 Depth=1
	movb	$-96, 161(%rbp)
	jmp	.LBB4_23
.LBB4_19:                               # %if.else.i
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	(%rsp), %rdi                    # 8-byte Reload
	movb	$-64, (%rdi)
	xorl	%esi, %esi
	jmp	.LBB4_24
.LBB4_22:                               # %if.else10.i
                                        #   in Loop: Header=BB4_2 Depth=1
	movb	$-128, 161(%rbp)
.LBB4_23:                               # %if.end14.i
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	$1, %esi
	movq	(%rsp), %rdi                    # 8-byte Reload
.LBB4_24:                               # %if.end14.i
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rsi, (%rcx)
	decq	%rbx
	movl	%ebx, %ecx
	shrl	$16, %ecx
	addb	%cl, (%rdi,%rsi)
	movb	%bh, 1(%rdi,%rsi)
	movb	%bl, 2(%rdi,%rsi)
	leaq	-1(%rdx), %rcx
	movb	%ch, 3(%rdi,%rsi)
	movb	%cl, 4(%rdi,%rsi)
	testb	%al, %al
	je	.LBB4_26
# %bb.25:                               # %if.then41.i
                                        #   in Loop: Header=BB4_2 Depth=1
	addq	%rdi, %rsi
	addq	$5, %rsi
	movq	%rdi, %rbx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	callq	lzma_lzma_lclppb_encode@PLT
	movq	%rbx, %rdi
	movq	(%r14), %rdx
.LBB4_26:                               # %cleanup54.thread165
                                        #   in Loop: Header=BB4_2 Depth=1
	movw	$0, 128(%rbp)
	movb	$0, 130(%rbp)
	addq	$6, %rdx
	movq	%rdx, 144(%rbp)
	movl	$2, (%rbp)
.LBB4_29:                               # %sw.bb60
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rsi
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	%r15, %r9
	callq	lzma_bufcpy@PLT
	movq	(%rbx), %rax
	xorl	%r13d, %r13d
	cmpq	(%r14), %rax
	je	.LBB4_33
	jmp	.LBB4_36
.LBB4_35:
	xorl	%r13d, %r13d
.LBB4_36:                               # %cleanup91
	movl	%r13d, %eax
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
.LBB4_7:                                # %if.then
	.cfi_def_cfa_offset 144
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	104(%rax), %eax
	cmpl	$3, %eax
	jne	.LBB4_9
# %bb.8:                                # %if.then3
	leaq	1(%rbx), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movb	$0, (%rcx,%rbx)
.LBB4_9:                                # %if.end
	xorl	%r13d, %r13d
	testl	%eax, %eax
	setne	%r13b
	jmp	.LBB4_36
.LBB4_12:
	movl	%eax, %r13d
	jmp	.LBB4_36
.Lfunc_end4:
	.size	lzma2_encode, .Lfunc_end4-lzma2_encode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI4_0:
	.quad	.LBB4_6
	.quad	.LBB4_5
	.quad	.LBB4_28
	.quad	.LBB4_30
	.quad	.LBB4_4
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function lzma2_encoder_end
	.type	lzma2_encoder_end,@function
lzma2_encoder_end:                      # @lzma2_encoder_end
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
	.size	lzma2_encoder_end, .Lfunc_end5-lzma2_encoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma2_encoder_options_update
	.type	lzma2_encoder_options_update,@function
lzma2_encoder_options_update:           # @lzma2_encoder_options_update
	.cfi_startproc
# %bb.0:                                # %entry
	movq	8(%rsi), %rcx
	movl	$11, %eax
	testq	%rcx, %rcx
	je	.LBB6_9
# %bb.1:                                # %lor.lhs.false
	cmpl	$0, (%rdi)
	je	.LBB6_2
.LBB6_9:                                # %cleanup38
	retq
.LBB6_2:                                # %if.end
	movl	20(%rcx), %edx
	cmpl	%edx, 36(%rdi)
	jne	.LBB6_5
# %bb.3:                                # %lor.lhs.false5
	movl	40(%rdi), %eax
	cmpl	24(%rcx), %eax
	jne	.LBB6_5
# %bb.4:                                # %lor.lhs.false9
	movl	44(%rdi), %esi
	xorl	%eax, %eax
	cmpl	28(%rcx), %esi
	je	.LBB6_9
.LBB6_5:                                # %if.then13
	movl	$8, %eax
	cmpl	$4, %edx
	ja	.LBB6_9
# %bb.6:                                # %lor.lhs.false16
	movl	24(%rcx), %esi
	cmpl	$5, %esi
	setae	%r8b
	addl	%edx, %esi
	cmpl	$5, %esi
	setae	%sil
	orb	%r8b, %sil
	jne	.LBB6_9
# %bb.7:                                # %lor.lhs.false23
	cmpl	$4, 28(%rcx)
	ja	.LBB6_9
# %bb.8:                                # %if.end27
	movl	%edx, 36(%rdi)
	movl	24(%rcx), %eax
	movl	%eax, 40(%rdi)
	movl	28(%rcx), %eax
	movl	%eax, 44(%rdi)
	movw	$257, 128(%rdi)                 # imm = 0x101
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	lzma2_encoder_options_update, .Lfunc_end6-lzma2_encoder_options_update
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
