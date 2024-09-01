	.text
	.file	"block_buffer_encoder.c"
	.globl	lzma_block_buffer_bound         # -- Begin function lzma_block_buffer_bound
	.p2align	4, 0x90
	.type	lzma_block_buffer_bound,@function
lzma_block_buffer_bound:                # @lzma_block_buffer_bound
	.cfi_startproc
# %bb.0:                                # %entry
	movabsq	$9223372036854774715, %rax      # imm = 0x7FFFFFFFFFFFFBBB
	leaq	1(%rax), %rcx
	cmpq	%rcx, %rdi
	jbe	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %if.end.i
	leaq	65535(%rdi), %rcx
	shrq	$16, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	subq	%rcx, %rax
	cmpq	%rdi, %rax
	jae	.LBB0_4
# %bb.3:
	xorl	%eax, %eax
	retq
.LBB0_4:                                # %lzma2_bound.exit
	leaq	(%rdi,%rcx), %rax
	addq	$4, %rax
	andq	$-4, %rax
	addq	$92, %rax
	retq
.Lfunc_end0:
	.size	lzma_block_buffer_bound, .Lfunc_end0-lzma_block_buffer_bound
	.cfi_endproc
                                        # -- End function
	.globl	lzma_block_buffer_encode        # -- Begin function lzma_block_buffer_encode
	.p2align	4, 0x90
	.type	lzma_block_buffer_encode,@function
lzma_block_buffer_encode:               # @lzma_block_buffer_encode
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB1_2
# %bb.1:                                # %lor.lhs.false
	testq	%rdx, %rdx
	sete	%al
	testq	%rcx, %rcx
	setne	%r10b
	andb	%al, %r10b
	testq	%r8, %r8
	sete	%al
	testq	%r9, %r9
	sete	%r11b
	orb	%al, %r11b
	orb	%r10b, %r11b
	je	.LBB1_3
.LBB1_2:
	movl	$11, %eax
	retq
.LBB1_3:                                # %lor.lhs.false7
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
	movq	192(%rsp), %r12
	cmpq	%r12, (%r9)
	jbe	.LBB1_5
.LBB1_4:
	movl	$11, %eax
	jmp	.LBB1_22
.LBB1_5:                                # %if.end
	movl	$8, %eax
	cmpl	$0, (%rdi)
	je	.LBB1_6
.LBB1_22:
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	retq
.LBB1_6:                                # %if.end11
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	8(%rdi), %r10d
	cmpl	$15, %r10d
	ja	.LBB1_4
# %bb.8:                                # %lor.lhs.false13
	cmpq	$0, 32(%rdi)
	movl	$11, %eax
	je	.LBB1_22
# %bb.9:                                # %if.end16
	movq	%rsi, %r15
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdi, %r13
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movq	%r9, %rbp
	movl	%r10d, %edi
	callq	lzma_check_is_supported@PLT
	testb	%al, %al
	je	.LBB1_21
# %bb.10:                               # %if.end19
	movl	(%rbp), %eax
	movl	%r12d, %ecx
	subl	%eax, %ecx
	andl	$3, %ecx
	subq	%rcx, %r12
	movq	%r13, %r14
	movl	8(%r13), %edi
	callq	lzma_check_size@PLT
	movl	%eax, %ebx
	movq	%r12, %rcx
	subq	(%rbp), %rcx
	movl	$10, %eax
	cmpq	%rbx, %rcx
	movq	24(%rsp), %r8                   # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	jbe	.LBB1_22
# %bb.11:                               # %if.end27
	movq	%rbp, %r9
	subq	%rbx, %r12
	movq	%r12, (%rsp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	block_encode_normal
	testl	%eax, %eax
	je	.LBB1_14
# %bb.12:                               # %if.end27
	cmpl	$10, %eax
	jne	.LBB1_22
# %bb.13:                               # %do.body
	movq	%r13, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rbp, %r8
	movq	%r12, %r9
	callq	block_encode_uncompressed
	testl	%eax, %eax
	jne	.LBB1_22
.LBB1_14:                               # %if.end42
	movq	%r13, %r12
	movq	16(%r13), %rax
	testb	$3, %al
	movq	24(%rsp), %r13                  # 8-byte Reload
	je	.LBB1_19
# %bb.15:                               # %for.body
	movq	(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rbp)
	movb	$0, (%r13,%rcx)
	leal	1(%rax), %ecx
	testb	$3, %cl
	je	.LBB1_19
# %bb.16:                               # %for.body.1
	movq	(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rbp)
	movb	$0, (%r13,%rcx)
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$2, %ecx
	je	.LBB1_19
# %bb.17:                               # %for.body.2
	movq	(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rbp)
	movb	$0, (%r13,%rcx)
	decl	%eax
	testb	$3, %al
	je	.LBB1_19
# %bb.18:                               # %for.body.3
	movq	(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbp)
	movb	$0, (%r13,%rax)
.LBB1_19:                               # %for.cond.cleanup
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB1_22
# %bb.20:                               # %if.then49
	movl	8(%r12), %esi
	leaq	32(%rsp), %r14
	movq	%r14, %rdi
	callq	lzma_check_init@PLT
	movl	8(%r12), %esi
	movq	%r14, %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	callq	lzma_check_update@PLT
	movl	8(%r12), %esi
	movq	%r14, %rdi
	callq	lzma_check_finish@PLT
	addq	$40, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	(%rbp), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	xorl	%eax, %eax
	addq	%rbx, (%rbp)
	jmp	.LBB1_22
.LBB1_21:
	movl	$3, %eax
	jmp	.LBB1_22
.Lfunc_end1:
	.size	lzma_block_buffer_encode, .Lfunc_end1-lzma_block_buffer_encode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_encode_normal
	.type	block_encode_normal,@function
block_encode_normal:                    # @block_encode_normal
	.cfi_startproc
# %bb.0:                                # %entry
	movabsq	$9223372036854774715, %rax      # imm = 0x7FFFFFFFFFFFFBBB
	leaq	1(%rax), %r10
	cmpq	%r10, %rcx
	ja	.LBB2_2
# %bb.1:                                # %if.end.i
	leaq	65535(%rcx), %r10
	shrq	$16, %r10
	leaq	(%r10,%r10,2), %r10
	subq	%r10, %rax
	cmpq	%rcx, %rax
	jae	.LBB2_4
.LBB2_2:                                # %lzma2_bound.exit.thread
	movq	$0, 16(%rdi)
	movl	$9, %eax
	retq
.LBB2_4:                                # %if.end
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
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%r8, 8(%rsp)                    # 8-byte Spill
	movq	%r9, %r13
	leaq	1(%rcx,%r10), %rax
	movq	%rax, 16(%rdi)
	movq	%rcx, %r12
	movq	%rcx, 24(%rdi)
	movq	%rdi, %rbx
	callq	lzma_block_header_size@PLT
	testl	%eax, %eax
	jne	.LBB2_14
# %bb.5:                                # %do.end
	movq	160(%rsp), %rcx
	movq	(%r13), %rdx
	subq	%rdx, %rcx
	movl	4(%rbx), %ebp
	movl	$10, %eax
	cmpq	%rbp, %rcx
	jbe	.LBB2_14
# %bb.6:                                # %if.end9
	movq	%rdx, (%rsp)                    # 8-byte Spill
	addq	%rdx, %rbp
	movq	%rbp, (%r13)
	movq	16(%rbx), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	$-1, 40(%rsp)
	movq	32(%rbx), %rdx
	leaq	32(%rsp), %rdi
	movq	%r14, %rsi
	callq	lzma_raw_encoder_init@PLT
	testl	%eax, %eax
	jne	.LBB2_8
# %bb.7:                                # %if.then23
	movq	160(%rsp), %rcx
	movq	%rcx, %rax
	subq	%rbp, %rax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	addq	%rdx, %rbp
	cmpq	%rdx, %rax
	cmovbeq	%rcx, %rbp
	movq	$0, 24(%rsp)
	movq	32(%rsp), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	32(%rsp), %rcx
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %r8
	movq	16(%rsp), %r9                   # 8-byte Reload
	pushq	$3
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	*88(%rsp)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
.LBB2_8:                                # %if.end25
	leaq	32(%rsp), %rdi
	movq	%r14, %rsi
	movl	%eax, %ebp
	callq	lzma_next_end@PLT
	testl	%ebp, %ebp
	je	.LBB2_12
# %bb.9:                                # %if.end25
	movl	%ebp, %eax
	cmpl	$1, %ebp
	movq	%r13, %rdx
	jne	.LBB2_13
# %bb.10:                               # %if.then28
	movq	(%rdx), %rax
	movl	4(%rbx), %ecx
	movq	(%rsp), %rdx                    # 8-byte Reload
	addq	%rdx, %rcx
	subq	%rcx, %rax
	movq	%rax, 16(%rbx)
	movq	8(%rsp), %rsi                   # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rbx, %rdi
	callq	lzma_block_header_encode@PLT
	movq	%r13, %rdx
	movl	%eax, %ecx
	movl	$11, %eax
	testl	%ecx, %ecx
	jne	.LBB2_13
# %bb.11:
	xorl	%eax, %eax
	jmp	.LBB2_14
.LBB2_12:                               # %select.unfold89
	movl	$10, %eax
	movq	%r13, %rdx
.LBB2_13:                               # %if.then46
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rdx)
.LBB2_14:
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
	.size	block_encode_normal, .Lfunc_end2-block_encode_normal
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_encode_uncompressed
	.type	block_encode_uncompressed,@function
block_encode_uncompressed:              # @block_encode_uncompressed
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%r8, %r14
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r13
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movl	$4096, 48(%rsp)                 # imm = 0x1000
	movq	$33, 16(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	$-1, 32(%rsp)
	movq	32(%rdi), %r12
	leaq	16(%rsp), %rax
	movq	%rax, 32(%rdi)
	callq	lzma_block_header_size@PLT
	testl	%eax, %eax
	je	.LBB3_2
# %bb.1:                                # %if.then
	movq	%r12, 32(%r13)
	movl	$11, %eax
	jmp	.LBB3_12
.LBB3_2:                                # %if.end
	movq	(%r14), %rsi
	subq	%rsi, %rbp
	movl	4(%r13), %eax
	addq	16(%r13), %rax
	cmpq	%rax, %rbp
	jae	.LBB3_4
# %bb.3:                                # %if.then9
	movq	%r12, 32(%r13)
	movl	$10, %eax
	jmp	.LBB3_12
.LBB3_4:                                # %if.end11
	addq	8(%rsp), %rsi                   # 8-byte Folded Reload
	movq	%r13, %rdi
	callq	lzma_block_header_encode@PLT
	movl	%eax, %ecx
	movq	%r12, 32(%r13)
	movl	$11, %eax
	testl	%ecx, %ecx
	jne	.LBB3_12
# %bb.5:                                # %if.end17
	movl	4(%r13), %ebp
	addq	(%r14), %rbp
	testq	%rbx, %rbx
	je	.LBB3_10
# %bb.6:                                # %while.body.preheader
	leaq	1(%rbp), %rax
	movq	%rax, (%r14)
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movb	$1, (%rsi,%rbp)
	cmpq	$65536, %rbx                    # imm = 0x10000
	movl	$65536, %r13d                   # imm = 0x10000
	cmovbq	%rbx, %r13
	leaq	-1(%r13), %rax
	movq	(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r14)
	movb	%ah, (%rsi,%rcx)
	movq	(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r14)
	movb	%al, (%rsi,%rcx)
	movq	(%r14), %rdi
	addq	%rsi, %rdi
	movq	%r15, %r12
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	memcpy@PLT
	movq	(%r14), %rbp
	addq	%r13, %rbp
	cmpq	$65537, %rbx                    # imm = 0x10001
	jb	.LBB3_10
# %bb.7:                                # %while.body.preheader1
	movq	%rbx, %r15
	movq	8(%rsp), %rbx                   # 8-byte Reload
	.p2align	4, 0x90
.LBB3_8:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	1(%rbp), %rax
	movq	%rax, (%r14)
	movb	$2, (%rbx,%rbp)
	movq	%r15, %rbp
	subq	%r13, %rbp
	cmpq	$65536, %rbp                    # imm = 0x10000
	movl	$65536, %eax                    # imm = 0x10000
	cmovaeq	%rax, %rbp
	leaq	-1(%rbp), %rax
	movq	(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r14)
	movb	%ah, (%rbx,%rcx)
	movq	(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r14)
	movb	%al, (%rbx,%rcx)
	movq	(%r14), %rdi
	addq	%rbx, %rdi
	leaq	(%r12,%r13), %rsi
	movq	%rbp, %rdx
	callq	memcpy@PLT
	addq	%rbp, %r13
	addq	(%r14), %rbp
	movq	%rbp, (%r14)
	cmpq	%r15, %r13
	jb	.LBB3_8
	jmp	.LBB3_11
.LBB3_10:
	movq	8(%rsp), %rbx                   # 8-byte Reload
.LBB3_11:                               # %while.end
	leaq	1(%rbp), %rax
	movq	%rax, (%r14)
	movb	$0, (%rbx,%rbp)
	xorl	%eax, %eax
.LBB3_12:                               # %cleanup
	addq	$168, %rsp
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
.Lfunc_end3:
	.size	block_encode_uncompressed, .Lfunc_end3-block_encode_uncompressed
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
