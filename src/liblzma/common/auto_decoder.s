	.text
	.file	"auto_decoder.c"
	.globl	lzma_auto_decoder               # -- Begin function lzma_auto_decoder
	.p2align	4, 0x90
	.type	lzma_auto_decoder,@function
lzma_auto_decoder:                      # @lzma_auto_decoder
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
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	lzma_strm_init@PLT
	testl	%eax, %eax
	jne	.LBB0_12
# %bb.1:                                # %do.end
	movq	48(%rbx), %r12
	movq	56(%rbx), %r15
	cmpq	$auto_decoder_init, 16(%r15)
	je	.LBB0_3
# %bb.2:                                # %if.then.i
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	lzma_next_end@PLT
.LBB0_3:                                # %if.end.i
	movq	$auto_decoder_init, 16(%r15)
	testq	%r14, %r14
	je	.LBB0_4
# %bb.5:                                # %if.end4.i
	movl	$8, %eax
	cmpl	$15, %ebp
	ja	.LBB0_9
# %bb.6:                                # %if.end6.i
	movq	(%r15), %rax
	testq	%rax, %rax
	jne	.LBB0_11
# %bb.7:                                # %if.then8.i
	movl	$80, %edi
	movq	%r12, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB0_8
# %bb.10:                               # %if.end13.i
	movq	$auto_decode, 24(%r15)
	movq	$auto_decoder_end, 32(%r15)
	movq	$auto_decoder_get_check, 40(%r15)
	movq	$auto_decoder_memconfig, 48(%r15)
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	(%r15), %rax
.LBB0_11:                               # %do.end10
	movq	%r14, 64(%rax)
	movq	(%r15), %rax
	movl	%ebp, 72(%rax)
	movq	(%r15), %rax
	movl	$0, 76(%rax)
	movq	56(%rbx), %rax
	movb	$1, 80(%rax)
	movq	56(%rbx), %rax
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	jmp	.LBB0_12
.LBB0_4:
	movl	$11, %eax
.LBB0_9:                                # %cleanup7
	movq	%rbx, %rdi
	movl	%eax, %ebx
	callq	lzma_end@PLT
	movl	%ebx, %eax
.LBB0_12:                               # %return
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
.LBB0_8:
	.cfi_def_cfa_offset 48
	movl	$5, %eax
	jmp	.LBB0_9
.Lfunc_end0:
	.size	lzma_auto_decoder, .Lfunc_end0-lzma_auto_decoder
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function auto_decoder_init
	.type	auto_decoder_init,@function
auto_decoder_init:                      # @auto_decoder_init
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
	movl	%ecx, %ebx
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	cmpq	$auto_decoder_init, 16(%rdi)
	je	.LBB1_2
# %bb.1:                                # %if.then
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	lzma_next_end@PLT
.LBB1_2:                                # %if.end
	movq	$auto_decoder_init, 16(%r14)
	testq	%r15, %r15
	je	.LBB1_3
# %bb.4:                                # %if.end4
	movl	$8, %eax
	cmpl	$15, %ebx
	ja	.LBB1_10
# %bb.5:                                # %if.end6
	movq	(%r14), %rax
	testq	%rax, %rax
	jne	.LBB1_9
# %bb.6:                                # %if.then8
	movl	$80, %edi
	movq	%r12, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB1_7
# %bb.8:                                # %if.end13
	movq	$auto_decode, 24(%r14)
	movq	$auto_decoder_end, 32(%r14)
	movq	$auto_decoder_get_check, 40(%r14)
	movq	$auto_decoder_memconfig, 48(%r14)
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	(%r14), %rax
.LBB1_9:                                # %if.end22
	movq	%r15, 64(%rax)
	movq	(%r14), %rax
	movl	%ebx, 72(%rax)
	movq	(%r14), %rax
	movl	$0, 76(%rax)
	xorl	%eax, %eax
	jmp	.LBB1_10
.LBB1_3:
	movl	$11, %eax
.LBB1_10:                               # %return
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
.LBB1_7:
	.cfi_def_cfa_offset 48
	movl	$5, %eax
	jmp	.LBB1_10
.Lfunc_end1:
	.size	auto_decoder_init, .Lfunc_end1-auto_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function auto_decode
	.type	auto_decode,@function
auto_decode:                            # @auto_decode
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
	movq	%rdi, %rbx
	movl	80(%rsp), %r15d
	movl	76(%rdi), %edi
	cmpl	$2, %edi
	je	.LBB2_12
# %bb.1:                                # %entry
	cmpl	$1, %edi
	je	.LBB2_9
# %bb.2:                                # %entry
	movl	$11, %eax
	testl	%edi, %edi
	jne	.LBB2_14
# %bb.3:                                # %sw.bb
	movq	(%rcx), %rdi
	xorl	%eax, %eax
	cmpq	%r8, %rdi
	jae	.LBB2_14
# %bb.4:                                # %if.end
	movq	%r9, (%rsp)                     # 8-byte Spill
	movq	%rcx, %r13
	movq	%r8, %r12
	movl	$1, 76(%rbx)
	movq	%rdx, %rbp
	cmpb	$-3, (%rdx,%rdi)
	movq	64(%rbx), %rdx
	jne	.LBB2_6
# %bb.5:                                # %do.body
	movl	72(%rbx), %ecx
	movq	%rbx, %rdi
	movq	%rsi, %r14
	callq	lzma_stream_decoder_init@PLT
	movq	%r14, %rsi
	testl	%eax, %eax
	movq	%r12, %r8
	movq	%r13, %rcx
	movq	(%rsp), %r9                     # 8-byte Reload
	movq	%rbp, %rdx
	jne	.LBB2_14
.LBB2_9:                                # %sw.bb32
	movq	(%rbx), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%rcx, %r14
	movq	%r8, %r12
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	*24(%rbx)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	cmpl	$1, %eax
	jne	.LBB2_14
# %bb.10:                               # %lor.lhs.false
	movl	$1, %eax
	testb	$8, 72(%rbx)
	je	.LBB2_14
# %bb.11:                               # %cleanup46
	movq	%r12, %r8
	movq	%r14, %rcx
	movl	$2, 76(%rbx)
.LBB2_12:                               # %sw.bb49
	movl	$9, %eax
	cmpq	%r8, (%rcx)
	jb	.LBB2_14
# %bb.13:                               # %if.end53
	xorl	%eax, %eax
	cmpl	$3, %r15d
	sete	%al
.LBB2_14:                               # %cleanup56
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
.LBB2_6:                                # %do.body9
	.cfi_def_cfa_offset 64
	movq	%rbx, %rdi
	movq	%rsi, %r14
	movl	$1, %ecx
	callq	lzma_alone_decoder_init@PLT
	testl	%eax, %eax
	jne	.LBB2_14
# %bb.7:                                # %do.end22
	movl	72(%rbx), %edi
	movl	$2, %eax
	testb	$1, %dil
	movq	(%rsp), %r9                     # 8-byte Reload
	jne	.LBB2_14
# %bb.8:                                # %if.end25
	movq	%r12, %r8
	movq	%r13, %rcx
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movl	$4, %eax
	testb	$4, %dil
	je	.LBB2_9
	jmp	.LBB2_14
.Lfunc_end2:
	.size	auto_decode, .Lfunc_end2-auto_decode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function auto_decoder_end
	.type	auto_decoder_end,@function
auto_decoder_end:                       # @auto_decoder_end
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
	.size	auto_decoder_end, .Lfunc_end3-auto_decoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function auto_decoder_get_check
	.type	auto_decoder_get_check,@function
auto_decoder_get_check:                 # @auto_decoder_get_check
	.cfi_startproc
# %bb.0:                                # %entry
	movq	40(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_1
# %bb.2:                                # %cond.false
	movq	(%rdi), %rdi
	jmpq	*%rax                           # TAILCALL
.LBB4_1:                                # %cond.end
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	auto_decoder_get_check, .Lfunc_end4-auto_decoder_get_check
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function auto_decoder_memconfig
	.type	auto_decoder_memconfig,@function
auto_decoder_memconfig:                 # @auto_decoder_memconfig
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
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movq	48(%rdi), %rax
	testq	%rax, %rax
	je	.LBB5_2
# %bb.1:                                # %if.then
	movq	(%r14), %rdi
	movq	%rbx, %rcx
	callq	*%rax
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movq	$32768, (%rsi)                  # imm = 0x8000
	movq	64(%r14), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
.LBB5_3:                                # %if.end
	testl	%eax, %eax
	setne	%cl
	testq	%rbx, %rbx
	sete	%dl
	orb	%cl, %dl
	jne	.LBB5_5
# %bb.4:                                # %if.then7
	movq	%rbx, 64(%r14)
.LBB5_5:                                # %if.end9
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	auto_decoder_memconfig, .Lfunc_end5-auto_decoder_memconfig
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
