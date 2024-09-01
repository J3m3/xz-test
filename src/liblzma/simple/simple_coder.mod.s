	.text
	.file	"simple_coder.c"
	.globl	lzma_simple_coder_init          # -- Begin function lzma_simple_coder_init
	.p2align	4, 0x90
	.type	lzma_simple_coder_init,@function
lzma_simple_coder_init:                 # @lzma_simple_coder_init
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
	movq	%rdi, %rbx
	movl	80(%rsp), %r15d
	movzbl	88(%rsp), %ebp
	cmpq	$0, (%rdi)
	je	.LBB0_1
.LBB0_6:                                # %if.end27
	movq	16(%rdx), %rax
	testq	%rax, %rax
	je	.LBB0_8
# %bb.7:                                # %if.then29
	movl	(%rax), %eax
	movq	(%rbx), %rcx
	movl	%eax, 88(%rcx)
	movq	(%rbx), %rcx
	decl	%r15d
	movl	$8, %eax
	testl	%r15d, 88(%rcx)
	jne	.LBB0_4
	jmp	.LBB0_9
.LBB0_1:                                # %if.then
	movq	%rcx, %r12
	movq	%r8, %r13
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%r9, %r14
	leaq	128(,%r9,2), %rdi
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	callq	lzma_alloc@PLT
	movq	%rax, %rcx
	movq	%rax, (%rbx)
	movl	$5, %eax
	testq	%rcx, %rcx
	je	.LBB0_4
# %bb.2:                                # %if.end
	addq	%r14, %r14
	movq	$simple_code, 24(%rbx)
	movq	$simple_coder_end, 32(%rbx)
	movq	$simple_coder_update, 56(%rbx)
	movq	$0, (%rcx)
	movq	$-1, 8(%rcx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rcx)
	movups	%xmm0, 32(%rcx)
	movups	%xmm0, 48(%rcx)
	movq	(%rbx), %rax
	movq	%r12, 72(%rax)
	movq	(%rbx), %rax
	movq	%r14, 96(%rax)
	testq	%r13, %r13
	je	.LBB0_5
# %bb.3:                                # %if.then16
	movq	%r13, %rdi
	movq	8(%rsp), %r14                   # 8-byte Reload
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	movq	%r14, %rsi
	movq	%rax, %rcx
	movl	$5, %eax
	movq	(%rbx), %rdx
	movq	%rcx, 80(%rdx)
	movq	(%rbx), %rcx
	cmpq	$0, 80(%rcx)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	jne	.LBB0_6
.LBB0_4:                                # %return
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
.LBB0_8:                                # %if.else38
	.cfi_def_cfa_offset 80
	movq	(%rbx), %rax
	movl	$0, 88(%rax)
	movq	(%rbx), %rcx
.LBB0_9:                                # %if.end41
	movb	%bpl, 65(%rcx)
	movq	(%rbx), %rax
	movb	$0, 64(%rax)
	movq	(%rbx), %rax
	movq	$0, 104(%rax)
	movq	(%rbx), %rax
	movq	$0, 112(%rax)
	movq	(%rbx), %rax
	movq	$0, 120(%rax)
	movq	(%rbx), %rdi
	addq	$24, %rdx
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
	jmp	lzma_next_filter_init@PLT       # TAILCALL
.LBB0_5:                                # %if.else
	.cfi_def_cfa_offset 80
	movq	(%rbx), %rax
	movq	$0, 80(%rax)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	jmp	.LBB0_6
.Lfunc_end0:
	.size	lzma_simple_coder_init, .Lfunc_end0-lzma_simple_coder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function simple_code
	.type	simple_code,@function
simple_code:                            # @simple_code
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, 8(%rsp)                    # 8-byte Spill
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movl	128(%rsp), %ecx
	movl	$8, %eax
	cmpl	$1, %ecx
	je	.LBB1_32
# %bb.1:                                # %if.end
	movq	%rdx, %r13
	movq	%rdi, %rbx
	movq	120(%rsp), %r10
	movq	112(%rsp), %r12
	leaq	104(%rdi), %r15
	movq	104(%rdi), %rcx
	movq	112(%rdi), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB1_4
# %bb.2:                                # %if.then2
	leaq	128(%rbx), %rdi
	movq	%r13, %r14
	movq	%rsi, %r13
	movq	%r15, %rsi
	movq	%r9, %rcx
	movq	%r12, %r8
	movq	%r9, %rbp
	movq	%r10, %r9
	callq	lzma_bufcpy@PLT
	movq	120(%rsp), %r10
	movq	104(%rbx), %rcx
	xorl	%eax, %eax
	cmpq	112(%rbx), %rcx
	jb	.LBB1_32
# %bb.3:                                # %if.end9
	movq	%rbp, %r9
	movq	%r13, %rsi
	movq	%r14, %r13
	movl	$1, %eax
	cmpb	$0, 64(%rbx)
	jne	.LBB1_32
.LBB1_4:                                # %if.end12
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	%r9, 24(%rsp)                   # 8-byte Spill
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	movq	$0, 112(%rbx)
	movq	%r12, %r14
	movq	(%r12), %rbp
	subq	%rbp, %r10
	leaq	120(%rbx), %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	120(%rbx), %r12
	movq	%r12, %r15
	subq	%rcx, %r15
	setne	%dl
	cmpq	%r15, %r10
	setbe	%al
	testb	%al, %dl
	jne	.LBB1_16
# %bb.5:                                # %if.then18
	movq	24(%rsp), %r12                  # 8-byte Reload
	leaq	(%r12,%rbp), %rdi
	leaq	(%rbx,%rcx), %rsi
	addq	$128, %rsi
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	%rbp, %r15
	movq	%r15, (%r14)
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_6
# %bb.9:                                # %if.else.i
	movq	(%rbx), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	%r12, %r9
	movl	136(%rsp), %r10d
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	136(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*%rax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	testl	%eax, %eax
	je	.LBB1_12
# %bb.10:                               # %if.else.i
	cmpl	$1, %eax
	je	.LBB1_11
	jmp	.LBB1_32
.LBB1_16:                               # %if.else50
	testq	%rcx, %rcx
	movq	16(%rsp), %r14                  # 8-byte Reload
	je	.LBB1_18
# %bb.17:                               # %if.then53
	leaq	128(%rbx), %rdi
	leaq	(%rbx,%rcx), %rsi
	addq	$128, %rsi
	movq	%r15, %rdx
	callq	memmove@PLT
	movq	%r15, 120(%rbx)
	movq	$0, 104(%rbx)
	movq	%r15, %r12
	jmp	.LBB1_18
.LBB1_6:                                # %if.then.i
	movq	%r13, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%r12, %rcx
	movq	%r14, %r8
	movq	120(%rsp), %r9
	callq	lzma_bufcpy@PLT
	movl	128(%rsp), %eax
	cmpl	$3, %eax
	jne	.LBB1_12
# %bb.7:                                # %if.then.i
	cmpb	$0, 65(%rbx)
	je	.LBB1_12
# %bb.8:                                # %land.lhs.true2.i
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	cmpq	%rax, (%rcx)
	jne	.LBB1_12
.LBB1_11:                               # %cleanup.cont.sink.split
	movb	$1, 64(%rbx)
.LBB1_12:                               # %cleanup.cont
	movq	112(%rsp), %rax
	movq	(%rax), %r15
	subq	%rbp, %r15
	movq	80(%rbx), %rdi
	movl	88(%rbx), %esi
	movzbl	65(%rbx), %edx
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%r15, %r8
	callq	*72(%rbx)
	addl	%eax, 88(%rbx)
	movq	%r15, %r12
	subq	%rax, %r12
	movq	$0, 104(%rbx)
	movq	%r12, 120(%rbx)
	cmpb	$1, 64(%rbx)
	jne	.LBB1_14
# %bb.13:                               # %if.end65.thread
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	$0, (%r14)
	movq	40(%rsp), %r15                  # 8-byte Reload
	jmp	.LBB1_29
.LBB1_14:                               # %if.else
	cmpq	%rax, %r15
	movq	16(%rsp), %r14                  # 8-byte Reload
	je	.LBB1_18
# %bb.15:                               # %if.then40
	leaq	128(%rbx), %rdi
	movq	112(%rsp), %rbp
	movq	(%rbp), %rsi
	subq	%r12, %rsi
	movq	%rsi, (%rbp)
	addq	24(%rsp), %rsi                  # 8-byte Folded Reload
	movq	%r12, %rdx
	callq	memcpy@PLT
.LBB1_18:                               # %if.end65
	testq	%r12, %r12
	movq	40(%rsp), %r15                  # 8-byte Reload
	je	.LBB1_29
# %bb.19:                               # %if.then68
	leaq	128(%rbx), %rbp
	movq	24(%rbx), %r10
	movq	96(%rbx), %rax
	testq	%r10, %r10
	je	.LBB1_20
# %bb.23:                               # %if.else.i195
	movq	(%rbx), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	%rbp, %r9
	movl	136(%rsp), %r11d
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*%r10
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	testl	%eax, %eax
	movq	120(%rsp), %r12
	je	.LBB1_26
# %bb.24:                               # %if.else.i195
	cmpl	$1, %eax
	je	.LBB1_25
	jmp	.LBB1_32
.LBB1_20:                               # %if.then.i201
	movq	%r13, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rbp, %rcx
	movq	%r14, %r8
	movq	%rax, %r9
	callq	lzma_bufcpy@PLT
	movl	128(%rsp), %eax
	cmpl	$3, %eax
	movq	120(%rsp), %r12
	jne	.LBB1_26
# %bb.21:                               # %if.then.i201
	cmpb	$0, 65(%rbx)
	je	.LBB1_26
# %bb.22:                               # %land.lhs.true2.i207
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	cmpq	%rax, (%rcx)
	jne	.LBB1_26
.LBB1_25:                               # %cleanup.cont79.sink.split
	movb	$1, 64(%rbx)
.LBB1_26:                               # %cleanup.cont79
	movq	120(%rbx), %r8
	movq	80(%rbx), %rdi
	movl	88(%rbx), %esi
	movzbl	65(%rbx), %edx
	movq	%rbp, %rcx
	callq	*72(%rbx)
	addl	%eax, 88(%rbx)
	movq	%rax, 112(%rbx)
	cmpb	$1, 64(%rbx)
	jne	.LBB1_28
# %bb.27:                               # %if.then87
	movq	120(%rbx), %rax
	movq	%rax, 112(%rbx)
.LBB1_28:                               # %if.end90
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	112(%rsp), %r8
	movq	%r12, %r9
	callq	lzma_bufcpy@PLT
.LBB1_29:                               # %if.end96
	cmpb	$1, 64(%rbx)
	jne	.LBB1_31
# %bb.30:                               # %land.lhs.true
	movq	(%r15), %rcx
	movl	$1, %eax
	cmpq	(%r14), %rcx
	je	.LBB1_32
.LBB1_31:                               # %if.end103
	xorl	%eax, %eax
.LBB1_32:                               # %cleanup106
	addq	$56, %rsp
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
.Lfunc_end1:
	.size	simple_code, .Lfunc_end1-simple_code
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function simple_coder_end
	.type	simple_coder_end,@function
simple_coder_end:                       # @simple_coder_end
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
	movq	80(%r14), %rdi
	movq	%rbx, %rsi
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
.Lfunc_end2:
	.size	simple_coder_end, .Lfunc_end2-simple_coder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function simple_coder_update
	.type	simple_coder_update,@function
simple_coder_update:                    # @simple_coder_update
	.cfi_startproc
# %bb.0:                                # %entry
	leaq	16(%rcx), %rdx
	jmp	lzma_next_filter_update@PLT     # TAILCALL
.Lfunc_end3:
	.size	simple_coder_update, .Lfunc_end3-simple_coder_update
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
