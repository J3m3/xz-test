	.text
	.file	"common.c"
	.globl	lzma_version_number             # -- Begin function lzma_version_number
	.p2align	4, 0x90
	.type	lzma_version_number,@function
lzma_version_number:                    # @lzma_version_number
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$50000056, %eax                 # imm = 0x2FAF0B8
	retq
.Lfunc_end0:
	.size	lzma_version_number, .Lfunc_end0-lzma_version_number
	.cfi_endproc
                                        # -- End function
	.globl	lzma_version_string             # -- Begin function lzma_version_string
	.p2align	4, 0x90
	.type	lzma_version_string,@function
lzma_version_string:                    # @lzma_version_string
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$.L.str, %eax
	retq
.Lfunc_end1:
	.size	lzma_version_string, .Lfunc_end1-lzma_version_string
	.cfi_endproc
                                        # -- End function
	.globl	lzma_alloc                      # -- Begin function lzma_alloc
	.p2align	4, 0x90
	.type	lzma_alloc,@function
lzma_alloc:                             # @lzma_alloc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rdx
	cmpq	$1, %rdi
	adcq	$0, %rdx
	testq	%rsi, %rsi
	je	.LBB2_3
# %bb.1:                                # %land.lhs.true
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB2_3
# %bb.2:                                # %if.then3
	movq	16(%rsi), %rdi
	movl	$1, %esi
	jmpq	*%rax                           # TAILCALL
.LBB2_3:                                # %if.else
	movq	%rdx, %rdi
	jmp	malloc@PLT                      # TAILCALL
.Lfunc_end2:
	.size	lzma_alloc, .Lfunc_end2-lzma_alloc
	.cfi_endproc
                                        # -- End function
	.globl	lzma_free                       # -- Begin function lzma_free
	.p2align	4, 0x90
	.type	lzma_free,@function
lzma_free:                              # @lzma_free
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rsi, %rsi
	je	free@PLT                        # TAILCALL
# %bb.1:                                # %land.lhs.true
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	free@PLT                        # TAILCALL
# %bb.2:                                # %if.then
	movq	16(%rsi), %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	jmpq	*%rcx                           # TAILCALL
.Lfunc_end3:
	.size	lzma_free, .Lfunc_end3-lzma_free
	.cfi_endproc
                                        # -- End function
	.globl	lzma_bufcpy                     # -- Begin function lzma_bufcpy
	.p2align	4, 0x90
	.type	lzma_bufcpy,@function
lzma_bufcpy:                            # @lzma_bufcpy
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r9, %rbx
	movq	%r8, %r14
	movq	%rsi, %r15
	movq	(%rsi), %r12
	subq	%r12, %rdx
	movq	(%r8), %r13
	subq	%r13, %rbx
	cmpq	%rbx, %rdx
	cmovbq	%rdx, %rbx
	leaq	(%rcx,%r13), %rax
	leaq	(%rdi,%r12), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	%rbx, %r12
	movq	%r12, (%r15)
	addq	%rbx, %r13
	movq	%r13, (%r14)
	movq	%rbx, %rax
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
	.size	lzma_bufcpy, .Lfunc_end4-lzma_bufcpy
	.cfi_endproc
                                        # -- End function
	.globl	lzma_next_filter_init           # -- Begin function lzma_next_filter_init
	.p2align	4, 0x90
	.type	lzma_next_filter_init,@function
lzma_next_filter_init:                  # @lzma_next_filter_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	8(%rdx), %rax
	movq	16(%rdi), %rcx
	cmpq	%rax, %rcx
	sete	%r8b
	testq	%rcx, %rcx
	sete	%cl
	orb	%r8b, %cl
	jne	.LBB5_8
# %bb.1:                                # %if.then.i
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
	leaq	16(%rdi), %rbx
	movq	(%rdi), %rax
	movq	32(%rdi), %rcx
	movq	%rdi, %r15
	movq	%rdx, %r14
	testq	%rcx, %rcx
	je	.LBB5_3
# %bb.2:                                # %if.then2.i
	movq	%rax, %rdi
	movq	%rsi, %r12
	callq	*%rcx
	jmp	.LBB5_7
.LBB5_3:                                # %if.else.i
	testq	%rsi, %rsi
	je	.LBB5_6
# %bb.4:                                # %land.lhs.true.i.i
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB5_6
# %bb.5:                                # %if.then.i.i
	movq	%rsi, %r12
	movq	16(%rsi), %rdi
	movq	%rax, %rsi
	callq	*%rcx
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.i.i
	movq	%rsi, %r12
	movq	%rax, %rdi
	callq	free@PLT
.LBB5_7:                                # %if.end.i
	movq	%r15, %rdi
	movq	$0, (%r15)
	movq	$-1, 8(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rbx)
	movups	%xmm0, 16(%rbx)
	movups	%xmm0, (%rbx)
	movq	%r14, %rdx
	movq	8(%r14), %rax
	movq	%r12, %rsi
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
.LBB5_8:                                # %if.end
	movq	%rax, 16(%rdi)
	movq	(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	8(%rdx), %rax
	testq	%rax, %rax
	je	.LBB5_9
# %bb.10:                               # %cond.false
	jmpq	*%rax                           # TAILCALL
.LBB5_9:                                # %cond.end
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	lzma_next_filter_init, .Lfunc_end5-lzma_next_filter_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_next_end                   # -- Begin function lzma_next_end
	.p2align	4, 0x90
	.type	lzma_next_end,@function
lzma_next_end:                          # @lzma_next_end
	.cfi_startproc
# %bb.0:                                # %entry
	cmpq	$0, 16(%rdi)
	je	.LBB6_8
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	16(%rdi), %r14
	movq	(%rdi), %rdi
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB6_3
# %bb.2:                                # %if.then2
	callq	*%rax
	jmp	.LBB6_7
.LBB6_3:                                # %if.else
	testq	%rsi, %rsi
	je	.LBB6_6
# %bb.4:                                # %land.lhs.true.i
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB6_6
# %bb.5:                                # %if.then.i
	movq	16(%rsi), %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	callq	*%rcx
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.i
	callq	free@PLT
.LBB6_7:                                # %if.end
	movq	$0, (%rbx)
	movq	$-1, 8(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%r14)
	movups	%xmm0, 16(%r14)
	movups	%xmm0, (%r14)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
.LBB6_8:                                # %if.end8
	retq
.Lfunc_end6:
	.size	lzma_next_end, .Lfunc_end6-lzma_next_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_next_filter_update         # -- Begin function lzma_next_filter_update
	.p2align	4, 0x90
	.type	lzma_next_filter_update,@function
lzma_next_filter_update:                # @lzma_next_filter_update
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdx, %rcx
	movq	(%rdx), %rdx
	movl	$11, %eax
	cmpq	8(%rdi), %rdx
	jne	.LBB7_3
# %bb.1:                                # %if.end
	cmpq	$-1, %rdx
	je	.LBB7_2
# %bb.4:                                # %if.end6
	movq	(%rdi), %rax
	movq	56(%rdi), %r8
	movq	%rax, %rdi
	xorl	%edx, %edx
	jmpq	*%r8                            # TAILCALL
.LBB7_2:
	xorl	%eax, %eax
.LBB7_3:                                # %return
	retq
.Lfunc_end7:
	.size	lzma_next_filter_update, .Lfunc_end7-lzma_next_filter_update
	.cfi_endproc
                                        # -- End function
	.globl	lzma_strm_init                  # -- Begin function lzma_strm_init
	.p2align	4, 0x90
	.type	lzma_strm_init,@function
lzma_strm_init:                         # @lzma_strm_init
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB8_1
# %bb.3:                                # %if.end
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	56(%rdi), %rax
	testq	%rax, %rax
	jne	.LBB8_11
# %bb.4:                                # %if.then2
	movq	%rdi, %rbx
	movq	48(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB8_7
# %bb.5:                                # %land.lhs.true.i
	movq	(%rcx), %rax
	testq	%rax, %rax
	je	.LBB8_7
# %bb.6:                                # %if.then3.i
	movq	16(%rcx), %rdi
	movl	$1, %esi
	movl	$88, %edx
	callq	*%rax
	movq	%rax, 56(%rbx)
	testq	%rax, %rax
	jne	.LBB8_10
.LBB8_9:
	movl	$5, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB8_1:
	movl	$11, %eax
	retq
.LBB8_7:                                # %if.else.i
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$88, %edi
	callq	malloc@PLT
	movq	%rax, 56(%rbx)
	testq	%rax, %rax
	je	.LBB8_9
.LBB8_10:                               # %if.end7
	movq	%rbx, %rdi
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	56(%rbx), %rax
.LBB8_11:                               # %if.end9
	movb	$0, 80(%rax)
	movq	56(%rdi), %rax
	movb	$0, 81(%rax)
	movq	56(%rdi), %rax
	movb	$0, 82(%rax)
	movq	56(%rdi), %rax
	movb	$0, 83(%rax)
	movq	56(%rdi), %rax
	movl	$0, 64(%rax)
	movq	56(%rdi), %rax
	movb	$0, 84(%rax)
	movq	$0, 16(%rdi)
	movq	$0, 40(%rdi)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.Lfunc_end8:
	.size	lzma_strm_init, .Lfunc_end8-lzma_strm_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_code                       # -- Begin function lzma_code
	.p2align	4, 0x90
	.type	lzma_code,@function
lzma_code:                              # @lzma_code
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %r10d
	cmpq	$0, (%rdi)
	je	.LBB9_20
.LBB9_1:                                # %lor.lhs.false
	cmpq	$0, 24(%rdi)
	je	.LBB9_23
.LBB9_2:                                # %lor.lhs.false5
	movq	56(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB9_22
# %bb.3:                                # %lor.lhs.false7
	cmpl	$3, %r10d
	ja	.LBB9_22
# %bb.4:                                # %lor.lhs.false7
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpq	$0, 24(%rcx)
	je	.LBB9_25
# %bb.5:                                # %lor.lhs.false12
	movl	%r10d, %eax
	cmpb	$1, 80(%rcx,%rax)
	jne	.LBB9_25
# %bb.6:                                # %if.end
	movl	$8, %eax
	cmpq	$0, 64(%rdi)
	jne	.LBB9_26
# %bb.7:                                # %lor.lhs.false15
	cmpq	$0, 72(%rdi)
	jne	.LBB9_26
# %bb.8:                                # %lor.lhs.false17
	cmpq	$0, 80(%rdi)
	jne	.LBB9_26
# %bb.9:                                # %lor.lhs.false19
	cmpq	$0, 88(%rdi)
	jne	.LBB9_26
# %bb.10:                               # %lor.lhs.false21
	cmpq	$0, 96(%rdi)
	jne	.LBB9_26
# %bb.11:                               # %lor.lhs.false23
	cmpq	$0, 104(%rdi)
	jne	.LBB9_26
# %bb.12:                               # %lor.lhs.false25
	cmpq	$0, 112(%rdi)
	jne	.LBB9_26
# %bb.13:                               # %lor.lhs.false27
	cmpq	$0, 120(%rdi)
	jne	.LBB9_26
# %bb.14:                               # %lor.lhs.false29
	cmpl	$0, 128(%rdi)
	jne	.LBB9_26
# %bb.15:                               # %lor.lhs.false31
	movq	%rdi, %rbx
	cmpl	$0, 132(%rbx)
	jne	.LBB9_26
# %bb.16:                               # %if.end34
	movl	64(%rcx), %eax
	cmpq	$4, %rax
	ja	.LBB9_25
# %bb.17:                               # %if.end34
	jmpq	*.LJTI9_0(,%rax,8)
.LBB9_18:                               # %sw.bb
	leal	-1(%r10), %eax
	cmpl	$3, %eax
	movq	%rbx, %r11
	jae	.LBB9_34
# %bb.19:                               # %sw.epilog74.sink.split
	movl	%r10d, 64(%rcx)
	jmp	.LBB9_34
.LBB9_20:                               # %land.lhs.true
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$11, %eax
	cmpq	$0, 8(%rdi)
	jne	.LBB9_21
	jmp	.LBB9_1
.LBB9_22:
	movl	$11, %eax
	retq
.LBB9_23:                               # %land.lhs.true3
	movl	$11, %eax
	cmpq	$0, 32(%rdi)
	je	.LBB9_2
.LBB9_21:                               # %return
	retq
.LBB9_27:
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$1, %eax
	jmp	.LBB9_26
.LBB9_28:                               # %sw.bb54
	cmpl	$2, %r10d
	jne	.LBB9_25
.LBB9_33:                               # %lor.lhs.false47
	movq	72(%rcx), %rcx
	movl	$11, %eax
	movq	%rbx, %r11
	cmpq	8(%rbx), %rcx
	jne	.LBB9_26
.LBB9_34:                               # %sw.epilog74
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	56(%r11), %rax
	movq	(%rax), %rdi
	movq	48(%r11), %rsi
	movq	(%r11), %rdx
	movq	8(%r11), %r8
	movq	24(%r11), %r9
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	8(%rsp), %r14
	leaq	16(%rsp), %rcx
	movq	%r11, %r15
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	32(%r11)
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*24(%rax)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	8(%rsp), %rcx
	addq	%rcx, (%r15)
	movq	8(%r15), %rsi
	movq	56(%r15), %rdi
	subq	%rcx, %rsi
	movq	%rsi, 8(%r15)
	addq	%rcx, 16(%r15)
	movq	(%rsp), %rdx
	addq	%rdx, 24(%r15)
	subq	%rdx, 32(%r15)
	addq	%rdx, 40(%r15)
	movq	%rsi, 72(%rdi)
	cmpl	$6, %eax
	ja	.LBB9_43
# %bb.35:                               # %sw.epilog74
	movl	%eax, %esi
	jmpq	*.LJTI9_1(,%rsi,8)
.LBB9_36:                               # %sw.bb124
	movq	56(%rbx), %rcx
	movb	$0, 84(%rcx)
	jmp	.LBB9_26
.LBB9_30:                               # %sw.bb63
	cmpl	$3, %r10d
	je	.LBB9_33
.LBB9_25:
	movl	$11, %eax
.LBB9_26:
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	retq
.LBB9_32:                               # %sw.bb45
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpl	$1, %r10d
	jne	.LBB9_25
	jmp	.LBB9_33
.LBB9_39:                               # %sw.bb109
	movq	56(%rbx), %rcx
	movl	64(%rcx), %edx
	decl	%edx
	xorl	%esi, %esi
	cmpl	$2, %edx
	setae	%sil
	shll	$2, %esi
	movl	%esi, 64(%rcx)
	jmp	.LBB9_36
.LBB9_40:                               # %sw.bb94
	movq	56(%rbx), %rsi
	orq	%rcx, %rdx
	jne	.LBB9_44
# %bb.41:                               # %if.then98
	movl	$10, %eax
	cmpb	$0, 84(%rsi)
	jne	.LBB9_26
# %bb.42:                               # %if.else
	movb	$1, 84(%rsi)
	xorl	%eax, %eax
	jmp	.LBB9_26
.LBB9_43:                               # %sw.default127
	movq	56(%rbx), %rcx
	movl	$5, 64(%rcx)
	jmp	.LBB9_26
.LBB9_44:                               # %if.else105
	movb	$0, 84(%rsi)
	xorl	%eax, %eax
	jmp	.LBB9_26
.Lfunc_end9:
	.size	lzma_code, .Lfunc_end9-lzma_code
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI9_0:
	.quad	.LBB9_18
	.quad	.LBB9_32
	.quad	.LBB9_28
	.quad	.LBB9_30
	.quad	.LBB9_27
.LJTI9_1:
	.quad	.LBB9_40
	.quad	.LBB9_39
	.quad	.LBB9_36
	.quad	.LBB9_36
	.quad	.LBB9_36
	.quad	.LBB9_43
	.quad	.LBB9_36
                                        # -- End function
	.text
	.globl	lzma_end                        # -- Begin function lzma_end
	.p2align	4, 0x90
	.type	lzma_end,@function
lzma_end:                               # @lzma_end
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB10_16
# %bb.1:                                # %land.lhs.true
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	56(%rdi), %r14
	testq	%r14, %r14
	je	.LBB10_15
# %bb.2:                                # %if.then
	movq	48(%rbx), %rsi
	cmpq	$0, 16(%r14)
	je	.LBB10_10
# %bb.3:                                # %if.then.i
	leaq	16(%r14), %r15
	movq	(%r14), %rdi
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	.LBB10_5
# %bb.4:                                # %if.then2.i
	callq	*%rax
	jmp	.LBB10_9
.LBB10_5:                               # %if.else.i
	testq	%rsi, %rsi
	je	.LBB10_8
# %bb.6:                                # %land.lhs.true.i.i
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB10_8
# %bb.7:                                # %if.then.i.i
	movq	16(%rsi), %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	callq	*%rcx
	jmp	.LBB10_9
.LBB10_8:                               # %if.else.i.i
	callq	free@PLT
.LBB10_9:                               # %if.end.i
	movq	$0, (%r14)
	movq	$-1, 8(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%r15)
	movups	%xmm0, 16(%r15)
	movups	%xmm0, (%r15)
	movq	48(%rbx), %rsi
	movq	56(%rbx), %r14
.LBB10_10:                              # %lzma_next_end.exit
	testq	%rsi, %rsi
	je	.LBB10_13
# %bb.11:                               # %land.lhs.true.i
	movq	8(%rsi), %rax
	testq	%rax, %rax
	je	.LBB10_13
# %bb.12:                               # %if.then.i14
	movq	16(%rsi), %rdi
	movq	%r14, %rsi
	callq	*%rax
	jmp	.LBB10_14
.LBB10_13:                              # %if.else.i16
	movq	%r14, %rdi
	callq	free@PLT
.LBB10_14:                              # %lzma_free.exit
	movq	$0, 56(%rbx)
.LBB10_15:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.LBB10_16:                              # %if.end
	retq
.Lfunc_end10:
	.size	lzma_end, .Lfunc_end10-lzma_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_get_check                  # -- Begin function lzma_get_check
	.p2align	4, 0x90
	.type	lzma_get_check,@function
lzma_get_check:                         # @lzma_get_check
	.cfi_startproc
# %bb.0:                                # %entry
	movq	56(%rdi), %rcx
	movq	40(%rcx), %rax
	testq	%rax, %rax
	je	.LBB11_1
# %bb.2:                                # %if.end
	movq	(%rcx), %rdi
	jmpq	*%rax                           # TAILCALL
.LBB11_1:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end11:
	.size	lzma_get_check, .Lfunc_end11-lzma_get_check
	.cfi_endproc
                                        # -- End function
	.globl	lzma_memusage                   # -- Begin function lzma_memusage
	.p2align	4, 0x90
	.type	lzma_memusage,@function
lzma_memusage:                          # @lzma_memusage
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB12_6
# %bb.1:                                # %lor.lhs.false
	movq	56(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB12_6
# %bb.2:                                # %lor.lhs.false2
	movq	48(%rcx), %rax
	testq	%rax, %rax
	je	.LBB12_6
# %bb.3:                                # %lor.lhs.false5
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rcx), %rdi
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	*%rax
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB12_5
# %bb.4:                                # %lor.lhs.false5
	movq	8(%rsp), %rax
.LBB12_5:                               # %lor.lhs.false5
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB12_6:
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	lzma_memusage, .Lfunc_end12-lzma_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_memlimit_get               # -- Begin function lzma_memlimit_get
	.p2align	4, 0x90
	.type	lzma_memlimit_get,@function
lzma_memlimit_get:                      # @lzma_memlimit_get
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB13_6
# %bb.1:                                # %lor.lhs.false
	movq	56(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB13_6
# %bb.2:                                # %lor.lhs.false2
	movq	48(%rcx), %rax
	testq	%rax, %rax
	je	.LBB13_6
# %bb.3:                                # %lor.lhs.false5
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rcx), %rdi
	leaq	16(%rsp), %rsi
	leaq	8(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	*%rax
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB13_5
# %bb.4:                                # %lor.lhs.false5
	movq	8(%rsp), %rax
.LBB13_5:                               # %lor.lhs.false5
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB13_6:
	xorl	%eax, %eax
	retq
.Lfunc_end13:
	.size	lzma_memlimit_get, .Lfunc_end13-lzma_memlimit_get
	.cfi_endproc
                                        # -- End function
	.globl	lzma_memlimit_set               # -- Begin function lzma_memlimit_set
	.p2align	4, 0x90
	.type	lzma_memlimit_set,@function
lzma_memlimit_set:                      # @lzma_memlimit_set
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$11, %eax
	testq	%rdi, %rdi
	je	.LBB14_5
# %bb.1:                                # %lor.lhs.false
	movq	56(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB14_5
# %bb.2:                                # %lor.lhs.false2
	movq	48(%rdx), %r8
	testq	%r8, %r8
	je	.LBB14_5
# %bb.3:                                # %if.end
	movq	%rsi, %rcx
	decq	%rsi
	movl	$6, %eax
	cmpq	$32767, %rsi                    # imm = 0x7FFF
	jb	.LBB14_5
# %bb.4:                                # %if.end8
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdx), %rdi
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rdx
	callq	*%r8
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
.LBB14_5:                               # %cleanup
	retq
.Lfunc_end14:
	.size	lzma_memlimit_set, .Lfunc_end14-lzma_memlimit_set
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"5.0.5benchmarkcpu2017"
	.size	.L.str, 22

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
