	.text
	.file	"alone_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/alone_encoder.c" md5 0x9ce5b2abad8b3bd39d3b362b1a2c7b9d
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	10 "liblzma/api/lzma" "lzma.h" md5 0xc59c540efa0aff44f03d71331089fff8
	.globl	lzma_alone_encoder              # -- Begin function lzma_alone_encoder
	.p2align	4, 0x90
	.type	lzma_alone_encoder,@function
lzma_alone_encoder:                     # @lzma_alone_encoder
.Lfunc_begin0:
	.loc	0 152 0                         # liblzma/common/alone_encoder.c:152:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_alone_encoder:strm <- $rdi
	#DEBUG_VALUE: lzma_alone_encoder:options <- $rsi
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
.Ltmp0:
	.loc	0 153 2 prologue_end            # liblzma/common/alone_encoder.c:153:2
	callq	lzma_strm_init@PLT
.Ltmp1:
	#DEBUG_VALUE: lzma_alone_encoder:options <- $r14
	#DEBUG_VALUE: lzma_alone_encoder:strm <- $rbx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 153 2 is_stmt 0               # liblzma/common/alone_encoder.c:153:2
	testl	%eax, %eax
	je	.LBB0_1
.Ltmp2:
# %bb.4:                                # %return
	#DEBUG_VALUE: lzma_alone_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_encoder:options <- $r14
	.loc	0 159 1 epilogue_begin is_stmt 1 # liblzma/common/alone_encoder.c:159:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp3:
	#DEBUG_VALUE: lzma_alone_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp4:
	#DEBUG_VALUE: lzma_alone_encoder:options <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp5:
.LBB0_1:                                # %do.end
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_alone_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_encoder:options <- $r14
	.loc	0 153 2                         # liblzma/common/alone_encoder.c:153:2
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movq	%r14, %rdx
	callq	alone_encoder_init
.Ltmp6:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 153 2 is_stmt 0               # liblzma/common/alone_encoder.c:153:2
	testl	%eax, %eax
.Ltmp7:
	.loc	0 153 2                         # liblzma/common/alone_encoder.c:153:2
	je	.LBB0_3
.Ltmp8:
# %bb.2:                                # %cleanup7
	#DEBUG_VALUE: lzma_alone_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_encoder:options <- $r14
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 153 2                         # liblzma/common/alone_encoder.c:153:2
	movq	%rbx, %rdi
	movl	%eax, %ebx
.Ltmp9:
	#DEBUG_VALUE: ret_ <- $ebx
	#DEBUG_VALUE: lzma_alone_encoder:strm <- $rdi
	callq	lzma_end@PLT
.Ltmp10:
	#DEBUG_VALUE: lzma_alone_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 2                           # liblzma/common/alone_encoder.c:0:2
	movl	%ebx, %eax
.Ltmp11:
	.loc	0 159 1 epilogue_begin is_stmt 1 # liblzma/common/alone_encoder.c:159:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp12:
	#DEBUG_VALUE: ret_ <- $eax
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp13:
	#DEBUG_VALUE: lzma_alone_encoder:options <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp14:
.LBB0_3:                                # %do.end10
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_alone_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_encoder:options <- $r14
	.loc	0 155 8                         # liblzma/common/alone_encoder.c:155:8
	movq	56(%rbx), %rax
	.loc	0 155 46 is_stmt 0              # liblzma/common/alone_encoder.c:155:46
	movb	$1, 80(%rax)
	.loc	0 156 8 is_stmt 1               # liblzma/common/alone_encoder.c:156:8
	movq	56(%rbx), %rax
	.loc	0 156 49 is_stmt 0              # liblzma/common/alone_encoder.c:156:49
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	.loc	0 159 1 epilogue_begin is_stmt 1 # liblzma/common/alone_encoder.c:159:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp15:
	#DEBUG_VALUE: lzma_alone_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp16:
	#DEBUG_VALUE: lzma_alone_encoder:options <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp17:
.Lfunc_end0:
	.size	lzma_alone_encoder, .Lfunc_end0-lzma_alone_encoder
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function alone_encoder_init
	.type	alone_encoder_init,@function
alone_encoder_init:                     # @alone_encoder_init
.Lfunc_begin1:
	.loc	0 82 0                          # liblzma/common/alone_encoder.c:82:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: alone_encoder_init:next <- $rdi
	#DEBUG_VALUE: alone_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: alone_encoder_init:options <- $rdx
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp18:
	.loc	0 83 2 prologue_end             # liblzma/common/alone_encoder.c:83:2
	cmpq	$alone_encoder_init, 16(%rdi)
.Ltmp19:
	.loc	0 83 2 is_stmt 0                # liblzma/common/alone_encoder.c:83:2
	je	.LBB1_2
.Ltmp20:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: alone_encoder_init:next <- $r14
	#DEBUG_VALUE: alone_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: alone_encoder_init:options <- $r15
	.loc	0 83 2                          # liblzma/common/alone_encoder.c:83:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	lzma_next_end@PLT
.Ltmp21:
.LBB1_2:                                # %if.end
	#DEBUG_VALUE: alone_encoder_init:next <- $r14
	#DEBUG_VALUE: alone_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: alone_encoder_init:options <- $r15
	.loc	0 83 2                          # liblzma/common/alone_encoder.c:83:2
	movq	$alone_encoder_init, 16(%r14)
.Ltmp22:
	.loc	0 85 12 is_stmt 1               # liblzma/common/alone_encoder.c:85:12
	movq	(%r14), %rax
	.loc	0 85 18 is_stmt 0               # liblzma/common/alone_encoder.c:85:18
	testq	%rax, %rax
.Ltmp23:
	.loc	0 85 6                          # liblzma/common/alone_encoder.c:85:6
	jne	.LBB1_6
.Ltmp24:
# %bb.3:                                # %if.then3
	#DEBUG_VALUE: alone_encoder_init:next <- $r14
	#DEBUG_VALUE: alone_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: alone_encoder_init:options <- $r15
	.loc	0 86 17 is_stmt 1               # liblzma/common/alone_encoder.c:86:17
	movl	$96, %edi
	movq	%rbx, %rsi
	callq	lzma_alloc@PLT
.Ltmp25:
	.loc	0 86 15 is_stmt 0               # liblzma/common/alone_encoder.c:86:15
	movq	%rax, (%r14)
.Ltmp26:
	.loc	0 87 19 is_stmt 1               # liblzma/common/alone_encoder.c:87:19
	testq	%rax, %rax
.Ltmp27:
	.loc	0 87 7 is_stmt 0                # liblzma/common/alone_encoder.c:87:7
	je	.LBB1_4
.Ltmp28:
# %bb.5:                                # %if.end8
	#DEBUG_VALUE: alone_encoder_init:next <- $r14
	#DEBUG_VALUE: alone_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: alone_encoder_init:options <- $r15
	.loc	0 90 14 is_stmt 1               # liblzma/common/alone_encoder.c:90:14
	movq	$alone_encode, 24(%r14)
	.loc	0 91 13                         # liblzma/common/alone_encoder.c:91:13
	movq	$alone_encoder_end, 32(%r14)
	.loc	0 92 47                         # liblzma/common/alone_encoder.c:92:47
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
.Ltmp29:
	.loc	0 96 31                         # liblzma/common/alone_encoder.c:96:31
	movq	(%r14), %rax
.Ltmp30:
.LBB1_6:                                # %if.end15
	#DEBUG_VALUE: alone_encoder_init:next <- $r14
	#DEBUG_VALUE: alone_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: alone_encoder_init:options <- $r15
	.loc	0 96 48 is_stmt 0               # liblzma/common/alone_encoder.c:96:48
	movl	$0, 64(%rax)
	.loc	0 97 31 is_stmt 1               # liblzma/common/alone_encoder.c:97:31
	movq	(%r14), %rax
	.loc	0 97 50 is_stmt 0               # liblzma/common/alone_encoder.c:97:50
	movq	$0, 72(%rax)
.Ltmp31:
	.loc	0 101 68 is_stmt 1              # liblzma/common/alone_encoder.c:101:68
	movq	(%r14), %rsi
	.loc	0 101 76 is_stmt 0              # liblzma/common/alone_encoder.c:101:76
	addq	$80, %rsi
	.loc	0 101 6                         # liblzma/common/alone_encoder.c:101:6
	movq	%r15, %rdi
	callq	lzma_lzma_lclppb_encode@PLT
.Ltmp32:
	movl	%eax, %ecx
	movl	$8, %eax
.Ltmp33:
	.loc	0 101 6                         # liblzma/common/alone_encoder.c:101:6
	testb	%cl, %cl
	jne	.LBB1_9
.Ltmp34:
# %bb.7:                                # %if.end21
	#DEBUG_VALUE: alone_encoder_init:next <- $r14
	#DEBUG_VALUE: alone_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: alone_encoder_init:options <- $r15
	.loc	0 105 15 is_stmt 1              # liblzma/common/alone_encoder.c:105:15
	movl	(%r15), %ecx
	.loc	0 105 25 is_stmt 0              # liblzma/common/alone_encoder.c:105:25
	cmpl	$4096, %ecx                     # imm = 0x1000
.Ltmp35:
	.loc	0 105 6                         # liblzma/common/alone_encoder.c:105:6
	jb	.LBB1_9
.Ltmp36:
# %bb.8:                                # %if.end24
	#DEBUG_VALUE: alone_encoder_init:next <- $r14
	#DEBUG_VALUE: alone_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: alone_encoder_init:options <- $r15
	.loc	0 112 34 is_stmt 1              # liblzma/common/alone_encoder.c:112:34
	decl	%ecx
.Ltmp37:
	#DEBUG_VALUE: alone_encoder_init:d <- $ecx
	.loc	0 113 9                         # liblzma/common/alone_encoder.c:113:9
	movl	%ecx, %eax
	shrl	$2, %eax
	.loc	0 113 4 is_stmt 0               # liblzma/common/alone_encoder.c:113:4
	orl	%ecx, %eax
.Ltmp38:
	#DEBUG_VALUE: alone_encoder_init:d <- $eax
	.loc	0 114 9 is_stmt 1               # liblzma/common/alone_encoder.c:114:9
	movl	%eax, %ecx
	shrl	$3, %ecx
	.loc	0 114 4 is_stmt 0               # liblzma/common/alone_encoder.c:114:4
	orl	%eax, %ecx
.Ltmp39:
	#DEBUG_VALUE: alone_encoder_init:d <- $ecx
	.loc	0 115 9 is_stmt 1               # liblzma/common/alone_encoder.c:115:9
	movl	%ecx, %eax
	shrl	$4, %eax
	.loc	0 115 4 is_stmt 0               # liblzma/common/alone_encoder.c:115:4
	orl	%ecx, %eax
.Ltmp40:
	#DEBUG_VALUE: alone_encoder_init:d <- $eax
	.loc	0 116 9 is_stmt 1               # liblzma/common/alone_encoder.c:116:9
	movl	%eax, %ecx
	shrl	$8, %ecx
	.loc	0 116 4 is_stmt 0               # liblzma/common/alone_encoder.c:116:4
	orl	%eax, %ecx
.Ltmp41:
	#DEBUG_VALUE: alone_encoder_init:d <- $ecx
	.loc	0 117 9 is_stmt 1               # liblzma/common/alone_encoder.c:117:9
	movl	%ecx, %eax
	shrl	$16, %eax
	.loc	0 117 4 is_stmt 0               # liblzma/common/alone_encoder.c:117:4
	orl	%ecx, %eax
.Ltmp42:
	#DEBUG_VALUE: alone_encoder_init:d <- $eax
	.loc	0 118 8 is_stmt 1               # liblzma/common/alone_encoder.c:118:8
	incl	%eax
.Ltmp43:
	.loc	0 0 8 is_stmt 0                 # liblzma/common/alone_encoder.c:0:8
	movl	$-1, %ecx
.Ltmp44:
	.loc	0 118 6                         # liblzma/common/alone_encoder.c:118:6
	cmovnel	%eax, %ecx
.Ltmp45:
	#DEBUG_VALUE: alone_encoder_init:d <- $ecx
	.loc	0 121 51 is_stmt 1              # liblzma/common/alone_encoder.c:121:51
	movq	(%r14), %rax
.Ltmp46:
	#DEBUG_VALUE: unaligned_write32le:num <- $ecx
	#DEBUG_VALUE: unaligned_write32le:buf <- [DW_OP_plus_uconst 81, DW_OP_stack_value] $rax
	.file	11 "common" "tuklib_integer.h" md5 0x877bd6a1d04ec1170bc985c87ef412ed
	.loc	11 356 9                        # common/tuklib_integer.h:356:9
	movl	%ecx, 81(%rax)
.Ltmp47:
	.loc	0 124 38                        # liblzma/common/alone_encoder.c:124:38
	movq	(%r14), %rax
.Ltmp48:
	.loc	0 124 2 is_stmt 0               # liblzma/common/alone_encoder.c:124:2
	movq	$-1, 85(%rax)
	.loc	0 128 3 is_stmt 1               # liblzma/common/alone_encoder.c:128:3
	movq	$0, (%rsp)
	movq	lzma_lzma_encoder_init@GOTPCREL(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	.loc	0 127 38                        # liblzma/common/alone_encoder.c:127:38
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rsp)
	movq	$0, 40(%rsp)
	.loc	0 136 61                        # liblzma/common/alone_encoder.c:136:61
	movq	(%r14), %rdi
	movq	%rsp, %rdx
	.loc	0 136 9 is_stmt 0               # liblzma/common/alone_encoder.c:136:9
	movq	%rbx, %rsi
	callq	lzma_next_filter_init@PLT
.Ltmp49:
	.loc	0 0 9                           # liblzma/common/alone_encoder.c:0:9
	jmp	.LBB1_9
.Ltmp50:
.LBB1_4:
	#DEBUG_VALUE: alone_encoder_init:next <- $r14
	#DEBUG_VALUE: alone_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: alone_encoder_init:options <- $r15
	movl	$5, %eax
.Ltmp51:
.LBB1_9:                                # %return
	#DEBUG_VALUE: alone_encoder_init:next <- $r14
	#DEBUG_VALUE: alone_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: alone_encoder_init:options <- $r15
	.loc	0 137 1 epilogue_begin is_stmt 1 # liblzma/common/alone_encoder.c:137:1
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
.Ltmp52:
	#DEBUG_VALUE: alone_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp53:
	#DEBUG_VALUE: alone_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp54:
	#DEBUG_VALUE: alone_encoder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 8
	retq
.Ltmp55:
.Lfunc_end1:
	.size	alone_encoder_init, .Lfunc_end1-alone_encoder_init
	.cfi_endproc
	.file	12 "liblzma/lzma" "lzma_encoder.h" md5 0xf040cedafb3694586d90cdd6536f6965
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function alone_encode
	.type	alone_encode,@function
alone_encode:                           # @alone_encode
.Lfunc_begin2:
	.loc	0 40 0                          # liblzma/common/alone_encoder.c:40:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: alone_encode:pcoder <- $rdi
	#DEBUG_VALUE: alone_encode:allocator <- $rsi
	#DEBUG_VALUE: alone_encode:in <- $rdx
	#DEBUG_VALUE: alone_encode:in_pos <- $rcx
	#DEBUG_VALUE: alone_encode:in_size <- $r8
	#DEBUG_VALUE: alone_encode:out <- $r9
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
.Ltmp56:
	#DEBUG_VALUE: alone_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: alone_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: alone_encode:action <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: alone_encode:coder <- $rdi
	movq	88(%rsp), %rbx
	movq	80(%rsp), %r14
.Ltmp57:
	.loc	0 42 18 prologue_end            # liblzma/common/alone_encoder.c:42:18
	cmpq	%rbx, (%r14)
	.loc	0 42 2 is_stmt 0                # liblzma/common/alone_encoder.c:42:2
	jae	.LBB2_5
.Ltmp58:
# %bb.1:                                # %while.body.lr.ph
	#DEBUG_VALUE: alone_encode:pcoder <- $rdi
	#DEBUG_VALUE: alone_encode:allocator <- $rsi
	#DEBUG_VALUE: alone_encode:in <- $rdx
	#DEBUG_VALUE: alone_encode:in_pos <- $rcx
	#DEBUG_VALUE: alone_encode:in_size <- $r8
	#DEBUG_VALUE: alone_encode:out <- $r9
	#DEBUG_VALUE: alone_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: alone_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: alone_encode:action <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: alone_encode:coder <- $rdi
	.loc	0 43 17 is_stmt 1               # liblzma/common/alone_encoder.c:43:17
	movl	64(%rdi), %r10d
	.loc	0 43 2 is_stmt 0                # liblzma/common/alone_encoder.c:43:2
	cmpl	$1, %r10d
	je	.LBB2_8
.Ltmp59:
# %bb.2:                                # %while.body.lr.ph
	#DEBUG_VALUE: alone_encode:pcoder <- $rdi
	#DEBUG_VALUE: alone_encode:allocator <- $rsi
	#DEBUG_VALUE: alone_encode:in <- $rdx
	#DEBUG_VALUE: alone_encode:in_pos <- $rcx
	#DEBUG_VALUE: alone_encode:in_size <- $r8
	#DEBUG_VALUE: alone_encode:out <- $r9
	#DEBUG_VALUE: alone_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: alone_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: alone_encode:action <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: alone_encode:coder <- $rdi
	.loc	0 0 2                           # liblzma/common/alone_encoder.c:0:2
	movl	$11, %eax
	.loc	0 43 2                          # liblzma/common/alone_encoder.c:43:2
	testl	%r10d, %r10d
	jne	.LBB2_6
.Ltmp60:
# %bb.3:                                # %sw.bb.peel
	#DEBUG_VALUE: alone_encode:pcoder <- $rdi
	#DEBUG_VALUE: alone_encode:allocator <- $rsi
	#DEBUG_VALUE: alone_encode:in <- $rdx
	#DEBUG_VALUE: alone_encode:in_pos <- $rcx
	#DEBUG_VALUE: alone_encode:in_size <- $r8
	#DEBUG_VALUE: alone_encode:out <- $r9
	#DEBUG_VALUE: alone_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: alone_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: alone_encode:action <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: alone_encode:coder <- $rdi
	.loc	0 0 2                           # liblzma/common/alone_encoder.c:0:2
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
.Ltmp61:
	#DEBUG_VALUE: alone_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	movq	%rdx, (%rsp)                    # 8-byte Spill
.Ltmp62:
	#DEBUG_VALUE: alone_encode:in <- [$rsp+0]
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
.Ltmp63:
	#DEBUG_VALUE: alone_encode:in_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	movq	%r8, %r12
.Ltmp64:
	#DEBUG_VALUE: alone_encode:in_size <- $r12
	leaq	80(%rdi), %rax
	movq	%rdi, %r13
	leaq	72(%rdi), %r15
.Ltmp65:
	.loc	0 45 3 is_stmt 1                # liblzma/common/alone_encoder.c:45:3
	movl	$13, %edx
	movq	%rax, %rdi
.Ltmp66:
	#DEBUG_VALUE: alone_encode:coder <- $r13
	#DEBUG_VALUE: alone_encode:pcoder <- $r13
	movq	%r15, %rsi
	movq	%r9, %rbp
	movq	%r9, %rcx
	movq	%r14, %r8
	movq	%rbx, %r9
.Ltmp67:
	#DEBUG_VALUE: alone_encode:out <- $rbp
	callq	lzma_bufcpy@PLT
.Ltmp68:
	.loc	0 48 25                         # liblzma/common/alone_encoder.c:48:25
	cmpq	$13, (%r15)
.Ltmp69:
	.loc	0 48 7 is_stmt 0                # liblzma/common/alone_encoder.c:48:7
	jae	.LBB2_7
.Ltmp70:
.LBB2_5:
	#DEBUG_VALUE: alone_encode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: alone_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: alone_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: alone_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: alone_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: alone_encode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: alone_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: alone_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: alone_encode:action <- [DW_OP_plus_uconst 96] [$rsp+0]
	.loc	0 0 7                           # liblzma/common/alone_encoder.c:0:7
	xorl	%eax, %eax
.Ltmp71:
.LBB2_6:                                # %cleanup
	#DEBUG_VALUE: alone_encode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: alone_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: alone_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: alone_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: alone_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: alone_encode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: alone_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: alone_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: alone_encode:action <- [DW_OP_plus_uconst 96] [$rsp+0]
	.loc	0 65 1 epilogue_begin is_stmt 1 # liblzma/common/alone_encoder.c:65:1
	addq	$24, %rsp
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
.Ltmp72:
.LBB2_7:                                # %if.end.peel
	.cfi_def_cfa_offset 80
	#DEBUG_VALUE: alone_encode:pcoder <- $r13
	#DEBUG_VALUE: alone_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_encode:in <- [$rsp+0]
	#DEBUG_VALUE: alone_encode:in_pos <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: alone_encode:in_size <- $r12
	#DEBUG_VALUE: alone_encode:out <- $rbp
	#DEBUG_VALUE: alone_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: alone_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: alone_encode:action <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: alone_encode:coder <- $r13
	.loc	0 0 1 is_stmt 0                 # liblzma/common/alone_encoder.c:0:1
	movq	%r13, %rdi
.Ltmp73:
	.loc	0 51 19 is_stmt 1               # liblzma/common/alone_encoder.c:51:19
	movl	$1, 64(%r13)
	movl	$0, %eax
.Ltmp74:
	.loc	0 42 18                         # liblzma/common/alone_encoder.c:42:18
	cmpq	%rbx, (%r14)
	movq	%rbp, %r9
	movq	%r12, %r8
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	.loc	0 42 2 is_stmt 0                # liblzma/common/alone_encoder.c:42:2
	jae	.LBB2_6
.Ltmp75:
.LBB2_8:                                # %sw.bb4
	#DEBUG_VALUE: alone_encode:pcoder <- $rdi
	#DEBUG_VALUE: alone_encode:allocator <- $rsi
	#DEBUG_VALUE: alone_encode:in <- $rdx
	#DEBUG_VALUE: alone_encode:in_pos <- $rcx
	#DEBUG_VALUE: alone_encode:in_size <- $r8
	#DEBUG_VALUE: alone_encode:out <- $r9
	#DEBUG_VALUE: alone_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: alone_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: alone_encode:action <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: alone_encode:coder <- $rdi
	.loc	0 55 39 is_stmt 1               # liblzma/common/alone_encoder.c:55:39
	movq	(%rdi), %rax
	.loc	0 55 22 is_stmt 0               # liblzma/common/alone_encoder.c:55:22
	movq	24(%rdi), %r11
	.loc	0 55 10                         # liblzma/common/alone_encoder.c:55:10
	movq	%rax, %rdi
.Ltmp76:
	#DEBUG_VALUE: alone_encode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 55 10 epilogue_begin          # liblzma/common/alone_encoder.c:55:10
	addq	$24, %rsp
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
.Ltmp77:
	jmpq	*%r11                           # TAILCALL
.Ltmp78:
.Lfunc_end2:
	.size	alone_encode, .Lfunc_end2-alone_encode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function alone_encoder_end
	.type	alone_encoder_end,@function
alone_encoder_end:                      # @alone_encoder_end
.Lfunc_begin3:
	.loc	0 70 0 is_stmt 1                # liblzma/common/alone_encoder.c:70:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: alone_encoder_end:pcoder <- $rdi
	#DEBUG_VALUE: alone_encoder_end:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp79:
	#DEBUG_VALUE: alone_encoder_end:coder <- $rdi
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp80:
	.loc	0 72 2 prologue_end             # liblzma/common/alone_encoder.c:72:2
	callq	lzma_next_end@PLT
.Ltmp81:
	#DEBUG_VALUE: alone_encoder_end:allocator <- $rbx
	#DEBUG_VALUE: alone_encoder_end:coder <- $r14
	#DEBUG_VALUE: alone_encoder_end:pcoder <- $r14
	.loc	0 73 2                          # liblzma/common/alone_encoder.c:73:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 73 2 epilogue_begin is_stmt 0 # liblzma/common/alone_encoder.c:73:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp82:
	#DEBUG_VALUE: alone_encoder_end:allocator <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp83:
	#DEBUG_VALUE: alone_encoder_end:coder <- $rdi
	#DEBUG_VALUE: alone_encoder_end:pcoder <- $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp84:
.Lfunc_end3:
	.size	alone_encoder_end, .Lfunc_end3-alone_encoder_end
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	18                              # Offset entry count
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
	.long	.Ldebug_loc13-.Lloclists_table_base0
	.long	.Ldebug_loc14-.Lloclists_table_base0
	.long	.Ldebug_loc15-.Lloclists_table_base0
	.long	.Ldebug_loc16-.Lloclists_table_base0
	.long	.Ldebug_loc17-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
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
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
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
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
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
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
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
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
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
	.byte	39                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.ascii	"\202\001"                      # DW_AT_call_tail_call
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\201\001"                      # DW_AT_call_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.ascii	"\202\001"                      # DW_AT_call_tail_call
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\201\001"                      # DW_AT_call_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	1                               # Abbrev [1] 0xc:0x80a DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	1                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x64:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x67:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6a:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6d:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x71:0x15 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x79:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7c:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7f:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x82:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x86:0x4e DW_TAG_structure_type
	.byte	68                              # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x8b:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	212                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x94:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	157                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0x9d:0x1b DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xa5:0x3 DW_TAG_enumerator
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa8:0x3 DW_TAG_enumerator
	.byte	58                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xab:0x3 DW_TAG_enumerator
	.byte	59                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xae:0x3 DW_TAG_enumerator
	.byte	60                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb1:0x3 DW_TAG_enumerator
	.byte	61                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb4:0x3 DW_TAG_enumerator
	.byte	62                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xb8:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xc1:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	748                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xca:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	760                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xd4:0x8 DW_TAG_typedef
	.long	220                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xdc:0x4e DW_TAG_structure_type
	.byte	54                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xe1:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	298                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xea:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xf3:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	335                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xfc:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	343                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x105:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	581                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x10e:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	606                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x117:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	640                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x120:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	676                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x12a:0x5 DW_TAG_pointer_type
	.long	303                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x12f:0x4 DW_TAG_typedef
	.byte	26                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x133:0x8 DW_TAG_typedef
	.long	315                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x13b:0x8 DW_TAG_typedef
	.long	323                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x143:0x8 DW_TAG_typedef
	.long	331                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x14b:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x14f:0x8 DW_TAG_typedef
	.long	331                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x157:0x8 DW_TAG_typedef
	.long	351                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x15f:0x5 DW_TAG_pointer_type
	.long	356                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x164:0x33 DW_TAG_subroutine_type
	.long	407                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x169:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x16e:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x173:0x5 DW_TAG_formal_parameter
	.long	517                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x178:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x17d:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x182:0x5 DW_TAG_formal_parameter
	.long	562                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x187:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x18c:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x191:0x5 DW_TAG_formal_parameter
	.long	572                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x197:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x19f:0x5 DW_TAG_pointer_type
	.long	420                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1a4:0x9 DW_TAG_typedef
	.long	429                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1ad:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x1b2:0xa DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	465                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1bc:0xa DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	500                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1c6:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1d1:0x5 DW_TAG_pointer_type
	.long	470                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1d6:0x15 DW_TAG_subroutine_type
	.long	491                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x1db:0x5 DW_TAG_formal_parameter
	.long	491                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1e0:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1e5:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1eb:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0x1ec:0x8 DW_TAG_typedef
	.long	331                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1f4:0x5 DW_TAG_pointer_type
	.long	505                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1f9:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x1fa:0x5 DW_TAG_formal_parameter
	.long	491                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1ff:0x5 DW_TAG_formal_parameter
	.long	491                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x205:0x5 DW_TAG_restrict_type
	.long	522                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x20a:0x5 DW_TAG_pointer_type
	.long	527                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x20f:0x5 DW_TAG_const_type
	.long	532                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x214:0x8 DW_TAG_typedef
	.long	540                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x21c:0x8 DW_TAG_typedef
	.long	548                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x224:0x4 DW_TAG_base_type
	.byte	41                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x228:0x5 DW_TAG_restrict_type
	.long	557                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x22d:0x5 DW_TAG_pointer_type
	.long	492                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x232:0x5 DW_TAG_restrict_type
	.long	567                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x237:0x5 DW_TAG_pointer_type
	.long	532                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x23c:0x9 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x245:0x8 DW_TAG_typedef
	.long	589                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x24d:0x5 DW_TAG_pointer_type
	.long	594                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x252:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x253:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x258:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x25e:0x5 DW_TAG_pointer_type
	.long	611                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x263:0xb DW_TAG_subroutine_type
	.long	622                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x268:0x5 DW_TAG_formal_parameter
	.long	630                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x26e:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x276:0x5 DW_TAG_pointer_type
	.long	635                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x27b:0x5 DW_TAG_const_type
	.long	303                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x280:0x5 DW_TAG_pointer_type
	.long	645                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x285:0x1a DW_TAG_subroutine_type
	.long	407                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x28a:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x28f:0x5 DW_TAG_formal_parameter
	.long	671                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x294:0x5 DW_TAG_formal_parameter
	.long	671                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x299:0x5 DW_TAG_formal_parameter
	.long	315                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x29f:0x5 DW_TAG_pointer_type
	.long	315                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2a4:0x5 DW_TAG_pointer_type
	.long	681                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2a9:0x1a DW_TAG_subroutine_type
	.long	407                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x2ae:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2b3:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2b8:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2bd:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2c3:0x5 DW_TAG_pointer_type
	.long	712                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2c8:0x5 DW_TAG_const_type
	.long	717                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2cd:0x8 DW_TAG_typedef
	.long	725                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x2d5:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x2d9:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2e2:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x2ec:0xc DW_TAG_array_type
	.long	760                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2f1:0x6 DW_TAG_subrange_type
	.long	764                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x2f8:0x4 DW_TAG_base_type
	.byte	65                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x2fc:0x4 DW_TAG_base_type
	.byte	66                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x300:0xc DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x308:0x3 DW_TAG_enumerator
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x30c:0xf DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x314:0x3 DW_TAG_enumerator
	.byte	70                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x317:0x3 DW_TAG_enumerator
	.byte	71                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x31b:0x18 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x323:0x3 DW_TAG_enumerator
	.byte	72                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x326:0x3 DW_TAG_enumerator
	.byte	73                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x329:0x3 DW_TAG_enumerator
	.byte	74                              # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x32c:0x3 DW_TAG_enumerator
	.byte	75                              # DW_AT_name
	.byte	19                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x32f:0x3 DW_TAG_enumerator
	.byte	76                              # DW_AT_name
	.byte	20                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x333:0x39 DW_TAG_structure_type
	.byte	81                              # DW_AT_name
	.byte	96                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x338:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	212                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x341:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	842                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0x34a:0xf DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x352:0x3 DW_TAG_enumerator
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x355:0x3 DW_TAG_enumerator
	.byte	78                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x359:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x362:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	876                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x36c:0xc DW_TAG_array_type
	.long	532                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x371:0x6 DW_TAG_subrange_type
	.long	764                             # DW_AT_type
	.byte	13                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x378:0x5 DW_TAG_pointer_type
	.long	819                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x37d:0x50 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x38c:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	987                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x395:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	1436                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x39e:0x1c DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	26                              # Abbrev [26] 0x3a0:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.long	2052                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x3a9:0x10 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp0                   # DW_AT_high_pc
	.byte	26                              # Abbrev [26] 0x3af:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.long	2052                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x3ba:0x6 DW_TAG_call_site
	.long	973                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	28                              # Abbrev [28] 0x3c0:0x6 DW_TAG_call_site
	.long	1209                            # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	28                              # Abbrev [28] 0x3c6:0x6 DW_TAG_call_site
	.long	1327                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x3cd:0xe DW_TAG_subprogram
	.byte	82                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x3d5:0x5 DW_TAG_formal_parameter
	.long	987                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3db:0x5 DW_TAG_pointer_type
	.long	992                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3e0:0x9 DW_TAG_typedef
	.long	1001                            # DW_AT_type
	.byte	102                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3e9:0xba DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x3ee:0xa DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3f8:0xa DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x402:0xa DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x40c:0xa DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	567                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x416:0xa DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x420:0xa DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x42a:0xa DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	415                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x434:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1187                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x43e:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x448:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x452:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x45c:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x466:0xa DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x470:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x47a:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x484:0xa DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x48e:0xa DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	1201                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x498:0xa DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	1201                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4a3:0x5 DW_TAG_pointer_type
	.long	1192                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4a8:0x9 DW_TAG_typedef
	.long	134                             # DW_AT_type
	.byte	90                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x4b1:0x8 DW_TAG_typedef
	.long	768                             # DW_AT_type
	.byte	100                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x4b9:0x76 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4c8:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.long	1393                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4d1:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4da:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.long	1436                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x4e3:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.long	2057                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x4ee:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.long	1362                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x4f7:0x1f DW_TAG_inlined_subroutine
	.long	1338                            # DW_AT_abstract_origin
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp47-.Ltmp46                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	121                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x504:0xa DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	112
	.asciz	"\321"
	.byte	159
	.long	1343                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x50e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	1352                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x516:0x6 DW_TAG_call_site
	.long	1378                            # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	28                              # Abbrev [28] 0x51c:0x6 DW_TAG_call_site
	.long	1398                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	28                              # Abbrev [28] 0x522:0x6 DW_TAG_call_site
	.long	1417                            # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	28                              # Abbrev [28] 0x528:0x6 DW_TAG_call_site
	.long	1713                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x52f:0xb DW_TAG_subprogram
	.byte	103                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x534:0x5 DW_TAG_formal_parameter
	.long	987                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x53a:0x18 DW_TAG_subprogram
	.byte	104                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	36                              # Abbrev [36] 0x53f:0x9 DW_TAG_formal_parameter
	.byte	105                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	567                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x548:0x9 DW_TAG_formal_parameter
	.byte	106                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	1362                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x552:0x8 DW_TAG_typedef
	.long	1370                            # DW_AT_type
	.byte	108                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x55a:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	107                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	37                              # Abbrev [37] 0x562:0xf DW_TAG_subprogram
	.byte	109                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x566:0x5 DW_TAG_formal_parameter
	.long	1393                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x56b:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x571:0x5 DW_TAG_pointer_type
	.long	212                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x576:0x13 DW_TAG_subprogram
	.byte	110                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	491                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x57e:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x583:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x589:0x13 DW_TAG_subprogram
	.byte	111                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	760                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x591:0x5 DW_TAG_formal_parameter
	.long	1436                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x596:0x5 DW_TAG_formal_parameter
	.long	567                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x59c:0x5 DW_TAG_pointer_type
	.long	1441                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x5a1:0x5 DW_TAG_const_type
	.long	1446                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x5a6:0x9 DW_TAG_typedef
	.long	1455                            # DW_AT_type
	.byte	130                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	399                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x5af:0xf2 DW_TAG_structure_type
	.byte	112                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x5b3:0x9 DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x5bc:0x9 DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x5c5:0x9 DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5ce:0xa DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5d8:0xa DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5e2:0xa DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5ec:0xa DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	1697                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x5f6:0xa DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x600:0xa DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	1705                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x60a:0xa DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x614:0xa DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x61e:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x628:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x632:0xa DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x63c:0xa DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x646:0xa DW_TAG_member
	.byte	125                             # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x650:0xa DW_TAG_member
	.byte	126                             # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x65a:0xa DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	1362                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x664:0xa DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	1201                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x66e:0xa DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	1201                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x678:0xa DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	1201                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	394                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x682:0xa DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	1201                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	395                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x68c:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	396                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x696:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	397                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6a1:0x8 DW_TAG_typedef
	.long	780                             # DW_AT_type
	.byte	119                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x6a9:0x8 DW_TAG_typedef
	.long	795                             # DW_AT_type
	.byte	122                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x6b1:0x18 DW_TAG_subprogram
	.byte	131                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x6b9:0x5 DW_TAG_formal_parameter
	.long	1393                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6be:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6c3:0x5 DW_TAG_formal_parameter
	.long	1737                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x6c9:0x5 DW_TAG_pointer_type
	.long	1742                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x6ce:0x5 DW_TAG_const_type
	.long	1747                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x6d3:0x8 DW_TAG_typedef
	.long	1755                            # DW_AT_type
	.byte	134                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x6db:0x21 DW_TAG_structure_type
	.byte	133                             # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x6e0:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x6e9:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	1788                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x6f2:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6fc:0x8 DW_TAG_typedef
	.long	1796                            # DW_AT_type
	.byte	132                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x704:0x5 DW_TAG_pointer_type
	.long	1801                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x709:0x15 DW_TAG_subroutine_type
	.long	407                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x70e:0x5 DW_TAG_formal_parameter
	.long	1393                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x713:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x718:0x5 DW_TAG_formal_parameter
	.long	1737                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x71e:0x7d DW_TAG_subprogram
	.byte	11                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	139                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x72d:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x736:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x73f:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	146                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	517                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x748:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	552                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x751:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x75a:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	562                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x763:0xc DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\320"
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	552                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x76f:0xc DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\330"
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x77b:0xc DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\340"
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	572                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x787:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	888                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x790:0x6 DW_TAG_call_site
	.long	1947                            # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	39                              # Abbrev [39] 0x796:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	91
                                        # DW_AT_call_tail_call
	.byte	13                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x79b:0x27 DW_TAG_subprogram
	.byte	135                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	492                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x7a3:0x5 DW_TAG_formal_parameter
	.long	517                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7a8:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7ad:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7b2:0x5 DW_TAG_formal_parameter
	.long	562                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7b7:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7bc:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x7c2:0x33 DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	24                              # Abbrev [24] 0x7cd:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x7d6:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x7df:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	888                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x7e8:0x6 DW_TAG_call_site
	.long	1378                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	41                              # Abbrev [41] 0x7ee:0x6 DW_TAG_call_site
	.long	2037                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	16                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x7f5:0xf DW_TAG_subprogram
	.byte	136                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x7f9:0x5 DW_TAG_formal_parameter
	.long	491                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7fe:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x804:0x5 DW_TAG_const_type
	.long	407                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x809:0xc DW_TAG_array_type
	.long	1742                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x80e:0x6 DW_TAG_subrange_type
	.long	764                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	1                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	616                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/alone_encoder.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=136
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=168
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=181
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=189
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=205
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=219
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=242
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=257
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=272
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=292
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=310
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=329
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=345
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=360
.Linfo_string16:
	.asciz	"LZMA_RUN"                      # string offset=376
.Linfo_string17:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=385
.Linfo_string18:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=401
.Linfo_string19:
	.asciz	"LZMA_FINISH"                   # string offset=417
.Linfo_string20:
	.asciz	"LZMA_CHECK_NONE"               # string offset=429
.Linfo_string21:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=445
.Linfo_string22:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=462
.Linfo_string23:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=479
.Linfo_string24:
	.asciz	"next"                          # string offset=497
.Linfo_string25:
	.asciz	"coder"                         # string offset=502
.Linfo_string26:
	.asciz	"lzma_coder"                    # string offset=508
.Linfo_string27:
	.asciz	"id"                            # string offset=519
.Linfo_string28:
	.asciz	"unsigned long"                 # string offset=522
.Linfo_string29:
	.asciz	"__uint64_t"                    # string offset=536
.Linfo_string30:
	.asciz	"uint64_t"                      # string offset=547
.Linfo_string31:
	.asciz	"lzma_vli"                      # string offset=556
.Linfo_string32:
	.asciz	"init"                          # string offset=565
.Linfo_string33:
	.asciz	"uintptr_t"                     # string offset=570
.Linfo_string34:
	.asciz	"code"                          # string offset=580
.Linfo_string35:
	.asciz	"lzma_ret"                      # string offset=585
.Linfo_string36:
	.asciz	"alloc"                         # string offset=594
.Linfo_string37:
	.asciz	"size_t"                        # string offset=600
.Linfo_string38:
	.asciz	"free"                          # string offset=607
.Linfo_string39:
	.asciz	"opaque"                        # string offset=612
.Linfo_string40:
	.asciz	"lzma_allocator"                # string offset=619
.Linfo_string41:
	.asciz	"unsigned char"                 # string offset=634
.Linfo_string42:
	.asciz	"__uint8_t"                     # string offset=648
.Linfo_string43:
	.asciz	"uint8_t"                       # string offset=658
.Linfo_string44:
	.asciz	"lzma_action"                   # string offset=666
.Linfo_string45:
	.asciz	"lzma_code_function"            # string offset=678
.Linfo_string46:
	.asciz	"end"                           # string offset=697
.Linfo_string47:
	.asciz	"lzma_end_function"             # string offset=701
.Linfo_string48:
	.asciz	"get_check"                     # string offset=719
.Linfo_string49:
	.asciz	"lzma_check"                    # string offset=729
.Linfo_string50:
	.asciz	"memconfig"                     # string offset=740
.Linfo_string51:
	.asciz	"update"                        # string offset=750
.Linfo_string52:
	.asciz	"options"                       # string offset=757
.Linfo_string53:
	.asciz	"lzma_filter"                   # string offset=765
.Linfo_string54:
	.asciz	"lzma_next_coder_s"             # string offset=777
.Linfo_string55:
	.asciz	"lzma_next_coder"               # string offset=795
.Linfo_string56:
	.asciz	"sequence"                      # string offset=811
.Linfo_string57:
	.asciz	"ISEQ_RUN"                      # string offset=820
.Linfo_string58:
	.asciz	"ISEQ_SYNC_FLUSH"               # string offset=829
.Linfo_string59:
	.asciz	"ISEQ_FULL_FLUSH"               # string offset=845
.Linfo_string60:
	.asciz	"ISEQ_FINISH"                   # string offset=861
.Linfo_string61:
	.asciz	"ISEQ_END"                      # string offset=873
.Linfo_string62:
	.asciz	"ISEQ_ERROR"                    # string offset=882
.Linfo_string63:
	.asciz	"avail_in"                      # string offset=893
.Linfo_string64:
	.asciz	"supported_actions"             # string offset=902
.Linfo_string65:
	.asciz	"_Bool"                         # string offset=920
.Linfo_string66:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=926
.Linfo_string67:
	.asciz	"allow_buf_error"               # string offset=946
.Linfo_string68:
	.asciz	"lzma_internal_s"               # string offset=962
.Linfo_string69:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=978
.Linfo_string70:
	.asciz	"LZMA_MODE_FAST"                # string offset=997
.Linfo_string71:
	.asciz	"LZMA_MODE_NORMAL"              # string offset=1012
.Linfo_string72:
	.asciz	"LZMA_MF_HC3"                   # string offset=1029
.Linfo_string73:
	.asciz	"LZMA_MF_HC4"                   # string offset=1041
.Linfo_string74:
	.asciz	"LZMA_MF_BT2"                   # string offset=1053
.Linfo_string75:
	.asciz	"LZMA_MF_BT3"                   # string offset=1065
.Linfo_string76:
	.asciz	"LZMA_MF_BT4"                   # string offset=1077
.Linfo_string77:
	.asciz	"SEQ_HEADER"                    # string offset=1089
.Linfo_string78:
	.asciz	"SEQ_CODE"                      # string offset=1100
.Linfo_string79:
	.asciz	"header_pos"                    # string offset=1109
.Linfo_string80:
	.asciz	"header"                        # string offset=1120
.Linfo_string81:
	.asciz	"lzma_coder_s"                  # string offset=1127
.Linfo_string82:
	.asciz	"lzma_strm_init"                # string offset=1140
.Linfo_string83:
	.asciz	"next_in"                       # string offset=1155
.Linfo_string84:
	.asciz	"total_in"                      # string offset=1163
.Linfo_string85:
	.asciz	"next_out"                      # string offset=1172
.Linfo_string86:
	.asciz	"avail_out"                     # string offset=1181
.Linfo_string87:
	.asciz	"total_out"                     # string offset=1191
.Linfo_string88:
	.asciz	"allocator"                     # string offset=1201
.Linfo_string89:
	.asciz	"internal"                      # string offset=1211
.Linfo_string90:
	.asciz	"lzma_internal"                 # string offset=1220
.Linfo_string91:
	.asciz	"reserved_ptr1"                 # string offset=1234
.Linfo_string92:
	.asciz	"reserved_ptr2"                 # string offset=1248
.Linfo_string93:
	.asciz	"reserved_ptr3"                 # string offset=1262
.Linfo_string94:
	.asciz	"reserved_ptr4"                 # string offset=1276
.Linfo_string95:
	.asciz	"reserved_int1"                 # string offset=1290
.Linfo_string96:
	.asciz	"reserved_int2"                 # string offset=1304
.Linfo_string97:
	.asciz	"reserved_int3"                 # string offset=1318
.Linfo_string98:
	.asciz	"reserved_int4"                 # string offset=1332
.Linfo_string99:
	.asciz	"reserved_enum1"                # string offset=1346
.Linfo_string100:
	.asciz	"lzma_reserved_enum"            # string offset=1361
.Linfo_string101:
	.asciz	"reserved_enum2"                # string offset=1380
.Linfo_string102:
	.asciz	"lzma_stream"                   # string offset=1395
.Linfo_string103:
	.asciz	"lzma_end"                      # string offset=1407
.Linfo_string104:
	.asciz	"unaligned_write32le"           # string offset=1416
.Linfo_string105:
	.asciz	"buf"                           # string offset=1436
.Linfo_string106:
	.asciz	"num"                           # string offset=1440
.Linfo_string107:
	.asciz	"__uint32_t"                    # string offset=1444
.Linfo_string108:
	.asciz	"uint32_t"                      # string offset=1455
.Linfo_string109:
	.asciz	"lzma_next_end"                 # string offset=1464
.Linfo_string110:
	.asciz	"lzma_alloc"                    # string offset=1478
.Linfo_string111:
	.asciz	"lzma_lzma_lclppb_encode"       # string offset=1489
.Linfo_string112:
	.asciz	"dict_size"                     # string offset=1513
.Linfo_string113:
	.asciz	"preset_dict"                   # string offset=1523
.Linfo_string114:
	.asciz	"preset_dict_size"              # string offset=1535
.Linfo_string115:
	.asciz	"lc"                            # string offset=1552
.Linfo_string116:
	.asciz	"lp"                            # string offset=1555
.Linfo_string117:
	.asciz	"pb"                            # string offset=1558
.Linfo_string118:
	.asciz	"mode"                          # string offset=1561
.Linfo_string119:
	.asciz	"lzma_mode"                     # string offset=1566
.Linfo_string120:
	.asciz	"nice_len"                      # string offset=1576
.Linfo_string121:
	.asciz	"mf"                            # string offset=1585
.Linfo_string122:
	.asciz	"lzma_match_finder"             # string offset=1588
.Linfo_string123:
	.asciz	"depth"                         # string offset=1606
.Linfo_string124:
	.asciz	"reserved_int5"                 # string offset=1612
.Linfo_string125:
	.asciz	"reserved_int6"                 # string offset=1626
.Linfo_string126:
	.asciz	"reserved_int7"                 # string offset=1640
.Linfo_string127:
	.asciz	"reserved_int8"                 # string offset=1654
.Linfo_string128:
	.asciz	"reserved_enum3"                # string offset=1668
.Linfo_string129:
	.asciz	"reserved_enum4"                # string offset=1683
.Linfo_string130:
	.asciz	"lzma_options_lzma"             # string offset=1698
.Linfo_string131:
	.asciz	"lzma_next_filter_init"         # string offset=1716
.Linfo_string132:
	.asciz	"lzma_init_function"            # string offset=1738
.Linfo_string133:
	.asciz	"lzma_filter_info_s"            # string offset=1757
.Linfo_string134:
	.asciz	"lzma_filter_info"              # string offset=1776
.Linfo_string135:
	.asciz	"lzma_bufcpy"                   # string offset=1793
.Linfo_string136:
	.asciz	"lzma_free"                     # string offset=1805
.Linfo_string137:
	.asciz	"lzma_alone_encoder"            # string offset=1815
.Linfo_string138:
	.asciz	"alone_encoder_init"            # string offset=1834
.Linfo_string139:
	.asciz	"alone_encode"                  # string offset=1853
.Linfo_string140:
	.asciz	"alone_encoder_end"             # string offset=1866
.Linfo_string141:
	.asciz	"strm"                          # string offset=1884
.Linfo_string142:
	.asciz	"ret_"                          # string offset=1889
.Linfo_string143:
	.asciz	"filters"                       # string offset=1894
.Linfo_string144:
	.asciz	"d"                             # string offset=1902
.Linfo_string145:
	.asciz	"pcoder"                        # string offset=1904
.Linfo_string146:
	.asciz	"in"                            # string offset=1911
.Linfo_string147:
	.asciz	"in_pos"                        # string offset=1914
.Linfo_string148:
	.asciz	"in_size"                       # string offset=1921
.Linfo_string149:
	.asciz	"out"                           # string offset=1929
.Linfo_string150:
	.asciz	"out_pos"                       # string offset=1933
.Linfo_string151:
	.asciz	"out_size"                      # string offset=1941
.Linfo_string152:
	.asciz	"action"                        # string offset=1950
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
	.long	.Linfo_string90
	.long	.Linfo_string91
	.long	.Linfo_string92
	.long	.Linfo_string93
	.long	.Linfo_string94
	.long	.Linfo_string95
	.long	.Linfo_string96
	.long	.Linfo_string97
	.long	.Linfo_string98
	.long	.Linfo_string99
	.long	.Linfo_string100
	.long	.Linfo_string101
	.long	.Linfo_string102
	.long	.Linfo_string103
	.long	.Linfo_string104
	.long	.Linfo_string105
	.long	.Linfo_string106
	.long	.Linfo_string107
	.long	.Linfo_string108
	.long	.Linfo_string109
	.long	.Linfo_string110
	.long	.Linfo_string111
	.long	.Linfo_string112
	.long	.Linfo_string113
	.long	.Linfo_string114
	.long	.Linfo_string115
	.long	.Linfo_string116
	.long	.Linfo_string117
	.long	.Linfo_string118
	.long	.Linfo_string119
	.long	.Linfo_string120
	.long	.Linfo_string121
	.long	.Linfo_string122
	.long	.Linfo_string123
	.long	.Linfo_string124
	.long	.Linfo_string125
	.long	.Linfo_string126
	.long	.Linfo_string127
	.long	.Linfo_string128
	.long	.Linfo_string129
	.long	.Linfo_string130
	.long	.Linfo_string131
	.long	.Linfo_string132
	.long	.Linfo_string133
	.long	.Linfo_string134
	.long	.Linfo_string135
	.long	.Linfo_string136
	.long	.Linfo_string137
	.long	.Linfo_string138
	.long	.Linfo_string139
	.long	.Linfo_string140
	.long	.Linfo_string141
	.long	.Linfo_string142
	.long	.Linfo_string143
	.long	.Linfo_string144
	.long	.Linfo_string145
	.long	.Linfo_string146
	.long	.Linfo_string147
	.long	.Linfo_string148
	.long	.Linfo_string149
	.long	.Linfo_string150
	.long	.Linfo_string151
	.long	.Linfo_string152
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp0
	.quad	.Ltmp1
	.quad	.Ltmp6
	.quad	.Ltmp10
	.quad	.Lfunc_begin1
	.quad	.Ltmp46
	.quad	.Ltmp21
	.quad	.Ltmp25
	.quad	.Ltmp32
	.quad	.Ltmp49
	.quad	.Lfunc_begin2
	.quad	.Ltmp68
	.quad	.Ltmp77
	.quad	.Lfunc_begin3
	.quad	.Ltmp81
	.quad	.Ltmp83
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
