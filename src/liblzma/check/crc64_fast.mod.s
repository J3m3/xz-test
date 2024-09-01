	.text
	.file	"crc64_fast.c"
	.globl	lzma_crc64                      # -- Begin function lzma_crc64
	.p2align	4, 0x90
	.type	lzma_crc64,@function
lzma_crc64:                             # @lzma_crc64
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rax
	notq	%rax
	cmpq	$5, %rsi
	jb	.LBB0_14
# %bb.1:                                # %while.cond.preheader
	testb	$3, %dil
	je	.LBB0_9
# %bb.2:                                # %while.body
	leaq	1(%rdi), %rcx
	movzbl	(%rdi), %edx
	movzbl	%al, %r8d
	xorl	%edx, %r8d
	movq	lzma_crc64_table@GOTPCREL(%rip), %rdx
	shrq	$8, %rax
	xorq	(%rdx,%r8,8), %rax
	testb	$3, %cl
	je	.LBB0_3
# %bb.4:                                # %while.body.1
	leaq	2(%rdi), %rcx
	movzbl	1(%rdi), %r8d
	movzbl	%al, %r9d
	xorl	%r8d, %r9d
	shrq	$8, %rax
	xorq	(%rdx,%r9,8), %rax
	testb	$3, %cl
	je	.LBB0_5
# %bb.6:                                # %while.body.2
	leaq	3(%rdi), %rcx
	movzbl	2(%rdi), %r8d
	movzbl	%al, %r9d
	xorl	%r8d, %r9d
	shrq	$8, %rax
	xorq	(%rdx,%r9,8), %rax
	testb	$3, %cl
	je	.LBB0_7
# %bb.8:                                # %while.body.3
	movzbl	3(%rdi), %ecx
	addq	$4, %rdi
	movzbl	%al, %r8d
	xorl	%ecx, %r8d
	shrq	$8, %rax
	xorq	(%rdx,%r8,8), %rax
	addq	$-4, %rsi
.LBB0_9:                                # %while.end
	movq	%rdi, %rcx
	jmp	.LBB0_10
.LBB0_3:
	decq	%rsi
	jmp	.LBB0_10
.LBB0_5:
	addq	$-2, %rsi
	jmp	.LBB0_10
.LBB0_7:
	addq	$-3, %rsi
.LBB0_10:                               # %while.end
	movq	%rsi, %rdx
	andq	$-4, %rdx
	andl	$3, %esi
	testq	%rdx, %rdx
	jle	.LBB0_13
# %bb.11:                               # %while.body8.preheader
	addq	%rcx, %rdx
	movq	lzma_crc64_table@GOTPCREL(%rip), %rdi
	.p2align	4, 0x90
.LBB0_12:                               # %while.body8
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %ebx
	xorl	%eax, %ebx
	addq	$4, %rcx
	movzbl	%bl, %r8d
	movzbl	%bh, %ebp
	shrq	$32, %rax
	movl	%ebx, %r9d
	shrl	$13, %r9d
	andl	$2040, %r9d                     # imm = 0x7F8
	xorq	6144(%rdi,%r8,8), %rax
	xorq	4096(%rdi,%rbp,8), %rax
	xorq	2048(%rdi,%r9), %rax
	shrl	$24, %ebx
	xorq	(%rdi,%rbx,8), %rax
	cmpq	%rdx, %rcx
	jb	.LBB0_12
.LBB0_13:
	movq	%rcx, %rdi
.LBB0_14:                               # %if.end
	testq	%rsi, %rsi
	je	.LBB0_22
# %bb.15:                               # %while.body36
	movzbl	(%rdi), %ecx
	movzbl	%al, %edx
	xorl	%ecx, %edx
	movq	lzma_crc64_table@GOTPCREL(%rip), %rcx
	shrq	$8, %rax
	xorq	(%rcx,%rdx,8), %rax
	cmpq	$1, %rsi
	je	.LBB0_22
# %bb.16:                               # %while.body36.1
	movzbl	1(%rdi), %edx
	movzbl	%al, %r8d
	xorl	%edx, %r8d
	shrq	$8, %rax
	xorq	(%rcx,%r8,8), %rax
	cmpq	$2, %rsi
	je	.LBB0_22
# %bb.17:                               # %while.body36.2
	movzbl	2(%rdi), %edx
	movzbl	%al, %r8d
	xorl	%edx, %r8d
	shrq	$8, %rax
	xorq	(%rcx,%r8,8), %rax
	cmpq	$3, %rsi
	je	.LBB0_22
# %bb.18:                               # %while.body36.3
	movzbl	3(%rdi), %edx
	movzbl	%al, %r8d
	xorl	%edx, %r8d
	shrq	$8, %rax
	xorq	(%rcx,%r8,8), %rax
	cmpq	$4, %rsi
	je	.LBB0_22
# %bb.19:                               # %while.body36.4
	movzbl	4(%rdi), %edx
	movzbl	%al, %r8d
	xorl	%edx, %r8d
	shrq	$8, %rax
	xorq	(%rcx,%r8,8), %rax
	cmpq	$5, %rsi
	je	.LBB0_22
# %bb.20:                               # %while.body36.5
	movzbl	5(%rdi), %edx
	movzbl	%al, %r8d
	xorl	%edx, %r8d
	shrq	$8, %rax
	xorq	(%rcx,%r8,8), %rax
	cmpq	$6, %rsi
	je	.LBB0_22
# %bb.21:                               # %while.body36.6
	movzbl	6(%rdi), %edx
	movzbl	%al, %esi
	xorl	%edx, %esi
	shrq	$8, %rax
	xorq	(%rcx,%rsi,8), %rax
.LBB0_22:                               # %while.end44
	notq	%rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_crc64, .Lfunc_end0-lzma_crc64
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
