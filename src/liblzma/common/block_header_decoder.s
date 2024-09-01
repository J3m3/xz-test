	.text
	.file	"block_header_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/block_header_decoder.c" md5 0xfd5977cc73b0a776afe5331d178f422f
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.globl	lzma_block_header_decode        # -- Begin function lzma_block_header_decode
	.p2align	4, 0x90
	.type	lzma_block_header_decode,@function
lzma_block_header_decode:               # @lzma_block_header_decode
.Lfunc_begin0:
	.loc	0 36 0                          # liblzma/common/block_header_decoder.c:36:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rdi
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_header_decode:in <- $rdx
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
.Ltmp0:
	#DEBUG_VALUE: i <- 0
	.loc	0 45 10 prologue_end            # liblzma/common/block_header_decoder.c:45:10
	movq	32(%rdi), %rax
	.loc	0 45 24 is_stmt 0               # liblzma/common/block_header_decoder.c:45:24
	movq	$-1, (%rax)
	.loc	0 46 10 is_stmt 1               # liblzma/common/block_header_decoder.c:46:10
	movq	32(%rdi), %rax
	.loc	0 46 29 is_stmt 0               # liblzma/common/block_header_decoder.c:46:29
	movq	$0, 8(%rax)
.Ltmp1:
	#DEBUG_VALUE: i <- 1
	.loc	0 45 10 is_stmt 1               # liblzma/common/block_header_decoder.c:45:10
	movq	32(%rdi), %rax
	.loc	0 45 24 is_stmt 0               # liblzma/common/block_header_decoder.c:45:24
	movq	$-1, 16(%rax)
	.loc	0 46 10 is_stmt 1               # liblzma/common/block_header_decoder.c:46:10
	movq	32(%rdi), %rax
	.loc	0 46 29 is_stmt 0               # liblzma/common/block_header_decoder.c:46:29
	movq	$0, 24(%rax)
.Ltmp2:
	#DEBUG_VALUE: i <- 2
	.loc	0 45 10 is_stmt 1               # liblzma/common/block_header_decoder.c:45:10
	movq	32(%rdi), %rax
	.loc	0 45 24 is_stmt 0               # liblzma/common/block_header_decoder.c:45:24
	movq	$-1, 32(%rax)
	.loc	0 46 10 is_stmt 1               # liblzma/common/block_header_decoder.c:46:10
	movq	32(%rdi), %rax
	.loc	0 46 29 is_stmt 0               # liblzma/common/block_header_decoder.c:46:29
	movq	$0, 40(%rax)
.Ltmp3:
	#DEBUG_VALUE: i <- 3
	.loc	0 45 10 is_stmt 1               # liblzma/common/block_header_decoder.c:45:10
	movq	32(%rdi), %rax
	.loc	0 45 24 is_stmt 0               # liblzma/common/block_header_decoder.c:45:24
	movq	$-1, 48(%rax)
	.loc	0 46 10 is_stmt 1               # liblzma/common/block_header_decoder.c:46:10
	movq	32(%rdi), %rax
	.loc	0 46 29 is_stmt 0               # liblzma/common/block_header_decoder.c:46:29
	movq	$0, 56(%rax)
.Ltmp4:
	#DEBUG_VALUE: i <- 4
	.loc	0 45 10 is_stmt 1               # liblzma/common/block_header_decoder.c:45:10
	movq	32(%rdi), %rax
	.loc	0 45 24 is_stmt 0               # liblzma/common/block_header_decoder.c:45:24
	movq	$-1, 64(%rax)
	.loc	0 46 10 is_stmt 1               # liblzma/common/block_header_decoder.c:46:10
	movq	32(%rdi), %rax
	.loc	0 46 29 is_stmt 0               # liblzma/common/block_header_decoder.c:46:29
	movq	$0, 72(%rax)
.Ltmp5:
	#DEBUG_VALUE: i <- 5
	.loc	0 50 17 is_stmt 1               # liblzma/common/block_header_decoder.c:50:17
	movl	$0, (%rdi)
.Ltmp6:
	.loc	0 54 6                          # liblzma/common/block_header_decoder.c:54:6
	movzbl	(%rdx), %r12d
	leal	4(,%r12,4), %ecx
	movl	$11, %eax
	.loc	0 54 43 is_stmt 0               # liblzma/common/block_header_decoder.c:54:43
	cmpl	4(%rdi), %ecx
	.loc	0 55 4 is_stmt 1                # liblzma/common/block_header_decoder.c:55:4
	jne	.LBB0_20
.Ltmp7:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rdi
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_header_decode:in <- $rdx
	.loc	0 0 4 is_stmt 0                 # liblzma/common/block_header_decoder.c:0:4
	movq	%rdi, %rbx
	.loc	0 55 36                         # liblzma/common/block_header_decoder.c:55:36
	cmpl	$15, 8(%rdi)
.Ltmp8:
	.loc	0 54 6 is_stmt 1                # liblzma/common/block_header_decoder.c:54:6
	ja	.LBB0_20
.Ltmp9:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_header_decode:in <- $rdx
	.loc	0 0 6 is_stmt 0                 # liblzma/common/block_header_decoder.c:0:6
	movq	%rdx, %r15
	movq	%rsi, %r14
	shll	$2, %r12d
.Ltmp10:
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	.loc	0 62 6 is_stmt 1                # liblzma/common/block_header_decoder.c:62:6
	movq	%rdx, %rdi
	movq	%r12, %rsi
.Ltmp11:
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	xorl	%edx, %edx
.Ltmp12:
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	callq	lzma_crc32@PLT
.Ltmp13:
	movl	%eax, %ecx
	movl	$9, %eax
.Ltmp14:
	#DEBUG_VALUE: unaligned_read32le:num <- undef
	.loc	0 62 33 is_stmt 0               # liblzma/common/block_header_decoder.c:62:33
	cmpl	(%r15,%r12), %ecx
.Ltmp15:
	.loc	0 62 6                          # liblzma/common/block_header_decoder.c:62:6
	jne	.LBB0_20
.Ltmp16:
# %bb.3:                                # %if.end14
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	.loc	0 66 6 is_stmt 1                # liblzma/common/block_header_decoder.c:66:6
	movzbl	1(%r15), %ecx
	movl	$8, %eax
	.loc	0 66 12 is_stmt 0               # liblzma/common/block_header_decoder.c:66:12
	testb	$60, %cl
.Ltmp17:
	.loc	0 66 6                          # liblzma/common/block_header_decoder.c:66:6
	je	.LBB0_4
.Ltmp18:
.LBB0_20:                               # %return
	#DEBUG_VALUE: lzma_block_header_decode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_block_header_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 116 1 epilogue_begin is_stmt 1 # liblzma/common/block_header_decoder.c:116:1
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
.Ltmp19:
.LBB0_4:                                # %if.end18
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	.loc	0 70 9                          # liblzma/common/block_header_decoder.c:70:9
	movq	$2, (%rsp)
.Ltmp20:
	.loc	0 0 0 is_stmt 0                 # liblzma/common/block_header_decoder.c:0:0
	leaq	16(%rbx), %rdi
	.loc	0 73 12 is_stmt 1               # liblzma/common/block_header_decoder.c:73:12
	testb	$64, %cl
.Ltmp21:
	.loc	0 73 6 is_stmt 0                # liblzma/common/block_header_decoder.c:73:6
	jne	.LBB0_5
.Ltmp22:
# %bb.8:                                # %if.else
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	.loc	0 82 26 is_stmt 1               # liblzma/common/block_header_decoder.c:82:26
	movq	$-1, (%rdi)
.Ltmp23:
.LBB0_9:                                # %if.end35
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	.loc	0 0 0 is_stmt 0                 # liblzma/common/block_header_decoder.c:0:0
	leaq	24(%rbx), %rdi
	.loc	0 86 12 is_stmt 1               # liblzma/common/block_header_decoder.c:86:12
	cmpb	$0, 1(%r15)
.Ltmp24:
	.loc	0 86 6 is_stmt 0                # liblzma/common/block_header_decoder.c:86:6
	js	.LBB0_10
.Ltmp25:
# %bb.11:                               # %if.else53
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	.loc	0 90 28 is_stmt 1               # liblzma/common/block_header_decoder.c:90:28
	movq	$-1, (%rdi)
.Ltmp26:
.LBB0_12:                               # %if.end55
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	#DEBUG_VALUE: lzma_block_header_decode:filter_count <- undef
	#DEBUG_VALUE: i <- 0
	.loc	0 94 2                          # liblzma/common/block_header_decoder.c:94:2
	movzbl	1(%r15), %ebp
	andl	$3, %ebp
	shll	$4, %ebp
	addq	$16, %rbp
	xorl	%r13d, %r13d
.Ltmp27:
	.p2align	4, 0x90
.LBB0_13:                               # %for.body66
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	#DEBUG_VALUE: i <- [DW_OP_consts 16, DW_OP_div, DW_OP_stack_value] $r13
	.loc	0 0 2 is_stmt 0                 # liblzma/common/block_header_decoder.c:0:2
	movq	32(%rbx), %rdi
.Ltmp28:
	.loc	0 95 24 is_stmt 1               # liblzma/common/block_header_decoder.c:95:24
	addq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%rsp, %rcx
	movq	%r12, %r8
	callq	lzma_filter_flags_decode@PLT
.Ltmp29:
	#DEBUG_VALUE: ret <- $eax
	.loc	0 98 11                         # liblzma/common/block_header_decoder.c:98:11
	testl	%eax, %eax
.Ltmp30:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r13
	.loc	0 0 11 is_stmt 0                # liblzma/common/block_header_decoder.c:0:11
	jne	.LBB0_21
.Ltmp31:
# %bb.14:                               # %for.cond62
                                        #   in Loop: Header=BB0_13 Depth=1
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r13
	#DEBUG_VALUE: i <- [DW_OP_consts 16, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r13
	.loc	0 94 23 is_stmt 1               # liblzma/common/block_header_decoder.c:94:23
	addq	$16, %r13
.Ltmp32:
	cmpq	%r13, %rbp
.Ltmp33:
	.loc	0 94 2 is_stmt 0                # liblzma/common/block_header_decoder.c:94:2
	jne	.LBB0_13
.Ltmp34:
# %bb.15:                               # %while.cond.preheader
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	.loc	0 0 2                           # liblzma/common/block_header_decoder.c:0:2
	movq	(%rsp), %rax
.Ltmp35:
.LBB0_16:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	.loc	0 105 16 is_stmt 1              # liblzma/common/block_header_decoder.c:105:16
	cmpq	%r12, %rax
	.loc	0 105 2 is_stmt 0               # liblzma/common/block_header_decoder.c:105:2
	jae	.LBB0_17
.Ltmp36:
# %bb.18:                               # %while.body
                                        #   in Loop: Header=BB0_16 Depth=1
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	.loc	0 106 16 is_stmt 1              # liblzma/common/block_header_decoder.c:106:16
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsp)
	.loc	0 106 20 is_stmt 0              # liblzma/common/block_header_decoder.c:106:20
	cmpb	$0, (%r15,%rax)
	movq	%rcx, %rax
.Ltmp37:
	.loc	0 106 7                         # liblzma/common/block_header_decoder.c:106:7
	je	.LBB0_16
.Ltmp38:
# %bb.19:                               # %if.then89
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	.loc	0 107 4 is_stmt 1               # liblzma/common/block_header_decoder.c:107:4
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	free_properties
.Ltmp39:
	.loc	0 0 4 is_stmt 0                 # liblzma/common/block_header_decoder.c:0:4
	movl	$8, %eax
	jmp	.LBB0_20
.Ltmp40:
.LBB0_5:                                # %do.body
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	movq	%rsp, %rcx
.Ltmp41:
	.loc	0 74 3 is_stmt 1                # liblzma/common/block_header_decoder.c:74:3
	xorl	%esi, %esi
	movq	%r15, %rdx
	movq	%r12, %r8
	callq	lzma_vli_decode@PLT
.Ltmp42:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 74 3 is_stmt 0                # liblzma/common/block_header_decoder.c:74:3
	testl	%eax, %eax
	jne	.LBB0_20
.Ltmp43:
# %bb.6:                                # %do.end
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	.loc	0 79 7 is_stmt 1                # liblzma/common/block_header_decoder.c:79:7
	movq	%rbx, %rdi
	callq	lzma_block_unpadded_size@PLT
.Ltmp44:
	.loc	0 79 39 is_stmt 0               # liblzma/common/block_header_decoder.c:79:39
	testq	%rax, %rax
.Ltmp45:
	.loc	0 79 7                          # liblzma/common/block_header_decoder.c:79:7
	jne	.LBB0_9
.Ltmp46:
# %bb.7:
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	.loc	0 0 7                           # liblzma/common/block_header_decoder.c:0:7
	movl	$9, %eax
	.loc	0 79 7                          # liblzma/common/block_header_decoder.c:79:7
	jmp	.LBB0_20
.Ltmp47:
.LBB0_21:                               # %cleanup79.thread
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r13
	#DEBUG_VALUE: ret <- $eax
	#DEBUG_VALUE: free_properties:block <- $rbx
	#DEBUG_VALUE: free_properties:allocator <- $r14
	#DEBUG_VALUE: i <- 0
	.loc	0 24 20 is_stmt 1               # liblzma/common/block_header_decoder.c:24:20
	movq	32(%rbx), %rcx
	.loc	0 24 31 is_stmt 0               # liblzma/common/block_header_decoder.c:24:31
	movq	8(%rcx), %rdi
	.loc	0 24 3                          # liblzma/common/block_header_decoder.c:24:3
	movq	%r14, %rsi
	movl	%eax, %ebp
.Ltmp48:
	#DEBUG_VALUE: ret <- $ebp
	callq	lzma_free@PLT
.Ltmp49:
	.loc	0 25 10 is_stmt 1               # liblzma/common/block_header_decoder.c:25:10
	movq	32(%rbx), %rax
	.loc	0 25 24 is_stmt 0               # liblzma/common/block_header_decoder.c:25:24
	movq	$-1, (%rax)
	.loc	0 26 10 is_stmt 1               # liblzma/common/block_header_decoder.c:26:10
	movq	32(%rbx), %rax
	.loc	0 26 29 is_stmt 0               # liblzma/common/block_header_decoder.c:26:29
	movq	$0, 8(%rax)
.Ltmp50:
	#DEBUG_VALUE: i <- 1
	.loc	0 24 20 is_stmt 1               # liblzma/common/block_header_decoder.c:24:20
	movq	32(%rbx), %rax
	.loc	0 24 31 is_stmt 0               # liblzma/common/block_header_decoder.c:24:31
	movq	24(%rax), %rdi
	.loc	0 24 3                          # liblzma/common/block_header_decoder.c:24:3
	movq	%r14, %rsi
	callq	lzma_free@PLT
.Ltmp51:
	.loc	0 25 10 is_stmt 1               # liblzma/common/block_header_decoder.c:25:10
	movq	32(%rbx), %rax
	.loc	0 25 24 is_stmt 0               # liblzma/common/block_header_decoder.c:25:24
	movq	$-1, 16(%rax)
	.loc	0 26 10 is_stmt 1               # liblzma/common/block_header_decoder.c:26:10
	movq	32(%rbx), %rax
	.loc	0 26 29 is_stmt 0               # liblzma/common/block_header_decoder.c:26:29
	movq	$0, 24(%rax)
.Ltmp52:
	#DEBUG_VALUE: i <- 2
	.loc	0 24 20 is_stmt 1               # liblzma/common/block_header_decoder.c:24:20
	movq	32(%rbx), %rax
	.loc	0 24 31 is_stmt 0               # liblzma/common/block_header_decoder.c:24:31
	movq	40(%rax), %rdi
	.loc	0 24 3                          # liblzma/common/block_header_decoder.c:24:3
	movq	%r14, %rsi
	callq	lzma_free@PLT
.Ltmp53:
	.loc	0 25 10 is_stmt 1               # liblzma/common/block_header_decoder.c:25:10
	movq	32(%rbx), %rax
	.loc	0 25 24 is_stmt 0               # liblzma/common/block_header_decoder.c:25:24
	movq	$-1, 32(%rax)
	.loc	0 26 10 is_stmt 1               # liblzma/common/block_header_decoder.c:26:10
	movq	32(%rbx), %rax
	.loc	0 26 29 is_stmt 0               # liblzma/common/block_header_decoder.c:26:29
	movq	$0, 40(%rax)
.Ltmp54:
	#DEBUG_VALUE: i <- 3
	.loc	0 24 20 is_stmt 1               # liblzma/common/block_header_decoder.c:24:20
	movq	32(%rbx), %rax
	.loc	0 24 31 is_stmt 0               # liblzma/common/block_header_decoder.c:24:31
	movq	56(%rax), %rdi
	.loc	0 24 3                          # liblzma/common/block_header_decoder.c:24:3
	movq	%r14, %rsi
	callq	lzma_free@PLT
.Ltmp55:
	.loc	0 0 3                           # liblzma/common/block_header_decoder.c:0:3
	movl	%ebp, %eax
	.loc	0 25 10 is_stmt 1               # liblzma/common/block_header_decoder.c:25:10
	movq	32(%rbx), %rcx
	.loc	0 25 24 is_stmt 0               # liblzma/common/block_header_decoder.c:25:24
	movq	$-1, 48(%rcx)
	.loc	0 26 10 is_stmt 1               # liblzma/common/block_header_decoder.c:26:10
	movq	32(%rbx), %rcx
	.loc	0 26 29 is_stmt 0               # liblzma/common/block_header_decoder.c:26:29
	movq	$0, 56(%rcx)
.Ltmp56:
	#DEBUG_VALUE: i <- 4
	.loc	0 0 29                          # liblzma/common/block_header_decoder.c:0:29
	jmp	.LBB0_20
.Ltmp57:
.LBB0_10:                               # %do.body41
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	movq	%rsp, %rcx
.Ltmp58:
	.loc	0 87 3 is_stmt 1                # liblzma/common/block_header_decoder.c:87:3
	xorl	%esi, %esi
	movq	%r15, %rdx
	movq	%r12, %r8
	callq	lzma_vli_decode@PLT
.Ltmp59:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 87 3 is_stmt 0                # liblzma/common/block_header_decoder.c:87:3
	testl	%eax, %eax
	jne	.LBB0_20
	jmp	.LBB0_12
.Ltmp60:
.LBB0_17:
	#DEBUG_VALUE: lzma_block_header_decode:block <- $rbx
	#DEBUG_VALUE: lzma_block_header_decode:allocator <- $r14
	#DEBUG_VALUE: lzma_block_header_decode:in <- $r15
	#DEBUG_VALUE: lzma_block_header_decode:in_size <- $r12d
	.loc	0 0 3                           # liblzma/common/block_header_decoder.c:0:3
	xorl	%eax, %eax
	.loc	0 105 2 is_stmt 1               # liblzma/common/block_header_decoder.c:105:2
	jmp	.LBB0_20
.Ltmp61:
.Lfunc_end0:
	.size	lzma_block_header_decode, .Lfunc_end0-lzma_block_header_decode
	.cfi_endproc
	.file	5 "liblzma/api/lzma" "block.h" md5 0xbf8cbafce550217b909c63081e414910
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function free_properties
	.type	free_properties,@function
free_properties:                        # @free_properties
.Lfunc_begin1:
	.loc	0 19 0                          # liblzma/common/block_header_decoder.c:19:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: free_properties:block <- $rdi
	#DEBUG_VALUE: free_properties:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp62:
	#DEBUG_VALUE: i <- 0
	.loc	0 24 20 prologue_end            # liblzma/common/block_header_decoder.c:24:20
	movq	32(%rdi), %rax
	.loc	0 24 31 is_stmt 0               # liblzma/common/block_header_decoder.c:24:31
	movq	8(%rax), %rdi
.Ltmp63:
	#DEBUG_VALUE: free_properties:block <- $rbx
	.loc	0 24 3                          # liblzma/common/block_header_decoder.c:24:3
	callq	lzma_free@PLT
.Ltmp64:
	#DEBUG_VALUE: free_properties:allocator <- $r14
	.loc	0 25 10 is_stmt 1               # liblzma/common/block_header_decoder.c:25:10
	movq	32(%rbx), %rax
	.loc	0 25 24 is_stmt 0               # liblzma/common/block_header_decoder.c:25:24
	movq	$-1, (%rax)
	.loc	0 26 10 is_stmt 1               # liblzma/common/block_header_decoder.c:26:10
	movq	32(%rbx), %rax
	.loc	0 26 29 is_stmt 0               # liblzma/common/block_header_decoder.c:26:29
	movq	$0, 8(%rax)
.Ltmp65:
	#DEBUG_VALUE: i <- 1
	.loc	0 24 20 is_stmt 1               # liblzma/common/block_header_decoder.c:24:20
	movq	32(%rbx), %rax
	.loc	0 24 31 is_stmt 0               # liblzma/common/block_header_decoder.c:24:31
	movq	24(%rax), %rdi
	.loc	0 24 3                          # liblzma/common/block_header_decoder.c:24:3
	movq	%r14, %rsi
	callq	lzma_free@PLT
.Ltmp66:
	.loc	0 25 10 is_stmt 1               # liblzma/common/block_header_decoder.c:25:10
	movq	32(%rbx), %rax
	.loc	0 25 24 is_stmt 0               # liblzma/common/block_header_decoder.c:25:24
	movq	$-1, 16(%rax)
	.loc	0 26 10 is_stmt 1               # liblzma/common/block_header_decoder.c:26:10
	movq	32(%rbx), %rax
	.loc	0 26 29 is_stmt 0               # liblzma/common/block_header_decoder.c:26:29
	movq	$0, 24(%rax)
.Ltmp67:
	#DEBUG_VALUE: i <- 2
	.loc	0 24 20 is_stmt 1               # liblzma/common/block_header_decoder.c:24:20
	movq	32(%rbx), %rax
	.loc	0 24 31 is_stmt 0               # liblzma/common/block_header_decoder.c:24:31
	movq	40(%rax), %rdi
	.loc	0 24 3                          # liblzma/common/block_header_decoder.c:24:3
	movq	%r14, %rsi
	callq	lzma_free@PLT
.Ltmp68:
	.loc	0 25 10 is_stmt 1               # liblzma/common/block_header_decoder.c:25:10
	movq	32(%rbx), %rax
	.loc	0 25 24 is_stmt 0               # liblzma/common/block_header_decoder.c:25:24
	movq	$-1, 32(%rax)
	.loc	0 26 10 is_stmt 1               # liblzma/common/block_header_decoder.c:26:10
	movq	32(%rbx), %rax
	.loc	0 26 29 is_stmt 0               # liblzma/common/block_header_decoder.c:26:29
	movq	$0, 40(%rax)
.Ltmp69:
	#DEBUG_VALUE: i <- 3
	.loc	0 24 20 is_stmt 1               # liblzma/common/block_header_decoder.c:24:20
	movq	32(%rbx), %rax
	.loc	0 24 31 is_stmt 0               # liblzma/common/block_header_decoder.c:24:31
	movq	56(%rax), %rdi
	.loc	0 24 3                          # liblzma/common/block_header_decoder.c:24:3
	movq	%r14, %rsi
	callq	lzma_free@PLT
.Ltmp70:
	.loc	0 25 10 is_stmt 1               # liblzma/common/block_header_decoder.c:25:10
	movq	32(%rbx), %rax
	.loc	0 25 24 is_stmt 0               # liblzma/common/block_header_decoder.c:25:24
	movq	$-1, 48(%rax)
	.loc	0 26 10 is_stmt 1               # liblzma/common/block_header_decoder.c:26:10
	movq	32(%rbx), %rax
	.loc	0 26 29 is_stmt 0               # liblzma/common/block_header_decoder.c:26:29
	movq	$0, 56(%rax)
.Ltmp71:
	#DEBUG_VALUE: i <- 4
	.loc	0 29 2 epilogue_begin is_stmt 1 # liblzma/common/block_header_decoder.c:29:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp72:
	#DEBUG_VALUE: free_properties:block <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp73:
	#DEBUG_VALUE: free_properties:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp74:
.Lfunc_end1:
	.size	free_properties, .Lfunc_end1-free_properties
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	13                              # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
	.long	.Ldebug_loc7-.Lloclists_table_base0
	.long	.Ldebug_loc8-.Lloclists_table_base0
	.long	.Ldebug_loc9-.Lloclists_table_base0
	.long	.Ldebug_loc10-.Lloclists_table_base0
	.long	.Ldebug_loc11-.Lloclists_table_base0
	.long	.Ldebug_loc12-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	6                               # Loc expr size
	.byte	125                             # DW_OP_breg13
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	125                             # DW_OP_breg13
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	9                               # Loc expr size
	.byte	125                             # DW_OP_breg13
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	125                             # DW_OP_breg13
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	116                             # DW_AT_rnglists_base
	.byte	23                              # DW_FORM_sec_offset
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x480 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x2d DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x33:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x36:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x39:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3c:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3f:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x42:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x45:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x48:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4b:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4e:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x51:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x54:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x58:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x5c:0x15 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x64:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x67:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6a:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6d:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x71:0xc DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x79:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x7d:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x7e:0x8 DW_TAG_typedef
	.long	134                             # DW_AT_type
	.byte	22                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x86:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x8e:0x1f DW_TAG_subprogram
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x92:0x8 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	173                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x9a:0x8 DW_TAG_formal_parameter
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	585                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa2:0xa DW_TAG_lexical_block
	.byte	10                              # Abbrev [10] 0xa3:0x8 DW_TAG_variable
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	661                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xad:0x5 DW_TAG_pointer_type
	.long	178                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xb2:0x8 DW_TAG_typedef
	.long	186                             # DW_AT_type
	.byte	69                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xba:0x113 DW_TAG_structure_type
	.byte	208                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xbe:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	126                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc7:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	126                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xd0:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	461                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xd9:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	469                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xe2:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	469                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xeb:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	497                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xf4:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	533                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xfd:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x106:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x10f:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x118:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	126                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x121:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	126                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x12a:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	469                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x133:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	469                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x13c:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	469                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x145:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	469                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x14e:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	469                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x157:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	469                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x160:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	569                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x169:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	569                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	188                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x172:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	569                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x17b:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	569                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x184:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	577                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	200                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x18d:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	577                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	201                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x196:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	577                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.byte	202                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x19f:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	577                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	203                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1a8:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	577                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	204                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1b1:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	577                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	205                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1ba:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	577                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	206                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1c3:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	577                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	207                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1cd:0x8 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	28                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1d5:0x8 DW_TAG_typedef
	.long	477                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1dd:0x8 DW_TAG_typedef
	.long	485                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1e5:0x8 DW_TAG_typedef
	.long	493                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1ed:0x4 DW_TAG_base_type
	.byte	30                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x1f1:0x5 DW_TAG_pointer_type
	.long	502                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1f6:0x8 DW_TAG_typedef
	.long	510                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1fe:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x202:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	469                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x20b:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x215:0xc DW_TAG_array_type
	.long	545                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x21a:0x6 DW_TAG_subrange_type
	.long	565                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x221:0x8 DW_TAG_typedef
	.long	553                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x229:0x8 DW_TAG_typedef
	.long	561                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x231:0x4 DW_TAG_base_type
	.byte	40                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	16                              # Abbrev [16] 0x235:0x4 DW_TAG_base_type
	.byte	43                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	6                               # Abbrev [6] 0x239:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x241:0x8 DW_TAG_typedef
	.long	561                             # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x249:0x5 DW_TAG_pointer_type
	.long	590                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x24e:0x9 DW_TAG_typedef
	.long	599                             # DW_AT_type
	.byte	75                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x257:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x25c:0xa DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	635                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x266:0xa DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	669                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x270:0xa DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x27b:0x5 DW_TAG_pointer_type
	.long	640                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x280:0x15 DW_TAG_subroutine_type
	.long	125                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x285:0x5 DW_TAG_formal_parameter
	.long	125                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x28a:0x5 DW_TAG_formal_parameter
	.long	661                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x28f:0x5 DW_TAG_formal_parameter
	.long	661                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x295:0x8 DW_TAG_typedef
	.long	493                             # DW_AT_type
	.byte	72                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x29d:0x5 DW_TAG_pointer_type
	.long	674                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x2a2:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x2a3:0x5 DW_TAG_formal_parameter
	.long	125                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2a8:0x5 DW_TAG_formal_parameter
	.long	125                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x2ae:0xf4 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	999                             # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x2bd:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	173                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x2c6:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	585                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x2cf:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	954                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x2d8:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	661                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x2e3:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	1153                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2ec:0x8 DW_TAG_variable
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	1153                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x2f4:0x10 DW_TAG_lexical_block
	.byte	0                               # DW_AT_low_pc
	.long	.Ltmp5-.Lfunc_begin0            # DW_AT_high_pc
	.byte	26                              # Abbrev [26] 0x2fa:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	661                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x304:0x10 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp43-.Ltmp41                 # DW_AT_high_pc
	.byte	26                              # Abbrev [26] 0x30a:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	1158                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x314:0x10 DW_TAG_lexical_block
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp60-.Ltmp58                 # DW_AT_high_pc
	.byte	26                              # Abbrev [26] 0x31a:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	1158                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x324:0x41 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	26                              # Abbrev [26] 0x326:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.long	661                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x32f:0x35 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	26                              # Abbrev [26] 0x331:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.long	1158                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x33a:0x29 DW_TAG_inlined_subroutine
	.long	142                             # DW_AT_abstract_origin
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp57-.Ltmp47                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	99                              # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x347:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	146                             # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x34e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	154                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x355:0xd DW_TAG_lexical_block
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp57-.Ltmp47                 # DW_AT_high_pc
	.byte	31                              # Abbrev [31] 0x35b:0x6 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.long	163                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x365:0x6 DW_TAG_call_site
	.long	930                             # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x36b:0x6 DW_TAG_call_site
	.long	964                             # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x371:0x6 DW_TAG_call_site
	.long	1012                            # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x377:0x6 DW_TAG_call_site
	.long	1074                            # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x37d:0x6 DW_TAG_call_site
	.long	1113                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x383:0x6 DW_TAG_call_site
	.long	1138                            # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x389:0x6 DW_TAG_call_site
	.long	1138                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x38f:0x6 DW_TAG_call_site
	.long	1138                            # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x395:0x6 DW_TAG_call_site
	.long	1138                            # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x39b:0x6 DW_TAG_call_site
	.long	1074                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x3a2:0x18 DW_TAG_subprogram
	.byte	77                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	126                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x3aa:0x5 DW_TAG_formal_parameter
	.long	954                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x3af:0x5 DW_TAG_formal_parameter
	.long	661                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x3b4:0x5 DW_TAG_formal_parameter
	.long	126                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x3ba:0x5 DW_TAG_pointer_type
	.long	959                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x3bf:0x5 DW_TAG_const_type
	.long	545                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x3c4:0x23 DW_TAG_subprogram
	.byte	78                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	421                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	999                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x3cd:0x5 DW_TAG_formal_parameter
	.long	497                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x3d2:0x5 DW_TAG_formal_parameter
	.long	585                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x3d7:0x5 DW_TAG_formal_parameter
	.long	954                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x3dc:0x5 DW_TAG_formal_parameter
	.long	1007                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x3e1:0x5 DW_TAG_formal_parameter
	.long	661                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3e7:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	79                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3ef:0x5 DW_TAG_pointer_type
	.long	661                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x3f4:0x3e DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	142                             # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x400:0x6 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.long	146                             # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x406:0x6 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.long	154                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x40c:0xd DW_TAG_lexical_block
	.byte	15                              # DW_AT_low_pc
	.long	.Ltmp71-.Ltmp62                 # DW_AT_high_pc
	.byte	31                              # Abbrev [31] 0x412:0x6 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.long	163                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x419:0x6 DW_TAG_call_site
	.long	1138                            # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x41f:0x6 DW_TAG_call_site
	.long	1138                            # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x425:0x6 DW_TAG_call_site
	.long	1138                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	32                              # Abbrev [32] 0x42b:0x6 DW_TAG_call_site
	.long	1138                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x432:0x22 DW_TAG_subprogram
	.byte	80                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	999                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x43a:0x5 DW_TAG_formal_parameter
	.long	1108                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x43f:0x5 DW_TAG_formal_parameter
	.long	1007                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x444:0x5 DW_TAG_formal_parameter
	.long	954                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x449:0x5 DW_TAG_formal_parameter
	.long	1007                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x44e:0x5 DW_TAG_formal_parameter
	.long	661                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x454:0x5 DW_TAG_pointer_type
	.long	469                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x459:0xf DW_TAG_subprogram
	.byte	81                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	469                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x462:0x5 DW_TAG_formal_parameter
	.long	1128                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x468:0x5 DW_TAG_pointer_type
	.long	1133                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x46d:0x5 DW_TAG_const_type
	.long	178                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x472:0xf DW_TAG_subprogram
	.byte	82                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x476:0x5 DW_TAG_formal_parameter
	.long	125                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x47b:0x5 DW_TAG_formal_parameter
	.long	585                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x481:0x5 DW_TAG_const_type
	.long	661                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x486:0x5 DW_TAG_const_type
	.long	999                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	2                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	364                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/block_header_decoder.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=143
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=175
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=188
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=196
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=212
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=226
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=249
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=264
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=279
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=299
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=317
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=336
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=352
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=367
.Linfo_string16:
	.asciz	"LZMA_CHECK_NONE"               # string offset=383
.Linfo_string17:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=399
.Linfo_string18:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=416
.Linfo_string19:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=433
.Linfo_string20:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=451
.Linfo_string21:
	.asciz	"__uint32_t"                    # string offset=470
.Linfo_string22:
	.asciz	"uint32_t"                      # string offset=481
.Linfo_string23:
	.asciz	"free_properties"               # string offset=490
.Linfo_string24:
	.asciz	"block"                         # string offset=506
.Linfo_string25:
	.asciz	"version"                       # string offset=512
.Linfo_string26:
	.asciz	"header_size"                   # string offset=520
.Linfo_string27:
	.asciz	"check"                         # string offset=532
.Linfo_string28:
	.asciz	"lzma_check"                    # string offset=538
.Linfo_string29:
	.asciz	"compressed_size"               # string offset=549
.Linfo_string30:
	.asciz	"unsigned long"                 # string offset=565
.Linfo_string31:
	.asciz	"__uint64_t"                    # string offset=579
.Linfo_string32:
	.asciz	"uint64_t"                      # string offset=590
.Linfo_string33:
	.asciz	"lzma_vli"                      # string offset=599
.Linfo_string34:
	.asciz	"uncompressed_size"             # string offset=608
.Linfo_string35:
	.asciz	"filters"                       # string offset=626
.Linfo_string36:
	.asciz	"id"                            # string offset=634
.Linfo_string37:
	.asciz	"options"                       # string offset=637
.Linfo_string38:
	.asciz	"lzma_filter"                   # string offset=645
.Linfo_string39:
	.asciz	"raw_check"                     # string offset=657
.Linfo_string40:
	.asciz	"unsigned char"                 # string offset=667
.Linfo_string41:
	.asciz	"__uint8_t"                     # string offset=681
.Linfo_string42:
	.asciz	"uint8_t"                       # string offset=691
.Linfo_string43:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=699
.Linfo_string44:
	.asciz	"reserved_ptr1"                 # string offset=719
.Linfo_string45:
	.asciz	"reserved_ptr2"                 # string offset=733
.Linfo_string46:
	.asciz	"reserved_ptr3"                 # string offset=747
.Linfo_string47:
	.asciz	"reserved_int1"                 # string offset=761
.Linfo_string48:
	.asciz	"reserved_int2"                 # string offset=775
.Linfo_string49:
	.asciz	"reserved_int3"                 # string offset=789
.Linfo_string50:
	.asciz	"reserved_int4"                 # string offset=803
.Linfo_string51:
	.asciz	"reserved_int5"                 # string offset=817
.Linfo_string52:
	.asciz	"reserved_int6"                 # string offset=831
.Linfo_string53:
	.asciz	"reserved_int7"                 # string offset=845
.Linfo_string54:
	.asciz	"reserved_int8"                 # string offset=859
.Linfo_string55:
	.asciz	"reserved_enum1"                # string offset=873
.Linfo_string56:
	.asciz	"lzma_reserved_enum"            # string offset=888
.Linfo_string57:
	.asciz	"reserved_enum2"                # string offset=907
.Linfo_string58:
	.asciz	"reserved_enum3"                # string offset=922
.Linfo_string59:
	.asciz	"reserved_enum4"                # string offset=937
.Linfo_string60:
	.asciz	"reserved_bool1"                # string offset=952
.Linfo_string61:
	.asciz	"lzma_bool"                     # string offset=967
.Linfo_string62:
	.asciz	"reserved_bool2"                # string offset=977
.Linfo_string63:
	.asciz	"reserved_bool3"                # string offset=992
.Linfo_string64:
	.asciz	"reserved_bool4"                # string offset=1007
.Linfo_string65:
	.asciz	"reserved_bool5"                # string offset=1022
.Linfo_string66:
	.asciz	"reserved_bool6"                # string offset=1037
.Linfo_string67:
	.asciz	"reserved_bool7"                # string offset=1052
.Linfo_string68:
	.asciz	"reserved_bool8"                # string offset=1067
.Linfo_string69:
	.asciz	"lzma_block"                    # string offset=1082
.Linfo_string70:
	.asciz	"allocator"                     # string offset=1093
.Linfo_string71:
	.asciz	"alloc"                         # string offset=1103
.Linfo_string72:
	.asciz	"size_t"                        # string offset=1109
.Linfo_string73:
	.asciz	"free"                          # string offset=1116
.Linfo_string74:
	.asciz	"opaque"                        # string offset=1121
.Linfo_string75:
	.asciz	"lzma_allocator"                # string offset=1128
.Linfo_string76:
	.asciz	"i"                             # string offset=1143
.Linfo_string77:
	.asciz	"lzma_crc32"                    # string offset=1145
.Linfo_string78:
	.asciz	"lzma_filter_flags_decode"      # string offset=1156
.Linfo_string79:
	.asciz	"lzma_ret"                      # string offset=1181
.Linfo_string80:
	.asciz	"lzma_vli_decode"               # string offset=1190
.Linfo_string81:
	.asciz	"lzma_block_unpadded_size"      # string offset=1206
.Linfo_string82:
	.asciz	"lzma_free"                     # string offset=1231
.Linfo_string83:
	.asciz	"lzma_block_header_decode"      # string offset=1241
.Linfo_string84:
	.asciz	"in_pos"                        # string offset=1266
.Linfo_string85:
	.asciz	"in"                            # string offset=1273
.Linfo_string86:
	.asciz	"in_size"                       # string offset=1276
.Linfo_string87:
	.asciz	"ret"                           # string offset=1284
.Linfo_string88:
	.asciz	"ret_"                          # string offset=1288
.Linfo_string89:
	.asciz	"filter_count"                  # string offset=1293
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.long	.Linfo_string19
	.long	.Linfo_string20
	.long	.Linfo_string21
	.long	.Linfo_string22
	.long	.Linfo_string23
	.long	.Linfo_string24
	.long	.Linfo_string25
	.long	.Linfo_string26
	.long	.Linfo_string27
	.long	.Linfo_string28
	.long	.Linfo_string29
	.long	.Linfo_string30
	.long	.Linfo_string31
	.long	.Linfo_string32
	.long	.Linfo_string33
	.long	.Linfo_string34
	.long	.Linfo_string35
	.long	.Linfo_string36
	.long	.Linfo_string37
	.long	.Linfo_string38
	.long	.Linfo_string39
	.long	.Linfo_string40
	.long	.Linfo_string41
	.long	.Linfo_string42
	.long	.Linfo_string43
	.long	.Linfo_string44
	.long	.Linfo_string45
	.long	.Linfo_string46
	.long	.Linfo_string47
	.long	.Linfo_string48
	.long	.Linfo_string49
	.long	.Linfo_string50
	.long	.Linfo_string51
	.long	.Linfo_string52
	.long	.Linfo_string53
	.long	.Linfo_string54
	.long	.Linfo_string55
	.long	.Linfo_string56
	.long	.Linfo_string57
	.long	.Linfo_string58
	.long	.Linfo_string59
	.long	.Linfo_string60
	.long	.Linfo_string61
	.long	.Linfo_string62
	.long	.Linfo_string63
	.long	.Linfo_string64
	.long	.Linfo_string65
	.long	.Linfo_string66
	.long	.Linfo_string67
	.long	.Linfo_string68
	.long	.Linfo_string69
	.long	.Linfo_string70
	.long	.Linfo_string71
	.long	.Linfo_string72
	.long	.Linfo_string73
	.long	.Linfo_string74
	.long	.Linfo_string75
	.long	.Linfo_string76
	.long	.Linfo_string77
	.long	.Linfo_string78
	.long	.Linfo_string79
	.long	.Linfo_string80
	.long	.Linfo_string81
	.long	.Linfo_string82
	.long	.Linfo_string83
	.long	.Linfo_string84
	.long	.Linfo_string85
	.long	.Linfo_string86
	.long	.Linfo_string87
	.long	.Linfo_string88
	.long	.Linfo_string89
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp41
	.quad	.Ltmp58
	.quad	.Ltmp47
	.quad	.Ltmp13
	.quad	.Ltmp29
	.quad	.Ltmp39
	.quad	.Ltmp42
	.quad	.Ltmp44
	.quad	.Ltmp49
	.quad	.Ltmp51
	.quad	.Ltmp53
	.quad	.Ltmp55
	.quad	.Ltmp59
	.quad	.Lfunc_begin1
	.quad	.Ltmp62
	.quad	.Ltmp64
	.quad	.Ltmp66
	.quad	.Ltmp68
	.quad	.Ltmp70
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
