	.text
	.file	"sha512.c"
	.globl	sha_init                        # -- Begin function sha_init
	.p2align	4, 0x90
	.type	sha_init,@function
sha_init:                               # @sha_init
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$0, 72(%rdi)
	movq	$0, (%rdi)
	movabsq	$7640891576956012808, %rax      # imm = 0x6A09E667F3BCC908
	movq	%rax, 8(%rdi)
	movabsq	$-4942790177534073029, %rax     # imm = 0xBB67AE8584CAA73B
	movq	%rax, 16(%rdi)
	movabsq	$4354685564936845355, %rax      # imm = 0x3C6EF372FE94F82B
	movq	%rax, 24(%rdi)
	movabsq	$-6534734903238641935, %rax     # imm = 0xA54FF53A5F1D36F1
	movq	%rax, 32(%rdi)
	movabsq	$5840696475078001361, %rax      # imm = 0x510E527FADE682D1
	movq	%rax, 40(%rdi)
	movabsq	$-7276294671716946913, %rax     # imm = 0x9B05688C2B3E6C1F
	movq	%rax, 48(%rdi)
	movabsq	$2270897969802886507, %rax      # imm = 0x1F83D9ABFB41BD6B
	movq	%rax, 56(%rdi)
	movabsq	$6620516959819538809, %rax      # imm = 0x5BE0CD19137E2179
	movq	%rax, 64(%rdi)
	retq
.Lfunc_end0:
	.size	sha_init, .Lfunc_end0-sha_init
	.cfi_endproc
                                        # -- End function
	.globl	sha_process                     # -- Begin function sha_process
	.p2align	4, 0x90
	.type	sha_process,@function
sha_process:                            # @sha_process
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
	movl	%edx, %ebx
	movq	%rsi, %r13
	movq	%rdi, %r14
	movslq	%edx, %r12
	movq	%r12, %rdi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB1_9
# %bb.1:                                # %sortof_strdup.exit
	movq	%rax, %r15
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
	testl	%r12d, %r12d
	je	.LBB1_8
# %bb.2:                                # %while.body.lr.ph
	leaq	76(%r14), %r12
	movq	%r15, %r13
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_4:                                # %if.then
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	sha_compress
	addq	$1024, (%r14)                   # imm = 0x400
	subq	$-128, %r13
	addl	$-128, %ebx
.LBB1_7:                                # %if.end22
                                        #   in Loop: Header=BB1_3 Depth=1
	testl	%ebx, %ebx
	je	.LBB1_8
.LBB1_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	72(%r14), %edi
	testq	%rdi, %rdi
	setne	%al
	cmpl	$128, %ebx
	setb	%cl
	orb	%al, %cl
	je	.LBB1_4
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$128, %ebp
	subl	%edi, %ebp
	cmpl	%ebp, %ebx
	cmovbl	%ebx, %ebp
	addq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	memcpy@PLT
	movl	%ebp, %eax
	addl	72(%r14), %eax
	subl	%ebp, %ebx
	movl	%eax, 72(%r14)
	addq	%rbp, %r13
	cmpl	$128, %eax
	jne	.LBB1_7
# %bb.6:                                # %if.then16
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	sha_compress
	addq	$1024, (%r14)                   # imm = 0x400
	movl	$0, 72(%r14)
	jmp	.LBB1_7
.LBB1_8:                                # %while.end
	movq	%r15, %rdi
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
	jmp	free@PLT                        # TAILCALL
.LBB1_9:                                # %if.then.i
	.cfi_def_cfa_offset 64
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str, %esi
	movl	$.L.str.1, %ecx
	movq	%r12, %rdx
	movl	$129, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end1:
	.size	sha_process, .Lfunc_end1-sha_process
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sha_compress
	.type	sha_compress,@function
sha_compress:                           # @sha_compress
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
	subq	$520, %rsp                      # imm = 0x208
	.cfi_def_cfa_offset 576
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	8(%rdi), %r9
	movq	16(%rdi), %rdx
	movq	24(%rdi), %r10
	movq	32(%rdi), %r8
	movq	40(%rdi), %rax
	movq	48(%rdi), %rcx
	movq	56(%rdi), %r11
	movq	64(%rdi), %rbx
	movl	$3, %r14d
	.p2align	4, 0x90
.LBB2_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rsi,%r14,8), %r15
	movq	-16(%rsi,%r14,8), %r12
	bswapq	%r15
	bswapq	%r12
	movq	-8(%rsi,%r14,8), %r13
	bswapq	%r13
	movq	(%rsi,%r14,8), %rbp
	bswapq	%rbp
	movq	%r15, -152(%rsp,%r14,8)
	movq	%r12, -144(%rsp,%r14,8)
	movq	%r13, -136(%rsp,%r14,8)
	movq	%rbp, -128(%rsp,%r14,8)
	addq	$4, %r14
	cmpq	$19, %r14
	jne	.LBB2_1
# %bb.2:                                # %for.body17.preheader
	movl	$16, %esi
	movq	-128(%rsp), %r14
	.p2align	4, 0x90
.LBB2_3:                                # %for.body17
                                        # =>This Inner Loop Header: Depth=1
	movq	-248(%rsp,%rsi,8), %r15
	movq	-144(%rsp,%rsi,8), %r12
	movq	%r12, %r13
	rolq	$45, %r13
	movq	%r12, %rbp
	rolq	$3, %rbp
	xorq	%r13, %rbp
	shrq	$6, %r12
	xorq	%rbp, %r12
	addq	-184(%rsp,%rsi,8), %r12
	movq	%r15, %r13
	rorq	%r13
	movq	%r15, %rbp
	rolq	$56, %rbp
	xorq	%r13, %rbp
	movq	%r15, %r13
	shrq	$7, %r13
	xorq	%rbp, %r13
	addq	%r14, %r13
	addq	%r12, %r13
	movq	%r13, -128(%rsp,%rsi,8)
	incq	%rsi
	movq	%r15, %r14
	cmpq	$80, %rsi
	jne	.LBB2_3
# %bb.4:                                # %for.body42.preheader
	movq	$-8, %rsi
	.p2align	4, 0x90
.LBB2_5:                                # %for.body42
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r14
	rolq	$50, %r14
	movq	%rax, %r15
	rolq	$46, %r15
	xorq	%r14, %r15
	movq	%rax, %r14
	rolq	$23, %r14
	xorq	%r15, %r14
	addq	%rbx, %r14
	movq	%r11, %rbx
	xorq	%rcx, %rbx
	addq	K+64(,%rsi,8), %r14
	addq	-64(%rsp,%rsi,8), %r14
	andq	%rax, %rbx
	movq	%r9, %r15
	rolq	$36, %r15
	xorq	%r11, %rbx
	movq	%r9, %r12
	rolq	$30, %r12
	addq	%rbx, %r14
	movq	%r9, %r13
	rolq	$25, %r13
	xorq	%r15, %r12
	xorq	%r12, %r13
	movq	%rdx, %r15
	orq	%r9, %r15
	andq	%r10, %r15
	movq	%rdx, %rbx
	andq	%r9, %rbx
	orq	%r15, %rbx
	addq	%r14, %r8
	movq	%r8, %r15
	rolq	$50, %r15
	addq	%r13, %rbx
	movq	%r8, %r12
	rolq	$46, %r12
	addq	%r14, %rbx
	movq	%r8, %r13
	rolq	$23, %r13
	xorq	%r15, %r12
	movq	%rcx, %r14
	xorq	%rax, %r14
	andq	%r8, %r14
	xorq	%rcx, %r14
	addq	%r11, %r14
	addq	K+72(,%rsi,8), %r14
	xorq	%r12, %r13
	addq	%r13, %r14
	addq	-56(%rsp,%rsi,8), %r14
	movq	%rbx, %r11
	rolq	$36, %r11
	movq	%rbx, %r15
	rolq	$30, %r15
	xorq	%r11, %r15
	movq	%rbx, %r12
	rolq	$25, %r12
	xorq	%r15, %r12
	movq	%rbx, %r15
	orq	%r9, %r15
	andq	%rdx, %r15
	movq	%rbx, %r11
	andq	%r9, %r11
	orq	%r15, %r11
	addq	%r12, %r11
	addq	%r14, %r10
	addq	%r14, %r11
	movq	%r10, %r14
	rolq	$50, %r14
	movq	%r10, %r15
	rolq	$46, %r15
	xorq	%r14, %r15
	movq	%r10, %r14
	rolq	$23, %r14
	xorq	%r15, %r14
	movq	%r8, %r15
	xorq	%rax, %r15
	andq	%r10, %r15
	addq	K+80(,%rsi,8), %rcx
	xorq	%rax, %r15
	addq	-48(%rsp,%rsi,8), %rcx
	addq	%r15, %rcx
	addq	%r14, %rcx
	movq	%r11, %r14
	rolq	$36, %r14
	movq	%r11, %r15
	rolq	$30, %r15
	xorq	%r14, %r15
	movq	%r11, %r14
	rolq	$25, %r14
	xorq	%r15, %r14
	movq	%r11, %r15
	orq	%rbx, %r15
	andq	%r9, %r15
	movq	%r11, %r12
	andq	%rbx, %r12
	orq	%r15, %r12
	addq	%r14, %r12
	addq	%rcx, %rdx
	addq	%r12, %rcx
	movq	%rdx, %r14
	rolq	$50, %r14
	movq	%rdx, %r15
	rolq	$46, %r15
	xorq	%r14, %r15
	movq	%rdx, %r14
	rolq	$23, %r14
	xorq	%r15, %r14
	movq	%r10, %r15
	xorq	%r8, %r15
	andq	%rdx, %r15
	xorq	%r8, %r15
	addq	K+88(,%rsi,8), %rax
	addq	-40(%rsp,%rsi,8), %rax
	addq	%r15, %rax
	movq	%rcx, %r15
	rolq	$36, %r15
	addq	%r14, %rax
	movq	%rcx, %r14
	rolq	$30, %r14
	xorq	%r15, %r14
	movq	%rcx, %r15
	rolq	$25, %r15
	xorq	%r14, %r15
	movq	%rcx, %r14
	orq	%r11, %r14
	andq	%rbx, %r14
	movq	%rcx, %r12
	andq	%r11, %r12
	orq	%r14, %r12
	addq	%r15, %r12
	addq	%rax, %r9
	movq	%r9, %r14
	rolq	$50, %r14
	addq	%r12, %rax
	movq	%r9, %r15
	rolq	$46, %r15
	xorq	%r14, %r15
	movq	%r9, %r14
	rolq	$23, %r14
	xorq	%r15, %r14
	movq	%rdx, %r15
	xorq	%r10, %r15
	andq	%r9, %r15
	addq	K+96(,%rsi,8), %r8
	addq	-32(%rsp,%rsi,8), %r8
	xorq	%r10, %r15
	addq	%r15, %r8
	movq	%r8, %r15
	addq	%r14, %r15
	movq	%rax, %r8
	rolq	$36, %r8
	movq	%rax, %r14
	rolq	$30, %r14
	xorq	%r8, %r14
	movq	%rax, %r12
	rolq	$25, %r12
	xorq	%r14, %r12
	movq	%rax, %r14
	orq	%rcx, %r14
	andq	%r11, %r14
	movq	%rax, %r8
	andq	%rcx, %r8
	orq	%r14, %r8
	addq	%r12, %r8
	addq	%r15, %rbx
	addq	%r15, %r8
	movq	%rbx, %r14
	rolq	$50, %r14
	movq	%rbx, %r15
	rolq	$46, %r15
	xorq	%r14, %r15
	movq	%rbx, %r14
	rolq	$23, %r14
	xorq	%r15, %r14
	movq	%r9, %r15
	xorq	%rdx, %r15
	andq	%rbx, %r15
	addq	K+104(,%rsi,8), %r10
	xorq	%rdx, %r15
	addq	-24(%rsp,%rsi,8), %r10
	addq	%r15, %r10
	movq	%r10, %r15
	movq	%r8, %r10
	rolq	$36, %r10
	addq	%r14, %r15
	movq	%r8, %r14
	rolq	$30, %r14
	xorq	%r10, %r14
	movq	%r8, %r12
	rolq	$25, %r12
	xorq	%r14, %r12
	movq	%r8, %r14
	orq	%rax, %r14
	andq	%rcx, %r14
	movq	%r8, %r10
	andq	%rax, %r10
	orq	%r14, %r10
	addq	%r12, %r10
	addq	%r15, %r11
	movq	%r11, %r14
	rolq	$50, %r14
	addq	%r15, %r10
	movq	%r11, %r15
	rolq	$46, %r15
	xorq	%r14, %r15
	movq	%r11, %r14
	rolq	$23, %r14
	xorq	%r15, %r14
	movq	%rbx, %r15
	xorq	%r9, %r15
	andq	%r11, %r15
	addq	K+112(,%rsi,8), %rdx
	addq	-16(%rsp,%rsi,8), %rdx
	xorq	%r9, %r15
	addq	%r15, %rdx
	movq	%rdx, %r15
	addq	%r14, %r15
	movq	%r10, %rdx
	rolq	$36, %rdx
	movq	%r10, %r14
	rolq	$30, %r14
	xorq	%rdx, %r14
	movq	%r10, %r12
	rolq	$25, %r12
	xorq	%r14, %r12
	movq	%r10, %r14
	orq	%r8, %r14
	andq	%rax, %r14
	movq	%r10, %rdx
	andq	%r8, %rdx
	orq	%r14, %rdx
	addq	%r12, %rdx
	addq	%r15, %rcx
	addq	%r15, %rdx
	movq	%rcx, %r14
	rolq	$50, %r14
	movq	%rcx, %r15
	rolq	$46, %r15
	xorq	%r14, %r15
	movq	%rcx, %r14
	rolq	$23, %r14
	xorq	%r15, %r14
	movq	%r11, %r15
	xorq	%rbx, %r15
	andq	%rcx, %r15
	addq	K+120(,%rsi,8), %r9
	xorq	%rbx, %r15
	addq	-8(%rsp,%rsi,8), %r9
	addq	%r15, %r9
	movq	%r9, %r15
	movq	%rdx, %r9
	rolq	$36, %r9
	addq	%r14, %r15
	movq	%rdx, %r14
	rolq	$30, %r14
	xorq	%r9, %r14
	movq	%rdx, %r12
	rolq	$25, %r12
	xorq	%r14, %r12
	movq	%rdx, %r14
	orq	%r10, %r14
	andq	%r8, %r14
	movq	%rdx, %r9
	andq	%r10, %r9
	orq	%r14, %r9
	addq	%r12, %r9
	addq	%r15, %rax
	addq	%r15, %r9
	addq	$8, %rsi
	cmpq	$72, %rsi
	jb	.LBB2_5
# %bb.6:                                # %for.cond271.preheader
	addq	%r9, 8(%rdi)
	addq	%rdx, 16(%rdi)
	addq	%r10, 24(%rdi)
	addq	%r8, 32(%rdi)
	addq	%rax, 40(%rdi)
	addq	%rcx, 48(%rdi)
	addq	%r11, 56(%rdi)
	addq	%rbx, 64(%rdi)
	addq	$520, %rsp                      # imm = 0x208
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
.Lfunc_end2:
	.size	sha_compress, .Lfunc_end2-sha_compress
	.cfi_endproc
                                        # -- End function
	.globl	sha_done                        # -- Begin function sha_done
	.p2align	4, 0x90
	.type	sha_done,@function
sha_done:                               # @sha_done
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
	movl	72(%rdi), %eax
	leaq	(,%rax,8), %rcx
	addq	%rcx, (%rdi)
	leaq	76(%rdi), %r15
	leal	1(%rax), %ecx
	movl	%ecx, 72(%rdi)
	movb	$-128, 76(%rdi,%rax)
	cmpl	$113, %ecx
	jb	.LBB3_4
# %bb.1:                                # %while.cond.preheader
	cmpl	$127, %ecx
	ja	.LBB3_3
# %bb.2:                                # %while.body.preheader
	leaq	(%r14,%rax), %rdi
	addq	$77, %rdi
	movl	$127, %edx
	subl	%eax, %edx
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$128, 72(%r14)
.LBB3_3:                                # %while.end
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	sha_compress
	xorl	%ecx, %ecx
.LBB3_4:                                # %while.end24
	movl	%ecx, %eax
	leaq	(%r14,%rax), %rdi
	addq	$76, %rdi
	movl	$120, %edx
	subl	%ecx, %edx
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$120, 72(%r14)
	movq	(%r14), %rax
	bswapq	%rax
	movq	%rax, 196(%r14)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	sha_compress
	movq	8(%r14), %rax
	bswapq	%rax
	movq	%rax, (%rbx)
	movq	16(%r14), %rax
	bswapq	%rax
	movq	%rax, 8(%rbx)
	movq	24(%r14), %rax
	bswapq	%rax
	movq	%rax, 16(%rbx)
	movq	32(%r14), %rax
	bswapq	%rax
	movq	%rax, 24(%rbx)
	movq	40(%r14), %rax
	bswapq	%rax
	movq	%rax, 32(%rbx)
	movq	48(%r14), %rax
	bswapq	%rax
	movq	%rax, 40(%rbx)
	movq	56(%r14), %rax
	bswapq	%rax
	movq	%rax, 48(%rbx)
	movq	64(%r14), %rax
	bswapq	%rax
	movq	%rax, 56(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	sha_done, .Lfunc_end3-sha_done
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Failed to allocate %lu bytes at %s:%d\n"
	.size	.L.str, 39

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"sha-2/sha512.c"
	.size	.L.str.1, 15

	.type	K,@object                       # @K
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
K:
	.quad	4794697086780616226             # 0x428a2f98d728ae22
	.quad	8158064640168781261             # 0x7137449123ef65cd
	.quad	-5349999486874862801            # 0xb5c0fbcfec4d3b2f
	.quad	-1606136188198331460            # 0xe9b5dba58189dbbc
	.quad	4131703408338449720             # 0x3956c25bf348b538
	.quad	6480981068601479193             # 0x59f111f1b605d019
	.quad	-7908458776815382629            # 0x923f82a4af194f9b
	.quad	-6116909921290321640            # 0xab1c5ed5da6d8118
	.quad	-2880145864133508542            # 0xd807aa98a3030242
	.quad	1334009975649890238             # 0x12835b0145706fbe
	.quad	2608012711638119052             # 0x243185be4ee4b28c
	.quad	6128411473006802146             # 0x550c7dc3d5ffb4e2
	.quad	8268148722764581231             # 0x72be5d74f27b896f
	.quad	-9160688886553864527            # 0x80deb1fe3b1696b1
	.quad	-7215885187991268811            # 0x9bdc06a725c71235
	.quad	-4495734319001033068            # 0xc19bf174cf692694
	.quad	-1973867731355612462            # 0xe49b69c19ef14ad2
	.quad	-1171420211273849373            # 0xefbe4786384f25e3
	.quad	1135362057144423861             # 0xfc19dc68b8cd5b5
	.quad	2597628984639134821             # 0x240ca1cc77ac9c65
	.quad	3308224258029322869             # 0x2de92c6f592b0275
	.quad	5365058923640841347             # 0x4a7484aa6ea6e483
	.quad	6679025012923562964             # 0x5cb0a9dcbd41fbd4
	.quad	8573033837759648693             # 0x76f988da831153b5
	.quad	-7476448914759557205            # 0x983e5152ee66dfab
	.quad	-6327057829258317296            # 0xa831c66d2db43210
	.quad	-5763719355590565569            # 0xb00327c898fb213f
	.quad	-4658551843659510044            # 0xbf597fc7beef0ee4
	.quad	-4116276920077217854            # 0xc6e00bf33da88fc2
	.quad	-3051310485924567259            # 0xd5a79147930aa725
	.quad	489312712824947311              # 0x6ca6351e003826f
	.quad	1452737877330783856             # 0x142929670a0e6e70
	.quad	2861767655752347644             # 0x27b70a8546d22ffc
	.quad	3322285676063803686             # 0x2e1b21385c26c926
	.quad	5560940570517711597             # 0x4d2c6dfc5ac42aed
	.quad	5996557281743188959             # 0x53380d139d95b3df
	.quad	7280758554555802590             # 0x650a73548baf63de
	.quad	8532644243296465576             # 0x766a0abb3c77b2a8
	.quad	-9096487096722542874            # 0x81c2c92e47edaee6
	.quad	-7894198246740708037            # 0x92722c851482353b
	.quad	-6719396339535248540            # 0xa2bfe8a14cf10364
	.quad	-6333637450476146687            # 0xa81a664bbc423001
	.quad	-4446306890439682159            # 0xc24b8b70d0f89791
	.quad	-4076793802049405392            # 0xc76c51a30654be30
	.quad	-3345356375505022440            # 0xd192e819d6ef5218
	.quad	-2983346525034927856            # 0xd69906245565a910
	.quad	-860691631967231958             # 0xf40e35855771202a
	.quad	1182934255886127544             # 0x106aa07032bbd1b8
	.quad	1847814050463011016             # 0x19a4c116b8d2d0c8
	.quad	2177327727835720531             # 0x1e376c085141ab53
	.quad	2830643537854262169             # 0x2748774cdf8eeb99
	.quad	3796741975233480872             # 0x34b0bcb5e19b48a8
	.quad	4115178125766777443             # 0x391c0cb3c5c95a63
	.quad	5681478168544905931             # 0x4ed8aa4ae3418acb
	.quad	6601373596472566643             # 0x5b9cca4f7763e373
	.quad	7507060721942968483             # 0x682e6ff3d6b2b8a3
	.quad	8399075790359081724             # 0x748f82ee5defb2fc
	.quad	8693463985226723168             # 0x78a5636f43172f60
	.quad	-8878714635349349518            # 0x84c87814a1f0ab72
	.quad	-8302665154208450068            # 0x8cc702081a6439ec
	.quad	-8016688836872298968            # 0x90befffa23631e28
	.quad	-6606660893046293015            # 0xa4506cebde82bde9
	.quad	-4685533653050689259            # 0xbef9a3f7b2c67915
	.quad	-4147400797238176981            # 0xc67178f2e372532b
	.quad	-3880063495543823972            # 0xca273eceea26619c
	.quad	-3348786107499101689            # 0xd186b8c721c0c207
	.quad	-1523767162380948706            # 0xeada7dd6cde0eb1e
	.quad	-757361751448694408             # 0xf57d4f7fee6ed178
	.quad	500013540394364858              # 0x6f067aa72176fba
	.quad	748580250866718886              # 0xa637dc5a2c898a6
	.quad	1242879168328830382             # 0x113f9804bef90dae
	.quad	1977374033974150939             # 0x1b710b35131c471b
	.quad	2944078676154940804             # 0x28db77f523047d84
	.quad	3659926193048069267             # 0x32caab7b40c72493
	.quad	4368137639120453308             # 0x3c9ebe0a15c9bebc
	.quad	4836135668995329356             # 0x431d67c49c100d4c
	.quad	5532061633213252278             # 0x4cc5d4becb3e42b6
	.quad	6448918945643986474             # 0x597f299cfc657e2a
	.quad	6902733635092675308             # 0x5fcb6fab3ad6faec
	.quad	7801388544844847127             # 0x6c44198c4a475817
	.size	K, 640

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
