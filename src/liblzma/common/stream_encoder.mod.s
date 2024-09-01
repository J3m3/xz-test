	.text
	.file	"stream_encoder.c"
	.globl	lzma_stream_encoder_init        # -- Begin function lzma_stream_encoder_init
	.p2align	4, 0x90
	.type	lzma_stream_encoder_init,@function
lzma_stream_encoder_init:               # @lzma_stream_encoder_init
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpq	$lzma_stream_encoder_init, 16(%rdi)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	lzma_next_end@PLT
.LBB0_2:                                # %if.end
	movq	$lzma_stream_encoder_init, 16(%r15)
	testq	%rbx, %rbx
	je	.LBB0_9
# %bb.3:                                # %if.end4
	movq	(%r15), %rax
	testq	%rax, %rax
	jne	.LBB0_6
# %bb.4:                                # %if.then6
	movl	$1472, %edi                     # imm = 0x5C0
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB0_11
# %bb.5:                                # %if.end11
	movq	$stream_encode, 24(%r15)
	movq	$stream_encoder_end, 32(%r15)
	movq	$stream_encoder_update, 56(%r15)
	movq	$-1, 280(%rax)
	movq	(%r15), %rax
	movq	$0, 8(%rax)
	movq	$-1, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movups	%xmm0, 40(%rax)
	movups	%xmm0, 56(%rax)
	movq	(%r15), %rax
	movq	$0, 360(%rax)
	movq	$-1, 368(%rax)
	movups	%xmm0, 376(%rax)
	movups	%xmm0, 392(%rax)
	movups	%xmm0, 408(%rax)
	movq	(%r15), %rax
	movq	$0, 424(%rax)
	movq	(%r15), %rax
.LBB0_6:                                # %if.end32
	movl	$0, (%rax)
	movq	(%r15), %rax
	movl	$0, 72(%rax)
	movq	(%r15), %rax
	movl	%ebp, 80(%rax)
	movq	(%r15), %rax
	movq	424(%rax), %rdi
	movq	%r14, %rsi
	callq	lzma_index_end@PLT
	movq	%r14, %rdi
	callq	lzma_index_init@PLT
	movq	(%r15), %rcx
	movq	%rax, 424(%rcx)
	movq	(%r15), %rsi
	cmpq	$0, 424(%rsi)
	je	.LBB0_11
# %bb.7:                                # %if.end47
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, (%rsp)
	movq	$0, 48(%rsp)
	movl	%ebp, 16(%rsp)
	addq	$448, %rsi                      # imm = 0x1C0
	movq	%rsp, %rdi
	callq	lzma_stream_header_encode@PLT
	testl	%eax, %eax
	jne	.LBB0_12
# %bb.8:                                # %do.end56
	movq	(%r15), %rax
	movq	$0, 432(%rax)
	movq	(%r15), %rax
	movq	$12, 440(%rax)
	movq	(%r15), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	stream_encoder_update
	jmp	.LBB0_12
.LBB0_9:
	movl	$11, %eax
	jmp	.LBB0_12
.LBB0_11:
	movl	$5, %eax
.LBB0_12:                               # %return
	addq	$56, %rsp
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
.Lfunc_end0:
	.size	lzma_stream_encoder_init, .Lfunc_end0-lzma_stream_encoder_init
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function stream_encode
.LCPI1_0:
	.zero	16,255
	.text
	.p2align	4, 0x90
	.type	stream_encode,@function
stream_encode:                          # @stream_encode
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 16(%rsp)                   # 8-byte Spill
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movq	%rsi, (%rsp)                    # 8-byte Spill
	movq	200(%rsp), %r12
	movq	192(%rsp), %r14
	cmpq	%r12, (%r14)
	jae	.LBB1_25
# %bb.1:                                # %while.body.lr.ph
	movq	%rdi, %rbp
	leaq	360(%rdi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leaq	448(%rdi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	8(%rdi), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	72(%rdi), %rbx
	leaq	88(%rdi), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	432(%rdi), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movl	(%rdi), %eax
	movq	%rbx, %r15
	jmp	.LBB1_5
.LBB1_2:                                # %cleanup74
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	$1, (%rbp)
	movl	$1, %eax
	movq	%r15, %rbx
	cmpq	%r12, (%r14)
	jae	.LBB1_25
	.p2align	4, 0x90
.LBB1_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$11, %r13d
	cmpl	$5, %eax
	ja	.LBB1_26
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %eax
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_7:                                # %sw.bb
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	440(%rbp), %rdx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%r14, %r8
	movq	%r12, %r9
	callq	lzma_bufcpy@PLT
	movq	432(%rbp), %rax
	cmpq	440(%rbp), %rax
	jb	.LBB1_25
# %bb.8:                                # %if.end
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	(%rbp), %eax
	cmpl	$5, %eax
	je	.LBB1_27
# %bb.9:                                # %if.end7
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	%r15, %rbx
	movq	$0, 432(%rbp)
	incl	%eax
	movl	%eax, (%rbp)
	cmpq	%r12, (%r14)
	jb	.LBB1_5
	jmp	.LBB1_25
.LBB1_10:                               # %sw.bb10
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	cmpq	%rax, (%rcx)
	jne	.LBB1_20
# %bb.11:                               # %if.then12
                                        #   in Loop: Header=BB1_5 Depth=1
	cmpl	$3, 208(%rsp)
	jne	.LBB1_30
# %bb.12:                               # %do.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	424(%rbp), %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	(%rsp), %rsi                    # 8-byte Reload
	callq	lzma_index_encoder_init@PLT
	testl	%eax, %eax
	jne	.LBB1_31
# %bb.13:                               # %do.end
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	$4, (%rbp)
	movl	$4, %eax
	movq	%r15, %rbx
	cmpq	%r12, (%r14)
	jb	.LBB1_5
	jmp	.LBB1_25
.LBB1_14:                               # %sw.bb76
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	360(%rbp), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	8(%rsp), %rsi                   # 8-byte Reload
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	24(%rsp), %r9                   # 8-byte Reload
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*384(%rbp)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	cmpl	$1, %eax
	jne	.LBB1_31
# %bb.15:                               # %if.end86
                                        #   in Loop: Header=BB1_5 Depth=1
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 112(%rsp)
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movq	$0, 128(%rsp)
	movq	424(%rbp), %rdi
	callq	lzma_index_size@PLT
	movq	%rax, 88(%rsp)
	movl	80(%rbp), %eax
	movl	%eax, 96(%rsp)
	leaq	80(%rsp), %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	lzma_stream_footer_encode@PLT
	testl	%eax, %eax
	jne	.LBB1_26
# %bb.16:                               # %cleanup101.thread176
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	$12, 440(%rbp)
	movl	$5, (%rbp)
	movl	$5, %eax
	movq	%r15, %rbx
	cmpq	%r12, (%r14)
	jb	.LBB1_5
	jmp	.LBB1_25
.LBB1_17:                               # %sw.bb46
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	8(%rbp), %rdi
	movl	208(%rsp), %eax
	movl	stream_encode.convert(,%rax,4), %eax
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	24(%rsp), %r9                   # 8-byte Reload
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*32(%rbp)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	%eax, %r13d
	cmpl	$1, 208(%rsp)
	je	.LBB1_26
# %bb.18:                               # %sw.bb46
                                        #   in Loop: Header=BB1_5 Depth=1
	cmpl	$1, %r13d
	jne	.LBB1_26
# %bb.19:                               # %if.end55
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	%r15, %rdi
	callq	lzma_block_unpadded_size@PLT
	movq	96(%rbp), %rcx
	movq	424(%rbp), %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rax, %rdx
	callq	lzma_index_append@PLT
	testl	%eax, %eax
	je	.LBB1_2
	jmp	.LBB1_31
.LBB1_20:                               # %if.end22
                                        #   in Loop: Header=BB1_5 Depth=1
	cmpb	$0, 4(%rbp)
	jne	.LBB1_23
# %bb.21:                               # %do.body24
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	48(%rsp), %rax                  # 8-byte Reload
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, (%rax)
	movq	%rbx, %rdi
	callq	lzma_block_header_size@PLT
	testl	%eax, %eax
	jne	.LBB1_31
# %bb.22:                               # %block_encoder_init.exit
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rbx, %rdx
	callq	lzma_block_encoder_init@PLT
	testl	%eax, %eax
	jne	.LBB1_31
.LBB1_23:                               # %if.end35
                                        #   in Loop: Header=BB1_5 Depth=1
	movb	$0, 4(%rbp)
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	lzma_block_header_encode@PLT
	testl	%eax, %eax
	jne	.LBB1_26
# %bb.24:                               # %if.end42
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	76(%rbp), %eax
	movq	%rax, 440(%rbp)
	movl	$2, (%rbp)
	movl	$2, %eax
	movq	%r15, %rbx
	cmpq	%r12, (%r14)
	jb	.LBB1_5
.LBB1_25:
	xorl	%r13d, %r13d
.LBB1_26:                               # %cleanup103
	movl	%r13d, %eax
	addq	$136, %rsp
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
.LBB1_31:
	.cfi_def_cfa_offset 192
	movl	%eax, %r13d
	jmp	.LBB1_26
.LBB1_27:
	movl	$1, %r13d
	jmp	.LBB1_26
.LBB1_30:                               # %if.then14
	xorl	%r13d, %r13d
	cmpl	$0, 208(%rsp)
	setne	%r13b
	jmp	.LBB1_26
.Lfunc_end1:
	.size	stream_encode, .Lfunc_end1-stream_encode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_7
	.quad	.LBB1_10
	.quad	.LBB1_7
	.quad	.LBB1_17
	.quad	.LBB1_14
	.quad	.LBB1_7
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function stream_encoder_end
	.type	stream_encoder_end,@function
stream_encoder_end:                     # @stream_encoder_end
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	addq	$8, %rdi
	callq	lzma_next_end@PLT
	leaq	360(%r14), %rdi
	movq	%rbx, %rsi
	callq	lzma_next_end@PLT
	movq	424(%r14), %rdi
	movq	%rbx, %rsi
	callq	lzma_index_end@PLT
	cmpq	$-1, 280(%r14)
	je	.LBB2_3
# %bb.1:                                # %for.body.preheader
	leaq	296(%r14), %r15
	.p2align	4, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r15), %rdi
	movq	%rbx, %rsi
	callq	lzma_free@PLT
	cmpq	$-1, (%r15)
	leaq	16(%r15), %r15
	jne	.LBB2_2
.LBB2_3:                                # %for.cond.cleanup
	movq	%r14, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Lfunc_end2:
	.size	stream_encoder_end, .Lfunc_end2-stream_encoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function stream_encoder_update
	.type	stream_encoder_update,@function
stream_encoder_update:                  # @stream_encoder_update
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	(%rdi), %edx
	cmpl	$1, %edx
	ja	.LBB3_6
# %bb.1:                                # %if.then
	movb	$0, 4(%r15)
	movq	%r14, 104(%r15)
	leaq	72(%r15), %r12
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, 88(%r15)
	movq	%r12, %rdi
	callq	lzma_block_header_size@PLT
	testl	%eax, %eax
	je	.LBB3_4
# %bb.2:                                # %block_encoder_init.exit.thread
	leaq	280(%r15), %rcx
	movq	%rcx, 104(%r15)
	jmp	.LBB3_3
.LBB3_6:                                # %if.else
	movl	$11, %eax
	cmpl	$3, %edx
	ja	.LBB3_3
# %bb.7:                                # %do.body
	movq	8(%r15), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*64(%r15)
	testl	%eax, %eax
	jne	.LBB3_3
# %bb.8:                                # %if.end22
	leaq	280(%r15), %r12
	cmpq	$-1, 280(%r15)
	jne	.LBB3_9
	jmp	.LBB3_11
.LBB3_4:                                # %block_encoder_init.exit
	leaq	8(%r15), %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	lzma_block_encoder_init@PLT
	leaq	280(%r15), %rcx
	movq	%rcx, 104(%r15)
	testl	%eax, %eax
	je	.LBB3_5
.LBB3_3:                                # %cleanup31
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
.LBB3_5:                                # %if.end
	.cfi_def_cfa_offset 48
	movb	$1, 4(%r15)
	leaq	280(%r15), %r12
	cmpq	$-1, 280(%r15)
	je	.LBB3_11
.LBB3_9:                                # %for.body.preheader
	addq	$296, %r15                      # imm = 0x128
	.p2align	4, 0x90
.LBB3_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r15), %rdi
	movq	%rbx, %rsi
	callq	lzma_free@PLT
	cmpq	$-1, (%r15)
	leaq	16(%r15), %r15
	jne	.LBB3_10
.LBB3_11:                               # %for.cond.cleanup
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
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
	jmp	lzma_filters_copy@PLT           # TAILCALL
.Lfunc_end3:
	.size	stream_encoder_update, .Lfunc_end3-stream_encoder_update
	.cfi_endproc
                                        # -- End function
	.globl	lzma_stream_encoder             # -- Begin function lzma_stream_encoder
	.p2align	4, 0x90
	.type	lzma_stream_encoder,@function
lzma_stream_encoder:                    # @lzma_stream_encoder
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	lzma_strm_init@PLT
	testl	%eax, %eax
	je	.LBB4_1
# %bb.4:                                # %return
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB4_1:                                # %do.end
	.cfi_def_cfa_offset 32
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	callq	lzma_stream_encoder_init
	testl	%eax, %eax
	je	.LBB4_3
# %bb.2:                                # %cleanup7
	movq	%rbx, %rdi
	movl	%eax, %ebx
	callq	lzma_end@PLT
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB4_3:                                # %do.end10
	.cfi_def_cfa_offset 32
	movq	56(%rbx), %rax
	movb	$1, 80(%rax)
	movq	56(%rbx), %rax
	movb	$1, 81(%rax)
	movq	56(%rbx), %rax
	movb	$1, 82(%rax)
	movq	56(%rbx), %rax
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	lzma_stream_encoder, .Lfunc_end4-lzma_stream_encoder
	.cfi_endproc
                                        # -- End function
	.type	stream_encode.convert,@object   # @stream_encode.convert
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
stream_encode.convert:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	3                               # 0x3
	.long	3                               # 0x3
	.size	stream_encode.convert, 16

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
