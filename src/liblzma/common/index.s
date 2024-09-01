	.text
	.file	"index.c"
	.globl	lzma_index_init                 # -- Begin function lzma_index_init
	.p2align	4, 0x90
	.type	lzma_index_init,@function
lzma_index_init:                        # @lzma_index_init
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
	movq	%rdi, %r14
	movl	$80, %edi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	testq	%rax, %rax
	je	.LBB0_5
# %bb.1:                                # %if.end
	movq	%rax, %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 12(%rax)
	movups	%xmm0, (%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	$512, 64(%rax)                  # imm = 0x200
	movl	$0, 72(%rax)
	movl	$168, %edi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	testq	%rax, %rax
	je	.LBB0_4
# %bb.2:                                # %if.end4
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
	movq	$0, 32(%rax)
	movl	$1, 40(%rax)
	movups	%xmm0, 88(%rax)
	movups	%xmm0, 48(%rax)
	movups	%xmm0, 64(%rax)
	movl	$0, 80(%rax)
	movl	$-1, 104(%rax)
	movq	$0, 160(%rax)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	index_tree_append
	jmp	.LBB0_6
.LBB0_4:                                # %if.then3
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
.LBB0_5:                                # %cleanup5
	xorl	%ebx, %ebx
.LBB0_6:                                # %cleanup5
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_index_init, .Lfunc_end0-lzma_index_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_tree_append
	.type	index_tree_append,@function
index_tree_append:                      # @index_tree_append
	.cfi_startproc
# %bb.0:                                # %entry
	movq	16(%rdi), %rax
	movq	%rax, 16(%rsi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rsi)
	incl	24(%rdi)
	cmpq	$0, (%rdi)
	je	.LBB1_1
# %bb.2:                                # %if.end
	movq	16(%rdi), %rax
	movq	%rsi, 32(%rax)
	movq	%rsi, 16(%rdi)
	movl	24(%rdi), %eax
	movl	%eax, %ecx
	shll	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %eax                    # imm = 0x10000
	setae	%dl
	cmovael	%eax, %ecx
	shll	$4, %edx
	leal	15(%rdx), %r8d
	movl	%ecx, %r9d
	shll	$8, %r9d
	orl	$7, %edx
	cmpl	$16777216, %ecx                 # imm = 0x1000000
	cmovael	%ecx, %r9d
	cmovael	%r8d, %edx
	movl	%r9d, %r8d
	shll	$4, %r8d
	leal	-4(%rdx), %r10d
	cmpl	$268435456, %r9d                # imm = 0x10000000
	cmovael	%r9d, %r8d
	cmovael	%edx, %r10d
	leal	(,%r8,4), %ecx
	cmpl	$1073741824, %r8d               # imm = 0x40000000
	cmovael	%r8d, %ecx
	leal	-2(%r10), %edx
	cmovael	%r10d, %edx
	notl	%ecx
	sarl	$31, %ecx
	addl	%edx, %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	cmpl	%edx, %eax
	je	.LBB1_12
# %bb.3:                                # %if.then9
	movl	%eax, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovnel	%eax, %ecx
	sete	%dl
	shll	$4, %edx
	movl	%ecx, %eax
	shrl	$8, %eax
	leal	8(%rdx), %r8d
	testb	%cl, %cl
	cmovnel	%ecx, %eax
	cmovnel	%edx, %r8d
	movl	%eax, %ecx
	shrl	$4, %ecx
	leal	4(%r8), %edx
	testb	$15, %al
	cmovnel	%eax, %ecx
	cmovnel	%r8d, %edx
	movl	%ecx, %r8d
	shrl	$2, %r8d
	leal	2(%rdx), %r9d
	testb	$3, %cl
	cmovnel	%ecx, %r8d
	notl	%r8d
	cmovnel	%edx, %r9d
	andl	$1, %r8d
	leal	(%r9,%r8), %eax
	addl	$2, %eax
	leal	(%r9,%r8), %ecx
	incl	%ecx
	movl	%eax, %edx
	andl	$7, %edx
	je	.LBB1_7
# %bb.4:                                # %do.body.prol.preheader
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB1_5:                                # %do.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsi), %rsi
	incl	%r8d
	cmpl	%r8d, %edx
	jne	.LBB1_5
# %bb.6:                                # %do.body.prol.loopexit.loopexit
	subl	%r8d, %eax
.LBB1_7:                                # %do.body.prol.loopexit
	cmpl	$7, %ecx
	jb	.LBB1_9
	.p2align	4, 0x90
.LBB1_8:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsi), %rcx
	movq	16(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	16(%rcx), %rsi
	addl	$-8, %eax
	jne	.LBB1_8
.LBB1_9:                                # %do.end
	movq	16(%rsi), %rcx
	movq	32(%rsi), %rax
	leaq	32(%rcx), %rdx
	testq	%rcx, %rcx
	cmoveq	%rdi, %rdx
	movq	%rax, (%rdx)
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%rax)
	movq	24(%rax), %rcx
	movq	%rcx, 32(%rsi)
	testq	%rcx, %rcx
	je	.LBB1_11
# %bb.10:                               # %if.then28
	movq	%rsi, 16(%rcx)
.LBB1_11:                               # %if.end31
	movq	%rsi, 24(%rax)
	movq	%rax, 16(%rsi)
.LBB1_12:                               # %return
	retq
.LBB1_1:                                # %if.then
	movq	%rsi, (%rdi)
	movq	%rsi, 8(%rdi)
	movq	%rsi, 16(%rdi)
	retq
.Lfunc_end1:
	.size	index_tree_append, .Lfunc_end1-index_tree_append
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_end                  # -- Begin function lzma_index_end
	.p2align	4, 0x90
	.type	lzma_index_end,@function
lzma_index_end:                         # @lzma_index_end
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB2_3
# %bb.1:                                # %if.then
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	lzma_free@PLT                   # TAILCALL
# %bb.2:                                # %if.then.i
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$index_stream_end, %edx
	movq	%rdi, %r14
	movq	%rax, %rdi
	movq	%rsi, %rbx
	callq	index_tree_node_end
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	jmp	lzma_free@PLT                   # TAILCALL
.LBB2_3:                                # %if.end
	retq
.Lfunc_end2:
	.size	lzma_index_end, .Lfunc_end2-lzma_index_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_stream_end
	.type	index_stream_end,@function
index_stream_end:                       # @index_stream_end
	.cfi_startproc
# %bb.0:                                # %entry
	movq	56(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB3_1
# %bb.2:                                # %if.then.i
	xorl	%edx, %edx
	jmp	index_tree_node_end             # TAILCALL
.LBB3_1:                                # %index_tree_end.exit
	retq
.Lfunc_end3:
	.size	index_stream_end, .Lfunc_end3-index_stream_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_prealloc             # -- Begin function lzma_index_prealloc
	.p2align	4, 0x90
	.type	lzma_index_prealloc,@function
lzma_index_prealloc:                    # @lzma_index_prealloc
	.cfi_startproc
# %bb.0:                                # %entry
	movabsq	$1152921504606846971, %rax      # imm = 0xFFFFFFFFFFFFFFB
	cmpq	%rax, %rsi
	cmovbq	%rsi, %rax
	movq	%rax, 64(%rdi)
	retq
.Lfunc_end4:
	.size	lzma_index_prealloc, .Lfunc_end4-lzma_index_prealloc
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_memusage             # -- Begin function lzma_index_memusage
	.p2align	4, 0x90
	.type	lzma_index_memusage,@function
lzma_index_memusage:                    # @lzma_index_memusage
	.cfi_startproc
# %bb.0:                                # %entry
	leaq	511(%rsi), %rax
	shrq	$9, %rax
	imulq	$296, %rdi, %rcx                # imm = 0x128
	imulq	$8288, %rax, %rdx               # imm = 0x2060
	movabsq	$-4294967296, %r8               # imm = 0xFFFFFFFF00000000
	addq	%r8, %rdi
	incq	%r8
	movq	$-113, %r9
	subq	%rcx, %r9
	movabsq	$1139567201464682496, %rax      # imm = 0xFD08E5500FD0800
	cmpq	%rax, %rsi
	leaq	112(%rcx,%rdx), %rax
	movq	$-1, %rcx
	cmovaq	%rcx, %rax
	cmpq	%rdx, %r9
	cmovbq	%rcx, %rax
	cmpq	%r8, %rdi
	cmovbq	%rcx, %rax
	retq
.Lfunc_end5:
	.size	lzma_index_memusage, .Lfunc_end5-lzma_index_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_memused              # -- Begin function lzma_index_memused
	.p2align	4, 0x90
	.type	lzma_index_memused,@function
lzma_index_memused:                     # @lzma_index_memused
	.cfi_startproc
# %bb.0:                                # %entry
	movl	24(%rdi), %ecx
	movq	48(%rdi), %rax
	leaq	511(%rax), %rdx
	shrq	$9, %rdx
	imulq	$296, %rcx, %rsi                # imm = 0x128
	imulq	$8288, %rdx, %rdx               # imm = 0x2060
	movq	$-113, %rdi
	subq	%rsi, %rdi
	cmpq	%rdx, %rdi
	leaq	112(%rsi,%rdx), %rdx
	movq	$-1, %rsi
	cmovbq	%rsi, %rdx
	movabsq	$1139567201464682496, %rdi      # imm = 0xFD08E5500FD0800
	cmpq	%rdi, %rax
	cmovaq	%rsi, %rdx
	xorl	%eax, %eax
	cmpq	$1, %rcx
	sbbq	%rax, %rax
	orq	%rdx, %rax
	retq
.Lfunc_end6:
	.size	lzma_index_memused, .Lfunc_end6-lzma_index_memused
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_block_count          # -- Begin function lzma_index_block_count
	.p2align	4, 0x90
	.type	lzma_index_block_count,@function
lzma_index_block_count:                 # @lzma_index_block_count
	.cfi_startproc
# %bb.0:                                # %entry
	movq	48(%rdi), %rax
	retq
.Lfunc_end7:
	.size	lzma_index_block_count, .Lfunc_end7-lzma_index_block_count
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_stream_count         # -- Begin function lzma_index_stream_count
	.p2align	4, 0x90
	.type	lzma_index_stream_count,@function
lzma_index_stream_count:                # @lzma_index_stream_count
	.cfi_startproc
# %bb.0:                                # %entry
	movl	24(%rdi), %eax
	retq
.Lfunc_end8:
	.size	lzma_index_stream_count, .Lfunc_end8-lzma_index_stream_count
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_size                 # -- Begin function lzma_index_size
	.p2align	4, 0x90
	.type	lzma_index_size,@function
lzma_index_size:                        # @lzma_index_size
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	48(%rdi), %rax
	movq	56(%rdi), %rbx
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
.Lfunc_end9:
	.size	lzma_index_size, .Lfunc_end9-lzma_index_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_total_size           # -- Begin function lzma_index_total_size
	.p2align	4, 0x90
	.type	lzma_index_total_size,@function
lzma_index_total_size:                  # @lzma_index_total_size
	.cfi_startproc
# %bb.0:                                # %entry
	movq	40(%rdi), %rax
	retq
.Lfunc_end10:
	.size	lzma_index_total_size, .Lfunc_end10-lzma_index_total_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_stream_size          # -- Begin function lzma_index_stream_size
	.p2align	4, 0x90
	.type	lzma_index_stream_size,@function
lzma_index_stream_size:                 # @lzma_index_stream_size
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
	movq	40(%rdi), %rbx
	movq	48(%rdi), %rax
	movq	56(%rdi), %r14
	movq	%rax, %rdi
	callq	lzma_vli_size@PLT
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	addq	%r14, %rax
	addq	$7, %rax
	andq	$-4, %rax
	addq	%rbx, %rax
	addq	$24, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	lzma_index_stream_size, .Lfunc_end11-lzma_index_stream_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_file_size            # -- Begin function lzma_index_file_size
	.p2align	4, 0x90
	.type	lzma_index_file_size,@function
lzma_index_file_size:                   # @lzma_index_file_size
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
	movq	16(%rdi), %rax
	movq	8(%rax), %rbx
	movq	72(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB12_1
# %bb.2:                                # %cond.false
	movq	56(%rcx), %rdx
	shlq	$4, %rdx
	movq	72(%rcx,%rdx), %rcx
	addq	$3, %rcx
	andq	$-4, %rcx
	addq	%rcx, %rbx
	addq	160(%rax), %rbx
	addq	$24, %rbx
	js	.LBB12_5
.LBB12_4:                               # %if.end.i
	movq	88(%rax), %rdi
	movq	96(%rax), %r14
	callq	lzma_vli_size@PLT
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	leaq	(%r14,%rax), %rcx
	addq	$7, %rcx
	andq	$-4, %rcx
	addq	%rbx, %rcx
	movq	$-1, %rax
	cmovnsq	%rcx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB12_1:
	.cfi_def_cfa_offset 32
	xorl	%ecx, %ecx
	addq	%rcx, %rbx
	addq	160(%rax), %rbx
	addq	$24, %rbx
	jns	.LBB12_4
.LBB12_5:                               # %index_file_size.exit
	movq	$-1, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	lzma_index_file_size, .Lfunc_end12-lzma_index_file_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_uncompressed_size    # -- Begin function lzma_index_uncompressed_size
	.p2align	4, 0x90
	.type	lzma_index_uncompressed_size,@function
lzma_index_uncompressed_size:           # @lzma_index_uncompressed_size
	.cfi_startproc
# %bb.0:                                # %entry
	movq	32(%rdi), %rax
	retq
.Lfunc_end13:
	.size	lzma_index_uncompressed_size, .Lfunc_end13-lzma_index_uncompressed_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_checks               # -- Begin function lzma_index_checks
	.p2align	4, 0x90
	.type	lzma_index_checks,@function
lzma_index_checks:                      # @lzma_index_checks
	.cfi_startproc
# %bb.0:                                # %entry
	movl	72(%rdi), %eax
	movq	16(%rdi), %rcx
	cmpl	$-1, 104(%rcx)
	je	.LBB14_2
# %bb.1:                                # %if.then
	movzbl	120(%rcx), %ecx
	btsl	%ecx, %eax
.LBB14_2:                               # %if.end
	retq
.Lfunc_end14:
	.size	lzma_index_checks, .Lfunc_end14-lzma_index_checks
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_padding_size         # -- Begin function lzma_index_padding_size
	.p2align	4, 0x90
	.type	lzma_index_padding_size,@function
lzma_index_padding_size:                # @lzma_index_padding_size
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	48(%rdi), %rax
	movl	56(%rdi), %ebx
	movq	%rax, %rdi
	callq	lzma_vli_size@PLT
	addl	%ebx, %eax
	movl	$3, %ecx
	subl	%eax, %ecx
	andl	$3, %ecx
	movl	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	lzma_index_padding_size, .Lfunc_end15-lzma_index_padding_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_stream_flags         # -- Begin function lzma_index_stream_flags
	.p2align	4, 0x90
	.type	lzma_index_stream_flags,@function
lzma_index_stream_flags:                # @lzma_index_stream_flags
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	sete	%al
	testq	%rsi, %rsi
	sete	%cl
	orb	%al, %cl
	movl	$11, %eax
	jne	.LBB16_4
# %bb.1:                                # %do.body
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
	movq	%rsi, %rdi
	callq	lzma_stream_flags_compare@PLT
	testl	%eax, %eax
	jne	.LBB16_3
# %bb.2:                                # %do.end
	movq	16(%r14), %rax
	movq	48(%rbx), %rcx
	movq	%rcx, 152(%rax)
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	%xmm2, 136(%rax)
	movups	%xmm1, 120(%rax)
	movups	%xmm0, 104(%rax)
	xorl	%eax, %eax
.LBB16_3:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB16_4:                               # %return
	retq
.Lfunc_end16:
	.size	lzma_index_stream_flags, .Lfunc_end16-lzma_index_stream_flags
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_stream_padding       # -- Begin function lzma_index_stream_padding
	.p2align	4, 0x90
	.type	lzma_index_stream_padding,@function
lzma_index_stream_padding:              # @lzma_index_stream_padding
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	sete	%cl
	movabsq	$-9223372036854775805, %rax     # imm = 0x8000000000000003
	testq	%rax, %rsi
	setne	%dl
	movl	$11, %eax
	orb	%cl, %dl
	jne	.LBB17_8
# %bb.1:                                # %if.end
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
	movq	16(%rdi), %rbx
	movq	160(%rbx), %r14
	movq	$0, 160(%rbx)
	movq	16(%rdi), %rax
	movq	8(%rax), %r15
	movq	72(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB17_2
# %bb.3:                                # %cond.false.i
	movq	56(%rcx), %rdx
	shlq	$4, %rdx
	movq	72(%rcx,%rdx), %rcx
	addq	$3, %rcx
	andq	$-4, %rcx
	addq	%rcx, %r15
	addq	160(%rax), %r15
	addq	$24, %r15
	js	.LBB17_5
.LBB17_6:                               # %if.end.i.i
	movq	88(%rax), %rdi
	movq	96(%rax), %r13
	movq	%rsi, %r12
	callq	lzma_vli_size@PLT
	movq	%r12, %rsi
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	leaq	(%rax,%r13), %rcx
	addq	$7, %rcx
	andq	$-4, %rcx
	addq	%r15, %rcx
	movq	$-1, %rax
	cmovnsq	%rcx, %rax
	jmp	.LBB17_7
.LBB17_2:
	xorl	%ecx, %ecx
	addq	%rcx, %r15
	addq	160(%rax), %r15
	addq	$24, %r15
	jns	.LBB17_6
.LBB17_5:
	movq	$-1, %rax
.LBB17_7:                               # %lzma_index_file_size.exit
	addq	%rsi, %rax
	cmovnsq	%rsi, %r14
	sarq	$63, %rax
	andl	$9, %eax
	movq	%r14, 160(%rbx)
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
.LBB17_8:                               # %return
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end17:
	.size	lzma_index_stream_padding, .Lfunc_end17-lzma_index_stream_padding
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_index_append
.LCPI18_0:
	.quad	1                               # 0x1
	.zero	8
.LCPI18_1:
	.zero	8
	.quad	1                               # 0x1
	.text
	.globl	lzma_index_append
	.p2align	4, 0x90
	.type	lzma_index_append,@function
lzma_index_append:                      # @lzma_index_append
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
	movl	$11, %eax
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	testq	%rcx, %rcx
	js	.LBB18_17
# %bb.1:                                # %entry
	movq	%rdi, %r15
	testq	%rdi, %rdi
	je	.LBB18_17
# %bb.2:                                # %entry
	movq	%rdx, %rbx
	movabsq	$9223372036854775804, %rdx      # imm = 0x7FFFFFFFFFFFFFFC
	leaq	(%rbx,%rdx), %rcx
	addq	$7, %rcx
	addq	$12, %rdx
	cmpq	%rdx, %rcx
	jb	.LBB18_17
# %bb.3:                                # %if.end
	movq	16(%r15), %r13
	movq	72(%r13), %r12
	testq	%r12, %r12
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	je	.LBB18_4
# %bb.5:                                # %cond.false10
	movq	56(%r12), %rax
	shlq	$4, %rax
	movq	64(%r12,%rax), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	72(%r12,%rax), %r14
	addq	$3, %r14
	andq	$-4, %r14
	jmp	.LBB18_6
.LBB18_4:
	xorl	%r14d, %r14d
	movq	$0, 8(%rsp)                     # 8-byte Folded Spill
.LBB18_6:                               # %cond.end14
	movq	%rbx, %rdi
	callq	lzma_vli_size@PLT
	movl	%eax, %ebp
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	lzma_vli_size@PLT
	movl	%eax, %ecx
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	addq	%r14, %rbx
	addq	$3, %rbx
	andq	$-4, %rbx
	addq	8(%r13), %rbx
	addq	160(%r13), %rbx
	addq	$24, %rbx
	movl	$9, %eax
	js	.LBB18_17
# %bb.7:                                # %index_file_size.exit
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	addl	%ebp, %ecx
	movq	88(%r13), %rdi
	incq	%rdi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	leaq	7(%rcx), %rbp
	movq	96(%r13), %r15
	addq	%rbp, %r15
	callq	lzma_vli_size@PLT
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	addq	%r15, %rax
	andq	$-4, %rax
	addq	%rbx, %rax
	js	.LBB18_8
# %bb.9:                                # %if.end26
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movq	48(%rbx), %rdi
	incq	%rdi
	addq	56(%rbx), %rbp
	callq	lzma_vli_size@PLT
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	addq	%rbp, %rax
	andq	$-4, %rax
	movabsq	$17179869184, %rcx              # imm = 0x400000000
	cmpq	%rcx, %rax
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movl	$9, %eax
	movq	40(%rsp), %r15                  # 8-byte Reload
	movabsq	$9223372036854775804, %rdx      # imm = 0x7FFFFFFFFFFFFFFC
	ja	.LBB18_17
# %bb.10:                               # %if.end36
	testq	%r12, %r12
	je	.LBB18_13
# %bb.11:                               # %land.lhs.true
	movq	56(%r12), %rax
	incq	%rax
	cmpq	48(%r12), %rax
	jae	.LBB18_13
# %bb.12:                               # %if.then43
	movq	%rax, 56(%r12)
	movq	8(%rsp), %rbp                   # 8-byte Reload
	jmp	.LBB18_16
.LBB18_8:
	movl	$9, %eax
	jmp	.LBB18_17
.LBB18_13:                              # %if.else
	movq	64(%rbx), %rdi
	shlq	$4, %rdi
	addq	$64, %rdi
	callq	lzma_alloc@PLT
	testq	%rax, %rax
	je	.LBB18_14
# %bb.15:                               # %if.end50
	movq	%rax, %r12
	leaq	56(%r13), %rdi
	movq	$0, 56(%rax)
	movq	64(%rbx), %rax
	movq	%rax, 48(%r12)
	movq	$512, 64(%rbx)                  # imm = 0x200
	movq	8(%rsp), %rbp                   # 8-byte Reload
	movq	%rbp, (%r12)
	movq	%r14, 8(%r12)
	movq	88(%r13), %rax
	incq	%rax
	movq	%rax, 40(%r12)
	movq	%r12, %rsi
	callq	index_tree_append
	movq	56(%r12), %rax
	movabsq	$9223372036854775804, %rdx      # imm = 0x7FFFFFFFFFFFFFFC
.LBB18_16:                              # %if.end63
	addq	%r15, %r14
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	%rcx, %rbp
	shlq	$4, %rax
	movq	%rbp, 64(%r12,%rax)
	movq	%r14, 72(%r12,%rax)
	movdqu	88(%r13), %xmm0
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, %xmm1
	movdqa	.LCPI18_0(%rip), %xmm2          # xmm2 = [1,u]
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	paddq	%xmm0, %xmm2
	movdqu	%xmm2, 88(%r13)
	addq	$3, %r15
	andq	%rdx, %r15
	movq	%r15, %xmm0
	addq	%rcx, 32(%rbx)
	movdqu	40(%rbx), %xmm1
	shufpd	$2, .LCPI18_1(%rip), %xmm0      # xmm0 = xmm0[0],mem[1]
	paddq	%xmm1, %xmm0
	movdqu	%xmm0, 40(%rbx)
	addq	%rax, 56(%rbx)
	xorl	%eax, %eax
	jmp	.LBB18_17
.LBB18_14:
	movl	$5, %eax
.LBB18_17:                              # %return
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
.Lfunc_end18:
	.size	lzma_index_append, .Lfunc_end18-lzma_index_append
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_cat                  # -- Begin function lzma_index_cat
	.p2align	4, 0x90
	.type	lzma_index_cat,@function
lzma_index_cat:                         # @lzma_index_cat
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movq	16(%rdi), %rbx
	movq	8(%rbx), %r12
	movq	72(%rbx), %rax
	testq	%rax, %rax
	je	.LBB19_1
# %bb.2:                                # %cond.false.i
	movq	56(%rax), %rcx
	shlq	$4, %rcx
	movq	72(%rax,%rcx), %rax
	addq	$3, %rax
	andq	$-4, %rax
	addq	%rax, %r12
	addq	160(%rbx), %r12
	addq	$24, %r12
	js	.LBB19_4
.LBB19_5:                               # %if.end.i.i
	movq	88(%rbx), %rdi
	movq	96(%rbx), %r13
	callq	lzma_vli_size@PLT
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	addq	%r13, %rax
	addq	$7, %rax
	andq	$-4, %rax
	addq	%r12, %rax
	movq	$-1, %r12
	cmovnsq	%rax, %r12
	jmp	.LBB19_6
.LBB19_1:
	xorl	%eax, %eax
	addq	%rax, %r12
	addq	160(%rbx), %r12
	addq	$24, %r12
	jns	.LBB19_5
.LBB19_4:
	movq	$-1, %r12
.LBB19_6:                               # %lzma_index_file_size.exit
	movq	16(%rbp), %rax
	movq	8(%rax), %r13
	movq	72(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB19_7
# %bb.8:                                # %cond.false.i159
	movq	56(%rcx), %rdx
	shlq	$4, %rdx
	movq	72(%rcx,%rdx), %rcx
	addq	$3, %rcx
	andq	$-4, %rcx
	jmp	.LBB19_9
.LBB19_7:
	xorl	%ecx, %ecx
.LBB19_9:                               # %cond.end.i163
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	addq	%rcx, %r13
	addq	160(%rax), %r13
	addq	$24, %r13
	js	.LBB19_10
# %bb.11:                               # %if.end.i.i170
	movq	88(%rax), %rdi
	movq	96(%rax), %rbp
	callq	lzma_vli_size@PLT
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	leaq	(%rax,%rbp), %rcx
	addq	$7, %rcx
	andq	$-4, %rcx
	addq	%r13, %rcx
	movq	$-1, %rax
	cmovnsq	%rcx, %rax
	movl	$9, %ebp
	addq	%r12, %rax
	jns	.LBB19_13
	jmp	.LBB19_29
.LBB19_10:
	movq	$-1, %rax
	movl	$9, %ebp
	addq	%r12, %rax
	js	.LBB19_29
.LBB19_13:                              # %lor.lhs.false
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	movq	32(%r15), %rdx
	movq	8(%rsp), %r12                   # 8-byte Reload
	movq	32(%r12), %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	js	.LBB19_29
# %bb.14:                               # %if.end
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	movq	48(%r15), %rdi
	movq	56(%r15), %r14
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	lzma_vli_size@PLT
	movl	%eax, %r13d
	incl	%r13d
	addq	%r14, %r13
	movdqu	48(%r12), %xmm0
	movdqa	%xmm0, 96(%rsp)                 # 16-byte Spill
	movq	48(%r12), %rdi
	addq	56(%r12), %r13
	callq	lzma_vli_size@PLT
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	addq	%r13, %rax
	addq	$11, %rax
	andq	$-4, %rax
	movabsq	$17179869184, %rcx              # imm = 0x400000000
	cmpq	%rcx, %rax
	ja	.LBB19_29
# %bb.15:                               # %cleanup.cont
	movq	72(%rbx), %r13
	testq	%r13, %r13
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	48(%rsp), %r12                  # 8-byte Reload
	je	.LBB19_26
# %bb.16:                               # %land.lhs.true
	movq	56(%r13), %rdi
	incq	%rdi
	cmpq	48(%r13), %rdi
	jae	.LBB19_26
# %bb.17:                               # %if.then19
	shlq	$4, %rdi
	addq	$64, %rdi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	testq	%rax, %rax
	je	.LBB19_18
# %bb.19:                               # %if.end26
	movq	%rax, %rbp
	movq	32(%r13), %rax
	movq	%rax, 32(%rbp)
	movdqu	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	%xmm1, 16(%rbp)
	movdqu	%xmm0, (%rbp)
	movq	56(%r13), %rdx
	incq	%rdx
	movq	%rdx, 48(%rbp)
	movq	56(%r13), %rax
	movq	%rax, 56(%rbp)
	movq	40(%r13), %rax
	movq	%rax, 40(%rbp)
	movq	%rbp, %rdi
	addq	$64, %rdi
	leaq	64(%r13), %rsi
	shlq	$4, %rdx
	callq	memcpy@PLT
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.LBB19_21
# %bb.20:                               # %if.then40
	movq	%rbp, 32(%rax)
.LBB19_21:                              # %if.end44
	cmpq	%r13, 64(%rbx)
	jne	.LBB19_23
# %bb.22:                               # %if.then48
	movq	%rbp, 64(%rbx)
	movq	%rbp, 56(%rbx)
.LBB19_23:                              # %if.end54
	cmpq	%r13, 72(%rbx)
	jne	.LBB19_25
# %bb.24:                               # %if.then59
	movq	%rbp, 72(%rbx)
.LBB19_25:                              # %cleanup68.thread192
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
.LBB19_26:                              # %cleanup.cont71
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 56(%rsp)
	movq	%r12, 64(%rsp)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 72(%rsp)
	movl	24(%r15), %eax
	movl	%eax, 80(%rsp)
	movq	%r15, 88(%rsp)
	movq	8(%rsp), %rbx                   # 8-byte Reload
	movq	(%rbx), %rsi
	leaq	56(%rsp), %rdi
	callq	index_cat_helper
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	%rax, 32(%r15)
	movq	40(%rbx), %rax
	addq	%rax, 40(%r15)
	movdqu	48(%r15), %xmm0
	paddq	96(%rsp), %xmm0                 # 16-byte Folded Reload
	movdqu	%xmm0, 48(%r15)
	movl	72(%r15), %eax
	movq	16(%r15), %rcx
	cmpl	$-1, 104(%rcx)
	je	.LBB19_28
# %bb.27:                               # %if.then.i
	movzbl	120(%rcx), %ecx
	btsl	%ecx, %eax
.LBB19_28:                              # %lzma_index_checks.exit
	orl	72(%rbx), %eax
	movl	%eax, 72(%r15)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
	xorl	%ebp, %ebp
.LBB19_29:                              # %cleanup94
	movl	%ebp, %eax
	addq	$120, %rsp
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
.LBB19_18:
	.cfi_def_cfa_offset 176
	movl	$5, %ebp
	jmp	.LBB19_29
.Lfunc_end19:
	.size	lzma_index_cat, .Lfunc_end19-lzma_index_cat
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_cat_helper
	.type	index_cat_helper,@function
index_cat_helper:                       # @index_cat_helper
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	jmp	.LBB20_1
	.p2align	4, 0x90
.LBB20_3:                               # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	(%rbx), %rax
	addq	%rax, (%r14)
	movq	8(%rbx), %rax
	addq	%rax, 8(%r14)
	movl	24(%rbx), %eax
	addl	%eax, 40(%r14)
	movq	16(%rbx), %rax
	addq	%rax, 48(%r14)
	movq	32(%rbx), %rdi
	movq	%r14, %rsi
	callq	index_tree_append
	movq	%r15, %r14
	testq	%r15, %r15
	je	.LBB20_4
.LBB20_1:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rsi
	movq	32(%r14), %r15
	testq	%rsi, %rsi
	je	.LBB20_3
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	%rbx, %rdi
	callq	index_cat_helper
	jmp	.LBB20_3
.LBB20_4:                               # %if.end12
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	index_cat_helper, .Lfunc_end20-index_cat_helper
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_index_dup
.LCPI21_0:
	.zero	16
	.text
	.globl	lzma_index_dup
	.p2align	4, 0x90
	.type	lzma_index_dup,@function
lzma_index_dup:                         # @lzma_index_dup
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$80, %edi
	callq	lzma_alloc@PLT
	testq	%rax, %rax
	je	.LBB21_11
# %bb.1:                                # %if.end
	movq	%rax, %r13
	movq	%rbx, (%rsp)                    # 8-byte Spill
	movabsq	$1152921504606846971, %rcx      # imm = 0xFFFFFFFFFFFFFFB
	xorps	%xmm0, %xmm0
	movups	%xmm0, 12(%rax)
	movups	%xmm0, (%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	$512, 64(%rax)                  # imm = 0x200
	movl	$0, 72(%rax)
	movq	32(%r15), %rax
	movq	%rax, 32(%r13)
	movq	40(%r15), %rax
	movq	%rax, 40(%r13)
	movq	48(%r15), %rax
	movq	%rax, 48(%r13)
	movq	56(%r15), %rax
	movq	%rax, 56(%r13)
	movq	8(%r15), %rbp
	cmpq	%rcx, 88(%rbp)
	jbe	.LBB21_2
.LBB21_8:                               # %if.then.i32
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	movq	(%rsp), %rbx                    # 8-byte Reload
	je	.LBB21_10
# %bb.9:                                # %if.then.i.i
	movl	$index_stream_end, %edx
	movq	%rbx, %rsi
	callq	index_tree_node_end
.LBB21_10:                              # %cleanup.thread
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	lzma_free@PLT
.LBB21_11:                              # %cleanup14
	xorl	%r13d, %r13d
.LBB21_12:                              # %cleanup14
	movq	%r13, %rax
	addq	$40, %rsp
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
.LBB21_2:                               # %if.end.i.preheader
	.cfi_def_cfa_offset 96
	leaq	88(%rbp), %r14
	movq	%r13, 8(%rsp)                   # 8-byte Spill
.LBB21_3:                               # %if.end.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_14 Depth 2
                                        #       Child Loop BB21_15 Depth 3
                                        #       Child Loop BB21_16 Depth 3
                                        #     Child Loop BB21_20 Depth 2
                                        #     Child Loop BB21_21 Depth 2
	movups	(%rbp), %xmm0
	movaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	movl	40(%rbp), %ebx
	movq	48(%rbp), %r12
	movl	$168, %edi
	movq	(%rsp), %rsi                    # 8-byte Reload
	callq	lzma_alloc@PLT
	testq	%rax, %rax
	je	.LBB21_8
# %bb.4:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	%rax, %r15
	movaps	16(%rsp), %xmm0                 # 16-byte Reload
	movups	%xmm0, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movq	$0, 32(%rax)
	movl	%ebx, 40(%rax)
	movq	%r12, 48(%rax)
	movups	%xmm0, 56(%rax)
	movups	%xmm0, 68(%rax)
	movups	%xmm0, 88(%rax)
	movl	$-1, 104(%rax)
	movq	$0, 160(%rax)
	cmpq	$0, 64(%rbp)
	je	.LBB21_19
# %bb.5:                                # %if.end7.i
                                        #   in Loop: Header=BB21_3 Depth=1
	leaq	56(%r15), %rbx
	movq	%r15, %rax
	addq	$104, %rax
	movq	(%r14), %rcx
	movq	%rcx, 88(%r15)
	movq	96(%rbp), %rcx
	movq	%rcx, 96(%r15)
	movq	152(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movups	104(%rbp), %xmm0
	movups	120(%rbp), %xmm1
	movups	136(%rbp), %xmm2
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movq	160(%rbp), %rax
	movq	%rax, 160(%r15)
	movq	(%r14), %rdi
	shlq	$4, %rdi
	addq	$64, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	callq	lzma_alloc@PLT
	testq	%rax, %rax
	je	.LBB21_6
# %bb.13:                               # %if.end18.i
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	%rax, %r13
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	$1, 40(%rax)
	movq	(%r14), %rax
	movq	%rax, 48(%r13)
	decq	%rax
	movq	%rax, 56(%r13)
	movq	64(%rbp), %rbx
	movq	%r13, %r14
	addq	$64, %r14
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB21_14:                              # %do.body.i
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_15 Depth 3
                                        #       Child Loop BB21_16 Depth 3
	movq	%r12, %rdi
	shlq	$4, %rdi
	addq	%r14, %rdi
	leaq	64(%rbx), %rsi
	movq	56(%rbx), %rdx
	shlq	$4, %rdx
	addq	$16, %rdx
	callq	memcpy@PLT
	movq	32(%rbx), %rax
	movq	56(%rbx), %rcx
	addq	%rcx, %r12
	incq	%r12
	movq	%rbx, %rcx
	testq	%rax, %rax
	je	.LBB21_16
	.p2align	4, 0x90
.LBB21_15:                              # %while.cond.i.i
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rbx
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.LBB21_15
	jmp	.LBB21_14
	.p2align	4, 0x90
.LBB21_16:                              # %while.cond4.i.i
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB21_18
# %bb.17:                               # %land.rhs.i.i
                                        #   in Loop: Header=BB21_16 Depth=3
	cmpq	%rcx, 32(%rbx)
	movq	%rbx, %rcx
	je	.LBB21_16
	jmp	.LBB21_14
	.p2align	4, 0x90
.LBB21_18:                              # %index_dup_stream.exit
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, %rsi
	callq	index_tree_append
	movq	8(%rsp), %r13                   # 8-byte Reload
.LBB21_19:                              # %if.end8
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	index_tree_append
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB21_21
	.p2align	4, 0x90
.LBB21_20:                              # %while.cond.i
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB21_20
	jmp	.LBB21_23
	.p2align	4, 0x90
.LBB21_21:                              # %while.cond4.i
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rbp), %rax
	testq	%rax, %rax
	je	.LBB21_12
# %bb.22:                               # %land.rhs.i
                                        #   in Loop: Header=BB21_21 Depth=2
	cmpq	%rbp, 32(%rax)
	movq	%rax, %rbp
	je	.LBB21_21
.LBB21_23:                              # %do.cond
                                        #   in Loop: Header=BB21_3 Depth=1
	leaq	88(%rax), %r14
	movq	%rax, %rbp
	movabsq	$1152921504606846971, %rcx      # imm = 0xFFFFFFFFFFFFFFB
	cmpq	%rcx, 88(%rax)
	jbe	.LBB21_3
	jmp	.LBB21_8
.LBB21_6:                               # %if.then17.i
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	movq	8(%rsp), %r13                   # 8-byte Reload
	je	.LBB21_8
# %bb.7:                                # %if.then.i.i.i
	movq	(%rsp), %rsi                    # 8-byte Reload
	xorl	%edx, %edx
	callq	index_tree_node_end
	jmp	.LBB21_8
.Lfunc_end21:
	.size	lzma_index_dup, .Lfunc_end21-lzma_index_dup
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_iter_init            # -- Begin function lzma_index_iter_init
	.p2align	4, 0x90
	.type	lzma_index_iter_init,@function
lzma_index_iter_init:                   # @lzma_index_iter_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rsi, 256(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 264(%rdi)
	movups	%xmm0, 280(%rdi)
	retq
.Lfunc_end22:
	.size	lzma_index_iter_init, .Lfunc_end22-lzma_index_iter_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_iter_rewind          # -- Begin function lzma_index_iter_rewind
	.p2align	4, 0x90
	.type	lzma_index_iter_rewind,@function
lzma_index_iter_rewind:                 # @lzma_index_iter_rewind
	.cfi_startproc
# %bb.0:                                # %entry
	xorps	%xmm0, %xmm0
	movups	%xmm0, 280(%rdi)
	movups	%xmm0, 264(%rdi)
	retq
.Lfunc_end23:
	.size	lzma_index_iter_rewind, .Lfunc_end23-lzma_index_iter_rewind
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_iter_next            # -- Begin function lzma_index_iter_next
	.p2align	4, 0x90
	.type	lzma_index_iter_next,@function
lzma_index_iter_next:                   # @lzma_index_iter_next
	.cfi_startproc
# %bb.0:                                # %entry
	movb	$1, %al
	cmpl	$3, %esi
	ja	.LBB24_53
# %bb.1:                                # %if.end
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	264(%rdi), %rcx
	cmpl	$1, %esi
	jne	.LBB24_3
.LBB24_14:
	xorl	%r8d, %r8d
	jmp	.LBB24_15
.LBB24_3:                               # %if.then6
	movq	288(%rdi), %rdx
	cmpq	$2, %rdx
	je	.LBB24_12
# %bb.4:                                # %if.then6
	cmpq	$1, %rdx
	je	.LBB24_7
# %bb.5:                                # %if.then6
	testq	%rdx, %rdx
	jne	.LBB24_14
# %bb.6:                                # %sw.bb
	leaq	272(%rdi), %rdx
	jmp	.LBB24_13
.LBB24_7:                               # %sw.bb11
	movq	272(%rdi), %rdx
	movq	32(%rdx), %r9
	testq	%r9, %r9
	je	.LBB24_10
	.p2align	4, 0x90
.LBB24_8:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r9, %r8
	movq	24(%r9), %r9
	testq	%r9, %r9
	jne	.LBB24_8
	jmp	.LBB24_15
	.p2align	4, 0x90
.LBB24_9:                               # %land.rhs.i
                                        #   in Loop: Header=BB24_10 Depth=1
	cmpq	%rdx, 32(%r8)
	movq	%r8, %rdx
	jne	.LBB24_15
.LBB24_10:                              # %while.cond4.i
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rdx), %r8
	testq	%r8, %r8
	jne	.LBB24_9
	jmp	.LBB24_14
.LBB24_12:                              # %sw.bb14
	leaq	64(%rcx), %rdx
.LBB24_13:                              # %if.end15.sink.split
	movq	(%rdx), %r8
.LBB24_15:                              # %if.end15
	movq	256(%rdi), %rdx
	movq	280(%rdi), %r9
.LBB24_16:                              # %again
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_29 Depth 2
                                        #     Child Loop BB24_30 Depth 2
                                        #     Child Loop BB24_40 Depth 2
                                        #     Child Loop BB24_41 Depth 2
                                        #     Child Loop BB24_34 Depth 2
                                        #       Child Loop BB24_35 Depth 3
                                        #       Child Loop BB24_36 Depth 3
                                        #     Child Loop BB24_23 Depth 2
                                        #       Child Loop BB24_24 Depth 3
                                        #       Child Loop BB24_25 Depth 3
	testq	%rcx, %rcx
	je	.LBB24_20
# %bb.17:                               # %if.else
                                        #   in Loop: Header=BB24_16 Depth=1
	testq	%r8, %r8
	je	.LBB24_33
# %bb.18:                               # %land.lhs.true
                                        #   in Loop: Header=BB24_16 Depth=1
	cmpq	56(%r8), %r9
	jae	.LBB24_28
# %bb.19:                               # %if.then33
                                        #   in Loop: Header=BB24_16 Depth=1
	incq	%r9
	jmp	.LBB24_45
	.p2align	4, 0x90
.LBB24_20:                              # %if.then17
                                        #   in Loop: Header=BB24_16 Depth=1
	movq	8(%rdx), %rcx
	movq	64(%rcx), %r8
	cmpl	$2, %esi
	jb	.LBB24_50
# %bb.21:                               # %while.cond.preheader
                                        #   in Loop: Header=BB24_16 Depth=1
	testq	%r8, %r8
	jne	.LBB24_44
# %bb.22:                               # %while.body.preheader
                                        #   in Loop: Header=BB24_16 Depth=1
	movq	%rcx, %r10
.LBB24_23:                              # %while.body
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_24 Depth 3
                                        #       Child Loop BB24_25 Depth 3
	movq	32(%r10), %r8
	testq	%r8, %r8
	je	.LBB24_25
	.p2align	4, 0x90
.LBB24_24:                              # %while.cond.i125
                                        #   Parent Loop BB24_16 Depth=1
                                        #     Parent Loop BB24_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r8, %rcx
	movq	24(%r8), %r8
	testq	%r8, %r8
	jne	.LBB24_24
	jmp	.LBB24_27
	.p2align	4, 0x90
.LBB24_25:                              # %while.cond4.i130
                                        #   Parent Loop BB24_16 Depth=1
                                        #     Parent Loop BB24_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%r10), %rcx
	testq	%rcx, %rcx
	je	.LBB24_52
# %bb.26:                               # %land.rhs.i134
                                        #   in Loop: Header=BB24_25 Depth=3
	cmpq	%r10, 32(%rcx)
	movq	%rcx, %r10
	je	.LBB24_25
.LBB24_27:                              # %index_tree_next.exit137
                                        #   in Loop: Header=BB24_23 Depth=2
	movq	64(%rcx), %r8
	movq	%rcx, %r10
	movl	$0, %r9d
	testq	%r8, %r8
	je	.LBB24_23
	jmp	.LBB24_45
.LBB24_28:                              # %if.then36
                                        #   in Loop: Header=BB24_16 Depth=1
	movq	32(%r8), %r9
	testq	%r9, %r9
	je	.LBB24_30
	.p2align	4, 0x90
.LBB24_29:                              # %while.cond.i140
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r9, %r8
	movq	24(%r9), %r9
	testq	%r9, %r9
	jne	.LBB24_29
	jmp	.LBB24_44
	.p2align	4, 0x90
.LBB24_30:                              # %while.cond4.i145
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%r8), %r9
	testq	%r9, %r9
	je	.LBB24_33
# %bb.31:                               # %land.rhs.i149
                                        #   in Loop: Header=BB24_30 Depth=2
	cmpq	%r8, 32(%r9)
	movq	%r9, %r8
	je	.LBB24_30
# %bb.32:                               #   in Loop: Header=BB24_16 Depth=1
	movq	%r9, %r8
	jmp	.LBB24_44
	.p2align	4, 0x90
.LBB24_33:                              # %if.end39
                                        #   in Loop: Header=BB24_16 Depth=1
	cmpl	$2, %esi
	jb	.LBB24_39
.LBB24_34:                              # %do.body.us
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_35 Depth 3
                                        #       Child Loop BB24_36 Depth 3
	movq	32(%rcx), %r8
	testq	%r8, %r8
	je	.LBB24_36
	.p2align	4, 0x90
.LBB24_35:                              # %while.cond.i155.us
                                        #   Parent Loop BB24_16 Depth=1
                                        #     Parent Loop BB24_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r8, %r9
	movq	24(%r8), %r8
	testq	%r8, %r8
	jne	.LBB24_35
	jmp	.LBB24_38
	.p2align	4, 0x90
.LBB24_36:                              # %while.cond4.i160.us
                                        #   Parent Loop BB24_16 Depth=1
                                        #     Parent Loop BB24_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rcx), %r9
	testq	%r9, %r9
	je	.LBB24_52
# %bb.37:                               # %land.rhs.i164.us
                                        #   in Loop: Header=BB24_36 Depth=3
	cmpq	%rcx, 32(%r9)
	movq	%r9, %rcx
	je	.LBB24_36
.LBB24_38:                              # %do.cond.us
                                        #   in Loop: Header=BB24_34 Depth=2
	cmpq	$0, 64(%r9)
	movq	%r9, %rcx
	je	.LBB24_34
	jmp	.LBB24_43
.LBB24_39:                              # %if.end39.split
                                        #   in Loop: Header=BB24_16 Depth=1
	movq	32(%rcx), %r8
	testq	%r8, %r8
	je	.LBB24_41
	.p2align	4, 0x90
.LBB24_40:                              # %while.cond.i155
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r8, %r9
	movq	24(%r8), %r8
	testq	%r8, %r8
	jne	.LBB24_40
	jmp	.LBB24_43
	.p2align	4, 0x90
.LBB24_41:                              # %while.cond4.i160
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rcx), %r9
	testq	%r9, %r9
	je	.LBB24_52
# %bb.42:                               # %land.rhs.i164
                                        #   in Loop: Header=BB24_41 Depth=2
	cmpq	%rcx, 32(%r9)
	movq	%r9, %rcx
	je	.LBB24_41
.LBB24_43:                              # %do.end
                                        #   in Loop: Header=BB24_16 Depth=1
	movq	64(%r9), %r8
	movq	%r9, %rcx
.LBB24_44:                              # %if.end55
                                        #   in Loop: Header=BB24_16 Depth=1
	xorl	%r9d, %r9d
.LBB24_45:                              # %if.end55
                                        #   in Loop: Header=BB24_16 Depth=1
	cmpl	$3, %esi
	jne	.LBB24_51
# %bb.46:                               # %if.then57
                                        #   in Loop: Header=BB24_16 Depth=1
	testq	%r9, %r9
	je	.LBB24_48
# %bb.47:                               # %if.else65
                                        #   in Loop: Header=BB24_16 Depth=1
	movq	%r9, %r10
	shlq	$4, %r10
	movq	48(%r8,%r10), %r11
	cmpq	64(%r8,%r10), %r11
	je	.LBB24_16
	jmp	.LBB24_51
	.p2align	4, 0x90
.LBB24_48:                              # %if.then59
                                        #   in Loop: Header=BB24_16 Depth=1
	movq	(%r8), %r10
	cmpq	64(%r8), %r10
	je	.LBB24_16
.LBB24_50:
	xorl	%r9d, %r9d
.LBB24_51:                              # %if.end76
	movq	%rcx, 264(%rdi)
	movq	%r8, 272(%rdi)
	movq	%r9, 280(%rdi)
	callq	iter_set_info
	xorl	%eax, %eax
.LBB24_52:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB24_53:                              # %return
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end24:
	.size	lzma_index_iter_next, .Lfunc_end24-lzma_index_iter_next
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function iter_set_info
	.type	iter_set_info,@function
iter_set_info:                          # @iter_set_info
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
	movq	%rdi, %rbx
	movq	264(%rdi), %r12
	movq	272(%rdi), %r14
	testq	%r14, %r14
	je	.LBB25_1
# %bb.2:                                # %if.else
	movq	256(%rbx), %rax
	cmpq	%r12, 16(%rax)
	jne	.LBB25_4
# %bb.3:                                # %lor.lhs.false
	cmpq	%r14, 72(%r12)
	je	.LBB25_5
.LBB25_4:                               # %if.then13
	movq	$0, 288(%rbx)
	jmp	.LBB25_8
.LBB25_1:                               # %if.then
	movq	$2, 288(%rbx)
.LBB25_8:                               # %if.end32
	movq	280(%rbx), %r15
	movl	40(%r12), %eax
	movq	%rax, 32(%rbx)
	movq	88(%r12), %rax
	movq	%rax, 40(%rbx)
	movq	8(%r12), %rax
	movq	%rax, 48(%rbx)
	movq	(%r12), %rax
	movq	%rax, 56(%rbx)
	xorl	%eax, %eax
	cmpl	$-1, 104(%r12)
	leaq	104(%r12), %rcx
	cmovneq	%rcx, %rax
	movq	%rax, (%rbx)
	movq	160(%r12), %rax
	movq	%rax, 80(%rbx)
	movq	72(%r12), %r13
	testq	%r13, %r13
	je	.LBB25_9
# %bb.10:                               # %if.else52
	movq	88(%r12), %rdi
	movq	96(%r12), %rbp
	callq	lzma_vli_size@PLT
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	addq	%rbp, %rax
	addq	$7, %rax
	andq	$-4, %rax
	movq	56(%r13), %rcx
	shlq	$4, %rcx
	movq	72(%r13,%rcx), %rcx
	addq	$3, %rcx
	andq	$-4, %rcx
	addq	%rcx, %rax
	addq	$24, %rax
	movq	%rax, 64(%rbx)
	movq	56(%r13), %rax
	shlq	$4, %rax
	movq	64(%r13,%rax), %r13
	movq	%r13, 72(%rbx)
	testq	%r14, %r14
	jne	.LBB25_12
	jmp	.LBB25_16
.LBB25_9:                               # %if.then49
	xorl	%r13d, %r13d
	xorl	%edi, %edi
	callq	lzma_vli_size@PLT
                                        # kill: def $eax killed $eax def $rax
	incl	%eax
	addq	$7, %rax
	andq	$-4, %rax
	addq	$24, %rax
	movq	%rax, 64(%rbx)
	movq	%r13, 72(%rbx)
	testq	%r14, %r14
	je	.LBB25_16
.LBB25_12:                              # %if.then71
	movq	40(%r14), %rax
	addq	%r15, %rax
	movq	%rax, 144(%rbx)
	addq	48(%r12), %rax
	movq	%rax, 120(%rbx)
	testq	%r15, %r15
	je	.LBB25_13
# %bb.14:                               # %cond.false82
	leaq	-1(%r15), %rcx
	movq	%rcx, %rax
	shlq	$4, %rax
	movq	72(%r14,%rax), %rax
	addq	$3, %rax
	andq	$-4, %rax
	jmp	.LBB25_15
.LBB25_13:                              # %cond.true79
	movq	8(%r14), %rax
	movq	$-1, %rcx
.LBB25_15:                              # %cond.end87
	shlq	$4, %rcx
	testq	%r15, %r15
	movq	%rax, 152(%rbx)
	leaq	64(%r14,%rcx), %rcx
	cmoveq	%r14, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 160(%rbx)
	shlq	$4, %r15
	movq	64(%r14,%r15), %rdx
	subq	%rcx, %rdx
	movq	%rdx, 168(%rbx)
	movq	72(%r14,%r15), %rdx
	subq	%rax, %rdx
	movq	%rdx, 176(%rbx)
	addq	$3, %rdx
	andq	$-4, %rdx
	movq	%rdx, 184(%rbx)
	addq	$12, %rax
	movq	%rax, 152(%rbx)
	addq	48(%rbx), %rax
	movq	%rax, 128(%rbx)
	addq	56(%rbx), %rcx
	movq	%rcx, 136(%rbx)
.LBB25_16:                              # %if.end137
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
	retq
.LBB25_5:                               # %if.else16
	.cfi_def_cfa_offset 64
	cmpq	%r14, 64(%r12)
	je	.LBB25_7
# %bb.6:                                # %if.then20
	movq	$1, 288(%rbx)
	movq	16(%r14), %rax
	movq	%rax, 272(%rbx)
	jmp	.LBB25_8
.LBB25_7:                               # %if.else26
	movq	$2, 288(%rbx)
	movq	$0, 272(%rbx)
	jmp	.LBB25_8
.Lfunc_end25:
	.size	iter_set_info, .Lfunc_end25-iter_set_info
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_iter_locate          # -- Begin function lzma_index_iter_locate
	.p2align	4, 0x90
	.type	lzma_index_iter_locate,@function
lzma_index_iter_locate:                 # @lzma_index_iter_locate
	.cfi_startproc
# %bb.0:                                # %entry
	movq	256(%rdi), %rcx
	movb	$1, %al
	cmpq	%rsi, 32(%rcx)
	jbe	.LBB26_15
# %bb.1:                                # %if.end
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	(%rcx), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB26_4
	.p2align	4, 0x90
.LBB26_2:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	cmpq	%rsi, (%rcx)
	cmovbeq	%rcx, %rax
	setbe	%dl
	movq	24(%rcx,%rdx,8), %rcx
	testq	%rcx, %rcx
	jne	.LBB26_2
.LBB26_4:                               # %index_tree_locate.exit
	subq	(%rax), %rsi
	movq	56(%rax), %rdx
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	je	.LBB26_7
	.p2align	4, 0x90
.LBB26_5:                               # %while.body.i37
                                        # =>This Inner Loop Header: Depth=1
	xorl	%r8d, %r8d
	cmpq	%rsi, (%rdx)
	cmovbeq	%rdx, %rcx
	setbe	%r8b
	movq	24(%rdx,%r8,8), %rdx
	testq	%rdx, %rdx
	jne	.LBB26_5
.LBB26_7:                               # %index_tree_locate.exit47
	movq	56(%rcx), %r8
	testq	%r8, %r8
	je	.LBB26_8
# %bb.9:                                # %while.body.lr.ph
	leaq	64(%rcx), %r9
	xorl	%edx, %edx
	jmp	.LBB26_10
	.p2align	4, 0x90
.LBB26_12:                              # %while.body
                                        #   in Loop: Header=BB26_10 Depth=1
	addq	%r10, %rdx
	incq	%rdx
	cmpq	%r8, %rdx
	jae	.LBB26_14
.LBB26_10:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r8, %r10
	subq	%rdx, %r10
	shrq	%r10
	leaq	(%r10,%rdx), %r11
	movq	%r11, %rbx
	shlq	$4, %rbx
	cmpq	%rsi, (%r9,%rbx)
	jbe	.LBB26_12
# %bb.11:                               #   in Loop: Header=BB26_10 Depth=1
	movq	%r11, %r8
	cmpq	%r8, %rdx
	jb	.LBB26_10
	jmp	.LBB26_14
.LBB26_8:
	xorl	%edx, %edx
.LBB26_14:                              # %while.end
	movq	%rax, 264(%rdi)
	movq	%rcx, 272(%rdi)
	movq	%rdx, 280(%rdi)
	callq	iter_set_info
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB26_15:                              # %cleanup
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end26:
	.size	lzma_index_iter_locate, .Lfunc_end26-lzma_index_iter_locate
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_tree_node_end
	.type	index_tree_node_end,@function
index_tree_node_end:                    # @index_tree_node_end
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
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB27_2
# %bb.1:                                # %if.then
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	index_tree_node_end
.LBB27_2:                               # %if.end
	movq	32(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB27_4
# %bb.3:                                # %if.then3
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	index_tree_node_end
.LBB27_4:                               # %if.end5
	testq	%r15, %r15
	je	.LBB27_6
# %bb.5:                                # %if.then7
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%r15
.LBB27_6:                               # %if.end8
	movq	%r14, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Lfunc_end27:
	.size	index_tree_node_end, .Lfunc_end27-index_tree_node_end
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
