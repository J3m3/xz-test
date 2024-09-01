	.text
	.file	"sha256.c"
	.globl	lzma_sha256_init                # -- Begin function lzma_sha256_init
	.p2align	4, 0x90
	.type	lzma_sha256_init,@function
lzma_sha256_init:                       # @lzma_sha256_init
	.cfi_startproc
# %bb.0:                                # %entry
	movaps	lzma_sha256_init.s+16(%rip), %xmm0
	movups	%xmm0, 80(%rdi)
	movaps	lzma_sha256_init.s(%rip), %xmm0
	movups	%xmm0, 64(%rdi)
	movq	$0, 96(%rdi)
	retq
.Lfunc_end0:
	.size	lzma_sha256_init, .Lfunc_end0-lzma_sha256_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_sha256_update              # -- Begin function lzma_sha256_update
	.p2align	4, 0x90
	.type	lzma_sha256_update,@function
lzma_sha256_update:                     # @lzma_sha256_update
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rsi, %rsi
	je	.LBB1_6
# %bb.1:                                # %while.body.lr.ph
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
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_4:                                # %if.end12
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r12, %r15
	subq	%r12, %r14
	je	.LBB1_5
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	96(%rbx), %rdi
	andl	$63, %edi
	movl	$64, %r12d
	subq	%rdi, %r12
	cmpq	%r14, %r12
	cmovaeq	%r14, %r12
	addq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
	movq	96(%rbx), %rax
	addq	%r12, %rax
	movq	%rax, 96(%rbx)
	testb	$63, %al
	jne	.LBB1_4
# %bb.3:                                # %if.then11
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, %rdi
	callq	process
	jmp	.LBB1_4
.LBB1_5:
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
.LBB1_6:                                # %while.end
	retq
.Lfunc_end1:
	.size	lzma_sha256_update, .Lfunc_end1-lzma_sha256_update
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function process
	.type	process,@function
process:                                # @process
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	(%rdi), %eax
	movl	4(%rdi), %ecx
	bswapl	%eax
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	bswapl	%ecx
	movl	%ecx, 68(%rsp)                  # 4-byte Spill
	movl	8(%rdi), %eax
	bswapl	%eax
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	movl	12(%rdi), %eax
	bswapl	%eax
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	movl	16(%rdi), %eax
	bswapl	%eax
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	movl	20(%rdi), %eax
	bswapl	%eax
	movl	%eax, 52(%rsp)                  # 4-byte Spill
	movl	24(%rdi), %eax
	bswapl	%eax
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	movl	28(%rdi), %eax
	bswapl	%eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	movl	32(%rdi), %eax
	bswapl	%eax
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movl	36(%rdi), %eax
	bswapl	%eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	movl	40(%rdi), %eax
	bswapl	%eax
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	movl	44(%rdi), %eax
	bswapl	%eax
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	movl	48(%rdi), %eax
	bswapl	%eax
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	movl	52(%rdi), %eax
	bswapl	%eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	movl	56(%rdi), %eax
	bswapl	%eax
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	movl	60(%rdi), %eax
	bswapl	%eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	64(%rdi), %r10d
	movl	68(%rdi), %ecx
	movl	72(%rdi), %esi
	movl	76(%rdi), %r8d
	movl	80(%rdi), %r11d
	movl	84(%rdi), %r15d
	movl	88(%rdi), %eax
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	movl	92(%rdi), %r13d
	movq	$-16, %r12
	movl	%r10d, -20(%rsp)                # 4-byte Spill
	movl	%ecx, -16(%rsp)                 # 4-byte Spill
	movl	%ecx, %edi
	movl	%esi, -12(%rsp)                 # 4-byte Spill
	movl	%r8d, -8(%rsp)                  # 4-byte Spill
	movl	%r11d, -4(%rsp)                 # 4-byte Spill
	movl	%r15d, (%rsp)                   # 4-byte Spill
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	movl	%r13d, 8(%rsp)                  # 4-byte Spill
                                        # implicit-def: $ecx
                                        # implicit-def: $r9d
                                        # implicit-def: $ebx
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
                                        # implicit-def: $ebp
                                        # kill: killed $ebp
	jmp	.LBB2_1
	.p2align	4, 0x90
.LBB2_33:                               # %cond.end1615.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	%edx, -124(%rsp)                # 4-byte Spill
	movl	%r11d, %ecx
	roll	$26, %ecx
	movl	%r11d, %edx
	roll	$21, %edx
	xorl	%ecx, %edx
	movl	%r11d, %ecx
	roll	$7, %ecx
	xorl	%edx, %ecx
	addl	%r13d, %ecx
	movl	%eax, %edx
	xorl	%r15d, %edx
	andl	%r11d, %edx
	xorl	%eax, %edx
	addl	%ecx, %edx
	movl	76(%rsp), %ebx                  # 4-byte Reload
	addl	-112(%rsp), %ebx                # 4-byte Folded Reload
	addl	%edx, %ebx
	movl	%r10d, %ecx
	roll	$30, %ecx
	movl	%r10d, %edx
	roll	$19, %edx
	xorl	%ecx, %edx
	movl	%r10d, %ecx
	roll	$10, %ecx
	xorl	%edx, %ecx
	movl	%edi, %edx
	andl	%r10d, %edx
	movl	%edi, %r9d
	orl	%r10d, %r9d
	andl	%esi, %r9d
	orl	%edx, %r9d
	addl	%ecx, %r9d
	addl	%ebx, %r8d
	addl	%ebx, %r9d
	movl	%r8d, %ecx
	roll	$26, %ecx
	movl	%r8d, %edx
	roll	$21, %edx
	xorl	%ecx, %edx
	movl	%r8d, %ecx
	roll	$7, %ecx
	xorl	%edx, %ecx
	addl	%eax, %ebp
	movl	%r15d, %eax
	xorl	%r11d, %eax
	andl	%r8d, %eax
	xorl	%r15d, %eax
	addl	%eax, %ebp
	addl	-92(%rsp), %ebp                 # 4-byte Folded Reload
	addl	%ecx, %ebp
	movl	%r9d, %eax
	roll	$30, %eax
	movl	%r9d, %ecx
	roll	$19, %ecx
	xorl	%eax, %ecx
	movl	%r9d, %edx
	roll	$10, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	andl	%r10d, %ecx
	movl	%r9d, %eax
	orl	%r10d, %eax
	andl	%edi, %eax
	orl	%ecx, %eax
	addl	%edx, %eax
	addl	%ebp, %esi
	addl	%ebp, %eax
	movl	%esi, %ecx
	roll	$26, %ecx
	movl	%esi, %edx
	roll	$21, %edx
	xorl	%ecx, %edx
	movl	%esi, %ecx
	roll	$7, %ecx
	xorl	%edx, %ecx
	addl	%r15d, %r14d
	movl	%r8d, %edx
	xorl	%r11d, %edx
	andl	%esi, %edx
	xorl	%r11d, %edx
	addl	%edx, %r14d
	movl	%eax, %edx
	roll	$30, %edx
	addl	-120(%rsp), %r14d               # 4-byte Folded Reload
	movl	%eax, %ebp
	roll	$19, %ebp
	addl	%ecx, %r14d
	movl	%eax, %ecx
	roll	$10, %ecx
	xorl	%edx, %ebp
	xorl	%ebp, %ecx
	movl	%eax, %edx
	andl	%r9d, %edx
	movl	%eax, %ebp
	orl	%r9d, %ebp
	andl	%r10d, %ebp
	orl	%edx, %ebp
	addl	%r14d, %edi
	movl	%edi, %edx
	roll	$26, %edx
	addl	%ecx, %ebp
	movl	%edi, %ecx
	roll	$21, %ecx
	addl	%r14d, %ebp
	movl	%edi, %ebx
	roll	$7, %ebx
	xorl	%edx, %ecx
	xorl	%ecx, %ebx
	movl	80(%rsp), %r14d                 # 4-byte Reload
	addl	%r11d, %r14d
	movl	%esi, %ecx
	xorl	%r8d, %ecx
	andl	%edi, %ecx
	xorl	%r8d, %ecx
	addl	%ecx, %r14d
	addl	-116(%rsp), %r14d               # 4-byte Folded Reload
	movl	%ebp, %ecx
	roll	$30, %ecx
	addl	%ebx, %r14d
	movl	%ebp, %edx
	roll	$19, %edx
	xorl	%ecx, %edx
	movl	%ebp, %ecx
	roll	$10, %ecx
	xorl	%edx, %ecx
	movl	%ebp, %edx
	andl	%eax, %edx
	movl	%ebp, %r11d
	orl	%eax, %r11d
	andl	%r9d, %r11d
	orl	%edx, %r11d
	addl	%ecx, %r11d
	addl	%r14d, %r10d
	movl	%r10d, %ecx
	roll	$26, %ecx
	addl	%r14d, %r11d
	movl	%r10d, %edx
	roll	$21, %edx
	xorl	%ecx, %edx
	movl	%r10d, %ecx
	roll	$7, %ecx
	xorl	%edx, %ecx
	movl	84(%rsp), %ebx                  # 4-byte Reload
	addl	%r8d, %ebx
	movl	%edi, %edx
	xorl	%esi, %edx
	andl	%r10d, %edx
	xorl	%esi, %edx
	addl	%edx, %ebx
	addl	-72(%rsp), %ebx                 # 4-byte Folded Reload
	addl	%ecx, %ebx
	movl	%r11d, %ecx
	roll	$30, %ecx
	movl	%r11d, %edx
	roll	$19, %edx
	xorl	%ecx, %edx
	movl	%r11d, %ecx
	roll	$10, %ecx
	xorl	%edx, %ecx
	movl	%r11d, %edx
	andl	%ebp, %edx
	movl	%r11d, %r8d
	orl	%ebp, %r8d
	andl	%eax, %r8d
	orl	%edx, %r8d
	addl	%ecx, %r8d
	addl	%ebx, %r9d
	addl	%ebx, %r8d
	movl	%r9d, %ecx
	roll	$26, %ecx
	movl	%r9d, %edx
	roll	$21, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	roll	$7, %ecx
	xorl	%edx, %ecx
	movl	88(%rsp), %ebx                  # 4-byte Reload
	addl	%esi, %ebx
	movl	%r10d, %edx
	xorl	%edi, %edx
	andl	%r9d, %edx
	xorl	%edi, %edx
	addl	%edx, %ebx
	addl	-76(%rsp), %ebx                 # 4-byte Folded Reload
	addl	%ecx, %ebx
	movl	%r8d, %ecx
	roll	$30, %ecx
	movl	%r8d, %edx
	roll	$19, %edx
	xorl	%ecx, %edx
	movl	%r8d, %ecx
	roll	$10, %ecx
	xorl	%edx, %ecx
	movl	%r8d, %esi
	andl	%r11d, %esi
	movl	%r8d, %edx
	orl	%r11d, %edx
	andl	%ebp, %edx
	orl	%esi, %edx
	addl	%ecx, %edx
	addl	%ebx, %eax
	addl	%ebx, %edx
	movl	%eax, %ecx
	roll	$26, %ecx
	movl	%eax, %esi
	roll	$21, %esi
	xorl	%ecx, %esi
	movl	%eax, %ecx
	roll	$7, %ecx
	xorl	%esi, %ecx
	movl	92(%rsp), %ebx                  # 4-byte Reload
	addl	%edi, %ebx
	movl	%r9d, %esi
	xorl	%r10d, %esi
	andl	%eax, %esi
	xorl	%r10d, %esi
	addl	%esi, %ebx
	movl	%edx, %esi
	roll	$30, %esi
	addl	-80(%rsp), %ebx                 # 4-byte Folded Reload
	movl	%edx, %edi
	roll	$19, %edi
	addl	%ecx, %ebx
	movl	%edx, %ecx
	roll	$10, %ecx
	xorl	%esi, %edi
	xorl	%edi, %ecx
	movl	%edx, %esi
	andl	%r8d, %esi
	movl	%edx, %edi
	orl	%r8d, %edi
	andl	%r11d, %edi
	orl	%esi, %edi
	addl	%ebx, %ebp
	movl	%ebp, %esi
	roll	$26, %esi
	addl	%ecx, %edi
	movl	%ebp, %ecx
	roll	$21, %ecx
	addl	%ebx, %edi
	movl	%ebp, %ebx
	roll	$7, %ebx
	xorl	%esi, %ecx
	xorl	%ecx, %ebx
	movl	-32(%rsp), %r14d                # 4-byte Reload
	addl	%r10d, %r14d
	movl	%eax, %ecx
	xorl	%r9d, %ecx
	andl	%ebp, %ecx
	xorl	%r9d, %ecx
	addl	%ecx, %r14d
	addl	-84(%rsp), %r14d                # 4-byte Folded Reload
	movl	%edi, %ecx
	roll	$30, %ecx
	addl	%ebx, %r14d
	movl	%edi, %esi
	roll	$19, %esi
	xorl	%ecx, %esi
	movl	%edi, %ecx
	roll	$10, %ecx
	xorl	%esi, %ecx
	movl	%edi, %esi
	andl	%edx, %esi
	movl	%edi, %r10d
	orl	%edx, %r10d
	andl	%r8d, %r10d
	orl	%esi, %r10d
	addl	%ecx, %r10d
	addl	%r14d, %r11d
	movl	%r11d, %ecx
	roll	$26, %ecx
	addl	%r14d, %r10d
	movl	%r11d, %esi
	roll	$21, %esi
	xorl	%ecx, %esi
	movl	%r11d, %ecx
	roll	$7, %ecx
	xorl	%esi, %ecx
	movl	-68(%rsp), %ebx                 # 4-byte Reload
	addl	%r9d, %ebx
	movl	%ebp, %esi
	xorl	%eax, %esi
	andl	%r11d, %esi
	xorl	%eax, %esi
	addl	%esi, %ebx
	addl	-88(%rsp), %ebx                 # 4-byte Folded Reload
	addl	%ecx, %ebx
	movl	%r10d, %ecx
	roll	$30, %ecx
	movl	%r10d, %esi
	roll	$19, %esi
	xorl	%ecx, %esi
	movl	%r10d, %ecx
	roll	$10, %ecx
	xorl	%esi, %ecx
	movl	%r10d, %esi
	andl	%edi, %esi
	movl	%r10d, %r13d
	orl	%edi, %r13d
	andl	%edx, %r13d
	orl	%esi, %r13d
	addl	%ecx, %r13d
	addl	%ebx, %r8d
	addl	%ebx, %r13d
	movl	%r8d, %ecx
	roll	$26, %ecx
	movl	%r8d, %esi
	roll	$21, %esi
	xorl	%ecx, %esi
	movl	%r8d, %ecx
	roll	$7, %ecx
	xorl	%esi, %ecx
	movl	-64(%rsp), %r9d                 # 4-byte Reload
	addl	%eax, %r9d
	movl	%r11d, %eax
	xorl	%ebp, %eax
	andl	%r8d, %eax
	xorl	%ebp, %eax
	addl	%eax, %r9d
	addl	-44(%rsp), %r9d                 # 4-byte Folded Reload
	addl	%ecx, %r9d
	movl	%r13d, %eax
	roll	$30, %eax
	movl	%r13d, %ecx
	roll	$19, %ecx
	xorl	%eax, %ecx
	movl	%r13d, %esi
	roll	$10, %esi
	xorl	%ecx, %esi
	movl	%r13d, %ecx
	andl	%r10d, %ecx
	movl	%r13d, %eax
	orl	%r10d, %eax
	andl	%edi, %eax
	orl	%ecx, %eax
	addl	%esi, %eax
	addl	%r9d, %edx
	addl	%r9d, %eax
	movl	%edx, %ecx
	roll	$26, %ecx
	movl	%edx, %esi
	roll	$21, %esi
	xorl	%ecx, %esi
	movl	%edx, %ecx
	roll	$7, %ecx
	xorl	%esi, %ecx
	movl	-60(%rsp), %ebx                 # 4-byte Reload
	addl	%ebp, %ebx
	movl	%r8d, %esi
	xorl	%r11d, %esi
	andl	%edx, %esi
	xorl	%r11d, %esi
	addl	%esi, %ebx
	movl	%eax, %esi
	roll	$30, %esi
	movl	-28(%rsp), %ebp                 # 4-byte Reload
	addl	%ebp, %ebx
	movl	%eax, %r9d
	roll	$19, %r9d
	addl	%ecx, %ebx
	movl	%eax, %ecx
	roll	$10, %ecx
	xorl	%esi, %r9d
	xorl	%r9d, %ecx
	movl	%eax, %esi
	andl	%r13d, %esi
	movl	%eax, %r15d
	orl	%r13d, %r15d
	andl	%r10d, %r15d
	orl	%esi, %r15d
	addl	%ebx, %edi
	movl	%edi, %esi
	roll	$26, %esi
	addl	%ecx, %r15d
	movl	%edi, %ecx
	roll	$21, %ecx
	addl	%ebx, %r15d
	movl	%edi, %r9d
	roll	$7, %r9d
	xorl	%esi, %ecx
	xorl	%ecx, %r9d
	movl	-56(%rsp), %ebx                 # 4-byte Reload
	addl	%r11d, %ebx
	movl	%edx, %ecx
	xorl	%r8d, %ecx
	andl	%edi, %ecx
	xorl	%r8d, %ecx
	addl	%ecx, %ebx
	addl	-128(%rsp), %ebx                # 4-byte Folded Reload
	movl	%r15d, %ecx
	roll	$30, %ecx
	addl	%r9d, %ebx
	movl	%r15d, %esi
	roll	$19, %esi
	xorl	%ecx, %esi
	movl	%r15d, %ecx
	roll	$10, %ecx
	xorl	%esi, %ecx
	movl	%r15d, %esi
	andl	%eax, %esi
	movl	%r15d, %r11d
	orl	%eax, %r11d
	andl	%r13d, %r11d
	orl	%esi, %r11d
	addl	%ecx, %r11d
	addl	%ebx, %r10d
	movl	%r10d, %ecx
	roll	$26, %ecx
	addl	%ebx, %r11d
	movl	%r10d, %esi
	roll	$21, %esi
	xorl	%ecx, %esi
	movl	%r10d, %ecx
	roll	$7, %ecx
	xorl	%esi, %ecx
	movl	-108(%rsp), %r9d                # 4-byte Reload
	addl	%r8d, %r9d
	movl	%edi, %esi
	xorl	%edx, %esi
	andl	%r10d, %esi
	xorl	%edx, %esi
	addl	%esi, %r9d
	addl	-48(%rsp), %r9d                 # 4-byte Folded Reload
	addl	%ecx, %r9d
	movl	%r11d, %ecx
	roll	$30, %ecx
	movl	%r11d, %esi
	roll	$19, %esi
	xorl	%ecx, %esi
	movl	%r11d, %ecx
	roll	$10, %ecx
	xorl	%esi, %ecx
	movl	%r11d, %esi
	andl	%r15d, %esi
	movl	%r11d, %r8d
	orl	%r15d, %r8d
	andl	%eax, %r8d
	orl	%esi, %r8d
	addl	%ecx, %r8d
	addl	%r9d, %r13d
	addl	%r9d, %r8d
	movl	%r13d, %ecx
	roll	$26, %ecx
	movl	%r13d, %esi
	roll	$21, %esi
	xorl	%ecx, %esi
	movl	%r13d, %ecx
	roll	$7, %ecx
	xorl	%esi, %ecx
	movl	-104(%rsp), %r9d                # 4-byte Reload
	addl	%edx, %r9d
	movl	%r10d, %edx
	xorl	%edi, %edx
	andl	%r13d, %edx
	xorl	%edi, %edx
	addl	%edx, %r9d
	addl	-52(%rsp), %r9d                 # 4-byte Folded Reload
	addl	%ecx, %r9d
	movl	%r8d, %ecx
	roll	$30, %ecx
	movl	%r8d, %edx
	roll	$19, %edx
	xorl	%ecx, %edx
	movl	%r8d, %ecx
	roll	$10, %ecx
	xorl	%edx, %ecx
	movl	%r8d, %edx
	andl	%r11d, %edx
	movl	%r8d, %esi
	orl	%r11d, %esi
	andl	%r15d, %esi
	orl	%edx, %esi
	addl	%ecx, %esi
	addl	%r9d, %eax
	addl	%r9d, %esi
	movl	%eax, %ecx
	roll	$26, %ecx
	movl	%eax, %edx
	roll	$21, %edx
	xorl	%ecx, %edx
	movl	%eax, %ecx
	roll	$7, %ecx
	xorl	%edx, %ecx
	movl	-100(%rsp), %r9d                # 4-byte Reload
	addl	%edi, %r9d
	movl	%r13d, %edx
	xorl	%r10d, %edx
	andl	%eax, %edx
	xorl	%r10d, %edx
	addl	%edx, %r9d
	movl	%esi, %edx
	roll	$30, %edx
	addl	-24(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%esi, %edi
	roll	$19, %edi
	addl	%ecx, %r9d
	movl	%esi, %ecx
	roll	$10, %ecx
	xorl	%edx, %edi
	xorl	%edi, %ecx
	movl	%esi, %edx
	andl	%r8d, %edx
	movl	%esi, %edi
	orl	%r8d, %edi
	andl	%r11d, %edi
	orl	%edx, %edi
	addl	%r9d, %r15d
	movl	%r15d, %edx
	roll	$26, %edx
	addl	%ecx, %edi
	movl	%r15d, %ecx
	roll	$21, %ecx
	addl	%r9d, %edi
	movl	%r15d, %r9d
	roll	$7, %r9d
	xorl	%edx, %ecx
	xorl	%ecx, %r9d
	movl	-96(%rsp), %ebx                 # 4-byte Reload
	addl	%r10d, %ebx
	movl	%eax, %ecx
	xorl	%r13d, %ecx
	andl	%r15d, %ecx
	xorl	%r13d, %ecx
	addl	%ecx, %ebx
	movl	-124(%rsp), %r14d               # 4-byte Reload
	addl	%r14d, %ebx
	movl	%edi, %ecx
	roll	$30, %ecx
	addl	%r9d, %ebx
	movl	%edi, %edx
	roll	$19, %edx
	xorl	%ecx, %edx
	movl	%edi, %ecx
	roll	$10, %ecx
	xorl	%edx, %ecx
	movl	%edi, %edx
	andl	%esi, %edx
	movl	%edi, %r10d
	orl	%esi, %r10d
	andl	%r8d, %r10d
	orl	%edx, %r10d
	addl	%ecx, %r10d
	addl	%ebx, %r11d
	addl	%ebx, %r10d
	movq	-40(%rsp), %r12                 # 8-byte Reload
	addq	$16, %r12
	movl	-112(%rsp), %ecx                # 4-byte Reload
	movl	-92(%rsp), %r9d                 # 4-byte Reload
	movl	-120(%rsp), %ebx                # 4-byte Reload
	movl	-116(%rsp), %edx                # 4-byte Reload
	movl	%edx, -32(%rsp)                 # 4-byte Spill
	movl	-72(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -68(%rsp)                 # 4-byte Spill
	movl	-76(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -64(%rsp)                 # 4-byte Spill
	movl	-80(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -60(%rsp)                 # 4-byte Spill
	movl	-84(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -56(%rsp)                 # 4-byte Spill
	movl	-88(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -116(%rsp)                # 4-byte Spill
	movl	-44(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -120(%rsp)                # 4-byte Spill
	movl	%ebp, -108(%rsp)                # 4-byte Spill
	movl	-128(%rsp), %edx                # 4-byte Reload
	movl	%edx, -104(%rsp)                # 4-byte Spill
	movl	-48(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -100(%rsp)                # 4-byte Spill
	movl	-52(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -96(%rsp)                 # 4-byte Spill
	movl	-24(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -128(%rsp)                # 4-byte Spill
	movl	%r14d, -124(%rsp)               # 4-byte Spill
	cmpq	$48, %r12
	jae	.LBB2_34
.LBB2_1:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	72(%rsp), %ebp                  # 4-byte Reload
	movl	%ebp, -112(%rsp)                # 4-byte Spill
	cmpq	$-16, %r12
	movq	%r12, -40(%rsp)                 # 8-byte Spill
	jne	.LBB2_2
# %bb.3:                                # %cond.end.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	68(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -92(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	jne	.LBB2_4
.LBB2_5:                                # %cond.end159.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	64(%rsp), %ebp                  # 4-byte Reload
	cmpq	$-16, %r12
	movl	-32(%rsp), %r14d                # 4-byte Reload
	jne	.LBB2_6
.LBB2_7:                                # %cond.end263.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	60(%rsp), %ebx                  # 4-byte Reload
	cmpq	$-16, %r12
	jne	.LBB2_8
.LBB2_9:                                # %cond.end367.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	56(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -72(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	jne	.LBB2_10
.LBB2_11:                               # %cond.end471.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	52(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -76(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	jne	.LBB2_12
.LBB2_13:                               # %cond.end575.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	48(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -80(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	jne	.LBB2_14
.LBB2_15:                               # %cond.end679.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	44(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -84(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	jne	.LBB2_16
.LBB2_17:                               # %cond.end783.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	40(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -88(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	je	.LBB2_19
.LBB2_18:                               # %cond.true850.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-80(%rsp), %r9d                 # 4-byte Reload
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-120(%rsp), %r14d               # 4-byte Reload
	movl	%r14d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r14d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	shrl	$3, %r14d
	xorl	%edx, %r14d
	movl	-116(%rsp), %edx                # 4-byte Reload
	addl	-92(%rsp), %edx                 # 4-byte Folded Reload
	addl	%r14d, %edx
	addl	%ecx, %edx
	movl	%edx, -88(%rsp)                 # 4-byte Spill
.LBB2_19:                               # %cond.end887.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	%ebx, -116(%rsp)                # 4-byte Spill
	movl	36(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -44(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	je	.LBB2_21
# %bb.20:                               # %cond.true954.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-84(%rsp), %r9d                 # 4-byte Reload
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-108(%rsp), %ebx                # 4-byte Reload
	movl	%ebx, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%ebx, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%ebx, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-120(%rsp), %edx                # 4-byte Reload
	addl	%ebp, %edx
	addl	%r9d, %edx
	addl	%ecx, %edx
	movl	%edx, -44(%rsp)                 # 4-byte Spill
.LBB2_21:                               # %cond.end991.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	%ebp, -120(%rsp)                # 4-byte Spill
	movl	SHA256_K+64(,%r12,4), %ecx
	movl	%ecx, 76(%rsp)                  # 4-byte Spill
	movl	SHA256_K+68(,%r12,4), %ebp
	movl	SHA256_K+72(,%r12,4), %r14d
	movl	SHA256_K+76(,%r12,4), %edx
	movl	%edx, 80(%rsp)                  # 4-byte Spill
	movl	SHA256_K+80(,%r12,4), %edx
	movl	%edx, 84(%rsp)                  # 4-byte Spill
	movl	SHA256_K+84(,%r12,4), %edx
	movl	%edx, 88(%rsp)                  # 4-byte Spill
	movl	SHA256_K+88(,%r12,4), %edx
	movl	%edx, 92(%rsp)                  # 4-byte Spill
	movl	SHA256_K+92(,%r12,4), %edx
	movl	%edx, -32(%rsp)                 # 4-byte Spill
	movl	SHA256_K+96(,%r12,4), %edx
	movl	%edx, -68(%rsp)                 # 4-byte Spill
	movl	SHA256_K+100(,%r12,4), %edx
	movl	%edx, -64(%rsp)                 # 4-byte Spill
	movl	SHA256_K+104(,%r12,4), %edx
	movl	%edx, -60(%rsp)                 # 4-byte Spill
	movl	32(%rsp), %edx                  # 4-byte Reload
	movl	%edx, -28(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	je	.LBB2_23
# %bb.22:                               # %cond.true1058.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-88(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %ecx
	roll	$15, %ecx
	movl	%edx, %r9d
	roll	$13, %r9d
	xorl	%ecx, %r9d
	movl	%edx, %ecx
	shrl	$10, %ecx
	movl	-104(%rsp), %ebx                # 4-byte Reload
	movl	%ebx, %edx
	roll	$25, %edx
	xorl	%r9d, %ecx
	movl	%ebx, %r9d
	roll	$14, %r9d
	xorl	%edx, %r9d
	movl	%ebx, %edx
	shrl	$3, %edx
	xorl	%r9d, %edx
	movl	-108(%rsp), %r9d                # 4-byte Reload
	addl	-116(%rsp), %r9d                # 4-byte Folded Reload
	addl	%edx, %r9d
	addl	%ecx, %r9d
	movl	%r9d, -28(%rsp)                 # 4-byte Spill
.LBB2_23:                               # %cond.end1095.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	movl	SHA256_K+108(,%rcx,4), %edx
	movl	%edx, -56(%rsp)                 # 4-byte Spill
	movl	28(%rsp), %ebx                  # 4-byte Reload
	cmpq	$-16, %rcx
	je	.LBB2_25
# %bb.24:                               # %cond.true1162.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-44(%rsp), %r9d                 # 4-byte Reload
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-100(%rsp), %ebx                # 4-byte Reload
	movl	%ebx, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%ebx, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%ebx, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-104(%rsp), %ebx                # 4-byte Reload
	addl	-72(%rsp), %ebx                 # 4-byte Folded Reload
	addl	%r9d, %ebx
	addl	%ecx, %ebx
.LBB2_25:                               # %cond.end1199.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	movl	SHA256_K+112(,%rcx,4), %edx
	movl	%edx, -108(%rsp)                # 4-byte Spill
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	%edx, -48(%rsp)                 # 4-byte Spill
	cmpq	$-16, %rcx
	je	.LBB2_27
# %bb.26:                               # %cond.true1266.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rsp), %r9d                 # 4-byte Reload
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-96(%rsp), %r12d                # 4-byte Reload
	movl	%r12d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r12d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r12d, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-100(%rsp), %edx                # 4-byte Reload
	addl	-76(%rsp), %edx                 # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
	movl	%edx, -48(%rsp)                 # 4-byte Spill
.LBB2_27:                               # %cond.end1303.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	movl	SHA256_K+116(,%rcx,4), %edx
	movl	%edx, -104(%rsp)                # 4-byte Spill
	movl	20(%rsp), %edx                  # 4-byte Reload
	movl	%edx, -52(%rsp)                 # 4-byte Spill
	cmpq	$-16, %rcx
	je	.LBB2_29
# %bb.28:                               # %cond.true1370.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	%ebx, %ecx
	roll	$15, %ecx
	movl	%ebx, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%ebx, %ecx
	shrl	$10, %ecx
	movl	-128(%rsp), %r12d               # 4-byte Reload
	movl	%r12d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r12d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r12d, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-96(%rsp), %edx                 # 4-byte Reload
	addl	-80(%rsp), %edx                 # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
	movl	%edx, -52(%rsp)                 # 4-byte Spill
.LBB2_29:                               # %cond.end1407.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	movl	SHA256_K+120(,%rcx,4), %edx
	movl	%edx, -100(%rsp)                # 4-byte Spill
	movl	16(%rsp), %edx                  # 4-byte Reload
	cmpq	$-16, %rcx
	je	.LBB2_31
# %bb.30:                               # %cond.true1474.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-48(%rsp), %r9d                 # 4-byte Reload
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-124(%rsp), %r12d               # 4-byte Reload
	movl	%r12d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r12d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	shrl	$3, %r12d
	xorl	%edx, %r12d
	movl	-128(%rsp), %edx                # 4-byte Reload
	addl	-84(%rsp), %edx                 # 4-byte Folded Reload
	addl	%r12d, %edx
	addl	%ecx, %edx
.LBB2_31:                               # %cond.end1511.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	%edx, -24(%rsp)                 # 4-byte Spill
	movl	%ebx, -128(%rsp)                # 4-byte Spill
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	movl	SHA256_K+124(,%rcx,4), %edx
	movl	%edx, -96(%rsp)                 # 4-byte Spill
	movl	12(%rsp), %edx                  # 4-byte Reload
	cmpq	$-16, %rcx
	je	.LBB2_33
# %bb.32:                               # %cond.true1578.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rsp), %r9d                 # 4-byte Reload
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	%r14d, %ebx
	movl	-112(%rsp), %r14d               # 4-byte Reload
	movl	%r14d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r14d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r14d, %r9d
	movl	%ebx, %r14d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-124(%rsp), %edx                # 4-byte Reload
	addl	-88(%rsp), %edx                 # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
	jmp	.LBB2_33
	.p2align	4, 0x90
.LBB2_2:                                # %cond.true.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-128(%rsp), %ebp                # 4-byte Reload
	movl	%ebp, %r14d
	roll	$15, %r14d
	movl	%ebp, %r12d
	roll	$13, %r12d
	xorl	%r14d, %r12d
	movl	%ebp, %r14d
	shrl	$10, %r14d
	movl	%r9d, %ebp
	roll	$25, %ebp
	xorl	%r12d, %r14d
	movl	%r9d, %r12d
	roll	$14, %r12d
	xorl	%ebp, %r12d
	movl	%r9d, %ebp
	shrl	$3, %ebp
	xorl	%r12d, %ebp
	movq	-40(%rsp), %r12                 # 8-byte Reload
	addl	-120(%rsp), %ecx                # 4-byte Folded Reload
	addl	%ebp, %ecx
	addl	%r14d, %ecx
	movl	%ecx, -112(%rsp)                # 4-byte Spill
	movl	68(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -92(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	je	.LBB2_5
.LBB2_4:                                # %cond.true122.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-124(%rsp), %r14d               # 4-byte Reload
	movl	%r14d, %ecx
	roll	$15, %ecx
	movl	%r14d, %ebp
	roll	$13, %ebp
	xorl	%ecx, %ebp
	movl	%r14d, %ecx
	shrl	$10, %ecx
	movl	%ebx, %r14d
	roll	$25, %r14d
	xorl	%ebp, %ecx
	movl	%ebx, %ebp
	roll	$14, %ebp
	xorl	%r14d, %ebp
	movl	%ebx, %r14d
	shrl	$3, %r14d
	xorl	%ebp, %r14d
	addl	-108(%rsp), %r9d                # 4-byte Folded Reload
	addl	%r14d, %r9d
	addl	%ecx, %r9d
	movl	%r9d, -92(%rsp)                 # 4-byte Spill
	movl	64(%rsp), %ebp                  # 4-byte Reload
	cmpq	$-16, %r12
	movl	-32(%rsp), %r14d                # 4-byte Reload
	je	.LBB2_7
.LBB2_6:                                # %cond.true226.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-112(%rsp), %ebp                # 4-byte Reload
	movl	%ebp, %ecx
	roll	$15, %ecx
	movl	%ebp, %r9d
	roll	$13, %r9d
	xorl	%ecx, %r9d
	movl	%ebp, %ecx
	shrl	$10, %ecx
	movl	%r14d, %ebp
	roll	$25, %ebp
	xorl	%r9d, %ecx
	movl	%r14d, %r9d
	roll	$14, %r9d
	xorl	%ebp, %r9d
	movl	%r14d, %ebp
	shrl	$3, %ebp
	xorl	%r9d, %ebp
	addl	-104(%rsp), %ebx                # 4-byte Folded Reload
	addl	%ebp, %ebx
	addl	%ecx, %ebx
	movl	%ebx, %ebp
	movl	60(%rsp), %ebx                  # 4-byte Reload
	cmpq	$-16, %r12
	je	.LBB2_9
.LBB2_8:                                # %cond.true330.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-92(%rsp), %ebx                 # 4-byte Reload
	movl	%ebx, %ecx
	roll	$15, %ecx
	movl	%ebx, %r9d
	roll	$13, %r9d
	xorl	%ecx, %r9d
	movl	%ebx, %ecx
	shrl	$10, %ecx
	movl	-68(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %ebx
	roll	$25, %ebx
	xorl	%r9d, %ecx
	movl	%edx, %r9d
	roll	$14, %r9d
	xorl	%ebx, %r9d
	movl	%edx, %ebx
	shrl	$3, %ebx
	xorl	%r9d, %ebx
	addl	-100(%rsp), %r14d               # 4-byte Folded Reload
	addl	%ebx, %r14d
	addl	%ecx, %r14d
	movl	%r14d, %ebx
	movl	56(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -72(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	je	.LBB2_11
.LBB2_10:                               # %cond.true434.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	%ebp, %ecx
	roll	$15, %ecx
	movl	%ebp, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%ebp, %ecx
	shrl	$10, %ecx
	movl	-64(%rsp), %r14d                # 4-byte Reload
	movl	%r14d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r14d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r14d, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-68(%rsp), %edx                 # 4-byte Reload
	addl	-96(%rsp), %edx                 # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
	movl	%edx, -72(%rsp)                 # 4-byte Spill
	movl	52(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -76(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	je	.LBB2_13
.LBB2_12:                               # %cond.true538.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	%ebx, %ecx
	roll	$15, %ecx
	movl	%ebx, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%ebx, %ecx
	shrl	$10, %ecx
	movl	-60(%rsp), %r14d                # 4-byte Reload
	movl	%r14d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r14d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r14d, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-64(%rsp), %edx                 # 4-byte Reload
	addl	-128(%rsp), %edx                # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
	movl	%edx, -76(%rsp)                 # 4-byte Spill
	movl	48(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -80(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	je	.LBB2_15
.LBB2_14:                               # %cond.true642.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-72(%rsp), %r9d                 # 4-byte Reload
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-56(%rsp), %r14d                # 4-byte Reload
	movl	%r14d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r14d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r14d, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-60(%rsp), %edx                 # 4-byte Reload
	addl	-124(%rsp), %edx                # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
	movl	%edx, -80(%rsp)                 # 4-byte Spill
	movl	44(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -84(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	je	.LBB2_17
.LBB2_16:                               # %cond.true746.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-76(%rsp), %r9d                 # 4-byte Reload
	movl	%r9d, %ecx
	roll	$15, %ecx
	movl	%r9d, %edx
	roll	$13, %edx
	xorl	%ecx, %edx
	movl	%r9d, %ecx
	shrl	$10, %ecx
	movl	-116(%rsp), %r14d               # 4-byte Reload
	movl	%r14d, %r9d
	roll	$25, %r9d
	xorl	%edx, %ecx
	movl	%r14d, %edx
	roll	$14, %edx
	xorl	%r9d, %edx
	movl	%r14d, %r9d
	shrl	$3, %r9d
	xorl	%edx, %r9d
	movl	-56(%rsp), %edx                 # 4-byte Reload
	addl	-112(%rsp), %edx                # 4-byte Folded Reload
	addl	%r9d, %edx
	addl	%ecx, %edx
	movl	%edx, -84(%rsp)                 # 4-byte Spill
	movl	40(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, -88(%rsp)                 # 4-byte Spill
	cmpq	$-16, %r12
	jne	.LBB2_18
	jmp	.LBB2_19
.LBB2_34:                               # %transform.exit
	addl	-20(%rsp), %r10d                # 4-byte Folded Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movl	%r10d, 64(%rcx)
	addl	-16(%rsp), %edi                 # 4-byte Folded Reload
	movl	%edi, 68(%rcx)
	addl	-12(%rsp), %esi                 # 4-byte Folded Reload
	movl	%esi, 72(%rcx)
	addl	-8(%rsp), %r8d                  # 4-byte Folded Reload
	movl	%r8d, 76(%rcx)
	addl	-4(%rsp), %r11d                 # 4-byte Folded Reload
	movl	%r11d, 80(%rcx)
	addl	(%rsp), %r15d                   # 4-byte Folded Reload
	movl	%r15d, 84(%rcx)
	addl	4(%rsp), %eax                   # 4-byte Folded Reload
	movl	%eax, 88(%rcx)
	addl	8(%rsp), %r13d                  # 4-byte Folded Reload
	movl	%r13d, 92(%rcx)
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
	retq
.Lfunc_end2:
	.size	process, .Lfunc_end2-process
	.cfi_endproc
                                        # -- End function
	.globl	lzma_sha256_finish              # -- Begin function lzma_sha256_finish
	.p2align	4, 0x90
	.type	lzma_sha256_finish,@function
lzma_sha256_finish:                     # @lzma_sha256_finish
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	96(%rdi), %rax
	andl	$63, %eax
	movb	$-128, (%rdi,%rax)
	cmpq	$55, %rax
	je	.LBB3_6
# %bb.1:                                # %entry
	cmpl	$63, %eax
	jne	.LBB3_2
.LBB3_3:                                # %if.then.peel
	movq	%rbx, %rdi
	callq	process
	xorl	%eax, %eax
.LBB3_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%rbx,%rax)
	cmpq	$63, %rax
	je	.LBB3_3
# %bb.5:                                # %while.cond
                                        #   in Loop: Header=BB3_4 Depth=1
	leaq	1(%rax), %rcx
	cmpq	$55, %rax
	movq	%rcx, %rax
	jne	.LBB3_4
.LBB3_6:                                # %while.end
	movq	96(%rbx), %rax
	leaq	(,%rax,8), %rcx
	movq	%rcx, 96(%rbx)
	movq	%rax, %rdx
	shlq	$59, %rdx
	movl	%eax, %esi
	andl	$8160, %esi                     # imm = 0x1FE0
	shlq	$43, %rsi
	orq	%rdx, %rsi
	movl	%eax, %edx
	andl	$2088960, %edx                  # imm = 0x1FE000
	shlq	$27, %rdx
	orq	%rsi, %rdx
	movl	%eax, %esi
	andl	$534773760, %esi                # imm = 0x1FE00000
	shlq	$11, %rsi
	orq	%rdx, %rsi
	movq	%rax, %rdx
	shrq	$5, %rdx
	andl	$-16777216, %edx                # imm = 0xFF000000
	orq	%rsi, %rdx
	movq	%rax, %rsi
	shrq	$21, %rsi
	andl	$16711680, %esi                 # imm = 0xFF0000
	orq	%rdx, %rsi
	shrq	$37, %rax
	andl	$65280, %eax                    # imm = 0xFF00
	orq	%rsi, %rax
	shrq	$56, %rcx
	orq	%rax, %rcx
	movq	%rcx, 56(%rbx)
	movq	%rbx, %rdi
	callq	process
	pxor	%xmm0, %xmm0
	movdqu	64(%rbx), %xmm1
	movdqu	80(%rbx), %xmm2
	movdqa	%xmm1, %xmm3
	punpckhbw	%xmm0, %xmm3            # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3               # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1               # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1               # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqu	%xmm1, (%rbx)
	movdqa	%xmm2, %xmm1
	punpckhbw	%xmm0, %xmm1            # xmm1 = xmm1[8],xmm0[8],xmm1[9],xmm0[9],xmm1[10],xmm0[10],xmm1[11],xmm0[11],xmm1[12],xmm0[12],xmm1[13],xmm0[13],xmm1[14],xmm0[14],xmm1[15],xmm0[15]
	pshuflw	$27, %xmm1, %xmm1               # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1               # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshuflw	$27, %xmm2, %xmm0               # xmm0 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0               # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	packuswb	%xmm1, %xmm0
	movdqu	%xmm0, 16(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB3_2:
	.cfi_def_cfa_offset 16
	incq	%rax
	jmp	.LBB3_4
.Lfunc_end3:
	.size	lzma_sha256_finish, .Lfunc_end3-lzma_sha256_finish
	.cfi_endproc
                                        # -- End function
	.type	lzma_sha256_init.s,@object      # @lzma_sha256_init.s
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
lzma_sha256_init.s:
	.long	1779033703                      # 0x6a09e667
	.long	3144134277                      # 0xbb67ae85
	.long	1013904242                      # 0x3c6ef372
	.long	2773480762                      # 0xa54ff53a
	.long	1359893119                      # 0x510e527f
	.long	2600822924                      # 0x9b05688c
	.long	528734635                       # 0x1f83d9ab
	.long	1541459225                      # 0x5be0cd19
	.size	lzma_sha256_init.s, 32

	.type	SHA256_K,@object                # @SHA256_K
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
SHA256_K:
	.long	1116352408                      # 0x428a2f98
	.long	1899447441                      # 0x71374491
	.long	3049323471                      # 0xb5c0fbcf
	.long	3921009573                      # 0xe9b5dba5
	.long	961987163                       # 0x3956c25b
	.long	1508970993                      # 0x59f111f1
	.long	2453635748                      # 0x923f82a4
	.long	2870763221                      # 0xab1c5ed5
	.long	3624381080                      # 0xd807aa98
	.long	310598401                       # 0x12835b01
	.long	607225278                       # 0x243185be
	.long	1426881987                      # 0x550c7dc3
	.long	1925078388                      # 0x72be5d74
	.long	2162078206                      # 0x80deb1fe
	.long	2614888103                      # 0x9bdc06a7
	.long	3248222580                      # 0xc19bf174
	.long	3835390401                      # 0xe49b69c1
	.long	4022224774                      # 0xefbe4786
	.long	264347078                       # 0xfc19dc6
	.long	604807628                       # 0x240ca1cc
	.long	770255983                       # 0x2de92c6f
	.long	1249150122                      # 0x4a7484aa
	.long	1555081692                      # 0x5cb0a9dc
	.long	1996064986                      # 0x76f988da
	.long	2554220882                      # 0x983e5152
	.long	2821834349                      # 0xa831c66d
	.long	2952996808                      # 0xb00327c8
	.long	3210313671                      # 0xbf597fc7
	.long	3336571891                      # 0xc6e00bf3
	.long	3584528711                      # 0xd5a79147
	.long	113926993                       # 0x6ca6351
	.long	338241895                       # 0x14292967
	.long	666307205                       # 0x27b70a85
	.long	773529912                       # 0x2e1b2138
	.long	1294757372                      # 0x4d2c6dfc
	.long	1396182291                      # 0x53380d13
	.long	1695183700                      # 0x650a7354
	.long	1986661051                      # 0x766a0abb
	.long	2177026350                      # 0x81c2c92e
	.long	2456956037                      # 0x92722c85
	.long	2730485921                      # 0xa2bfe8a1
	.long	2820302411                      # 0xa81a664b
	.long	3259730800                      # 0xc24b8b70
	.long	3345764771                      # 0xc76c51a3
	.long	3516065817                      # 0xd192e819
	.long	3600352804                      # 0xd6990624
	.long	4094571909                      # 0xf40e3585
	.long	275423344                       # 0x106aa070
	.long	430227734                       # 0x19a4c116
	.long	506948616                       # 0x1e376c08
	.long	659060556                       # 0x2748774c
	.long	883997877                       # 0x34b0bcb5
	.long	958139571                       # 0x391c0cb3
	.long	1322822218                      # 0x4ed8aa4a
	.long	1537002063                      # 0x5b9cca4f
	.long	1747873779                      # 0x682e6ff3
	.long	1955562222                      # 0x748f82ee
	.long	2024104815                      # 0x78a5636f
	.long	2227730452                      # 0x84c87814
	.long	2361852424                      # 0x8cc70208
	.long	2428436474                      # 0x90befffa
	.long	2756734187                      # 0xa4506ceb
	.long	3204031479                      # 0xbef9a3f7
	.long	3329325298                      # 0xc67178f2
	.size	SHA256_K, 256

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
