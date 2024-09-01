	.text
	.file	"index_encoder.c"
	.globl	lzma_index_encoder_init         # -- Begin function lzma_index_encoder_init
	.p2align	4, 0x90
	.type	lzma_index_encoder_init,@function
lzma_index_encoder_init:                # @lzma_index_encoder_init
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
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	cmpq	$lzma_index_encoder_init, 16(%rdi)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	lzma_next_end@PLT
.LBB0_2:                                # %if.end
	movq	$lzma_index_encoder_init, 16(%r14)
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.4:                                # %if.end4
	movq	(%r14), %r15
	testq	%r15, %r15
	jne	.LBB0_8
# %bb.5:                                # %if.then6
	movl	$336, %edi                      # imm = 0x150
	movq	%r12, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB0_6
# %bb.7:                                # %if.end11
	movq	%rax, %r15
	movq	$index_encode, 24(%r14)
	movq	$index_encoder_end, 32(%r14)
.LBB0_8:                                # %if.end12
	leaq	16(%r15), %rdi
	movq	%rbx, %rsi
	callq	lzma_index_iter_init@PLT
	movl	$0, (%r15)
	movq	%rbx, 8(%r15)
	movq	$0, 320(%r15)
	movl	$0, 328(%r15)
	xorl	%eax, %eax
	jmp	.LBB0_9
.LBB0_3:
	movl	$11, %eax
.LBB0_9:                                # %return
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
.LBB0_6:
	.cfi_def_cfa_offset 48
	movl	$5, %eax
	jmp	.LBB0_9
.Lfunc_end0:
	.size	lzma_index_encoder_init, .Lfunc_end0-lzma_index_encoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_encode
	.type	index_encode,@function
index_encode:                           # @index_encode
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
	movq	%r9, %r14
	movq	%rdi, %rbx
	movq	88(%rsp), %r12
	movq	80(%rsp), %r15
	movq	(%r15), %rax
	xorl	%ebp, %ebp
	movq	%rax, %rsi
	cmpq	%r12, %rax
	jae	.LBB1_22
# %bb.1:                                # %while.body.lr.ph
	leaq	320(%rbx), %r13
	leaq	16(%rbx), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rax, %rsi
	movl	(%rbx), %eax
	movl	%eax, %ecx
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB1_4
.LBB1_2:                                # %sw.bb
                                        #   in Loop: Header=BB1_4 Depth=1
	movb	$0, (%r14,%rsi)
	incq	%rsi
	movq	%rsi, (%r15)
	movl	$1, (%rbx)
	movl	$1, %eax
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB1_3:                                # %sw.epilog
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	(%r15), %rsi
	cmpq	%r12, %rsi
	jae	.LBB1_17
.LBB1_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, %ecx
	ja	.LBB1_19
# %bb.5:                                # %while.body
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	%ecx, %ecx
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_6:                                # %sw.bb16
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	$184, %ecx
	cmpl	$2, %eax
	je	.LBB1_14
	jmp	.LBB1_15
.LBB1_7:                                # %sw.bb7
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	$2, %esi
	callq	lzma_index_iter_next@PLT
	testb	%al, %al
	je	.LBB1_13
# %bb.8:                                # %if.then9
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	8(%rbx), %rdi
	callq	lzma_index_padding_size@PLT
	movl	%eax, %eax
	movq	%rax, 320(%rbx)
	movl	$5, (%rbx)
	movl	$5, %eax
	movl	$5, %ecx
	jmp	.LBB1_3
.LBB1_9:                                # %sw.bb2
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	8(%rbx), %rdi
	callq	lzma_index_block_count@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lzma_vli_encode@PLT
	cmpl	$1, %eax
	jne	.LBB1_20
# %bb.10:                               # %cleanup.thread
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	$0, 320(%rbx)
	movl	$4, (%rbx)
	movl	$4, %eax
	movl	$4, %ecx
	jmp	.LBB1_3
.LBB1_11:                               # %sw.bb34
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB1_24
# %bb.12:                               # %if.then38
                                        #   in Loop: Header=BB1_4 Depth=1
	decq	%rcx
	movq	%rcx, (%r13)
	leaq	1(%rsi), %rcx
	movq	%rcx, (%r15)
	movb	$0, (%r14,%rsi)
	movl	$5, %ecx
	jmp	.LBB1_3
.LBB1_13:                               # %sw.bb16.thread
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	$2, (%rbx)
.LBB1_14:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$192, %ecx
.LBB1_15:                               #   in Loop: Header=BB1_4 Depth=1
	movq	(%rbx,%rcx), %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lzma_vli_encode@PLT
	cmpl	$1, %eax
	jne	.LBB1_20
# %bb.16:                               # %cleanup32.thread
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	$0, 320(%rbx)
	movl	(%rbx), %eax
	incl	%eax
	movl	%eax, (%rbx)
	movl	%eax, %ecx
	jmp	.LBB1_3
.LBB1_17:
	xorl	%ebp, %ebp
	jmp	.LBB1_21
.LBB1_20:
	movl	%eax, %ebp
.LBB1_21:                               # %out60.loopexit
	movq	(%r15), %rsi
	movq	8(%rsp), %rax                   # 8-byte Reload
.LBB1_22:                               # %out60
	addq	%rax, %r14
	subq	%rax, %rsi
	movl	328(%rbx), %edx
	movq	%r14, %rdi
	callq	lzma_crc32@PLT
	movl	%eax, 328(%rbx)
.LBB1_23:                               # %cleanup66
	movl	%ebp, %eax
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
.LBB1_19:                               # %cleanup66.loopexit1
	.cfi_def_cfa_offset 80
	movl	$11, %ebp
	jmp	.LBB1_23
.LBB1_24:                               # %if.end42
	movq	8(%rsp), %rax                   # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	subq	%rax, %rsi
	movl	328(%rbx), %edx
	callq	lzma_crc32@PLT
	movl	%eax, 328(%rbx)
	movl	$6, (%rbx)
	movq	(%r15), %rsi
.LBB1_25:                               # %sw.bb46
	incq	%rsi
	negq	%r12
	.p2align	4, 0x90
.LBB1_26:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r12,%rsi), %rax
	cmpq	$1, %rax
	je	.LBB1_29
# %bb.27:                               # %if.end50
                                        #   in Loop: Header=BB1_26 Depth=1
	movl	328(%rbx), %eax
	movq	320(%rbx), %rdx
	leal	(,%rdx,8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %eax
	movb	%al, -1(%r14,%rsi)
	movq	%rsi, (%r15)
	incq	%rdx
	movq	%rdx, 320(%rbx)
	incq	%rsi
	cmpq	$4, %rdx
	jb	.LBB1_26
# %bb.28:
	movl	$1, %ebp
	jmp	.LBB1_23
.LBB1_29:
	xorl	%ebp, %ebp
	jmp	.LBB1_23
.Lfunc_end1:
	.size	index_encode, .Lfunc_end1-index_encode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_2
	.quad	.LBB1_9
	.quad	.LBB1_6
	.quad	.LBB1_6
	.quad	.LBB1_7
	.quad	.LBB1_11
	.quad	.LBB1_25
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function index_encoder_end
	.type	index_encoder_end,@function
index_encoder_end:                      # @index_encoder_end
	.cfi_startproc
# %bb.0:                                # %entry
	jmp	lzma_free@PLT                   # TAILCALL
.Lfunc_end2:
	.size	index_encoder_end, .Lfunc_end2-index_encoder_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_encoder              # -- Begin function lzma_index_encoder
	.p2align	4, 0x90
	.type	lzma_index_encoder,@function
lzma_index_encoder:                     # @lzma_index_encoder
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	lzma_strm_init@PLT
	testl	%eax, %eax
	jne	.LBB3_11
# %bb.1:                                # %do.end
	movq	48(%rbx), %r13
	movq	56(%rbx), %r15
	cmpq	$lzma_index_encoder_init, 16(%r15)
	je	.LBB3_3
# %bb.2:                                # %if.then.i
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	lzma_next_end@PLT
.LBB3_3:                                # %if.end.i
	movq	$lzma_index_encoder_init, 16(%r15)
	testq	%r14, %r14
	je	.LBB3_4
# %bb.5:                                # %if.end4.i
	movq	(%r15), %r12
	testq	%r12, %r12
	jne	.LBB3_10
# %bb.6:                                # %if.then6.i
	movl	$336, %edi                      # imm = 0x150
	movq	%r13, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB3_7
# %bb.9:                                # %if.end11.i
	movq	%rax, %r12
	movq	$index_encode, 24(%r15)
	movq	$index_encoder_end, 32(%r15)
.LBB3_10:                               # %do.end10
	leaq	16(%r12), %rdi
	movq	%r14, %rsi
	callq	lzma_index_iter_init@PLT
	movl	$0, (%r12)
	movq	%r14, 8(%r12)
	movq	$0, 320(%r12)
	movl	$0, 328(%r12)
	movq	56(%rbx), %rax
	movb	$1, 80(%rax)
	movq	56(%rbx), %rax
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	jmp	.LBB3_11
.LBB3_4:
	movl	$11, %ebp
.LBB3_8:                                # %cleanup7
	movq	%rbx, %rdi
	callq	lzma_end@PLT
	movl	%ebp, %eax
.LBB3_11:                               # %return
	addq	$8, %rsp
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
.LBB3_7:
	.cfi_def_cfa_offset 64
	movl	$5, %ebp
	jmp	.LBB3_8
.Lfunc_end3:
	.size	lzma_index_encoder, .Lfunc_end3-lzma_index_encoder
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_buffer_encode        # -- Begin function lzma_index_buffer_encode
	.p2align	4, 0x90
	.type	lzma_index_buffer_encode,@function
lzma_index_buffer_encode:               # @lzma_index_buffer_encode
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
	subq	$336, %rsp                      # imm = 0x150
	.cfi_def_cfa_offset 384
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	testq	%rdi, %rdi
	sete	%al
	testq	%rsi, %rsi
	sete	%dl
	orb	%al, %dl
	testq	%rbx, %rbx
	sete	%al
	orb	%dl, %al
	movl	$11, %eax
	jne	.LBB4_5
# %bb.1:                                # %lor.lhs.false4
	movq	%rcx, %r13
	subq	(%rbx), %r13
	jb	.LBB4_5
# %bb.2:                                # %if.end
	movq	%rdi, %r14
	movq	%rsi, %r15
	movq	%rcx, %r12
	callq	lzma_index_size@PLT
	movq	%rax, %rcx
	movl	$10, %eax
	cmpq	%rcx, %r13
	jb	.LBB4_5
# %bb.3:                                # %if.end8
	leaq	16(%rsp), %rdi
	movq	%r14, %rsi
	callq	lzma_index_iter_init@PLT
	movl	$0, (%rsp)
	movq	%r14, 8(%rsp)
	movq	$0, 320(%rsp)
	movl	$0, 328(%rsp)
	movq	(%rbx), %r14
	subq	$16, %rsp
	.cfi_adjust_cfa_offset 16
	leaq	16(%rsp), %rdi
	movq	%r15, %r9
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	index_encode
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	je	.LBB4_5
# %bb.4:                                # %if.else
	movq	%r14, (%rbx)
	movl	$11, %eax
.LBB4_5:                                # %return
	addq	$336, %rsp                      # imm = 0x150
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
.Lfunc_end4:
	.size	lzma_index_buffer_encode, .Lfunc_end4-lzma_index_buffer_encode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
