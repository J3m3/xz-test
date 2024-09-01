	.text
	.file	"stream_buffer_encoder.c"
	.globl	lzma_stream_buffer_bound        # -- Begin function lzma_stream_buffer_bound
	.p2align	4, 0x90
	.type	lzma_stream_buffer_bound,@function
lzma_stream_buffer_bound:               # @lzma_stream_buffer_bound
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	lzma_block_buffer_bound@PLT
	leaq	48(%rax), %rcx
	xorl	%edx, %edx
	movabsq	$9223372036854775759, %rsi      # imm = 0x7FFFFFFFFFFFFFCF
	cmpq	%rsi, %rax
	cmovleq	%rcx, %rdx
	testq	%rax, %rax
	cmovneq	%rdx, %rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_stream_buffer_bound, .Lfunc_end0-lzma_stream_buffer_bound
	.cfi_endproc
                                        # -- End function
	.globl	lzma_stream_buffer_encode       # -- Begin function lzma_stream_buffer_encode
	.p2align	4, 0x90
	.type	lzma_stream_buffer_encode,@function
lzma_stream_buffer_encode:              # @lzma_stream_buffer_encode
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	sete	%al
	cmpl	$16, %esi
	setae	%r10b
	orb	%al, %r10b
	movl	$11, %eax
	jne	.LBB1_13
# %bb.1:                                # %lor.lhs.false2
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
	subq	$328, %rsp                      # imm = 0x148
	.cfi_def_cfa_offset 384
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	384(%rsp), %r13
	testq	%rcx, %rcx
	sete	%r10b
	testq	%r8, %r8
	setne	%r11b
	andb	%r10b, %r11b
	testq	%r9, %r9
	sete	%r10b
	orb	%r11b, %r10b
	testq	%r13, %r13
	sete	%r11b
	orb	%r10b, %r11b
	jne	.LBB1_12
# %bb.2:                                # %lor.lhs.false9
	movq	392(%rsp), %r15
	cmpq	%r15, (%r13)
	ja	.LBB1_12
# %bb.3:                                # %if.end
	movq	%rdi, %r14
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%r8, %rbp
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%r9, 24(%rsp)                   # 8-byte Spill
	movl	%esi, %ebx
	movl	%esi, %edi
	callq	lzma_check_is_supported@PLT
	testb	%al, %al
	je	.LBB1_11
# %bb.4:                                # %if.end12
	movq	(%r13), %r12
	movq	%r15, %rcx
	subq	%r12, %rcx
	movl	$10, %eax
	cmpq	$25, %rcx
	jb	.LBB1_12
# %bb.5:                                # %if.end15
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	$0, 96(%rsp)
	movl	%ebx, 64(%rsp)
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r12), %rsi
	leaq	48(%rsp), %rdi
	callq	lzma_stream_header_encode@PLT
	movl	%eax, %ecx
	movl	$11, %eax
	testl	%ecx, %ecx
	jne	.LBB1_12
# %bb.6:                                # %if.end21
	addq	$-12, %r15
	addq	$12, %r12
	movq	%r12, 32(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 304(%rsp)
	movaps	%xmm0, 288(%rsp)
	movaps	%xmm0, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	movaps	%xmm0, 240(%rsp)
	movaps	%xmm0, 224(%rsp)
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 128(%rsp)
	movl	%ebx, 120(%rsp)
	movq	%r14, 144(%rsp)
	testq	%rbp, %rbp
	je	.LBB1_14
# %bb.7:                                # %do.body
	movq	%rbp, %rcx
	movq	%r15, (%rsp)
	leaq	112(%rsp), %rdi
	leaq	32(%rsp), %r9
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	24(%rsp), %r8                   # 8-byte Reload
	callq	lzma_block_buffer_encode@PLT
	testl	%eax, %eax
	jne	.LBB1_12
# %bb.8:                                # %if.end45.thread
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	lzma_index_init@PLT
	testq	%rax, %rax
	je	.LBB1_20
# %bb.9:                                # %if.end55
	movq	%rax, %r12
	leaq	112(%rsp), %rdi
	callq	lzma_block_unpadded_size@PLT
	movq	136(%rsp), %rcx
	movq	%r12, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%rax, %rdx
	callq	lzma_index_append@PLT
	testl	%eax, %eax
	je	.LBB1_15
# %bb.10:                               # %cleanup66.thread133
	movq	%r12, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	%eax, %ebx
	callq	lzma_index_end@PLT
	movl	%ebx, %eax
	jmp	.LBB1_12
.LBB1_11:
	movl	$3, %eax
.LBB1_12:
	addq	$328, %rsp                      # imm = 0x148
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
.LBB1_13:                               # %return
	retq
.LBB1_14:                               # %if.end45
	.cfi_def_cfa_offset 384
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	lzma_index_init@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB1_20
.LBB1_15:                               # %cleanup66
	leaq	32(%rsp), %rdx
	movq	%r12, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%r15, %rcx
	callq	lzma_index_buffer_encode@PLT
	movl	%eax, %ebp
	movq	%r12, %rdi
	callq	lzma_index_size@PLT
	movq	%rax, 56(%rsp)
	movq	%r12, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	lzma_index_end@PLT
	testl	%ebp, %ebp
	je	.LBB1_18
# %bb.16:
	movl	%ebp, %eax
	jmp	.LBB1_12
.LBB1_20:
	movl	$5, %eax
	jmp	.LBB1_12
.LBB1_18:                               # %cleanup.cont68
	movq	24(%rsp), %rsi                  # 8-byte Reload
	addq	32(%rsp), %rsi
	leaq	48(%rsp), %rdi
	callq	lzma_stream_footer_encode@PLT
	movl	%eax, %ecx
	movl	$11, %eax
	testl	%ecx, %ecx
	jne	.LBB1_12
# %bb.19:                               # %if.end73
	movq	32(%rsp), %rax
	addq	$12, %rax
	movq	%rax, (%r13)
	xorl	%eax, %eax
	jmp	.LBB1_12
.Lfunc_end1:
	.size	lzma_stream_buffer_encode, .Lfunc_end1-lzma_stream_buffer_encode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
