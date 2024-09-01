	.text
	.file	"block_header_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/block_header_encoder.c" md5 0xa8da97df8170ca904cf171741ab8c93e
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.globl	lzma_block_header_size          # -- Begin function lzma_block_header_size
	.p2align	4, 0x90
	.type	lzma_block_header_size,@function
lzma_block_header_size:                 # @lzma_block_header_size
.Lfunc_begin0:
	.loc	0 19 0                          # liblzma/common/block_header_encoder.c:19:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_block_header_size:block <- $rdi
	movl	$8, %eax
.Ltmp0:
	.loc	0 20 21 prologue_end            # liblzma/common/block_header_encoder.c:20:21
	cmpl	$0, (%rdi)
.Ltmp1:
	.loc	0 20 6 is_stmt 0                # liblzma/common/block_header_encoder.c:20:6
	je	.LBB0_1
.Ltmp2:
# %bb.23:                               # %return
	#DEBUG_VALUE: lzma_block_header_size:block <- $rdi
	.loc	0 70 1 is_stmt 1                # liblzma/common/block_header_encoder.c:70:1
	retq
.Ltmp3:
.LBB0_1:                                # %if.end
	#DEBUG_VALUE: lzma_block_header_size:block <- $rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp4:
	#DEBUG_VALUE: lzma_block_header_size:size <- 6
	.loc	0 27 13                         # liblzma/common/block_header_encoder.c:27:13
	movq	16(%rdi), %rax
	.loc	0 27 29 is_stmt 0               # liblzma/common/block_header_encoder.c:27:29
	cmpq	$-1, %rax
.Ltmp5:
	.loc	0 27 6                          # liblzma/common/block_header_encoder.c:27:6
	je	.LBB0_5
.Ltmp6:
# %bb.2:                                # %if.then2
	#DEBUG_VALUE: lzma_block_header_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_header_size:size <- 6
	.loc	0 0 6                           # liblzma/common/block_header_encoder.c:0:6
	movq	%rdi, %r14
.Ltmp7:
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	.loc	0 28 24 is_stmt 1               # liblzma/common/block_header_encoder.c:28:24
	movq	%rax, %rdi
	callq	lzma_vli_size@PLT
.Ltmp8:
	movl	%eax, %ebx
.Ltmp9:
	#DEBUG_VALUE: add <- $ebx
	.loc	0 0 24 is_stmt 0                # liblzma/common/block_header_encoder.c:0:24
	movl	$11, %eax
.Ltmp10:
	.loc	0 29 11 is_stmt 1               # liblzma/common/block_header_encoder.c:29:11
	testl	%ebx, %ebx
	.loc	0 29 16 is_stmt 0               # liblzma/common/block_header_encoder.c:29:16
	je	.LBB0_20
.Ltmp11:
# %bb.3:                                # %cleanup
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	#DEBUG_VALUE: lzma_block_header_size:size <- 6
	#DEBUG_VALUE: add <- $ebx
	.loc	0 29 42                         # liblzma/common/block_header_encoder.c:29:42
	cmpq	$0, 16(%r14)
.Ltmp12:
	#DEBUG_VALUE: lzma_block_header_size:size <- undef
	.loc	0 0 42                          # liblzma/common/block_header_encoder.c:0:42
	je	.LBB0_20
.Ltmp13:
# %bb.4:
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	movq	%r14, %rdi
	addl	$6, %ebx
.Ltmp14:
	#DEBUG_VALUE: lzma_block_header_size:size <- $ebx
	.loc	0 36 13 is_stmt 1               # liblzma/common/block_header_encoder.c:36:13
	movq	24(%rdi), %rax
	.loc	0 36 31 is_stmt 0               # liblzma/common/block_header_encoder.c:36:31
	cmpq	$-1, %rax
.Ltmp15:
	.loc	0 36 6                          # liblzma/common/block_header_encoder.c:36:6
	jne	.LBB0_6
	jmp	.LBB0_8
.Ltmp16:
.LBB0_5:
	#DEBUG_VALUE: lzma_block_header_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_header_size:size <- 6
	.loc	0 0 6                           # liblzma/common/block_header_encoder.c:0:6
	movl	$6, %ebx
.Ltmp17:
	#DEBUG_VALUE: lzma_block_header_size:size <- $ebx
	.loc	0 36 13                         # liblzma/common/block_header_encoder.c:36:13
	movq	24(%rdi), %rax
	.loc	0 36 31                         # liblzma/common/block_header_encoder.c:36:31
	cmpq	$-1, %rax
.Ltmp18:
	.loc	0 36 6                          # liblzma/common/block_header_encoder.c:36:6
	je	.LBB0_8
.Ltmp19:
.LBB0_6:                                # %if.then12
	#DEBUG_VALUE: lzma_block_header_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_header_size:size <- $ebx
	.loc	0 0 6                           # liblzma/common/block_header_encoder.c:0:6
	movq	%rdi, %r14
.Ltmp20:
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	.loc	0 37 24 is_stmt 1               # liblzma/common/block_header_encoder.c:37:24
	movq	%rax, %rdi
	callq	lzma_vli_size@PLT
.Ltmp21:
	#DEBUG_VALUE: add <- $eax
	#DEBUG_VALUE: lzma_block_header_size:size <- undef
	.loc	0 38 11                         # liblzma/common/block_header_encoder.c:38:11
	testl	%eax, %eax
	je	.LBB0_19
.Ltmp22:
# %bb.7:
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	#DEBUG_VALUE: add <- $eax
	.loc	0 0 11 is_stmt 0                # liblzma/common/block_header_encoder.c:0:11
	addl	%eax, %ebx
.Ltmp23:
	#DEBUG_VALUE: lzma_block_header_size:size <- $ebx
	movq	%r14, %rdi
.Ltmp24:
.LBB0_8:                                # %if.end23
	#DEBUG_VALUE: lzma_block_header_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_header_size:size <- $ebx
	#DEBUG_VALUE: lzma_block_header_size:size <- $ebx
	.loc	0 45 13 is_stmt 1               # liblzma/common/block_header_encoder.c:45:13
	movq	32(%rdi), %rsi
	movl	$11, %eax
	.loc	0 45 21 is_stmt 0               # liblzma/common/block_header_encoder.c:45:21
	testq	%rsi, %rsi
	.loc	0 45 29                         # liblzma/common/block_header_encoder.c:45:29
	je	.LBB0_20
.Ltmp25:
# %bb.9:                                # %lor.lhs.false25
	#DEBUG_VALUE: lzma_block_header_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_header_size:size <- $ebx
	.loc	0 45 53                         # liblzma/common/block_header_encoder.c:45:53
	cmpq	$-1, (%rsi)
.Ltmp26:
	.loc	0 45 6                          # liblzma/common/block_header_encoder.c:45:6
	je	.LBB0_20
.Ltmp27:
# %bb.10:                               # %for.body.preheader
	#DEBUG_VALUE: lzma_block_header_size:block <- $rdi
	#DEBUG_VALUE: lzma_block_header_size:size <- $ebx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_block_header_size:size <- $ebx
	.loc	0 0 6                           # liblzma/common/block_header_encoder.c:0:6
	movq	%rdi, %r14
.Ltmp28:
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	leaq	4(%rsp), %rdi
.Ltmp29:
	.loc	0 54 3 is_stmt 1                # liblzma/common/block_header_encoder.c:54:3
	callq	lzma_filter_flags_size@PLT
.Ltmp30:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 54 3 is_stmt 0                # liblzma/common/block_header_encoder.c:54:3
	testl	%eax, %eax
.Ltmp31:
	#DEBUG_VALUE: lzma_block_header_size:size <- undef
	.loc	0 0 3                           # liblzma/common/block_header_encoder.c:0:3
	jne	.LBB0_20
.Ltmp32:
# %bb.11:                               # %for.inc
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lzma_block_header_size:size <- undef
	#DEBUG_VALUE: i <- 1
	.loc	0 48 28 is_stmt 1               # liblzma/common/block_header_encoder.c:48:28
	movq	32(%r14), %rsi
	addl	4(%rsp), %ebx
	.loc	0 48 42 is_stmt 0               # liblzma/common/block_header_encoder.c:48:42
	cmpq	$-1, 16(%rsi)
.Ltmp33:
	.loc	0 48 2                          # liblzma/common/block_header_encoder.c:48:2
	je	.LBB0_21
.Ltmp34:
# %bb.12:                               # %for.body.1
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	#DEBUG_VALUE: i <- 1
	.loc	0 0 0                           # liblzma/common/block_header_encoder.c:0:0
	addq	$16, %rsi
	#DEBUG_VALUE: i <- 1
.Ltmp35:
	#DEBUG_VALUE: lzma_block_header_size:size <- undef
	leaq	4(%rsp), %rdi
.Ltmp36:
	.loc	0 54 3 is_stmt 1                # liblzma/common/block_header_encoder.c:54:3
	callq	lzma_filter_flags_size@PLT
.Ltmp37:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 54 3 is_stmt 0                # liblzma/common/block_header_encoder.c:54:3
	testl	%eax, %eax
	#DEBUG_VALUE: lzma_block_header_size:size <- undef
	jne	.LBB0_20
.Ltmp38:
# %bb.13:                               # %for.inc.1
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: lzma_block_header_size:size <- undef
	#DEBUG_VALUE: i <- 2
	.loc	0 48 28 is_stmt 1               # liblzma/common/block_header_encoder.c:48:28
	movq	32(%r14), %rsi
	addl	4(%rsp), %ebx
	.loc	0 48 42 is_stmt 0               # liblzma/common/block_header_encoder.c:48:42
	cmpq	$-1, 32(%rsi)
.Ltmp39:
	.loc	0 48 2                          # liblzma/common/block_header_encoder.c:48:2
	je	.LBB0_21
.Ltmp40:
# %bb.14:                               # %for.body.2
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	#DEBUG_VALUE: i <- 2
	.loc	0 0 0                           # liblzma/common/block_header_encoder.c:0:0
	addq	$32, %rsi
	#DEBUG_VALUE: i <- 2
.Ltmp41:
	#DEBUG_VALUE: lzma_block_header_size:size <- undef
	leaq	4(%rsp), %rdi
.Ltmp42:
	.loc	0 54 3 is_stmt 1                # liblzma/common/block_header_encoder.c:54:3
	callq	lzma_filter_flags_size@PLT
.Ltmp43:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 54 3 is_stmt 0                # liblzma/common/block_header_encoder.c:54:3
	testl	%eax, %eax
	#DEBUG_VALUE: lzma_block_header_size:size <- undef
	jne	.LBB0_20
.Ltmp44:
# %bb.15:                               # %for.inc.2
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: lzma_block_header_size:size <- undef
	#DEBUG_VALUE: i <- 3
	.loc	0 48 28 is_stmt 1               # liblzma/common/block_header_encoder.c:48:28
	movq	32(%r14), %rsi
	addl	4(%rsp), %ebx
	.loc	0 48 42 is_stmt 0               # liblzma/common/block_header_encoder.c:48:42
	cmpq	$-1, 48(%rsi)
.Ltmp45:
	.loc	0 48 2                          # liblzma/common/block_header_encoder.c:48:2
	je	.LBB0_21
.Ltmp46:
# %bb.16:                               # %for.body.3
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	#DEBUG_VALUE: i <- 3
	.loc	0 0 0                           # liblzma/common/block_header_encoder.c:0:0
	addq	$48, %rsi
	#DEBUG_VALUE: i <- 3
.Ltmp47:
	#DEBUG_VALUE: lzma_block_header_size:size <- undef
	leaq	4(%rsp), %rdi
.Ltmp48:
	.loc	0 54 3 is_stmt 1                # liblzma/common/block_header_encoder.c:54:3
	callq	lzma_filter_flags_size@PLT
.Ltmp49:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 54 3 is_stmt 0                # liblzma/common/block_header_encoder.c:54:3
	testl	%eax, %eax
	#DEBUG_VALUE: lzma_block_header_size:size <- undef
	jne	.LBB0_20
.Ltmp50:
# %bb.17:                               # %for.inc.3
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: lzma_block_header_size:size <- undef
	#DEBUG_VALUE: i <- 4
	.loc	0 48 28 is_stmt 1               # liblzma/common/block_header_encoder.c:48:28
	movq	32(%r14), %rax
	.loc	0 48 42 is_stmt 0               # liblzma/common/block_header_encoder.c:48:42
	cmpq	$-1, 64(%rax)
	movl	$11, %eax
.Ltmp51:
	.loc	0 48 2                          # liblzma/common/block_header_encoder.c:48:2
	jne	.LBB0_20
.Ltmp52:
# %bb.18:
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	#DEBUG_VALUE: i <- 4
	.loc	0 0 2                           # liblzma/common/block_header_encoder.c:0:2
	movq	%r14, %rcx
	addl	4(%rsp), %ebx
	jmp	.LBB0_22
.Ltmp53:
.LBB0_19:
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	#DEBUG_VALUE: add <- $eax
	movl	$11, %eax
.Ltmp54:
.LBB0_20:
	#DEBUG_VALUE: lzma_block_header_size:block <- [DW_OP_LLVM_entry_value 1] $rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.loc	0 70 1 is_stmt 1                # liblzma/common/block_header_encoder.c:70:1
	retq
.Ltmp55:
.LBB0_21:
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	.loc	0 0 1 is_stmt 0                 # liblzma/common/block_header_encoder.c:0:1
	movq	%r14, %rcx
.Ltmp56:
.LBB0_22:                               # %for.end
	#DEBUG_VALUE: lzma_block_header_size:block <- $r14
	#DEBUG_VALUE: lzma_block_header_size:size <- $ebx
	.loc	0 61 29 is_stmt 1               # liblzma/common/block_header_encoder.c:61:29
	addl	$3, %ebx
.Ltmp57:
	.loc	0 61 34 is_stmt 0               # liblzma/common/block_header_encoder.c:61:34
	andl	$-4, %ebx
	.loc	0 61 21                         # liblzma/common/block_header_encoder.c:61:21
	movl	%ebx, 4(%rcx)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp58:
	#DEBUG_VALUE: lzma_block_header_size:block <- $rcx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.loc	0 70 1 is_stmt 1                # liblzma/common/block_header_encoder.c:70:1
	retq
.Ltmp59:
.Lfunc_end0:
	.size	lzma_block_header_size, .Lfunc_end0-lzma_block_header_size
	.cfi_endproc
	.file	3 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	6 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
                                        # -- End function
	.globl	lzma_block_header_encode        # -- Begin function lzma_block_header_encode
	.p2align	4, 0x90
	.type	lzma_block_header_encode,@function
lzma_block_header_encode:               # @lzma_block_header_encode
.Lfunc_begin1:
	.loc	0 75 0                          # liblzma/common/block_header_encoder.c:75:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_block_header_encode:block <- $rdi
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rsi
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
	movq	%rsi, %rbx
	movq	%rdi, %r15
.Ltmp60:
	.loc	0 77 6 prologue_end             # liblzma/common/block_header_encoder.c:77:6
	callq	lzma_block_unpadded_size@PLT
.Ltmp61:
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	movq	%rax, %rcx
	movl	$11, %eax
	.loc	0 77 38 is_stmt 0               # liblzma/common/block_header_encoder.c:77:38
	testq	%rcx, %rcx
	.loc	0 78 4 is_stmt 1                # liblzma/common/block_header_encoder.c:78:4
	je	.LBB1_22
.Ltmp62:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	.loc	0 78 8 is_stmt 0                # liblzma/common/block_header_encoder.c:78:8
	cmpq	$-1, 24(%r15)
	jl	.LBB1_22
.Ltmp63:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	.loc	0 82 33 is_stmt 1               # liblzma/common/block_header_encoder.c:82:33
	movl	4(%r15), %r14d
	.loc	0 82 45 is_stmt 0               # liblzma/common/block_header_encoder.c:82:45
	addl	$-4, %r14d
.Ltmp64:
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	.loc	0 85 20 is_stmt 1               # liblzma/common/block_header_encoder.c:85:20
	movl	%r14d, %eax
	shrl	$2, %eax
	.loc	0 85 9 is_stmt 0                # liblzma/common/block_header_encoder.c:85:9
	movb	%al, (%rbx)
	.loc	0 88 9 is_stmt 1                # liblzma/common/block_header_encoder.c:88:9
	movb	$0, 1(%rbx)
	.loc	0 89 9                          # liblzma/common/block_header_encoder.c:89:9
	movq	$2, 8(%rsp)
.Ltmp65:
	.loc	0 92 13                         # liblzma/common/block_header_encoder.c:92:13
	movq	16(%r15), %rdi
	.loc	0 92 29 is_stmt 0               # liblzma/common/block_header_encoder.c:92:29
	cmpq	$-1, %rdi
.Ltmp66:
	.loc	0 92 6                          # liblzma/common/block_header_encoder.c:92:6
	je	.LBB1_5
.Ltmp67:
# %bb.3:                                # %do.body
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	.loc	0 0 6                           # liblzma/common/block_header_encoder.c:0:6
	leaq	8(%rsp), %rcx
.Ltmp68:
	.loc	0 93 3 is_stmt 1                # liblzma/common/block_header_encoder.c:93:3
	xorl	%esi, %esi
	movq	%rbx, %rdx
	movq	%r14, %r8
	callq	lzma_vli_encode@PLT
.Ltmp69:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 93 3 is_stmt 0                # liblzma/common/block_header_encoder.c:93:3
	testl	%eax, %eax
	jne	.LBB1_22
.Ltmp70:
# %bb.4:                                # %do.end
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	.loc	0 96 10 is_stmt 1               # liblzma/common/block_header_encoder.c:96:10
	orb	$64, 1(%rbx)
.Ltmp71:
.LBB1_5:                                # %if.end19
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	.loc	0 100 13                        # liblzma/common/block_header_encoder.c:100:13
	movq	24(%r15), %rdi
	.loc	0 100 31 is_stmt 0              # liblzma/common/block_header_encoder.c:100:31
	cmpq	$-1, %rdi
.Ltmp72:
	.loc	0 100 6                         # liblzma/common/block_header_encoder.c:100:6
	je	.LBB1_8
.Ltmp73:
# %bb.6:                                # %do.body24
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	.loc	0 0 6                           # liblzma/common/block_header_encoder.c:0:6
	leaq	8(%rsp), %rcx
.Ltmp74:
	.loc	0 101 3 is_stmt 1               # liblzma/common/block_header_encoder.c:101:3
	xorl	%esi, %esi
	movq	%rbx, %rdx
	movq	%r14, %r8
	callq	lzma_vli_encode@PLT
.Ltmp75:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 101 3 is_stmt 0               # liblzma/common/block_header_encoder.c:101:3
	testl	%eax, %eax
	jne	.LBB1_22
.Ltmp76:
# %bb.7:                                # %do.end36
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	.loc	0 104 10 is_stmt 1              # liblzma/common/block_header_encoder.c:104:10
	orb	$-128, 1(%rbx)
.Ltmp77:
.LBB1_8:                                # %if.end41
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	.loc	0 108 13                        # liblzma/common/block_header_encoder.c:108:13
	movq	32(%r15), %rdi
	movl	$11, %eax
	.loc	0 108 21 is_stmt 0              # liblzma/common/block_header_encoder.c:108:21
	testq	%rdi, %rdi
	.loc	0 108 29                        # liblzma/common/block_header_encoder.c:108:29
	je	.LBB1_22
.Ltmp78:
# %bb.9:                                # %lor.lhs.false44
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	.loc	0 108 53                        # liblzma/common/block_header_encoder.c:108:53
	cmpq	$-1, (%rdi)
.Ltmp79:
	.loc	0 108 6                         # liblzma/common/block_header_encoder.c:108:6
	je	.LBB1_22
.Ltmp80:
# %bb.10:                               # %do.body51.preheader
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 0
	.loc	0 0 6                           # liblzma/common/block_header_encoder.c:0:6
	leaq	8(%rsp), %rdx
.Ltmp81:
	.loc	0 117 3 is_stmt 1               # liblzma/common/block_header_encoder.c:117:3
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	lzma_filter_flags_encode@PLT
.Ltmp82:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 117 3 is_stmt 0               # liblzma/common/block_header_encoder.c:117:3
	testl	%eax, %eax
	jne	.LBB1_22
.Ltmp83:
# %bb.11:                               # %do.cond69
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 0
	.loc	0 121 18 is_stmt 1              # liblzma/common/block_header_encoder.c:121:18
	movq	32(%r15), %rdi
.Ltmp84:
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 1
	.loc	0 0 18 is_stmt 0                # liblzma/common/block_header_encoder.c:0:18
	xorl	%eax, %eax
	.loc	0 121 45                        # liblzma/common/block_header_encoder.c:121:45
	cmpq	$-1, 16(%rdi)
.Ltmp85:
	.loc	0 121 2                         # liblzma/common/block_header_encoder.c:121:2
	je	.LBB1_21
.Ltmp86:
# %bb.12:                               # %do.body51.1
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 1
	.loc	0 0 0                           # liblzma/common/block_header_encoder.c:0:0
	addq	$16, %rdi
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 1
	leaq	8(%rsp), %rdx
.Ltmp87:
	.loc	0 117 3 is_stmt 1               # liblzma/common/block_header_encoder.c:117:3
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	lzma_filter_flags_encode@PLT
.Ltmp88:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 117 3 is_stmt 0               # liblzma/common/block_header_encoder.c:117:3
	testl	%eax, %eax
	jne	.LBB1_22
.Ltmp89:
# %bb.13:                               # %do.cond69.1
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 1
	.loc	0 121 18 is_stmt 1              # liblzma/common/block_header_encoder.c:121:18
	movq	32(%r15), %rdi
.Ltmp90:
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 2
	.loc	0 121 45 is_stmt 0              # liblzma/common/block_header_encoder.c:121:45
	cmpq	$-1, 32(%rdi)
.Ltmp91:
	.loc	0 121 2                         # liblzma/common/block_header_encoder.c:121:2
	je	.LBB1_14
.Ltmp92:
# %bb.15:                               # %do.body51.2
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 2
	.loc	0 0 0                           # liblzma/common/block_header_encoder.c:0:0
	addq	$32, %rdi
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 2
	leaq	8(%rsp), %rdx
.Ltmp93:
	.loc	0 117 3 is_stmt 1               # liblzma/common/block_header_encoder.c:117:3
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	lzma_filter_flags_encode@PLT
.Ltmp94:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 117 3 is_stmt 0               # liblzma/common/block_header_encoder.c:117:3
	testl	%eax, %eax
	jne	.LBB1_22
.Ltmp95:
# %bb.16:                               # %do.cond69.2
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 2
	.loc	0 121 18 is_stmt 1              # liblzma/common/block_header_encoder.c:121:18
	movq	32(%r15), %rdi
.Ltmp96:
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 3
	.loc	0 121 45 is_stmt 0              # liblzma/common/block_header_encoder.c:121:45
	cmpq	$-1, 48(%rdi)
.Ltmp97:
	.loc	0 121 2                         # liblzma/common/block_header_encoder.c:121:2
	je	.LBB1_17
.Ltmp98:
# %bb.18:                               # %do.body51.3
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 3
	.loc	0 0 0                           # liblzma/common/block_header_encoder.c:0:0
	addq	$48, %rdi
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 3
	leaq	8(%rsp), %rdx
.Ltmp99:
	.loc	0 117 3 is_stmt 1               # liblzma/common/block_header_encoder.c:117:3
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	lzma_filter_flags_encode@PLT
.Ltmp100:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 117 3 is_stmt 0               # liblzma/common/block_header_encoder.c:117:3
	testl	%eax, %eax
	jne	.LBB1_22
.Ltmp101:
# %bb.19:                               # %do.cond69.3
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 3
	.loc	0 121 18 is_stmt 1              # liblzma/common/block_header_encoder.c:121:18
	movq	32(%r15), %rax
.Ltmp102:
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 4
	.loc	0 121 45 is_stmt 0              # liblzma/common/block_header_encoder.c:121:45
	cmpq	$-1, 64(%rax)
	movl	$11, %eax
.Ltmp103:
	.loc	0 121 2                         # liblzma/common/block_header_encoder.c:121:2
	jne	.LBB1_22
.Ltmp104:
# %bb.20:
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 4
	.loc	0 0 2                           # liblzma/common/block_header_encoder.c:0:2
	movb	$3, %al
	jmp	.LBB1_21
.Ltmp105:
.LBB1_14:
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 2
	movb	$1, %al
.Ltmp106:
.LBB1_21:                               # %do.end75
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	.loc	0 123 9 is_stmt 1               # liblzma/common/block_header_encoder.c:123:9
	orb	%al, 1(%rbx)
	.loc	0 126 2                         # liblzma/common/block_header_encoder.c:126:2
	movq	8(%rsp), %rax
	leaq	(%rbx,%rax), %rdi
	movq	%r14, %rdx
	subq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp107:
	.loc	0 129 38                        # liblzma/common/block_header_encoder.c:129:38
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	lzma_crc32@PLT
.Ltmp108:
	#DEBUG_VALUE: unaligned_write32le:num <- $eax
	#DEBUG_VALUE: unaligned_write32le:buf <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rbx, $r14d
	.file	7 "common" "tuklib_integer.h" md5 0x877bd6a1d04ec1170bc985c87ef412ed
	.loc	7 356 9                         # common/tuklib_integer.h:356:9
	movl	%eax, (%rbx,%r14)
	xorl	%eax, %eax
.Ltmp109:
.LBB1_22:                               # %return
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	.loc	0 132 1 epilogue_begin          # liblzma/common/block_header_encoder.c:132:1
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
.Ltmp110:
	#DEBUG_VALUE: lzma_block_header_encode:out <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp111:
	#DEBUG_VALUE: lzma_block_header_encode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp112:
.LBB1_17:
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: lzma_block_header_encode:block <- $r15
	#DEBUG_VALUE: lzma_block_header_encode:out <- $rbx
	#DEBUG_VALUE: lzma_block_header_encode:out_size <- $r14d
	#DEBUG_VALUE: lzma_block_header_encode:filter_count <- 3
	.loc	0 0 1 is_stmt 0                 # liblzma/common/block_header_encoder.c:0:1
	movb	$2, %al
.Ltmp113:
	.loc	0 121 2 is_stmt 1               # liblzma/common/block_header_encoder.c:121:2
	jmp	.LBB1_21
.Ltmp114:
.Lfunc_end1:
	.size	lzma_block_header_encode, .Lfunc_end1-lzma_block_header_encode
	.cfi_endproc
	.file	8 "liblzma/api/lzma" "block.h" md5 0xbf8cbafce550217b909c63081e414910
	.file	9 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
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
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	54                              # DW_OP_lit6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	54                              # DW_OP_lit6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x45f DW_TAG_compile_unit
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
	.byte	6                               # Abbrev [6] 0x7e:0x90 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	348                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x8d:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	1110                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x96:0x9 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	284                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x9f:0x10 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp13-.Ltmp7                  # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0xa5:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	1115                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xaf:0x10 DW_TAG_lexical_block
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp22-.Ltmp20                 # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0xb5:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	1115                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xbf:0x2a DW_TAG_lexical_block
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp52-.Ltmp29                 # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0xc5:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	1038                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xce:0x1a DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	11                              # Abbrev [11] 0xd0:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	4
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	284                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xdb:0xc DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	8                               # Abbrev [8] 0xdd:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.long	1120                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xe9:0x6 DW_TAG_call_site
	.long	270                             # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0xef:0x6 DW_TAG_call_site
	.long	270                             # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0xf5:0x6 DW_TAG_call_site
	.long	328                             # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0xfb:0x6 DW_TAG_call_site
	.long	328                             # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0x101:0x6 DW_TAG_call_site
	.long	328                             # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0x107:0x6 DW_TAG_call_site
	.long	328                             # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x10e:0xe DW_TAG_subprogram
	.byte	21                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	284                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x116:0x5 DW_TAG_formal_parameter
	.long	300                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x11c:0x8 DW_TAG_typedef
	.long	292                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x124:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	22                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x12c:0x8 DW_TAG_typedef
	.long	308                             # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x134:0x8 DW_TAG_typedef
	.long	316                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x13c:0x8 DW_TAG_typedef
	.long	324                             # DW_AT_type
	.byte	25                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x144:0x4 DW_TAG_base_type
	.byte	24                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	16                              # Abbrev [16] 0x148:0x14 DW_TAG_subprogram
	.byte	28                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	382                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	348                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x151:0x5 DW_TAG_formal_parameter
	.long	356                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x156:0x5 DW_TAG_formal_parameter
	.long	361                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x15c:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x164:0x5 DW_TAG_pointer_type
	.long	284                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x169:0x5 DW_TAG_pointer_type
	.long	366                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x16e:0x5 DW_TAG_const_type
	.long	371                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x173:0x8 DW_TAG_typedef
	.long	379                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x17b:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x17f:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	300                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x188:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x192:0x18 DW_TAG_subprogram
	.byte	33                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	22                              # Abbrev [22] 0x197:0x9 DW_TAG_formal_parameter
	.byte	34                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	426                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x1a0:0x9 DW_TAG_formal_parameter
	.byte	38                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	284                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x1aa:0x5 DW_TAG_pointer_type
	.long	431                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1af:0x8 DW_TAG_typedef
	.long	439                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x1b7:0x8 DW_TAG_typedef
	.long	447                             # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1bf:0x4 DW_TAG_base_type
	.byte	35                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x1c3:0xc3 DW_TAG_subprogram
	.byte	10                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	348                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x1d2:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	661                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1db:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	426                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1e4:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	1038                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1ef:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	1125                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1f8:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.long	1038                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x201:0x10 DW_TAG_lexical_block
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp70-.Ltmp68                 # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0x207:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	1120                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x211:0x10 DW_TAG_lexical_block
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp76-.Ltmp74                 # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0x217:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.long	1120                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x221:0xc DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	8                               # Abbrev [8] 0x223:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.long	1120                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x22d:0x28 DW_TAG_inlined_subroutine
	.long	402                             # DW_AT_abstract_origin
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp109-.Ltmp108               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	129                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x23a:0x13 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	115
	.byte	0
	.byte	126
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	34
	.byte	159
	.long	407                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x24d:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	80
	.long	416                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x255:0x6 DW_TAG_call_site
	.long	646                             # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0x25b:0x6 DW_TAG_call_site
	.long	999                             # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0x261:0x6 DW_TAG_call_site
	.long	999                             # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0x267:0x6 DW_TAG_call_site
	.long	1046                            # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0x26d:0x6 DW_TAG_call_site
	.long	1046                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0x273:0x6 DW_TAG_call_site
	.long	1046                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0x279:0x6 DW_TAG_call_site
	.long	1046                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0x27f:0x6 DW_TAG_call_site
	.long	1076                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x286:0xf DW_TAG_subprogram
	.byte	39                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	300                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x28f:0x5 DW_TAG_formal_parameter
	.long	661                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x295:0x5 DW_TAG_pointer_type
	.long	666                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x29a:0x5 DW_TAG_const_type
	.long	671                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x29f:0x8 DW_TAG_typedef
	.long	679                             # DW_AT_type
	.byte	74                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x2a7:0x113 DW_TAG_structure_type
	.byte	208                             # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x2ab:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	284                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x2b4:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	284                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x2bd:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	954                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x2c6:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	300                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x2cf:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	300                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x2d8:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	962                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x2e1:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	967                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x2ea:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x2f3:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x2fc:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x305:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	284                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x30e:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	284                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x317:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	300                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x320:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	300                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x329:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	300                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x332:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	300                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x33b:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	300                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x344:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	300                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x34d:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	983                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x356:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	983                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	188                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x35f:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	983                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x368:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	983                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x371:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	991                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	200                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x37a:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	991                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	201                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x383:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	991                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.byte	202                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x38c:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	991                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	203                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x395:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	991                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	204                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x39e:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	991                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	205                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x3a7:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	991                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	206                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x3b0:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	991                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	207                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x3ba:0x8 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x3c2:0x5 DW_TAG_pointer_type
	.long	371                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x3c7:0xc DW_TAG_array_type
	.long	431                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x3cc:0x6 DW_TAG_subrange_type
	.long	979                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x3d3:0x4 DW_TAG_base_type
	.byte	48                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	15                              # Abbrev [15] 0x3d7:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x3df:0x8 DW_TAG_typedef
	.long	447                             # DW_AT_type
	.byte	66                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3e7:0x22 DW_TAG_subprogram
	.byte	75                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	348                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x3ef:0x5 DW_TAG_formal_parameter
	.long	300                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x3f4:0x5 DW_TAG_formal_parameter
	.long	1033                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x3f9:0x5 DW_TAG_formal_parameter
	.long	426                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x3fe:0x5 DW_TAG_formal_parameter
	.long	1033                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x403:0x5 DW_TAG_formal_parameter
	.long	1038                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x409:0x5 DW_TAG_pointer_type
	.long	1038                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x40e:0x8 DW_TAG_typedef
	.long	324                             # DW_AT_type
	.byte	76                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x416:0x1e DW_TAG_subprogram
	.byte	77                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	405                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	348                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x41f:0x5 DW_TAG_formal_parameter
	.long	361                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x424:0x5 DW_TAG_formal_parameter
	.long	426                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x429:0x5 DW_TAG_formal_parameter
	.long	1033                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x42e:0x5 DW_TAG_formal_parameter
	.long	1038                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x434:0x18 DW_TAG_subprogram
	.byte	78                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	284                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x43c:0x5 DW_TAG_formal_parameter
	.long	1100                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x441:0x5 DW_TAG_formal_parameter
	.long	1038                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x446:0x5 DW_TAG_formal_parameter
	.long	284                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x44c:0x5 DW_TAG_pointer_type
	.long	1105                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x451:0x5 DW_TAG_const_type
	.long	431                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x456:0x5 DW_TAG_pointer_type
	.long	671                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x45b:0x5 DW_TAG_const_type
	.long	284                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x460:0x5 DW_TAG_const_type
	.long	348                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x465:0x5 DW_TAG_const_type
	.long	1038                            # DW_AT_type
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
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
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
	.asciz	"liblzma/common/block_header_encoder.c" # string offset=105
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
	.asciz	"lzma_vli_size"                 # string offset=470
.Linfo_string22:
	.asciz	"__uint32_t"                    # string offset=484
.Linfo_string23:
	.asciz	"uint32_t"                      # string offset=495
.Linfo_string24:
	.asciz	"unsigned long"                 # string offset=504
.Linfo_string25:
	.asciz	"__uint64_t"                    # string offset=518
.Linfo_string26:
	.asciz	"uint64_t"                      # string offset=529
.Linfo_string27:
	.asciz	"lzma_vli"                      # string offset=538
.Linfo_string28:
	.asciz	"lzma_filter_flags_size"        # string offset=547
.Linfo_string29:
	.asciz	"lzma_ret"                      # string offset=570
.Linfo_string30:
	.asciz	"id"                            # string offset=579
.Linfo_string31:
	.asciz	"options"                       # string offset=582
.Linfo_string32:
	.asciz	"lzma_filter"                   # string offset=590
.Linfo_string33:
	.asciz	"unaligned_write32le"           # string offset=602
.Linfo_string34:
	.asciz	"buf"                           # string offset=622
.Linfo_string35:
	.asciz	"unsigned char"                 # string offset=626
.Linfo_string36:
	.asciz	"__uint8_t"                     # string offset=640
.Linfo_string37:
	.asciz	"uint8_t"                       # string offset=650
.Linfo_string38:
	.asciz	"num"                           # string offset=658
.Linfo_string39:
	.asciz	"lzma_block_unpadded_size"      # string offset=662
.Linfo_string40:
	.asciz	"version"                       # string offset=687
.Linfo_string41:
	.asciz	"header_size"                   # string offset=695
.Linfo_string42:
	.asciz	"check"                         # string offset=707
.Linfo_string43:
	.asciz	"lzma_check"                    # string offset=713
.Linfo_string44:
	.asciz	"compressed_size"               # string offset=724
.Linfo_string45:
	.asciz	"uncompressed_size"             # string offset=740
.Linfo_string46:
	.asciz	"filters"                       # string offset=758
.Linfo_string47:
	.asciz	"raw_check"                     # string offset=766
.Linfo_string48:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=776
.Linfo_string49:
	.asciz	"reserved_ptr1"                 # string offset=796
.Linfo_string50:
	.asciz	"reserved_ptr2"                 # string offset=810
.Linfo_string51:
	.asciz	"reserved_ptr3"                 # string offset=824
.Linfo_string52:
	.asciz	"reserved_int1"                 # string offset=838
.Linfo_string53:
	.asciz	"reserved_int2"                 # string offset=852
.Linfo_string54:
	.asciz	"reserved_int3"                 # string offset=866
.Linfo_string55:
	.asciz	"reserved_int4"                 # string offset=880
.Linfo_string56:
	.asciz	"reserved_int5"                 # string offset=894
.Linfo_string57:
	.asciz	"reserved_int6"                 # string offset=908
.Linfo_string58:
	.asciz	"reserved_int7"                 # string offset=922
.Linfo_string59:
	.asciz	"reserved_int8"                 # string offset=936
.Linfo_string60:
	.asciz	"reserved_enum1"                # string offset=950
.Linfo_string61:
	.asciz	"lzma_reserved_enum"            # string offset=965
.Linfo_string62:
	.asciz	"reserved_enum2"                # string offset=984
.Linfo_string63:
	.asciz	"reserved_enum3"                # string offset=999
.Linfo_string64:
	.asciz	"reserved_enum4"                # string offset=1014
.Linfo_string65:
	.asciz	"reserved_bool1"                # string offset=1029
.Linfo_string66:
	.asciz	"lzma_bool"                     # string offset=1044
.Linfo_string67:
	.asciz	"reserved_bool2"                # string offset=1054
.Linfo_string68:
	.asciz	"reserved_bool3"                # string offset=1069
.Linfo_string69:
	.asciz	"reserved_bool4"                # string offset=1084
.Linfo_string70:
	.asciz	"reserved_bool5"                # string offset=1099
.Linfo_string71:
	.asciz	"reserved_bool6"                # string offset=1114
.Linfo_string72:
	.asciz	"reserved_bool7"                # string offset=1129
.Linfo_string73:
	.asciz	"reserved_bool8"                # string offset=1144
.Linfo_string74:
	.asciz	"lzma_block"                    # string offset=1159
.Linfo_string75:
	.asciz	"lzma_vli_encode"               # string offset=1170
.Linfo_string76:
	.asciz	"size_t"                        # string offset=1186
.Linfo_string77:
	.asciz	"lzma_filter_flags_encode"      # string offset=1193
.Linfo_string78:
	.asciz	"lzma_crc32"                    # string offset=1218
.Linfo_string79:
	.asciz	"lzma_block_header_size"        # string offset=1229
.Linfo_string80:
	.asciz	"lzma_block_header_encode"      # string offset=1252
.Linfo_string81:
	.asciz	"add"                           # string offset=1277
.Linfo_string82:
	.asciz	"block"                         # string offset=1281
.Linfo_string83:
	.asciz	"size"                          # string offset=1287
.Linfo_string84:
	.asciz	"i"                             # string offset=1292
.Linfo_string85:
	.asciz	"ret_"                          # string offset=1294
.Linfo_string86:
	.asciz	"out_pos"                       # string offset=1299
.Linfo_string87:
	.asciz	"out"                           # string offset=1307
.Linfo_string88:
	.asciz	"out_size"                      # string offset=1311
.Linfo_string89:
	.asciz	"filter_count"                  # string offset=1320
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
	.quad	.Ltmp7
	.quad	.Ltmp20
	.quad	.Ltmp29
	.quad	.Ltmp8
	.quad	.Ltmp21
	.quad	.Ltmp30
	.quad	.Ltmp37
	.quad	.Ltmp43
	.quad	.Ltmp49
	.quad	.Lfunc_begin1
	.quad	.Ltmp68
	.quad	.Ltmp74
	.quad	.Ltmp108
	.quad	.Ltmp61
	.quad	.Ltmp69
	.quad	.Ltmp75
	.quad	.Ltmp82
	.quad	.Ltmp88
	.quad	.Ltmp94
	.quad	.Ltmp100
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
