	.text
	.file	"crc32_fast.c"
	.globl	lzma_crc32                      # -- Begin function lzma_crc32
	.p2align	4, 0x90
	.type	lzma_crc32,@function
lzma_crc32:                             # @lzma_crc32
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, %eax
	notl	%eax
	cmpq	$9, %rsi
	jb	.LBB0_22
# %bb.1:                                # %while.cond.preheader
	testb	$7, %dil
	je	.LBB0_17
# %bb.2:                                # %while.body
	leaq	1(%rdi), %rcx
	movzbl	(%rdi), %edx
	movzbl	%al, %r8d
	xorl	%edx, %r8d
	movq	lzma_crc32_table@GOTPCREL(%rip), %rdx
	shrl	$8, %eax
	xorl	(%rdx,%r8,4), %eax
	testb	$7, %cl
	je	.LBB0_3
# %bb.4:                                # %while.body.1
	leaq	2(%rdi), %rcx
	movzbl	1(%rdi), %r8d
	movzbl	%al, %r9d
	xorl	%r8d, %r9d
	shrl	$8, %eax
	xorl	(%rdx,%r9,4), %eax
	testb	$7, %cl
	je	.LBB0_5
# %bb.6:                                # %while.body.2
	leaq	3(%rdi), %rcx
	movzbl	2(%rdi), %r8d
	movzbl	%al, %r9d
	xorl	%r8d, %r9d
	shrl	$8, %eax
	xorl	(%rdx,%r9,4), %eax
	testb	$7, %cl
	je	.LBB0_7
# %bb.8:                                # %while.body.3
	leaq	4(%rdi), %rcx
	movzbl	3(%rdi), %r8d
	movzbl	%al, %r9d
	xorl	%r8d, %r9d
	shrl	$8, %eax
	xorl	(%rdx,%r9,4), %eax
	testb	$7, %cl
	je	.LBB0_9
# %bb.10:                               # %while.body.4
	leaq	5(%rdi), %rcx
	movzbl	4(%rdi), %r8d
	movzbl	%al, %r9d
	xorl	%r8d, %r9d
	shrl	$8, %eax
	xorl	(%rdx,%r9,4), %eax
	testb	$7, %cl
	je	.LBB0_11
# %bb.12:                               # %while.body.5
	leaq	6(%rdi), %rcx
	movzbl	5(%rdi), %r8d
	movzbl	%al, %r9d
	xorl	%r8d, %r9d
	shrl	$8, %eax
	xorl	(%rdx,%r9,4), %eax
	testb	$7, %cl
	je	.LBB0_13
# %bb.14:                               # %while.body.6
	leaq	7(%rdi), %rcx
	movzbl	6(%rdi), %r8d
	movzbl	%al, %r9d
	xorl	%r8d, %r9d
	shrl	$8, %eax
	xorl	(%rdx,%r9,4), %eax
	testb	$7, %cl
	je	.LBB0_15
# %bb.16:                               # %while.body.7
	movzbl	7(%rdi), %ecx
	addq	$8, %rdi
	movzbl	%al, %r8d
	xorl	%ecx, %r8d
	shrl	$8, %eax
	xorl	(%rdx,%r8,4), %eax
	addq	$-8, %rsi
.LBB0_17:                               # %while.end
	movq	%rdi, %rcx
	jmp	.LBB0_18
.LBB0_3:
	decq	%rsi
	jmp	.LBB0_18
.LBB0_5:
	addq	$-2, %rsi
	jmp	.LBB0_18
.LBB0_7:
	addq	$-3, %rsi
	jmp	.LBB0_18
.LBB0_9:
	addq	$-4, %rsi
	jmp	.LBB0_18
.LBB0_11:
	addq	$-5, %rsi
	jmp	.LBB0_18
.LBB0_13:
	addq	$-6, %rsi
	jmp	.LBB0_18
.LBB0_15:
	addq	$-7, %rsi
.LBB0_18:                               # %while.end
	movq	%rsi, %rdx
	andq	$-8, %rdx
	andl	$7, %esi
	testq	%rdx, %rdx
	jle	.LBB0_21
# %bb.19:                               # %while.body8.preheader
	addq	%rcx, %rdx
	movq	lzma_crc32_table@GOTPCREL(%rip), %rdi
	.p2align	4, 0x90
.LBB0_20:                               # %while.body8
                                        # =>This Inner Loop Header: Depth=1
	xorl	(%rcx), %eax
	movzbl	%al, %r9d
	movzbl	%ah, %ebx
	movl	6144(%rdi,%rbx,4), %r8d
	movl	%eax, %r10d
	shrl	$14, %r10d
	andl	$1020, %r10d                    # imm = 0x3FC
	shrl	$24, %eax
	movl	4(%rcx), %ebx
	addq	$8, %rcx
	movzbl	%bl, %r11d
	movzbl	%bh, %ebp
	movl	%ebx, %r14d
	shrl	$14, %r14d
	andl	$1020, %r14d                    # imm = 0x3FC
	shrl	$24, %ebx
	xorl	7168(%rdi,%r9,4), %r8d
	xorl	5120(%rdi,%r10), %r8d
	xorl	4096(%rdi,%rax,4), %r8d
	xorl	3072(%rdi,%r11,4), %r8d
	xorl	2048(%rdi,%rbp,4), %r8d
	xorl	1024(%rdi,%r14), %r8d
	movl	%r8d, %eax
	xorl	(%rdi,%rbx,4), %eax
	cmpq	%rdx, %rcx
	jb	.LBB0_20
.LBB0_21:
	movq	%rcx, %rdi
.LBB0_22:                               # %if.end
	testq	%rsi, %rsi
	je	.LBB0_29
# %bb.23:                               # %while.body52.preheader
	testb	$1, %sil
	jne	.LBB0_25
# %bb.24:
	movq	%rsi, %rcx
	cmpq	$1, %rsi
	jne	.LBB0_27
	jmp	.LBB0_29
.LBB0_25:                               # %while.body52.prol
	leaq	-1(%rsi), %rcx
	movzbl	(%rdi), %edx
	incq	%rdi
	movzbl	%al, %r8d
	xorl	%edx, %r8d
	movq	lzma_crc32_table@GOTPCREL(%rip), %rdx
	shrl	$8, %eax
	xorl	(%rdx,%r8,4), %eax
	cmpq	$1, %rsi
	je	.LBB0_29
.LBB0_27:                               # %while.body52.preheader1
	xorl	%edx, %edx
	movq	lzma_crc32_table@GOTPCREL(%rip), %rsi
	.p2align	4, 0x90
.LBB0_28:                               # %while.body52
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rdx), %r8d
	movzbl	%al, %r9d
	xorl	%r8d, %r9d
	shrl	$8, %eax
	xorl	(%rsi,%r9,4), %eax
	movzbl	1(%rdi,%rdx), %r8d
	movzbl	%al, %r9d
	xorl	%r8d, %r9d
	shrl	$8, %eax
	xorl	(%rsi,%r9,4), %eax
	addq	$2, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_28
.LBB0_29:                               # %while.end61
	notl	%eax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_crc32, .Lfunc_end0-lzma_crc32
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
