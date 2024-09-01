	.text
	.file	"block_util.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/block_util.c" md5 0x76359d4b7b6eb4ad30a646e248fa0975
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.globl	lzma_block_compressed_size      # -- Begin function lzma_block_compressed_size
	.p2align	4, 0x90
	.type	lzma_block_compressed_size,@function
lzma_block_compressed_size:             # @lzma_block_compressed_size
.Lfunc_begin0:
	.loc	0 19 0                          # liblzma/common/block_util.c:19:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- $rsi
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	movl	$11, %eax
.Ltmp0:
	.loc	0 54 12 prologue_end            # liblzma/common/block_util.c:54:12
	testq	%rdi, %rdi
	.loc	0 54 20 is_stmt 0               # liblzma/common/block_util.c:54:20
	je	.LBB0_13
.Ltmp1:
# %bb.1:                                # %lor.lhs.false.i
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- $rsi
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 54 38                         # liblzma/common/block_util.c:54:38
	cmpl	$0, (%rdi)
	.loc	0 55 4 is_stmt 1                # liblzma/common/block_util.c:55:4
	je	.LBB0_2
.Ltmp2:
.LBB0_13:                               # %return
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- $rsi
	.loc	0 42 1                          # liblzma/common/block_util.c:42:1
	retq
.Ltmp3:
.LBB0_2:                                # %lor.lhs.false2.i
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- $rsi
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	.loc	0 55 14                         # liblzma/common/block_util.c:55:14
	movl	4(%rdi), %ebx
	.loc	0 56 4                          # liblzma/common/block_util.c:56:4
	leal	-8(%rbx), %ecx
	cmpl	$1017, %ecx                     # imm = 0x3F9
	setae	%cl
	testb	$3, %bl
	setne	%dl
	orb	%cl, %dl
	jne	.LBB0_12
.Ltmp4:
# %bb.3:                                # %lor.lhs.false9.i
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- $rsi
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 58 8                          # liblzma/common/block_util.c:58:8
	movq	16(%rdi), %r15
	cmpq	$-1, %r15
	setl	%cl
	testq	%r15, %r15
	sete	%dl
	orb	%cl, %dl
	je	.LBB0_4
.Ltmp5:
.LBB0_12:
	#DEBUG_VALUE: lzma_block_compressed_size:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 0 8 is_stmt 0                 # liblzma/common/block_util.c:0:8
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.loc	0 42 1 is_stmt 1                # liblzma/common/block_util.c:42:1
	retq
.Ltmp6:
.LBB0_4:                                # %lor.lhs.false17.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- $rsi
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 0 1 is_stmt 0                 # liblzma/common/block_util.c:0:1
	movq	%rsi, %r14
.Ltmp7:
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- $r14
	.loc	0 58 8 is_stmt 1                # liblzma/common/block_util.c:58:8
	cmpq	$-1, %r15
	sete	%dl
	.loc	0 60 29                         # liblzma/common/block_util.c:60:29
	movl	8(%rdi), %ecx
	.loc	0 60 36 is_stmt 0               # liblzma/common/block_util.c:60:36
	cmpl	$16, %ecx
	setae	%sil
.Ltmp8:
	.loc	0 54 6 is_stmt 1                # liblzma/common/block_util.c:54:6
	orb	%dl, %sil
	je	.LBB0_5
.Ltmp9:
# %bb.7:                                # %lzma_block_unpadded_size.exit
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- $r14
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 60 36                         # liblzma/common/block_util.c:60:36
	cmpl	$15, %ecx
.Ltmp10:
	.loc	0 21 6                          # liblzma/common/block_util.c:21:6
	ja	.LBB0_12
	jmp	.LBB0_8
.Ltmp11:
.LBB0_5:                                # %if.end22.i
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- $r14
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 70 5                          # liblzma/common/block_util.c:70:5
	addq	%rbx, %r15
	movq	%rdi, %rbx
.Ltmp12:
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rbx
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $rbx
	.loc	0 71 7                          # liblzma/common/block_util.c:71:7
	movl	%ecx, %edi
	callq	lzma_check_size@PLT
.Ltmp13:
	movl	%eax, %ecx
	movl	$11, %eax
	movl	%ecx, %ecx
	.loc	0 71 5 is_stmt 0                # liblzma/common/block_util.c:71:5
	addq	%r15, %rcx
.Ltmp14:
	#DEBUG_VALUE: lzma_block_unpadded_size:unpadded_size <- $rcx
	.loc	0 0 5                           # liblzma/common/block_util.c:0:5
	movabsq	$9223372036854775804, %rdx      # imm = 0x7FFFFFFFFFFFFFFC
.Ltmp15:
	.loc	0 74 20 is_stmt 1               # liblzma/common/block_util.c:74:20
	cmpq	%rdx, %rcx
	ja	.LBB0_12
.Ltmp16:
# %bb.6:                                # %if.end22.i.if.end_crit_edge
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $rbx
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- $r14
	.loc	0 0 20 is_stmt 0                # liblzma/common/block_util.c:0:20
	movq	%rbx, %rdi
	.loc	0 24 41 is_stmt 1               # liblzma/common/block_util.c:24:41
	movl	4(%rbx), %ebx
.Ltmp17:
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $rdi
	.loc	0 25 29                         # liblzma/common/block_util.c:25:29
	movl	8(%rdi), %ecx
.Ltmp18:
.LBB0_8:                                # %if.end
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- $r14
	.loc	0 0 29 is_stmt 0                # liblzma/common/block_util.c:0:29
	movq	%rdi, %r15
.Ltmp19:
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $r15
	.loc	0 25 6                          # liblzma/common/block_util.c:25:6
	movl	%ecx, %edi
	callq	lzma_check_size@PLT
.Ltmp20:
	movl	%eax, %ecx
	.loc	0 25 4                          # liblzma/common/block_util.c:25:4
	addl	%ebx, %ecx
.Ltmp21:
	#DEBUG_VALUE: lzma_block_compressed_size:container_size <- $ecx
	.loc	0 0 4                           # liblzma/common/block_util.c:0:4
	movl	$9, %eax
.Ltmp22:
	.loc	0 28 20 is_stmt 1               # liblzma/common/block_util.c:28:20
	subq	%rcx, %r14
.Ltmp23:
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 28 6 is_stmt 0                # liblzma/common/block_util.c:28:6
	jbe	.LBB0_12
.Ltmp24:
# %bb.9:                                # %if.end5
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $r15
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_block_compressed_size:container_size <- $ecx
	#DEBUG_VALUE: lzma_block_compressed_size:compressed_size <- undef
	.loc	0 0 6                           # liblzma/common/block_util.c:0:6
	movq	%r14, %rcx
.Ltmp25:
	.loc	0 35 13 is_stmt 1               # liblzma/common/block_util.c:35:13
	movq	16(%r15), %rdx
	.loc	0 35 29 is_stmt 0               # liblzma/common/block_util.c:35:29
	cmpq	$-1, %rdx
	.loc	0 36 4 is_stmt 1                # liblzma/common/block_util.c:36:4
	je	.LBB0_11
.Ltmp26:
# %bb.10:                               # %if.end5
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $r15
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- [DW_OP_LLVM_entry_value 1] $rsi
	cmpq	%rcx, %rdx
	jne	.LBB0_12
.Ltmp27:
.LBB0_11:                               # %if.end14
	#DEBUG_VALUE: lzma_block_compressed_size:block <- $r15
	#DEBUG_VALUE: lzma_block_compressed_size:unpadded_size <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 39 25                         # liblzma/common/block_util.c:39:25
	movq	%rcx, 16(%r15)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp28:
	#DEBUG_VALUE: lzma_block_compressed_size:block <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.loc	0 42 1                          # liblzma/common/block_util.c:42:1
	retq
.Ltmp29:
.Lfunc_end0:
	.size	lzma_block_compressed_size, .Lfunc_end0-lzma_block_compressed_size
	.cfi_endproc
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	5 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	6 "liblzma/api/lzma" "block.h" md5 0xbf8cbafce550217b909c63081e414910
	.file	7 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
                                        # -- End function
	.globl	lzma_block_unpadded_size        # -- Begin function lzma_block_unpadded_size
	.p2align	4, 0x90
	.type	lzma_block_unpadded_size,@function
lzma_block_unpadded_size:               # @lzma_block_unpadded_size
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 54 12 prologue_end            # liblzma/common/block_util.c:54:12
	testq	%rdi, %rdi
	.loc	0 54 20 is_stmt 0               # liblzma/common/block_util.c:54:20
	je	.LBB1_1
.Ltmp30:
# %bb.3:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 54 38                         # liblzma/common/block_util.c:54:38
	cmpl	$0, (%rdi)
	.loc	0 55 4 is_stmt 1                # liblzma/common/block_util.c:55:4
	jne	.LBB1_1
.Ltmp31:
# %bb.4:                                # %lor.lhs.false2
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 55 14 is_stmt 0               # liblzma/common/block_util.c:55:14
	movl	4(%rdi), %ecx
	.loc	0 56 4 is_stmt 1                # liblzma/common/block_util.c:56:4
	leal	-8(%rcx), %eax
	cmpl	$1017, %eax                     # imm = 0x3F9
	setae	%al
	testb	$3, %cl
	setne	%dl
	orb	%al, %dl
	jne	.LBB1_1
.Ltmp32:
# %bb.5:                                # %lor.lhs.false9
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 58 8                          # liblzma/common/block_util.c:58:8
	movq	16(%rdi), %rbx
	cmpq	$-1, %rbx
	setl	%al
	testq	%rbx, %rbx
	sete	%dl
	orb	%al, %dl
	je	.LBB1_7
.Ltmp33:
# %bb.6:
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 0 8 is_stmt 0                 # liblzma/common/block_util.c:0:8
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.loc	0 78 1 is_stmt 1                # liblzma/common/block_util.c:78:1
	retq
.Ltmp34:
.LBB1_1:
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 0 1 is_stmt 0                 # liblzma/common/block_util.c:0:1
	xorl	%eax, %eax
	.loc	0 78 1                          # liblzma/common/block_util.c:78:1
	retq
.Ltmp35:
.LBB1_7:                                # %lor.lhs.false17
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 58 8 is_stmt 1                # liblzma/common/block_util.c:58:8
	cmpq	$-1, %rbx
	sete	%dl
	.loc	0 60 29                         # liblzma/common/block_util.c:60:29
	movl	8(%rdi), %edi
.Ltmp36:
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 54 6                          # liblzma/common/block_util.c:54:6
	xorl	%eax, %eax
.Ltmp37:
	.loc	0 60 36                         # liblzma/common/block_util.c:60:36
	cmpl	$16, %edi
	setae	%sil
.Ltmp38:
	.loc	0 54 6                          # liblzma/common/block_util.c:54:6
	sbbq	%rax, %rax
	orb	%dl, %sil
	jne	.LBB1_9
.Ltmp39:
# %bb.8:                                # %if.end22
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 70 5                          # liblzma/common/block_util.c:70:5
	addq	%rcx, %rbx
	.loc	0 71 7                          # liblzma/common/block_util.c:71:7
	callq	lzma_check_size@PLT
.Ltmp40:
	movl	%eax, %ecx
	.loc	0 71 5 is_stmt 0                # liblzma/common/block_util.c:71:5
	addq	%rbx, %rcx
.Ltmp41:
	#DEBUG_VALUE: lzma_block_unpadded_size:unpadded_size <- $rcx
	.loc	0 0 5                           # liblzma/common/block_util.c:0:5
	xorl	%eax, %eax
	movabsq	$9223372036854775804, %rdx      # imm = 0x7FFFFFFFFFFFFFFC
.Ltmp42:
	.loc	0 74 20 is_stmt 1               # liblzma/common/block_util.c:74:20
	cmpq	%rdx, %rcx
.Ltmp43:
	.loc	0 0 0 is_stmt 0                 # liblzma/common/block_util.c:0:0
	cmovbeq	%rcx, %rax
.Ltmp44:
.LBB1_9:
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- [DW_OP_LLVM_entry_value 1] $rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.loc	0 78 1 is_stmt 1                # liblzma/common/block_util.c:78:1
	retq
.Ltmp45:
.Lfunc_end1:
	.size	lzma_block_unpadded_size, .Lfunc_end1-lzma_block_unpadded_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_block_total_size           # -- Begin function lzma_block_total_size
	.p2align	4, 0x90
	.type	lzma_block_total_size,@function
lzma_block_total_size:                  # @lzma_block_total_size
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_block_total_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 54 12 prologue_end            # liblzma/common/block_util.c:54:12
	testq	%rdi, %rdi
	.loc	0 54 20 is_stmt 0               # liblzma/common/block_util.c:54:20
	je	.LBB2_1
.Ltmp46:
# %bb.3:                                # %lor.lhs.false.i
	#DEBUG_VALUE: lzma_block_total_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 54 38                         # liblzma/common/block_util.c:54:38
	cmpl	$0, (%rdi)
	.loc	0 55 4 is_stmt 1                # liblzma/common/block_util.c:55:4
	jne	.LBB2_1
.Ltmp47:
# %bb.4:                                # %lor.lhs.false2.i
	#DEBUG_VALUE: lzma_block_total_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 55 14 is_stmt 0               # liblzma/common/block_util.c:55:14
	movl	4(%rdi), %eax
	.loc	0 56 4 is_stmt 1                # liblzma/common/block_util.c:56:4
	leal	-8(%rax), %ecx
	cmpl	$1017, %ecx                     # imm = 0x3F9
	setae	%cl
	testb	$3, %al
	setne	%dl
	orb	%cl, %dl
	jne	.LBB2_1
.Ltmp48:
# %bb.5:                                # %lor.lhs.false9.i
	#DEBUG_VALUE: lzma_block_total_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 58 8                          # liblzma/common/block_util.c:58:8
	movq	16(%rdi), %rbx
	cmpq	$-1, %rbx
	setl	%cl
	testq	%rbx, %rbx
	sete	%dl
	orb	%cl, %dl
	je	.LBB2_7
.Ltmp49:
# %bb.6:
	#DEBUG_VALUE: lzma_block_total_size:block <- $rdi
	.loc	0 0 8 is_stmt 0                 # liblzma/common/block_util.c:0:8
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.Ltmp50:
	#DEBUG_VALUE: lzma_block_total_size:unpadded_size <- $rax
	.loc	0 89 2 is_stmt 1                # liblzma/common/block_util.c:89:2
	retq
.Ltmp51:
.LBB2_1:
	#DEBUG_VALUE: lzma_block_total_size:block <- $rdi
	.loc	0 0 2 is_stmt 0                 # liblzma/common/block_util.c:0:2
	xorl	%eax, %eax
.Ltmp52:
	#DEBUG_VALUE: lzma_block_total_size:unpadded_size <- $rax
	.loc	0 89 2                          # liblzma/common/block_util.c:89:2
	retq
.Ltmp53:
.LBB2_7:                                # %lor.lhs.false17.i
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: lzma_block_total_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_unpadded_size:block <- $rdi
	.loc	0 58 8 is_stmt 1                # liblzma/common/block_util.c:58:8
	cmpq	$-1, %rbx
	sete	%cl
	.loc	0 60 29                         # liblzma/common/block_util.c:60:29
	movl	8(%rdi), %edi
.Ltmp54:
	#DEBUG_VALUE: lzma_block_total_size:block <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 60 36 is_stmt 0               # liblzma/common/block_util.c:60:36
	cmpl	$16, %edi
	setae	%dl
.Ltmp55:
	.loc	0 54 6 is_stmt 1                # liblzma/common/block_util.c:54:6
	orb	%cl, %dl
	je	.LBB2_8
.Ltmp56:
# %bb.9:                                # %lzma_block_unpadded_size.exit
	#DEBUG_VALUE: lzma_block_total_size:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_total_size:unpadded_size <- [DW_OP_constu 15, DW_OP_gt, DW_OP_constu 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert 1 5, DW_OP_LLVM_convert 64 5, DW_OP_stack_value] $edi
	.loc	0 86 6                          # liblzma/common/block_util.c:86:6
	xorl	%eax, %eax
.Ltmp57:
	.loc	0 60 36                         # liblzma/common/block_util.c:60:36
	cmpl	$16, %edi
.Ltmp58:
	.loc	0 86 6                          # liblzma/common/block_util.c:86:6
	sbbq	%rax, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.Ltmp59:
	#DEBUG_VALUE: lzma_block_total_size:unpadded_size <- $rax
	.loc	0 89 2                          # liblzma/common/block_util.c:89:2
	retq
.Ltmp60:
.LBB2_8:                                # %if.end22.i
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: lzma_block_total_size:block <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 70 5                          # liblzma/common/block_util.c:70:5
	addq	%rax, %rbx
	.loc	0 71 7                          # liblzma/common/block_util.c:71:7
	callq	lzma_check_size@PLT
.Ltmp61:
	movl	%eax, %eax
	.loc	0 71 5 is_stmt 0                # liblzma/common/block_util.c:71:5
	leaq	(%rbx,%rax), %rcx
.Ltmp62:
	#DEBUG_VALUE: lzma_block_unpadded_size:unpadded_size <- $rcx
	.file	8 "liblzma/common" "index.h" md5 0x8c1da33cfb6445c1ed40367774c91b69
	.loc	8 42 14 is_stmt 1               # liblzma/common/index.h:42:14
	leaq	(%rax,%rbx), %rdx
	addq	$3, %rdx
	.loc	8 42 19 is_stmt 0               # liblzma/common/index.h:42:19
	andq	$-4, %rdx
	xorl	%eax, %eax
	movabsq	$9223372036854775804, %rsi      # imm = 0x7FFFFFFFFFFFFFFC
.Ltmp63:
	.loc	0 74 20 is_stmt 1               # liblzma/common/block_util.c:74:20
	cmpq	%rsi, %rcx
.Ltmp64:
	.loc	8 42 19                         # liblzma/common/index.h:42:19
	cmovbeq	%rdx, %rax
	popq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	#DEBUG_VALUE: lzma_block_total_size:unpadded_size <- $rax
	.loc	0 89 2                          # liblzma/common/block_util.c:89:2
	retq
.Ltmp66:
.Lfunc_end2:
	.size	lzma_block_total_size, .Lfunc_end2-lzma_block_total_size
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	11                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	25                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	63                              # DW_OP_lit15
	.byte	43                              # DW_OP_gt
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	39                              # DW_OP_xor
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
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
	.byte	1                               # Abbrev [1] 0xc:0x336 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	75                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	74                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0x2d DW_TAG_enumeration_type
	.long	96                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x3b:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x3e:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x41:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x44:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x47:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x4a:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x4d:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x50:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x53:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x56:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x59:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x5c:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x60:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x64:0x15 DW_TAG_enumeration_type
	.long	96                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x6c:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x6f:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x72:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x75:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x79:0xc DW_TAG_enumeration_type
	.long	96                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x81:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x85:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x86:0x19 DW_TAG_subprogram
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	159                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x8e:0x8 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x96:0x8 DW_TAG_variable
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	592                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x9f:0x8 DW_TAG_typedef
	.long	167                             # DW_AT_type
	.byte	25                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa7:0x8 DW_TAG_typedef
	.long	175                             # DW_AT_type
	.byte	24                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xaf:0x8 DW_TAG_typedef
	.long	183                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0xb7:0x4 DW_TAG_base_type
	.byte	22                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0xbb:0x5 DW_TAG_pointer_type
	.long	192                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xc0:0x5 DW_TAG_const_type
	.long	197                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xc5:0x8 DW_TAG_typedef
	.long	205                             # DW_AT_type
	.byte	69                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xcd:0x113 DW_TAG_structure_type
	.byte	208                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xd1:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	480                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xda:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	480                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xe3:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	496                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xec:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	159                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xf5:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	159                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xfe:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	504                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x107:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	540                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x110:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	133                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x119:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	133                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x122:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	133                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x12b:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	480                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x134:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	480                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x13d:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	159                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x146:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	159                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x14f:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	159                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x158:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	159                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x161:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	159                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x16a:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	159                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x173:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	576                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x17c:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	576                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	188                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x185:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	576                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x18e:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	576                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x197:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	584                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	200                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1a0:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	584                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	201                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1a9:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	584                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.byte	202                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1b2:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	584                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	203                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1bb:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	584                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	204                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1c4:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	584                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	205                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1cd:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	584                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	206                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1d6:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	584                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	207                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1e0:0x8 DW_TAG_typedef
	.long	488                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1e8:0x8 DW_TAG_typedef
	.long	96                              # DW_AT_type
	.byte	28                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1f0:0x8 DW_TAG_typedef
	.long	100                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1f8:0x5 DW_TAG_pointer_type
	.long	509                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1fd:0x8 DW_TAG_typedef
	.long	517                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x205:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x209:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	159                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x212:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	133                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x21c:0xc DW_TAG_array_type
	.long	552                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x221:0x6 DW_TAG_subrange_type
	.long	572                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x228:0x8 DW_TAG_typedef
	.long	560                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x230:0x8 DW_TAG_typedef
	.long	568                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x238:0x4 DW_TAG_base_type
	.byte	40                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	16                              # Abbrev [16] 0x23c:0x4 DW_TAG_base_type
	.byte	43                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x240:0x8 DW_TAG_typedef
	.long	121                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x248:0x8 DW_TAG_typedef
	.long	568                             # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x250:0x5 DW_TAG_const_type
	.long	159                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x255:0x55 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	815                             # DW_AT_type
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x264:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	823                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x26d:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	159                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x276:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	828                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x27f:0x8 DW_TAG_variable
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	592                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x287:0x16 DW_TAG_inlined_subroutine
	.long	134                             # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	21                              # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	21                              # Abbrev [21] 0x290:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.long	142                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x296:0x6 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.long	150                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x29d:0x6 DW_TAG_call_site
	.long	682                             # DW_AT_call_origin
	.byte	1                               # DW_AT_call_return_pc
	.byte	23                              # Abbrev [23] 0x2a3:0x6 DW_TAG_call_site
	.long	682                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x2aa:0xe DW_TAG_subprogram
	.byte	71                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	480                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x2b2:0x5 DW_TAG_formal_parameter
	.long	496                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x2b8:0x1f DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	134                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x2c4:0x6 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.long	142                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x2ca:0x6 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.long	150                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x2d0:0x6 DW_TAG_call_site
	.long	682                             # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x2d7:0x11 DW_TAG_subprogram
	.byte	72                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	159                             # DW_AT_type
                                        # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x2df:0x8 DW_TAG_formal_parameter
	.byte	73                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	159                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x2e8:0x47 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	159                             # DW_AT_type
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x2f7:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x300:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	159                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x309:0x16 DW_TAG_inlined_subroutine
	.long	134                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	84                              # DW_AT_call_line
	.byte	27                              # DW_AT_call_column
	.byte	21                              # Abbrev [21] 0x312:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.long	142                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x318:0x6 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.long	150                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x31f:0x9 DW_TAG_inlined_subroutine
	.long	727                             # DW_AT_abstract_origin
	.byte	2                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	87                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	23                              # Abbrev [23] 0x328:0x6 DW_TAG_call_site
	.long	682                             # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x32f:0x8 DW_TAG_typedef
	.long	51                              # DW_AT_type
	.byte	77                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x337:0x5 DW_TAG_pointer_type
	.long	197                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x33c:0x5 DW_TAG_const_type
	.long	480                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	3                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	324                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/block_util.c"   # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=133
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=165
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=178
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=186
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=202
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=216
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=239
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=254
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=269
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=289
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=307
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=326
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=342
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=357
.Linfo_string16:
	.asciz	"LZMA_CHECK_NONE"               # string offset=373
.Linfo_string17:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=389
.Linfo_string18:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=406
.Linfo_string19:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=423
.Linfo_string20:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=441
.Linfo_string21:
	.asciz	"lzma_block_unpadded_size"      # string offset=460
.Linfo_string22:
	.asciz	"unsigned long"                 # string offset=485
.Linfo_string23:
	.asciz	"__uint64_t"                    # string offset=499
.Linfo_string24:
	.asciz	"uint64_t"                      # string offset=510
.Linfo_string25:
	.asciz	"lzma_vli"                      # string offset=519
.Linfo_string26:
	.asciz	"block"                         # string offset=528
.Linfo_string27:
	.asciz	"version"                       # string offset=534
.Linfo_string28:
	.asciz	"__uint32_t"                    # string offset=542
.Linfo_string29:
	.asciz	"uint32_t"                      # string offset=553
.Linfo_string30:
	.asciz	"header_size"                   # string offset=562
.Linfo_string31:
	.asciz	"check"                         # string offset=574
.Linfo_string32:
	.asciz	"lzma_check"                    # string offset=580
.Linfo_string33:
	.asciz	"compressed_size"               # string offset=591
.Linfo_string34:
	.asciz	"uncompressed_size"             # string offset=607
.Linfo_string35:
	.asciz	"filters"                       # string offset=625
.Linfo_string36:
	.asciz	"id"                            # string offset=633
.Linfo_string37:
	.asciz	"options"                       # string offset=636
.Linfo_string38:
	.asciz	"lzma_filter"                   # string offset=644
.Linfo_string39:
	.asciz	"raw_check"                     # string offset=656
.Linfo_string40:
	.asciz	"unsigned char"                 # string offset=666
.Linfo_string41:
	.asciz	"__uint8_t"                     # string offset=680
.Linfo_string42:
	.asciz	"uint8_t"                       # string offset=690
.Linfo_string43:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=698
.Linfo_string44:
	.asciz	"reserved_ptr1"                 # string offset=718
.Linfo_string45:
	.asciz	"reserved_ptr2"                 # string offset=732
.Linfo_string46:
	.asciz	"reserved_ptr3"                 # string offset=746
.Linfo_string47:
	.asciz	"reserved_int1"                 # string offset=760
.Linfo_string48:
	.asciz	"reserved_int2"                 # string offset=774
.Linfo_string49:
	.asciz	"reserved_int3"                 # string offset=788
.Linfo_string50:
	.asciz	"reserved_int4"                 # string offset=802
.Linfo_string51:
	.asciz	"reserved_int5"                 # string offset=816
.Linfo_string52:
	.asciz	"reserved_int6"                 # string offset=830
.Linfo_string53:
	.asciz	"reserved_int7"                 # string offset=844
.Linfo_string54:
	.asciz	"reserved_int8"                 # string offset=858
.Linfo_string55:
	.asciz	"reserved_enum1"                # string offset=872
.Linfo_string56:
	.asciz	"lzma_reserved_enum"            # string offset=887
.Linfo_string57:
	.asciz	"reserved_enum2"                # string offset=906
.Linfo_string58:
	.asciz	"reserved_enum3"                # string offset=921
.Linfo_string59:
	.asciz	"reserved_enum4"                # string offset=936
.Linfo_string60:
	.asciz	"reserved_bool1"                # string offset=951
.Linfo_string61:
	.asciz	"lzma_bool"                     # string offset=966
.Linfo_string62:
	.asciz	"reserved_bool2"                # string offset=976
.Linfo_string63:
	.asciz	"reserved_bool3"                # string offset=991
.Linfo_string64:
	.asciz	"reserved_bool4"                # string offset=1006
.Linfo_string65:
	.asciz	"reserved_bool5"                # string offset=1021
.Linfo_string66:
	.asciz	"reserved_bool6"                # string offset=1036
.Linfo_string67:
	.asciz	"reserved_bool7"                # string offset=1051
.Linfo_string68:
	.asciz	"reserved_bool8"                # string offset=1066
.Linfo_string69:
	.asciz	"lzma_block"                    # string offset=1081
.Linfo_string70:
	.asciz	"unpadded_size"                 # string offset=1092
.Linfo_string71:
	.asciz	"lzma_check_size"               # string offset=1106
.Linfo_string72:
	.asciz	"vli_ceil4"                     # string offset=1122
.Linfo_string73:
	.asciz	"vli"                           # string offset=1132
.Linfo_string74:
	.asciz	"DW_ATE_signed_64"              # string offset=1136
.Linfo_string75:
	.asciz	"DW_ATE_signed_1"               # string offset=1153
.Linfo_string76:
	.asciz	"lzma_block_compressed_size"    # string offset=1169
.Linfo_string77:
	.asciz	"lzma_ret"                      # string offset=1196
.Linfo_string78:
	.asciz	"lzma_block_total_size"         # string offset=1205
.Linfo_string79:
	.asciz	"container_size"                # string offset=1227
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp13
	.quad	.Ltmp20
	.quad	.Lfunc_begin1
	.quad	.Ltmp40
	.quad	.Lfunc_begin2
	.quad	.Ltmp61
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
