	.text
	.file	"stream_buffer_decoder.c"
	.globl	lzma_stream_buffer_decode       # -- Begin function lzma_stream_buffer_decode
	.p2align	4, 0x90
	.type	lzma_stream_buffer_decode,@function
lzma_stream_buffer_decode:              # @lzma_stream_buffer_decode
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$11, %eax
	testq	%r8, %r8
	je	.LBB0_15
# %bb.1:                                # %lor.lhs.false
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
	subq	$128, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testq	%rcx, %rcx
	setne	%r11b
	movq	(%r8), %r10
	cmpq	%r9, %r10
	sete	%bl
	orb	%r11b, %bl
	cmpb	$1, %bl
	jne	.LBB0_14
# %bb.2:                                # %lor.lhs.false3
	cmpq	%r9, %r10
	seta	%r10b
	movq	184(%rsp), %rbp
	testq	%rbp, %rbp
	sete	%r11b
	orb	%r10b, %r11b
	jne	.LBB0_14
# %bb.3:                                # %lor.lhs.false7
	movq	192(%rsp), %r15
	movq	176(%rsp), %r14
	testq	%r14, %r14
	setne	%r11b
	movq	(%rbp), %r10
	cmpq	%r15, %r10
	sete	%bl
	orb	%r11b, %bl
	cmpb	$1, %bl
	jne	.LBB0_14
# %bb.4:                                # %lor.lhs.false11
	cmpq	%r15, %r10
	seta	%r10b
	movl	%esi, %r11d
	andl	$4, %r11d
	shrl	$2, %r11d
	orb	%r10b, %r11b
	jne	.LBB0_14
# %bb.5:                                # %if.end14
	movq	%rcx, %r12
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%r9, 8(%rsp)                    # 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	$-1, 56(%rsp)
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movq	(%rdi), %rax
	leaq	48(%rsp), %rdi
	movq	%rdx, %rbx
	movl	%esi, %ecx
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	lzma_stream_decoder_init@PLT
	testl	%eax, %eax
	je	.LBB0_7
# %bb.6:
	movq	%rbx, %rsi
	jmp	.LBB0_13
.LBB0_7:                                # %if.then16
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rbp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	%r14, %r9
	pushq	$3
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	*104(%rsp)
	movq	%rbx, %rsi
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	je	.LBB0_13
# %bb.8:                                # %if.else
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rdx)
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rbp)
	cmpl	$6, %ecx
	je	.LBB0_12
# %bb.9:                                # %if.else
	testl	%ecx, %ecx
	jne	.LBB0_10
# %bb.11:                               # %if.then21
	xorl	%eax, %eax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	cmpq	%rcx, (%rdx)
	setne	%al
	addl	$9, %eax
	jmp	.LBB0_13
.LBB0_12:                               # %if.then28
	movq	48(%rsp), %rdi
	leaq	120(%rsp), %rdx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	xorl	%ecx, %ecx
	callq	*96(%rsp)
	movq	%rbx, %rsi
	movl	$6, %eax
	jmp	.LBB0_13
.LBB0_10:
	movl	%ecx, %eax
.LBB0_13:                               # %if.end34
	leaq	48(%rsp), %rdi
	movl	%eax, %ebx
	callq	lzma_next_end@PLT
	movl	%ebx, %eax
.LBB0_14:
	addq	$128, %rsp
	.cfi_def_cfa_offset 48
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB0_15:                               # %return
	retq
.Lfunc_end0:
	.size	lzma_stream_buffer_decode, .Lfunc_end0-lzma_stream_buffer_decode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
