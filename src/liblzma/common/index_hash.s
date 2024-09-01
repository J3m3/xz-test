	.text
	.file	"index_hash.c"
	.globl	lzma_index_hash_init            # -- Begin function lzma_index_hash_init
	.p2align	4, 0x90
	.type	lzma_index_hash_init,@function
lzma_index_hash_init:                   # @lzma_index_hash_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	jne	.LBB0_3
# %bb.1:                                # %if.then
	movl	$320, %edi                      # imm = 0x140
	callq	lzma_alloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB0_2
.LBB0_3:                                # %if.end3
	movl	$0, (%rbx)
	leaq	40(%rbx), %rdi
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rbx)
	movups	%xmm0, 24(%rbx)
	movups	%xmm0, 144(%rbx)
	movups	%xmm0, 160(%rbx)
	movups	%xmm0, 288(%rbx)
	movups	%xmm0, 300(%rbx)
	movl	$10, %esi
	callq	lzma_check_init@PLT
	leaq	176(%rbx), %rdi
	movl	$10, %esi
	callq	lzma_check_init@PLT
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_2:
	.cfi_def_cfa_offset 16
	xorl	%ebx, %ebx
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_index_hash_init, .Lfunc_end0-lzma_index_hash_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_hash_end             # -- Begin function lzma_index_hash_end
	.p2align	4, 0x90
	.type	lzma_index_hash_end,@function
lzma_index_hash_end:                    # @lzma_index_hash_end
	.cfi_startproc
# %bb.0:                                # %entry
	jmp	lzma_free@PLT                   # TAILCALL
.Lfunc_end1:
	.size	lzma_index_hash_end, .Lfunc_end1-lzma_index_hash_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_hash_size            # -- Begin function lzma_index_hash_size
	.p2align	4, 0x90
	.type	lzma_index_hash_size,@function
lzma_index_hash_size:                   # @lzma_index_hash_size
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	24(%rdi), %rax
	movq	32(%rdi), %rbx
	movq	%rax, %rdi
	callq	lzma_vli_size@PLT
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	addq	%rbx, %rax
	addq	$7, %rax
	andq	$-4, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	lzma_index_hash_size, .Lfunc_end2-lzma_index_hash_size
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_index_hash_append
.LCPI3_0:
	.quad	1                               # 0x1
	.zero	8
	.text
	.globl	lzma_index_hash_append
	.p2align	4, 0x90
	.type	lzma_index_hash_append,@function
lzma_index_hash_append:                 # @lzma_index_hash_append
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$11, %r14d
	testq	%rdx, %rdx
	js	.LBB3_7
# %bb.1:                                # %entry
	movq	%rdi, %rbx
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	leaq	(%rsi,%rax), %rcx
	addq	$7, %rcx
	leaq	12(%rax), %rdi
	cmpq	%rdi, %rcx
	jb	.LBB3_7
# %bb.2:                                # %entry
	cmpl	$0, (%rbx)
	jne	.LBB3_7
# %bb.3:                                # %do.body
	leaq	3(%rsi), %rcx
	andq	%rax, %rcx
	addq	%rcx, 8(%rbx)
	addq	%rdx, 16(%rbx)
	movq	%rsi, %rdi
	movq	%rdx, %r14
	movq	%rsi, %r15
	callq	lzma_vli_size@PLT
	movl	%eax, %ebp
	movq	%r14, %rdi
	callq	lzma_vli_size@PLT
	addl	%ebp, %eax
	movdqu	24(%rbx), %xmm0
	movd	%eax, %xmm1
	movdqa	.LCPI3_0(%rip), %xmm2           # xmm2 = [1,u]
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	paddq	%xmm0, %xmm2
	movdqu	%xmm2, 24(%rbx)
	movq	%r15, (%rsp)
	movq	%r14, 8(%rsp)
	leaq	40(%rbx), %rdi
	movq	%rsp, %rdx
	movl	$16, %ecx
	movl	$10, %esi
	callq	lzma_check_update@PLT
	movl	$9, %r14d
	cmpq	$0, 8(%rbx)
	js	.LBB3_7
# %bb.4:                                # %lor.lhs.false11
	cmpq	$0, 16(%rbx)
	js	.LBB3_7
# %bb.5:                                # %lor.lhs.false15
	movq	24(%rbx), %rdi
	movq	32(%rbx), %r15
	callq	lzma_vli_size@PLT
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	addq	%r15, %rax
	addq	$7, %rax
	andq	$-4, %rax
	movabsq	$17179869184, %rcx              # imm = 0x400000000
	cmpq	%rcx, %rax
	ja	.LBB3_7
# %bb.6:                                # %lor.lhs.false20
	movq	8(%rbx), %r14
	movq	24(%rbx), %rdi
	movq	32(%rbx), %rbx
	callq	lzma_vli_size@PLT
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	addq	%rbx, %rax
	addq	$7, %rax
	andq	$-4, %rax
	addq	%rax, %r14
	addq	$24, %r14
	sarq	$63, %r14
	andl	$9, %r14d
.LBB3_7:                                # %return
	movl	%r14d, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	lzma_index_hash_append, .Lfunc_end3-lzma_index_hash_append
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_index_hash_decode
.LCPI4_0:
	.quad	1                               # 0x1
	.zero	8
	.text
	.globl	lzma_index_hash_decode
	.p2align	4, 0x90
	.type	lzma_index_hash_decode,@function
lzma_index_hash_decode:                 # @lzma_index_hash_decode
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdx), %rax
	movl	$10, %ebp
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	cmpq	%rcx, %rax
	jae	.LBB4_36
# %bb.1:                                # %while.body.lr.ph
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %rbx
	leaq	304(%rdi), %r14
	leaq	288(%rdi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leaq	296(%rdi), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	176(%rdi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	280(%rdi), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB4_5
.LBB4_2:                                # %sw.bb
                                        #   in Loop: Header=BB4_5 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movl	$1, %ecx
	cmpb	$0, (%r13,%rax)
	jne	.LBB4_33
.LBB4_3:                                # %sw.epilog.sink.split
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	%ecx, (%rbx)
.LBB4_4:                                # %sw.epilog
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	(%r15), %rax
	cmpq	%r12, %rax
	jae	.LBB4_20
.LBB4_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ecx
	cmpq	$6, %rcx
	ja	.LBB4_32
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB4_5 Depth=1
	jmpq	*.LJTI4_0(,%rcx,8)
.LBB4_7:                                # %sw.bb22
                                        #   in Loop: Header=BB4_5 Depth=1
	cmpl	$2, %ecx
	movq	48(%rsp), %rdi                  # 8-byte Reload
	cmoveq	56(%rsp), %rdi                  # 8-byte Folded Reload
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lzma_vli_decode@PLT
	cmpl	$1, %eax
	jne	.LBB4_34
# %bb.8:                                # %if.end32
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	$0, 304(%rbx)
	cmpl	$2, (%rbx)
	movq	288(%rbx), %rbp
	jne	.LBB4_16
# %bb.9:                                # %if.then37
                                        #   in Loop: Header=BB4_5 Depth=1
	movabsq	$-9223372036854775805, %rax     # imm = 0x8000000000000003
	addq	%rax, %rbp
	addq	$5, %rax
	movl	$3, %ecx
	cmpq	%rax, %rbp
	jae	.LBB4_3
	jmp	.LBB4_33
.LBB4_10:                               # %sw.bb82
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	160(%rbx), %rdi
	movl	168(%rbx), %ebp
	callq	lzma_vli_size@PLT
                                        # kill: def $eax killed $eax def $rax
	addl	%ebp, %eax
	notl	%eax
	andl	$3, %eax
	movq	%rax, 304(%rbx)
	movl	$5, (%rbx)
	testq	%rax, %rax
	jne	.LBB4_15
	jmp	.LBB4_21
.LBB4_11:                               # %sw.bb7
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lzma_vli_decode@PLT
	cmpl	$1, %eax
	jne	.LBB4_34
# %bb.12:                               # %if.end11
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	280(%rbx), %rax
	cmpq	24(%rbx), %rax
	jne	.LBB4_33
# %bb.13:                               # %if.end16
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	$0, (%r14)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	sete	%cl
	leal	2(,%rcx,2), %ecx
	jmp	.LBB4_3
.LBB4_14:                               # %while.body.sw.bb90_crit_edge
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.LBB4_21
.LBB4_15:                               # %if.then94
                                        #   in Loop: Header=BB4_5 Depth=1
	decq	%rax
	movq	%rax, (%r14)
	movq	(%r15), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	cmpb	$0, (%r13,%rax)
	je	.LBB4_4
	jmp	.LBB4_33
.LBB4_16:                               # %do.body
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	%r13, %r12
	movq	296(%rbx), %r14
	leaq	3(%rbp), %rax
	andq	$-4, %rax
	addq	%rax, 144(%rbx)
	addq	%r14, 152(%rbx)
	movq	%rbp, %rdi
	callq	lzma_vli_size@PLT
	movl	%eax, %r13d
	movq	%r14, %rdi
	callq	lzma_vli_size@PLT
	addl	%r13d, %eax
	movdqu	160(%rbx), %xmm0
	movd	%eax, %xmm1
	movdqa	.LCPI4_0(%rip), %xmm2           # xmm2 = [1,u]
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	paddq	%xmm0, %xmm2
	movdqu	%xmm2, 160(%rbx)
	movq	%rbp, 64(%rsp)
	movq	%r14, 72(%rsp)
	movl	$16, %ecx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$10, %esi
	leaq	64(%rsp), %rdx
	callq	lzma_check_update@PLT
	movq	8(%rbx), %rax
	movl	$9, %ebp
	cmpq	144(%rbx), %rax
	jb	.LBB4_36
# %bb.17:                               # %lor.lhs.false59
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	16(%rbx), %rax
	cmpq	152(%rbx), %rax
	movq	24(%rsp), %r14                  # 8-byte Reload
	jb	.LBB4_36
# %bb.18:                               # %lor.lhs.false66
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	%r12, %r13
	movq	32(%rbx), %rax
	cmpq	168(%rbx), %rax
	movq	40(%rsp), %r12                  # 8-byte Reload
	jb	.LBB4_36
# %bb.19:                               # %if.end73
                                        #   in Loop: Header=BB4_5 Depth=1
	xorl	%eax, %eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	decq	(%rcx)
	sete	%al
	leal	2(,%rax,2), %ecx
	jmp	.LBB4_3
.LBB4_20:
	xorl	%ebp, %ebp
	jmp	.LBB4_35
.LBB4_34:
	movl	%eax, %ebp
.LBB4_35:                               # %out
	movq	(%r15), %rsi
	movq	16(%rsp), %rax                  # 8-byte Reload
	addq	%rax, %r13
	subq	%rax, %rsi
	movl	312(%rbx), %edx
	movq	%r13, %rdi
	callq	lzma_crc32@PLT
	movl	%eax, 312(%rbx)
	jmp	.LBB4_36
.LBB4_21:                               # %if.end104
	movq	8(%rbx), %rax
	movl	$9, %ebp
	cmpq	144(%rbx), %rax
	jne	.LBB4_36
# %bb.22:                               # %lor.lhs.false111
	movq	16(%rbx), %rax
	cmpq	152(%rbx), %rax
	jne	.LBB4_36
# %bb.23:                               # %lor.lhs.false118
	movq	32(%rbx), %rax
	cmpq	168(%rbx), %rax
	jne	.LBB4_36
# %bb.24:                               # %if.end126
	leaq	40(%rbx), %r14
	movq	%r14, %rdi
	movl	$10, %esi
	callq	lzma_check_finish@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$10, %esi
	callq	lzma_check_finish@PLT
	movl	$10, %edi
	callq	lzma_check_size@PLT
	movl	%eax, %edx
	movq	%r14, %rdi
	movq	24(%rsp), %r14                  # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	bcmp@PLT
	testl	%eax, %eax
	jne	.LBB4_36
# %bb.25:                               # %if.end142
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r13), %rdi
	movq	(%r15), %rsi
	subq	%rax, %rsi
	movl	312(%rbx), %edx
	callq	lzma_crc32@PLT
	movl	%eax, 312(%rbx)
	movl	$6, (%rbx)
.LBB4_26:                               # %sw.bb147
	movl	$1, %ebp
	.p2align	4, 0x90
.LBB4_27:                               # %do.body148
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	cmpq	%r12, %rax
	je	.LBB4_39
# %bb.28:                               # %if.end152
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	304(%rbx), %ecx
	movl	312(%rbx), %edx
	shll	$3, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	cmpb	%dl, (%r13,%rax)
	jne	.LBB4_33
# %bb.29:                               # %do.cond163
                                        #   in Loop: Header=BB4_27 Depth=1
	movq	(%r14), %rax
	incq	%rax
	movq	%rax, (%r14)
	cmpq	$4, %rax
	jb	.LBB4_27
	jmp	.LBB4_36
.LBB4_33:
	movl	$9, %ebp
.LBB4_36:                               # %return
	movl	%ebp, %eax
	addq	$88, %rsp
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
.LBB4_32:
	.cfi_def_cfa_offset 144
	movl	$11, %ebp
	jmp	.LBB4_36
.LBB4_39:
	xorl	%ebp, %ebp
	jmp	.LBB4_36
.Lfunc_end4:
	.size	lzma_index_hash_decode, .Lfunc_end4-lzma_index_hash_decode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI4_0:
	.quad	.LBB4_2
	.quad	.LBB4_11
	.quad	.LBB4_7
	.quad	.LBB4_7
	.quad	.LBB4_10
	.quad	.LBB4_14
	.quad	.LBB4_26
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
