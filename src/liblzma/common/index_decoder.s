	.text
	.file	"index_decoder.c"
	.globl	lzma_index_decoder              # -- Begin function lzma_index_decoder
	.p2align	4, 0x90
	.type	lzma_index_decoder,@function
lzma_index_decoder:                     # @lzma_index_decoder
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
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	lzma_strm_init@PLT
	testl	%eax, %eax
	je	.LBB0_1
# %bb.4:                                # %return
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:                                # %do.end
	.cfi_def_cfa_offset 32
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	index_decoder_init
	testl	%eax, %eax
	je	.LBB0_3
# %bb.2:                                # %cleanup7
	movq	%rbx, %rdi
	movl	%eax, %ebx
	callq	lzma_end@PLT
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_3:                                # %do.end10
	.cfi_def_cfa_offset 32
	movq	56(%rbx), %rax
	movb	$1, 80(%rax)
	movq	56(%rbx), %rax
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_index_decoder, .Lfunc_end0-lzma_index_decoder
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_decoder_init
	.type	index_decoder_init,@function
index_decoder_init:                     # @index_decoder_init
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
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	cmpq	$index_decoder_init, 16(%rdi)
	je	.LBB1_2
# %bb.1:                                # %if.then
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	lzma_next_end@PLT
.LBB1_2:                                # %if.end
	movq	$index_decoder_init, 16(%r12)
	testq	%r15, %r15
	sete	%al
	testq	%rbx, %rbx
	sete	%cl
	orb	%al, %cl
	movl	$11, %eax
	jne	.LBB1_11
# %bb.3:                                # %if.end5
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.LBB1_5
# %bb.4:                                # %if.else
	movq	16(%rax), %rdi
	movq	%r14, %rsi
	callq	lzma_index_end@PLT
	jmp	.LBB1_7
.LBB1_5:                                # %if.then7
	movl	$72, %edi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB1_10
# %bb.6:                                # %if.end12
	movq	$index_decode, 24(%r12)
	movq	$index_decoder_end, 32(%r12)
	movq	$index_decoder_memconfig, 48(%r12)
	movq	$0, 16(%rax)
.LBB1_7:                                # %if.end16
	movq	(%r12), %r12
	movq	%r15, 24(%r12)
	movq	$0, (%r15)
	movq	%r14, %rdi
	callq	lzma_index_init@PLT
	movq	%rax, 16(%r12)
	testq	%rax, %rax
	je	.LBB1_10
# %bb.8:                                # %if.end.i
	movl	$0, (%r12)
	movq	%rbx, 8(%r12)
	movq	$0, 32(%r12)
	movq	$0, 56(%r12)
	movl	$0, 64(%r12)
	xorl	%eax, %eax
	jmp	.LBB1_11
.LBB1_10:
	movl	$5, %eax
.LBB1_11:                               # %return
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
	.size	index_decoder_init, .Lfunc_end1-index_decoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_buffer_decode        # -- Begin function lzma_index_buffer_decode
	.p2align	4, 0x90
	.type	lzma_index_buffer_decode,@function
lzma_index_buffer_decode:               # @lzma_index_buffer_decode
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rsi, %xmm0
	movq	%rdi, %xmm1
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	movq	%r8, %xmm0
	movq	%rcx, %xmm2
	punpcklqdq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0]
	pxor	%xmm0, %xmm0
	pcmpeqd	%xmm0, %xmm2
	pcmpeqd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	shufps	$221, %xmm2, %xmm0              # xmm0 = xmm0[1,3],xmm2[1,3]
	shufps	$136, %xmm2, %xmm1              # xmm1 = xmm1[0,2],xmm2[0,2]
	andps	%xmm0, %xmm1
	movmskps	%xmm1, %r10d
	movl	$11, %eax
	testl	%r10d, %r10d
	je	.LBB2_1
.LBB2_11:                               # %return
	retq
.LBB2_1:                                # %lor.lhs.false6
	cmpq	%r9, (%r8)
	ja	.LBB2_11
# %bb.2:                                # %if.end
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%r9, %r14
	movq	%r8, %r13
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movq	(%rsi), %r12
	movq	%rdi, 56(%rsp)
	movq	$0, (%rdi)
	movq	%rdx, %rbx
	movq	%rdx, %rdi
	callq	lzma_index_init@PLT
	movq	%rax, 48(%rsp)
	testq	%rax, %rax
	je	.LBB2_3
# %bb.4:                                # %do.end
	movl	$0, 32(%rsp)
	movq	%r12, 40(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 88(%rsp)
	movl	$0, 96(%rsp)
	movq	%r13, %rcx
	movq	(%r13), %r12
	leaq	32(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %r8
	callq	index_decode
	movl	%eax, %ebp
	xorl	%eax, %eax
	cmpl	$1, %ebp
	je	.LBB2_10
# %bb.5:                                # %if.else
	movq	48(%rsp), %rdi
	movq	%rbx, %rsi
	callq	lzma_index_end@PLT
	movq	%r12, (%r13)
	testl	%ebp, %ebp
	je	.LBB2_6
# %bb.7:                                # %if.else
	cmpl	$6, %ebp
	jne	.LBB2_9
# %bb.8:                                # %if.then18
	movq	64(%rsp), %rsi
	movl	$1, %edi
	callq	lzma_index_memusage@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, (%rcx)
	movl	$6, %eax
	jmp	.LBB2_10
.LBB2_3:
	movl	$5, %eax
	jmp	.LBB2_10
.LBB2_6:
	movl	$9, %eax
	jmp	.LBB2_10
.LBB2_9:                                # %if.end22.fold.split
	movl	%ebp, %eax
.LBB2_10:                               # %cleanup25
	addq	$104, %rsp
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	retq
.Lfunc_end2:
	.size	lzma_index_buffer_decode, .Lfunc_end2-lzma_index_buffer_decode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_decode
	.type	index_decode,@function
index_decode:                           # @index_decode
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
	movq	%rdx, %r14
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movq	%rdi, %rbx
	movq	(%rcx), %rax
	xorl	%ebp, %ebp
	movq	%rax, %rsi
	cmpq	%r8, %rax
	jae	.LBB3_31
# %bb.1:                                # %while.body.lr.ph
	movq	%r8, %r12
	movq	%rcx, %r15
	leaq	56(%rbx), %r13
	leaq	40(%rbx), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	leaq	48(%rbx), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	leaq	32(%rbx), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movl	(%rbx), %ecx
	movq	%rax, (%rsp)                    # 8-byte Spill
	jmp	.LBB3_7
.LBB3_2:                                # %do.body
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	16(%rbx), %rdi
	movq	40(%rbx), %rdx
	movq	48(%rbx), %rcx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	lzma_index_append@PLT
	testl	%eax, %eax
	jne	.LBB3_37
# %bb.3:                                # %do.end
                                        #   in Loop: Header=BB3_7 Depth=1
	xorl	%eax, %eax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	decq	(%rcx)
.LBB3_4:                                # %sw.epilog.sink.split
                                        #   in Loop: Header=BB3_7 Depth=1
	sete	%al
	leal	3(,%rax,2), %ecx
.LBB3_5:                                # %sw.epilog.sink.split
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	%ecx, (%rbx)
.LBB3_6:                                # %sw.epilog
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	(%r15), %rax
	cmpq	%r12, %rax
	jae	.LBB3_21
.LBB3_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	ja	.LBB3_34
# %bb.8:                                # %while.body
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	%ecx, %edx
	jmpq	*.LJTI3_0(,%rdx,8)
.LBB3_9:                                # %sw.bb23
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$3, %ecx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	cmoveq	16(%rsp), %rdi                  # 8-byte Folded Reload
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lzma_vli_decode@PLT
	cmpl	$1, %eax
	jne	.LBB3_22
# %bb.10:                               # %if.end33
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	$0, 56(%rbx)
	cmpl	$3, (%rbx)
	jne	.LBB3_2
# %bb.11:                               # %if.then38
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movabsq	$-9223372036854775805, %rcx     # imm = 0x8000000000000003
	addq	%rcx, %rax
	leaq	5(%rcx), %rdx
	movl	$4, %ecx
	cmpq	%rdx, %rax
	jae	.LBB3_5
	jmp	.LBB3_36
.LBB3_12:                               # %sw.bb4
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lzma_vli_decode@PLT
	cmpl	$1, %eax
	jne	.LBB3_22
# %bb.13:                               # %if.end8
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	$0, 56(%rbx)
	movl	$2, (%rbx)
.LBB3_14:                               # %sw.bb11
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	32(%rbx), %rsi
	movl	$1, %edi
	callq	lzma_index_memusage@PLT
	cmpq	8(%rbx), %rax
	ja	.LBB3_29
# %bb.15:                               # %if.end17
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	16(%rbx), %rdi
	movq	32(%rbx), %rsi
	callq	lzma_index_prealloc@PLT
	xorl	%eax, %eax
	cmpq	$0, 32(%rbx)
	jmp	.LBB3_4
.LBB3_16:                               # %sw.bb
                                        #   in Loop: Header=BB3_7 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movl	$1, %ecx
	cmpb	$0, (%r14,%rax)
	je	.LBB3_5
	jmp	.LBB3_36
.LBB3_17:                               # %sw.bb64
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	16(%rbx), %rdi
	callq	lzma_index_padding_size@PLT
	movl	%eax, %eax
	movq	%rax, 56(%rbx)
	movl	$6, (%rbx)
	testq	%rax, %rax
	jne	.LBB3_19
	jmp	.LBB3_23
.LBB3_18:                               # %while.body.sw.bb70_crit_edge
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.LBB3_23
.LBB3_19:                               # %if.then74
                                        #   in Loop: Header=BB3_7 Depth=1
	decq	%rax
	movq	%rax, (%r13)
	movq	(%r15), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movl	$6, %ecx
	cmpb	$0, (%r14,%rax)
	je	.LBB3_6
.LBB3_36:
	movl	$9, %ebp
	jmp	.LBB3_32
.LBB3_21:
	xorl	%ebp, %ebp
	jmp	.LBB3_30
.LBB3_22:
	movl	%eax, %ebp
	jmp	.LBB3_30
.LBB3_23:                               # %if.end84
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movq	(%r15), %rsi
	subq	%rax, %rsi
	movl	64(%rbx), %edx
	callq	lzma_crc32@PLT
	movl	%eax, 64(%rbx)
	movl	$7, (%rbx)
	movq	(%r15), %rax
.LBB3_24:                               # %sw.bb88
	incq	%rax
	negq	%r12
	.p2align	4, 0x90
.LBB3_25:                               # %do.body89
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r12,%rax), %rcx
	cmpq	$1, %rcx
	je	.LBB3_33
# %bb.26:                               # %if.end93
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	64(%rbx), %esi
	movq	56(%rbx), %rdx
	leal	(,%rdx,8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	movq	%rax, (%r15)
	cmpb	%sil, -1(%r14,%rax)
	jne	.LBB3_36
# %bb.27:                               # %do.cond103
                                        #   in Loop: Header=BB3_25 Depth=1
	incq	%rdx
	movq	%rdx, (%r13)
	incq	%rax
	cmpq	$4, %rdx
	jb	.LBB3_25
# %bb.28:                               # %do.end108
	movq	16(%rbx), %rax
	movq	24(%rbx), %rcx
	movq	%rax, (%rcx)
	movq	$0, 16(%rbx)
	movl	$1, %ebp
	jmp	.LBB3_32
.LBB3_29:
	movl	$6, %ebp
.LBB3_30:                               # %out111.loopexit
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%r15), %rsi
.LBB3_31:                               # %out111
	addq	%rax, %r14
	subq	%rax, %rsi
	movl	64(%rbx), %edx
	movq	%r14, %rdi
	callq	lzma_crc32@PLT
	movl	%eax, 64(%rbx)
.LBB3_32:                               # %cleanup117
	movl	%ebp, %eax
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
.LBB3_33:
	.cfi_def_cfa_offset 96
	xorl	%ebp, %ebp
	jmp	.LBB3_32
.LBB3_34:
	movl	$11, %ebp
	jmp	.LBB3_32
.LBB3_37:
	movl	%eax, %ebp
	jmp	.LBB3_32
.Lfunc_end3:
	.size	index_decode, .Lfunc_end3-index_decode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI3_0:
	.quad	.LBB3_16
	.quad	.LBB3_12
	.quad	.LBB3_14
	.quad	.LBB3_9
	.quad	.LBB3_9
	.quad	.LBB3_17
	.quad	.LBB3_18
	.quad	.LBB3_24
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function index_decoder_end
	.type	index_decoder_end,@function
index_decoder_end:                      # @index_decoder_end
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
	movq	16(%rdi), %rdi
	callq	lzma_index_end@PLT
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
	.size	index_decoder_end, .Lfunc_end4-index_decoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_decoder_memconfig
	.type	index_decoder_memconfig,@function
index_decoder_memconfig:                # @index_decoder_memconfig
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
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	32(%rdi), %rsi
	movl	$1, %edi
	callq	lzma_index_memusage@PLT
	movq	%rax, (%r15)
	movq	8(%r14), %rax
	movq	%rax, (%r12)
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB5_3
# %bb.1:                                # %if.then
	movl	$6, %eax
	cmpq	%rbx, (%r15)
	ja	.LBB5_3
# %bb.2:                                # %if.end
	movq	%rbx, 8(%r14)
	xorl	%eax, %eax
.LBB5_3:                                # %cleanup
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
.Lfunc_end5:
	.size	index_decoder_memconfig, .Lfunc_end5-index_decoder_memconfig
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
