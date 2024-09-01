	.text
	.file	"alone_encoder.c"
	.globl	lzma_alone_encoder              # -- Begin function lzma_alone_encoder
	.p2align	4, 0x90
	.type	lzma_alone_encoder,@function
lzma_alone_encoder:                     # @lzma_alone_encoder
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	lzma_strm_init@PLT
	testl	%eax, %eax
	je	.LBB0_1
# %bb.4:                                # %return
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:                                # %do.end
	.cfi_def_cfa_offset 32
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movq	%r14, %rdx
	callq	alone_encoder_init
	testl	%eax, %eax
	je	.LBB0_3
# %bb.2:                                # %cleanup7
	movq	%rbx, %rdi
	movl	%eax, %ebx
	callq	lzma_end@PLT
	movl	%ebx, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_3:                                # %do.end10
	.cfi_def_cfa_offset 32
	movq	56(%rbx), %rax
	movb	$1, 80(%rax)
	movq	56(%rbx), %rax
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_alone_encoder, .Lfunc_end0-lzma_alone_encoder
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function alone_encoder_init
	.type	alone_encoder_init,@function
alone_encoder_init:                     # @alone_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpq	$alone_encoder_init, 16(%rdi)
	je	.LBB1_2
# %bb.1:                                # %if.then
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	lzma_next_end@PLT
.LBB1_2:                                # %if.end
	movq	$alone_encoder_init, 16(%r14)
	movq	(%r14), %rax
	testq	%rax, %rax
	jne	.LBB1_6
# %bb.3:                                # %if.then3
	movl	$96, %edi
	movq	%rbx, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB1_4
# %bb.5:                                # %if.end8
	movq	$alone_encode, 24(%r14)
	movq	$alone_encoder_end, 32(%r14)
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	(%r14), %rax
.LBB1_6:                                # %if.end15
	movl	$0, 64(%rax)
	movq	(%r14), %rax
	movq	$0, 72(%rax)
	movq	(%r14), %rsi
	addq	$80, %rsi
	movq	%r15, %rdi
	callq	lzma_lzma_lclppb_encode@PLT
	movl	%eax, %ecx
	movl	$8, %eax
	testb	%cl, %cl
	jne	.LBB1_9
# %bb.7:                                # %if.end21
	movl	(%r15), %ecx
	cmpl	$4096, %ecx                     # imm = 0x1000
	jb	.LBB1_9
# %bb.8:                                # %if.end24
	decl	%ecx
	movl	%ecx, %eax
	shrl	$2, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$3, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$4, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$16, %eax
	orl	%ecx, %eax
	incl	%eax
	movl	$-1, %ecx
	cmovnel	%eax, %ecx
	movq	(%r14), %rax
	movl	%ecx, 81(%rax)
	movq	(%r14), %rax
	movq	$-1, 85(%rax)
	movq	$0, (%rsp)
	movq	lzma_lzma_encoder_init@GOTPCREL(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rsp)
	movq	$0, 40(%rsp)
	movq	(%r14), %rdi
	movq	%rsp, %rdx
	movq	%rbx, %rsi
	callq	lzma_next_filter_init@PLT
	jmp	.LBB1_9
.LBB1_4:
	movl	$5, %eax
.LBB1_9:                                # %return
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	alone_encoder_init, .Lfunc_end1-alone_encoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function alone_encode
	.type	alone_encode,@function
alone_encode:                           # @alone_encode
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
	movq	88(%rsp), %rbx
	movq	80(%rsp), %r14
	cmpq	%rbx, (%r14)
	jae	.LBB2_5
# %bb.1:                                # %while.body.lr.ph
	movl	64(%rdi), %r10d
	cmpl	$1, %r10d
	je	.LBB2_8
# %bb.2:                                # %while.body.lr.ph
	movl	$11, %eax
	testl	%r10d, %r10d
	jne	.LBB2_6
# %bb.3:                                # %sw.bb.peel
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%r8, %r12
	leaq	80(%rdi), %rax
	movq	%rdi, %r13
	leaq	72(%rdi), %r15
	movl	$13, %edx
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r9, %rbp
	movq	%r9, %rcx
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	lzma_bufcpy@PLT
	cmpq	$13, (%r15)
	jae	.LBB2_7
.LBB2_5:
	xorl	%eax, %eax
.LBB2_6:                                # %cleanup
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
.LBB2_7:                                # %if.end.peel
	.cfi_def_cfa_offset 80
	movq	%r13, %rdi
	movl	$1, 64(%r13)
	movl	$0, %eax
	cmpq	%rbx, (%r14)
	movq	%rbp, %r9
	movq	%r12, %r8
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	jae	.LBB2_6
.LBB2_8:                                # %sw.bb4
	movq	(%rdi), %rax
	movq	24(%rdi), %r11
	movq	%rax, %rdi
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
	jmpq	*%r11                           # TAILCALL
.Lfunc_end2:
	.size	alone_encode, .Lfunc_end2-alone_encode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function alone_encoder_end
	.type	alone_encoder_end,@function
alone_encoder_end:                      # @alone_encoder_end
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
.Lfunc_end3:
	.size	alone_encoder_end, .Lfunc_end3-alone_encoder_end
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
