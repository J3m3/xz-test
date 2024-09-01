	.text
	.file	"stream_decoder.c"
	.globl	lzma_stream_decoder_init        # -- Begin function lzma_stream_decoder_init
	.p2align	4, 0x90
	.type	lzma_stream_decoder_init,@function
lzma_stream_decoder_init:               # @lzma_stream_decoder_init
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
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpq	$lzma_stream_decoder_init, 16(%rdi)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	lzma_next_end@PLT
.LBB0_2:                                # %if.end
	movq	$lzma_stream_decoder_init, 16(%r14)
	testq	%r15, %r15
	je	.LBB0_9
# %bb.3:                                # %if.end4
	movl	$8, %eax
	cmpl	$15, %ebp
	ja	.LBB0_12
# %bb.4:                                # %if.end6
	movq	(%r14), %rax
	testq	%rax, %rax
	jne	.LBB0_7
# %bb.5:                                # %if.then8
	movl	$1400, %edi                     # imm = 0x578
	movq	%rbx, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB0_11
# %bb.6:                                # %if.end13
	movq	$stream_decode, 24(%r14)
	movq	$stream_decoder_end, 32(%r14)
	movq	$stream_decoder_get_check, 40(%r14)
	movq	$stream_decoder_memconfig, 48(%r14)
	movq	$0, 8(%rax)
	movq	$-1, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movups	%xmm0, 40(%rax)
	movups	%xmm0, 56(%rax)
	movq	(%r14), %rax
	movq	$0, 336(%rax)
	movq	(%r14), %rax
.LBB0_7:                                # %if.end22
	movq	%r15, 344(%rax)
	movq	(%r14), %rax
	movq	$32768, 352(%rax)               # imm = 0x8000
	movq	(%r14), %rax
	movl	%ebp, %ecx
	andb	$1, %cl
	movb	%cl, 360(%rax)
	movq	(%r14), %rax
	movl	%ebp, %ecx
	shrb	%cl
	andb	$1, %cl
	movb	%cl, 361(%rax)
	movq	(%r14), %rax
	movl	%ebp, %ecx
	shrb	$2, %cl
	andb	$1, %cl
	movb	%cl, 362(%rax)
	cmpl	$8, %ebp
	movq	(%r14), %rax
	setae	363(%rax)
	movq	(%r14), %rax
	movb	$1, 364(%rax)
	movq	(%r14), %r14
	movq	336(%r14), %rdi
	movq	%rbx, %rsi
	callq	lzma_index_hash_init@PLT
	movq	%rax, 336(%r14)
	testq	%rax, %rax
	je	.LBB0_11
# %bb.8:                                # %if.end.i
	movl	$0, (%r14)
	movq	$0, 368(%r14)
	xorl	%eax, %eax
	jmp	.LBB0_12
.LBB0_9:
	movl	$11, %eax
	jmp	.LBB0_12
.LBB0_11:
	movl	$5, %eax
.LBB0_12:                               # %return
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
.Lfunc_end0:
	.size	lzma_stream_decoder_init, .Lfunc_end0-lzma_stream_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function stream_decode
	.type	stream_decode,@function
stream_decode:                          # @stream_decode
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 48(%rsp)                   # 8-byte Spill
	movq	%rcx, %r15
	movq	%rdx, %r13
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, %r14
	movl	224(%rsp), %r12d
	leaq	376(%rdi), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leaq	368(%rdi), %rbx
	leaq	280(%rdi), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	72(%rdi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	8(%rdi), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%r8, %rax
	negq	%rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movl	(%rdi), %eax
	movq	%r8, (%rsp)                     # 8-byte Spill
.LBB1_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_23 Depth 2
	cmpl	$5, %eax
	ja	.LBB1_58
# %bb.2:                                # %while.cond
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, %eax
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_3:                                # %sw.bb
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$12, %r9d
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r8, %rdx
	movq	24(%rsp), %rbp                  # 8-byte Reload
	movq	%rbp, %rcx
	movq	%rbx, %r8
	callq	lzma_bufcpy@PLT
	cmpq	$12, (%rbx)
	jb	.LBB1_44
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	$0, (%rbx)
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	%rbp, %rsi
	callq	lzma_stream_header_decode@PLT
	testl	%eax, %eax
	jne	.LBB1_49
# %bb.5:                                # %if.end9
                                        #   in Loop: Header=BB1_1 Depth=1
	movb	$0, 364(%r14)
	movl	296(%r14), %edi
	movl	%edi, 80(%r14)
	movl	$1, (%r14)
	testl	%edi, %edi
	sete	%al
	testb	%al, 360(%r14)
	jne	.LBB1_62
# %bb.6:                                # %if.end20
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpb	$1, 361(%r14)
	jne	.LBB1_8
# %bb.7:                                # %land.lhs.true22
                                        #   in Loop: Header=BB1_1 Depth=1
	callq	lzma_check_is_supported@PLT
	testb	%al, %al
	je	.LBB1_64
.LBB1_8:                                # %cleanup
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, 362(%r14)
	movq	(%rsp), %r8                     # 8-byte Reload
	jne	.LBB1_63
.LBB1_9:                                # %sw.bb31
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	(%r15), %rax
	xorl	%ebp, %ebp
	cmpq	%r8, %rax
	jae	.LBB1_45
# %bb.10:                               # %if.end34
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, (%rbx)
	je	.LBB1_28
# %bb.11:                               # %if.end34.if.end46_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	76(%r14), %eax
	jmp	.LBB1_30
.LBB1_12:                               # %sw.bb137
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r8, (%r15)
	jae	.LBB1_44
# %bb.13:                               # %if.end141
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	336(%r14), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r8, %rcx
	callq	lzma_index_hash_decode@PLT
	cmpl	$1, %eax
	jne	.LBB1_55
# %bb.14:                               # %cleanup150.thread
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$4, (%r14)
	movq	(%rsp), %r8                     # 8-byte Reload
.LBB1_15:                               # %sw.bb153
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$12, %r9d
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r8, %rdx
	movq	24(%rsp), %rbp                  # 8-byte Reload
	movq	%rbp, %rcx
	movq	%rbx, %r8
	callq	lzma_bufcpy@PLT
	cmpq	$12, (%rbx)
	jb	.LBB1_44
# %bb.16:                               # %if.end162
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	$0, (%rbx)
	leaq	64(%rsp), %rdi
	movq	%rbp, %rsi
	callq	lzma_stream_footer_decode@PLT
	testl	%eax, %eax
	jne	.LBB1_51
# %bb.17:                               # %if.end177
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	336(%r14), %rdi
	callq	lzma_index_hash_size@PLT
	cmpq	72(%rsp), %rax
	jne	.LBB1_52
# %bb.18:                               # %do.body184
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	32(%rsp), %rdi                  # 8-byte Reload
	leaq	64(%rsp), %rsi
	callq	lzma_stream_flags_compare@PLT
	testl	%eax, %eax
	jne	.LBB1_55
# %bb.19:                               # %do.end196
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, 363(%r14)
	je	.LBB1_54
# %bb.20:                               # %cleanup201
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$5, (%r14)
	movq	(%rsp), %r8                     # 8-byte Reload
.LBB1_21:                               # %sw.bb205
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	(%r15), %rax
	cmpq	%r8, %rax
	movq	56(%rsp), %rdx                  # 8-byte Reload
	jae	.LBB1_42
# %bb.22:                               # %if.end219.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	incq	%rax
	.p2align	4, 0x90
.LBB1_23:                               # %if.end219
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, -1(%r13,%rax)
	jne	.LBB1_25
# %bb.24:                               # %if.end225
                                        #   in Loop: Header=BB1_23 Depth=2
	movq	%rax, (%r15)
	movl	(%rbx), %ecx
	incl	%ecx
	andl	$3, %ecx
	movq	%rcx, (%rbx)
	leaq	(%rdx,%rax), %rcx
	incq	%rcx
	incq	%rax
	cmpq	$1, %rcx
	jne	.LBB1_23
	jmp	.LBB1_42
	.p2align	4, 0x90
.LBB1_25:                               # %while.end
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, (%rbx)
	jne	.LBB1_56
# %bb.26:                               # %do.body236
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	336(%r14), %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	lzma_index_hash_init@PLT
	movq	%rax, 336(%r14)
	testq	%rax, %rax
	je	.LBB1_57
# %bb.27:                               # %stream_decoder_reset.exit.thread
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, (%r14)
	movq	$0, 368(%r14)
	xorl	%eax, %eax
	movq	(%rsp), %r8                     # 8-byte Reload
	jmp	.LBB1_1
.LBB1_28:                               # %if.then37
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	(%r13,%rax), %eax
	testl	%eax, %eax
	je	.LBB1_41
# %bb.29:                               # %if.end42
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	4(,%rax,4), %eax
	movl	%eax, 76(%r14)
.LBB1_30:                               # %if.end46
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, %r9d
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r8, %rdx
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	lzma_bufcpy@PLT
	movl	76(%r14), %eax
	cmpq	%rax, 368(%r14)
	jb	.LBB1_45
# %bb.31:                               # %if.end61
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	$0, 368(%r14)
	movl	$0, 72(%r14)
	leaq	64(%rsp), %rax
	movq	%rax, 104(%r14)
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%r12, %rdx
	callq	lzma_block_header_decode@PLT
	testl	%eax, %eax
	jne	.LBB1_55
# %bb.32:                               # %do.end
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	64(%rsp), %rdi
	callq	lzma_raw_decoder_memusage@PLT
	cmpq	$-1, %rax
	je	.LBB1_35
# %bb.33:                               # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, 352(%r14)
	movl	$6, %ebp
	cmpq	344(%r14), %rax
	ja	.LBB1_36
# %bb.34:                               # %if.else88
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	callq	lzma_block_decoder_init@PLT
	movl	%eax, %ebp
	jmp	.LBB1_36
.LBB1_35:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$8, %ebp
.LBB1_36:                               # %if.end92
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	72(%rsp), %rdi
	movq	8(%rsp), %r12                   # 8-byte Reload
	movq	%r12, %rsi
	callq	lzma_free@PLT
	movq	88(%rsp), %rdi
	movq	%r12, %rsi
	callq	lzma_free@PLT
	movq	104(%rsp), %rdi
	movq	%r12, %rsi
	callq	lzma_free@PLT
	movq	120(%rsp), %rdi
	movq	%r12, %rsi
	callq	lzma_free@PLT
	movq	$0, 104(%r14)
	testl	%ebp, %ebp
	jne	.LBB1_45
# %bb.37:                               # %cleanup106
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$2, (%r14)
	movq	(%rsp), %r8                     # 8-byte Reload
	movl	224(%rsp), %r12d
.LBB1_38:                               # %sw.bb109
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	8(%r14), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	movq	%r15, %rcx
	movq	56(%rsp), %r9                   # 8-byte Reload
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	232(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	232(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	*32(%r14)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	cmpl	$1, %eax
	jne	.LBB1_55
# %bb.39:                               # %do.body119
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	336(%r14), %rbp
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	lzma_block_unpadded_size@PLT
	movq	96(%r14), %rdx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	lzma_index_hash_append@PLT
	testl	%eax, %eax
	jne	.LBB1_55
# %bb.40:                               # %cleanup135
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$1, (%r14)
	movl	$1, %eax
	movq	(%rsp), %r8                     # 8-byte Reload
	jmp	.LBB1_1
.LBB1_41:                               # %if.then40
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$3, (%r14)
	movl	$3, %eax
	jmp	.LBB1_1
.LBB1_42:                               # %if.then210
	cmpl	$3, %r12d
	jne	.LBB1_44
# %bb.43:                               # %if.end214
	xorl	%eax, %eax
	cmpq	$0, (%rbx)
	setne	%al
	leal	1(,%rax,8), %ebp
	jmp	.LBB1_45
.LBB1_44:
	xorl	%ebp, %ebp
	jmp	.LBB1_45
.LBB1_55:
	movl	%eax, %ebp
.LBB1_45:                               # %cleanup248
	movl	%ebp, %eax
	addq	$152, %rsp
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
.LBB1_49:                               # %if.end
	.cfi_def_cfa_offset 208
	movl	%eax, %ebp
	cmpl	$7, %eax
	jne	.LBB1_45
# %bb.50:                               # %land.lhs.true
	movzbl	364(%r14), %eax
	xorl	$1, %eax
	leal	7(,%rax,2), %ebp
	jmp	.LBB1_45
.LBB1_51:                               # %if.then170
	cmpl	$7, %eax
	movl	$9, %ebp
	cmovnel	%eax, %ebp
	jmp	.LBB1_45
.LBB1_52:
	movl	$9, %ebp
	jmp	.LBB1_45
.LBB1_54:
	movl	$1, %ebp
	jmp	.LBB1_45
.LBB1_56:                               # %if.then233
	movq	%rax, (%r15)
	movl	$9, %ebp
	jmp	.LBB1_45
.LBB1_57:
	movl	$5, %ebp
	jmp	.LBB1_45
.LBB1_58:
	movl	$11, %ebp
	jmp	.LBB1_45
.LBB1_62:
	movl	$2, %ebp
	jmp	.LBB1_45
.LBB1_63:
	movl	$4, %ebp
	jmp	.LBB1_45
.LBB1_64:
	movl	$3, %ebp
	jmp	.LBB1_45
.Lfunc_end1:
	.size	stream_decode, .Lfunc_end1-stream_decode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_3
	.quad	.LBB1_9
	.quad	.LBB1_38
	.quad	.LBB1_12
	.quad	.LBB1_15
	.quad	.LBB1_21
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function stream_decoder_end
	.type	stream_decoder_end,@function
stream_decoder_end:                     # @stream_decoder_end
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
	addq	$8, %rdi
	callq	lzma_next_end@PLT
	movq	336(%r14), %rdi
	movq	%rbx, %rsi
	callq	lzma_index_hash_end@PLT
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
	.size	stream_decoder_end, .Lfunc_end2-stream_decoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function stream_decoder_get_check
	.type	stream_decoder_get_check,@function
stream_decoder_get_check:               # @stream_decoder_get_check
	.cfi_startproc
# %bb.0:                                # %entry
	movl	296(%rdi), %eax
	retq
.Lfunc_end3:
	.size	stream_decoder_get_check, .Lfunc_end3-stream_decoder_get_check
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function stream_decoder_memconfig
	.type	stream_decoder_memconfig,@function
stream_decoder_memconfig:               # @stream_decoder_memconfig
	.cfi_startproc
# %bb.0:                                # %entry
	movq	352(%rdi), %rax
	movq	%rax, (%rsi)
	movq	344(%rdi), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB4_3
# %bb.1:                                # %if.then
	movl	$6, %eax
	cmpq	%rcx, 352(%rdi)
	ja	.LBB4_3
# %bb.2:                                # %if.end
	movq	%rcx, 344(%rdi)
	xorl	%eax, %eax
.LBB4_3:                                # %cleanup
	retq
.Lfunc_end4:
	.size	stream_decoder_memconfig, .Lfunc_end4-stream_decoder_memconfig
	.cfi_endproc
                                        # -- End function
	.globl	lzma_stream_decoder             # -- Begin function lzma_stream_decoder
	.p2align	4, 0x90
	.type	lzma_stream_decoder,@function
lzma_stream_decoder:                    # @lzma_stream_decoder
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
	je	.LBB5_1
# %bb.4:                                # %return
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB5_1:                                # %do.end
	.cfi_def_cfa_offset 32
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	callq	lzma_stream_decoder_init
	testl	%eax, %eax
	je	.LBB5_3
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
.LBB5_3:                                # %do.end10
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
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	lzma_stream_decoder, .Lfunc_end5-lzma_stream_decoder
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
