	.text
	.file	"index_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/index_decoder.c" md5 0x76d3749acf8859145be85842b26a6ac3
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	10 "liblzma/api/lzma" "index.h" md5 0x923fbd07d3b348bf7a676d089b5c066f
	.globl	lzma_index_decoder              # -- Begin function lzma_index_decoder
	.p2align	4, 0x90
	.type	lzma_index_decoder,@function
lzma_index_decoder:                     # @lzma_index_decoder
.Lfunc_begin0:
	.loc	0 295 0                         # liblzma/common/index_decoder.c:295:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_decoder:strm <- $rdi
	#DEBUG_VALUE: lzma_index_decoder:i <- $rsi
	#DEBUG_VALUE: lzma_index_decoder:memlimit <- $rdx
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
.Ltmp0:
	.loc	0 296 2 prologue_end            # liblzma/common/index_decoder.c:296:2
	callq	lzma_strm_init@PLT
.Ltmp1:
	#DEBUG_VALUE: lzma_index_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_index_decoder:i <- $r15
	#DEBUG_VALUE: lzma_index_decoder:strm <- $rbx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 296 2 is_stmt 0               # liblzma/common/index_decoder.c:296:2
	testl	%eax, %eax
	je	.LBB0_1
.Ltmp2:
# %bb.4:                                # %return
	#DEBUG_VALUE: lzma_index_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_decoder:i <- $r15
	#DEBUG_VALUE: lzma_index_decoder:memlimit <- $r14
	.loc	0 302 1 epilogue_begin is_stmt 1 # liblzma/common/index_decoder.c:302:1
	popq	%rbx
.Ltmp3:
	#DEBUG_VALUE: lzma_index_decoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp4:
	#DEBUG_VALUE: lzma_index_decoder:memlimit <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp5:
	#DEBUG_VALUE: lzma_index_decoder:i <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp6:
.LBB0_1:                                # %do.end
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_index_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_decoder:i <- $r15
	#DEBUG_VALUE: lzma_index_decoder:memlimit <- $r14
	.loc	0 296 2                         # liblzma/common/index_decoder.c:296:2
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	index_decoder_init
.Ltmp7:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 296 2 is_stmt 0               # liblzma/common/index_decoder.c:296:2
	testl	%eax, %eax
.Ltmp8:
	.loc	0 296 2                         # liblzma/common/index_decoder.c:296:2
	je	.LBB0_3
.Ltmp9:
# %bb.2:                                # %cleanup7
	#DEBUG_VALUE: lzma_index_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_decoder:i <- $r15
	#DEBUG_VALUE: lzma_index_decoder:memlimit <- $r14
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 296 2                         # liblzma/common/index_decoder.c:296:2
	movq	%rbx, %rdi
	movl	%eax, %ebx
.Ltmp10:
	#DEBUG_VALUE: ret_ <- $ebx
	#DEBUG_VALUE: lzma_index_decoder:strm <- $rdi
	callq	lzma_end@PLT
.Ltmp11:
	#DEBUG_VALUE: lzma_index_decoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 2                           # liblzma/common/index_decoder.c:0:2
	movl	%ebx, %eax
.Ltmp12:
	.loc	0 302 1 epilogue_begin is_stmt 1 # liblzma/common/index_decoder.c:302:1
	popq	%rbx
.Ltmp13:
	#DEBUG_VALUE: ret_ <- $eax
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp14:
	#DEBUG_VALUE: lzma_index_decoder:memlimit <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp15:
	#DEBUG_VALUE: lzma_index_decoder:i <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp16:
.LBB0_3:                                # %do.end10
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_index_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_decoder:i <- $r15
	#DEBUG_VALUE: lzma_index_decoder:memlimit <- $r14
	.loc	0 298 8                         # liblzma/common/index_decoder.c:298:8
	movq	56(%rbx), %rax
	.loc	0 298 46 is_stmt 0              # liblzma/common/index_decoder.c:298:46
	movb	$1, 80(%rax)
	.loc	0 299 8 is_stmt 1               # liblzma/common/index_decoder.c:299:8
	movq	56(%rbx), %rax
	.loc	0 299 49 is_stmt 0              # liblzma/common/index_decoder.c:299:49
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	.loc	0 302 1 epilogue_begin is_stmt 1 # liblzma/common/index_decoder.c:302:1
	popq	%rbx
.Ltmp17:
	#DEBUG_VALUE: lzma_index_decoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp18:
	#DEBUG_VALUE: lzma_index_decoder:memlimit <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp19:
	#DEBUG_VALUE: lzma_index_decoder:i <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp20:
.Lfunc_end0:
	.size	lzma_index_decoder, .Lfunc_end0-lzma_index_decoder
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_decoder_init
	.type	index_decoder_init,@function
index_decoder_init:                     # @index_decoder_init
.Lfunc_begin1:
	.loc	0 270 0                         # liblzma/common/index_decoder.c:270:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: index_decoder_init:next <- $rdi
	#DEBUG_VALUE: index_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: index_decoder_init:i <- $rdx
	#DEBUG_VALUE: index_decoder_init:memlimit <- $rcx
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
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
.Ltmp21:
	.loc	0 271 2 prologue_end            # liblzma/common/index_decoder.c:271:2
	cmpq	$index_decoder_init, 16(%rdi)
.Ltmp22:
	.loc	0 271 2 is_stmt 0               # liblzma/common/index_decoder.c:271:2
	je	.LBB1_2
.Ltmp23:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: index_decoder_init:next <- $r12
	#DEBUG_VALUE: index_decoder_init:allocator <- $r14
	#DEBUG_VALUE: index_decoder_init:i <- $r15
	#DEBUG_VALUE: index_decoder_init:memlimit <- $rbx
	.loc	0 271 2                         # liblzma/common/index_decoder.c:271:2
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	lzma_next_end@PLT
.Ltmp24:
.LBB1_2:                                # %if.end
	#DEBUG_VALUE: index_decoder_init:next <- $r12
	#DEBUG_VALUE: index_decoder_init:allocator <- $r14
	#DEBUG_VALUE: index_decoder_init:i <- $r15
	#DEBUG_VALUE: index_decoder_init:memlimit <- $rbx
	.loc	0 271 2                         # liblzma/common/index_decoder.c:271:2
	movq	$index_decoder_init, 16(%r12)
.Ltmp25:
	.loc	0 273 8 is_stmt 1               # liblzma/common/index_decoder.c:273:8
	testq	%r15, %r15
	sete	%al
	testq	%rbx, %rbx
	sete	%cl
	.loc	0 273 16 is_stmt 0              # liblzma/common/index_decoder.c:273:16
	orb	%al, %cl
	movl	$11, %eax
	jne	.LBB1_11
.Ltmp26:
# %bb.3:                                # %if.end5
	#DEBUG_VALUE: index_decoder_init:next <- $r12
	#DEBUG_VALUE: index_decoder_init:allocator <- $r14
	#DEBUG_VALUE: index_decoder_init:i <- $r15
	#DEBUG_VALUE: index_decoder_init:memlimit <- $rbx
	.loc	0 276 12 is_stmt 1              # liblzma/common/index_decoder.c:276:12
	movq	(%r12), %rax
	.loc	0 276 18 is_stmt 0              # liblzma/common/index_decoder.c:276:18
	testq	%rax, %rax
.Ltmp27:
	.loc	0 276 6                         # liblzma/common/index_decoder.c:276:6
	je	.LBB1_5
.Ltmp28:
# %bb.4:                                # %if.else
	#DEBUG_VALUE: index_decoder_init:next <- $r12
	#DEBUG_VALUE: index_decoder_init:allocator <- $r14
	#DEBUG_VALUE: index_decoder_init:i <- $r15
	#DEBUG_VALUE: index_decoder_init:memlimit <- $rbx
	.loc	0 286 55 is_stmt 1              # liblzma/common/index_decoder.c:286:55
	movq	16(%rax), %rdi
	.loc	0 286 3 is_stmt 0               # liblzma/common/index_decoder.c:286:3
	movq	%r14, %rsi
	callq	lzma_index_end@PLT
.Ltmp29:
	.loc	0 0 3                           # liblzma/common/index_decoder.c:0:3
	jmp	.LBB1_7
.Ltmp30:
.LBB1_5:                                # %if.then7
	#DEBUG_VALUE: index_decoder_init:next <- $r12
	#DEBUG_VALUE: index_decoder_init:allocator <- $r14
	#DEBUG_VALUE: index_decoder_init:i <- $r15
	#DEBUG_VALUE: index_decoder_init:memlimit <- $rbx
	.loc	0 277 17 is_stmt 1              # liblzma/common/index_decoder.c:277:17
	movl	$72, %edi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp31:
	.loc	0 277 15 is_stmt 0              # liblzma/common/index_decoder.c:277:15
	movq	%rax, (%r12)
.Ltmp32:
	.loc	0 278 19 is_stmt 1              # liblzma/common/index_decoder.c:278:19
	testq	%rax, %rax
.Ltmp33:
	.loc	0 278 7 is_stmt 0               # liblzma/common/index_decoder.c:278:7
	je	.LBB1_10
.Ltmp34:
# %bb.6:                                # %if.end12
	#DEBUG_VALUE: index_decoder_init:next <- $r12
	#DEBUG_VALUE: index_decoder_init:allocator <- $r14
	#DEBUG_VALUE: index_decoder_init:i <- $r15
	#DEBUG_VALUE: index_decoder_init:memlimit <- $rbx
	.loc	0 281 14 is_stmt 1              # liblzma/common/index_decoder.c:281:14
	movq	$index_decode, 24(%r12)
	.loc	0 282 13                        # liblzma/common/index_decoder.c:282:13
	movq	$index_decoder_end, 32(%r12)
	.loc	0 283 19                        # liblzma/common/index_decoder.c:283:19
	movq	$index_decoder_memconfig, 48(%r12)
	.loc	0 284 46                        # liblzma/common/index_decoder.c:284:46
	movq	$0, 16(%rax)
.Ltmp35:
.LBB1_7:                                # %if.end16
	#DEBUG_VALUE: index_decoder_init:next <- $r12
	#DEBUG_VALUE: index_decoder_init:allocator <- $r14
	#DEBUG_VALUE: index_decoder_init:i <- $r15
	#DEBUG_VALUE: index_decoder_init:memlimit <- $rbx
	.loc	0 289 35                        # liblzma/common/index_decoder.c:289:35
	movq	(%r12), %r12
.Ltmp36:
	#DEBUG_VALUE: index_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: index_decoder_reset:pcoder <- $r12
	#DEBUG_VALUE: index_decoder_reset:coder <- $r12
	#DEBUG_VALUE: index_decoder_reset:allocator <- $r14
	#DEBUG_VALUE: index_decoder_reset:i <- $r15
	#DEBUG_VALUE: index_decoder_reset:memlimit <- $rbx
	.loc	0 248 19                        # liblzma/common/index_decoder.c:248:19
	movq	%r15, 24(%r12)
	.loc	0 249 5                         # liblzma/common/index_decoder.c:249:5
	movq	$0, (%r15)
	.loc	0 252 17                        # liblzma/common/index_decoder.c:252:17
	movq	%r14, %rdi
	callq	lzma_index_init@PLT
.Ltmp37:
	.loc	0 252 15 is_stmt 0              # liblzma/common/index_decoder.c:252:15
	movq	%rax, 16(%r12)
.Ltmp38:
	.loc	0 253 19 is_stmt 1              # liblzma/common/index_decoder.c:253:19
	testq	%rax, %rax
.Ltmp39:
	.loc	0 253 6 is_stmt 0               # liblzma/common/index_decoder.c:253:6
	je	.LBB1_10
.Ltmp40:
# %bb.8:                                # %if.end.i
	#DEBUG_VALUE: index_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: index_decoder_init:allocator <- $r14
	#DEBUG_VALUE: index_decoder_init:i <- $r15
	#DEBUG_VALUE: index_decoder_init:memlimit <- $rbx
	#DEBUG_VALUE: index_decoder_reset:pcoder <- $r12
	#DEBUG_VALUE: index_decoder_reset:coder <- $r12
	#DEBUG_VALUE: index_decoder_reset:allocator <- $r14
	#DEBUG_VALUE: index_decoder_reset:i <- $r15
	#DEBUG_VALUE: index_decoder_reset:memlimit <- $rbx
	.loc	0 257 18 is_stmt 1              # liblzma/common/index_decoder.c:257:18
	movl	$0, (%r12)
	.loc	0 258 18                        # liblzma/common/index_decoder.c:258:18
	movq	%rbx, 8(%r12)
	.loc	0 259 15                        # liblzma/common/index_decoder.c:259:15
	movq	$0, 32(%r12)
	.loc	0 260 13                        # liblzma/common/index_decoder.c:260:13
	movq	$0, 56(%r12)
	.loc	0 261 15                        # liblzma/common/index_decoder.c:261:15
	movl	$0, 64(%r12)
	xorl	%eax, %eax
	jmp	.LBB1_11
.Ltmp41:
.LBB1_10:
	#DEBUG_VALUE: index_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: index_decoder_init:allocator <- $r14
	#DEBUG_VALUE: index_decoder_init:i <- $r15
	#DEBUG_VALUE: index_decoder_init:memlimit <- $rbx
	.loc	0 0 15 is_stmt 0                # liblzma/common/index_decoder.c:0:15
	movl	$5, %eax
.Ltmp42:
.LBB1_11:                               # %return
	#DEBUG_VALUE: index_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: index_decoder_init:allocator <- $r14
	#DEBUG_VALUE: index_decoder_init:i <- $r15
	#DEBUG_VALUE: index_decoder_init:memlimit <- $rbx
	.loc	0 290 1 epilogue_begin is_stmt 1 # liblzma/common/index_decoder.c:290:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp43:
	#DEBUG_VALUE: index_decoder_init:memlimit <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp44:
	#DEBUG_VALUE: index_decoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp45:
	#DEBUG_VALUE: index_decoder_init:i <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 8
	retq
.Ltmp46:
.Lfunc_end1:
	.size	index_decoder_init, .Lfunc_end1-index_decoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_buffer_decode        # -- Begin function lzma_index_buffer_decode
	.p2align	4, 0x90
	.type	lzma_index_buffer_decode,@function
lzma_index_buffer_decode:               # @lzma_index_buffer_decode
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_buffer_decode:i <- $rdi
	#DEBUG_VALUE: lzma_index_buffer_decode:memlimit <- $rsi
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- $rdx
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- $rcx
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- $r8
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- $r9
	.loc	0 311 8 prologue_end            # liblzma/common/index_decoder.c:311:8
	movq	%rsi, %xmm0
	movq	%rdi, %xmm1
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	movq	%r8, %xmm0
	movq	%rcx, %xmm2
	punpcklqdq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0]
	pxor	%xmm0, %xmm0
	.loc	0 311 16 is_stmt 0              # liblzma/common/index_decoder.c:311:16
	pcmpeqd	%xmm0, %xmm2
	pcmpeqd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	shufps	$221, %xmm2, %xmm0              # xmm0 = xmm0[1,3],xmm2[1,3]
	shufps	$136, %xmm2, %xmm1              # xmm1 = xmm1[0,2],xmm2[0,2]
	andps	%xmm0, %xmm1
	movmskps	%xmm1, %r10d
	movl	$11, %eax
	testl	%r10d, %r10d
	je	.LBB2_1
.Ltmp47:
.LBB2_11:                               # %return
	#DEBUG_VALUE: lzma_index_buffer_decode:i <- $rdi
	#DEBUG_VALUE: lzma_index_buffer_decode:memlimit <- $rsi
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- $rdx
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- $rcx
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- $r8
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- $r9
	.loc	0 349 1 is_stmt 1               # liblzma/common/index_decoder.c:349:1
	retq
.Ltmp48:
.LBB2_1:                                # %lor.lhs.false6
	#DEBUG_VALUE: lzma_index_buffer_decode:i <- $rdi
	#DEBUG_VALUE: lzma_index_buffer_decode:memlimit <- $rsi
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- $rdx
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- $rcx
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- $r8
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- $r9
	.loc	0 312 47                        # liblzma/common/index_decoder.c:312:47
	cmpq	%r9, (%r8)
.Ltmp49:
	.loc	0 311 6                         # liblzma/common/index_decoder.c:311:6
	ja	.LBB2_11
.Ltmp50:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lzma_index_buffer_decode:i <- $rdi
	#DEBUG_VALUE: lzma_index_buffer_decode:memlimit <- $rsi
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- $rdx
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- $rcx
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- $r8
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- $r9
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
	movq	%rcx, %r15
.Ltmp51:
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- $r15
	.loc	0 0 6 is_stmt 0                 # liblzma/common/index_decoder.c:0:6
	movq	%r9, %r14
.Ltmp52:
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- $r14
	movq	%r8, %r13
.Ltmp53:
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- $r13
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
.Ltmp54:
	#DEBUG_VALUE: lzma_index_buffer_decode:memlimit <- [DW_OP_plus_uconst 24] [$rsp+0]
	.loc	0 317 2 is_stmt 1               # liblzma/common/index_decoder.c:317:2
	movq	(%rsi), %r12
.Ltmp55:
	#DEBUG_VALUE: index_decoder_reset:memlimit <- $r12
	#DEBUG_VALUE: index_decoder_reset:pcoder <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: index_decoder_reset:allocator <- $rdx
	#DEBUG_VALUE: index_decoder_reset:i <- $rdi
	#DEBUG_VALUE: index_decoder_reset:coder <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rsp
	.loc	0 248 19                        # liblzma/common/index_decoder.c:248:19
	movq	%rdi, 56(%rsp)
	.loc	0 249 5                         # liblzma/common/index_decoder.c:249:5
	movq	$0, (%rdi)
	movq	%rdx, %rbx
	.loc	0 252 17                        # liblzma/common/index_decoder.c:252:17
	movq	%rdx, %rdi
.Ltmp56:
	#DEBUG_VALUE: lzma_index_buffer_decode:i <- [DW_OP_LLVM_entry_value 1] $rdi
	callq	lzma_index_init@PLT
.Ltmp57:
	#DEBUG_VALUE: index_decoder_reset:allocator <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- $rbx
	.loc	0 252 15 is_stmt 0              # liblzma/common/index_decoder.c:252:15
	movq	%rax, 48(%rsp)
.Ltmp58:
	.loc	0 253 19 is_stmt 1              # liblzma/common/index_decoder.c:253:19
	testq	%rax, %rax
.Ltmp59:
	.loc	0 253 6 is_stmt 0               # liblzma/common/index_decoder.c:253:6
	je	.LBB2_3
.Ltmp60:
# %bb.4:                                # %do.end
	#DEBUG_VALUE: lzma_index_buffer_decode:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_buffer_decode:memlimit <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- $r15
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- $r13
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- $r14
	#DEBUG_VALUE: index_decoder_reset:memlimit <- $r12
	#DEBUG_VALUE: index_decoder_reset:pcoder <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: index_decoder_reset:allocator <- $rbx
	#DEBUG_VALUE: index_decoder_reset:coder <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rsp
	.loc	0 257 18 is_stmt 1              # liblzma/common/index_decoder.c:257:18
	movl	$0, 32(%rsp)
	.loc	0 258 18                        # liblzma/common/index_decoder.c:258:18
	movq	%r12, 40(%rsp)
	.loc	0 259 15                        # liblzma/common/index_decoder.c:259:15
	movq	$0, 64(%rsp)
	.loc	0 260 13                        # liblzma/common/index_decoder.c:260:13
	movq	$0, 88(%rsp)
	.loc	0 261 15                        # liblzma/common/index_decoder.c:261:15
	movl	$0, 96(%rsp)
.Ltmp61:
	#DEBUG_VALUE: ret_ <- 0
	.loc	0 0 15 is_stmt 0                # liblzma/common/index_decoder.c:0:15
	movq	%r13, %rcx
.Ltmp62:
	.loc	0 321 26 is_stmt 1              # liblzma/common/index_decoder.c:321:26
	movq	(%r13), %r12
.Ltmp63:
	#DEBUG_VALUE: lzma_index_buffer_decode:in_start <- $r12
	.loc	0 0 26 is_stmt 0                # liblzma/common/index_decoder.c:0:26
	leaq	32(%rsp), %rdi
	.loc	0 324 17 is_stmt 1              # liblzma/common/index_decoder.c:324:17
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %r8
	callq	index_decode
.Ltmp64:
	movl	%eax, %ebp
.Ltmp65:
	#DEBUG_VALUE: lzma_index_buffer_decode:ret <- $ebp
	.loc	0 0 17 is_stmt 0                # liblzma/common/index_decoder.c:0:17
	xorl	%eax, %eax
.Ltmp66:
	.loc	0 327 10 is_stmt 1              # liblzma/common/index_decoder.c:327:10
	cmpl	$1, %ebp
.Ltmp67:
	.loc	0 327 6 is_stmt 0               # liblzma/common/index_decoder.c:327:6
	je	.LBB2_10
.Ltmp68:
# %bb.5:                                # %if.else
	#DEBUG_VALUE: lzma_index_buffer_decode:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_buffer_decode:memlimit <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- $r15
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- $r13
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- $r14
	#DEBUG_VALUE: lzma_index_buffer_decode:in_start <- $r12
	#DEBUG_VALUE: lzma_index_buffer_decode:ret <- $ebp
	.loc	0 332 24 is_stmt 1              # liblzma/common/index_decoder.c:332:24
	movq	48(%rsp), %rdi
	.loc	0 332 3 is_stmt 0               # liblzma/common/index_decoder.c:332:3
	movq	%rbx, %rsi
	callq	lzma_index_end@PLT
.Ltmp69:
	.loc	0 333 11 is_stmt 1              # liblzma/common/index_decoder.c:333:11
	movq	%r12, (%r13)
	.loc	0 335 7                         # liblzma/common/index_decoder.c:335:7
	testl	%ebp, %ebp
	je	.LBB2_6
.Ltmp70:
# %bb.7:                                # %if.else
	#DEBUG_VALUE: lzma_index_buffer_decode:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_buffer_decode:memlimit <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- $r15
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- $r13
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- $r14
	#DEBUG_VALUE: lzma_index_buffer_decode:in_start <- $r12
	#DEBUG_VALUE: lzma_index_buffer_decode:ret <- $ebp
	cmpl	$6, %ebp
	jne	.LBB2_9
.Ltmp71:
# %bb.8:                                # %if.then18
	#DEBUG_VALUE: lzma_index_buffer_decode:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_buffer_decode:memlimit <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- $r15
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- $r13
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- $r14
	#DEBUG_VALUE: lzma_index_buffer_decode:in_start <- $r12
	#DEBUG_VALUE: lzma_index_buffer_decode:ret <- $ebp
	.loc	0 344 45                        # liblzma/common/index_decoder.c:344:45
	movq	64(%rsp), %rsi
	.loc	0 344 16 is_stmt 0              # liblzma/common/index_decoder.c:344:16
	movl	$1, %edi
	callq	lzma_index_memusage@PLT
.Ltmp72:
	.loc	0 0 16                          # liblzma/common/index_decoder.c:0:16
	movq	24(%rsp), %rcx                  # 8-byte Reload
	.loc	0 344 14                        # liblzma/common/index_decoder.c:344:14
	movq	%rax, (%rcx)
	movl	$6, %eax
	.loc	0 345 3 is_stmt 1               # liblzma/common/index_decoder.c:345:3
	jmp	.LBB2_10
.Ltmp73:
.LBB2_3:
	#DEBUG_VALUE: lzma_index_buffer_decode:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_buffer_decode:memlimit <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- $r15
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- $r13
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- $r14
	#DEBUG_VALUE: index_decoder_reset:memlimit <- $r12
	#DEBUG_VALUE: index_decoder_reset:pcoder <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: index_decoder_reset:allocator <- $rbx
	#DEBUG_VALUE: index_decoder_reset:coder <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $rsp
	.loc	0 0 3 is_stmt 0                 # liblzma/common/index_decoder.c:0:3
	movl	$5, %eax
.Ltmp74:
	.loc	0 253 6 is_stmt 1               # liblzma/common/index_decoder.c:253:6
	jmp	.LBB2_10
.Ltmp75:
.LBB2_6:
	#DEBUG_VALUE: lzma_index_buffer_decode:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_buffer_decode:memlimit <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- $r15
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- $r13
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- $r14
	#DEBUG_VALUE: lzma_index_buffer_decode:in_start <- $r12
	#DEBUG_VALUE: lzma_index_buffer_decode:ret <- $ebp
	.loc	0 0 6 is_stmt 0                 # liblzma/common/index_decoder.c:0:6
	movl	$9, %eax
.Ltmp76:
	.loc	0 335 7 is_stmt 1               # liblzma/common/index_decoder.c:335:7
	jmp	.LBB2_10
.Ltmp77:
.LBB2_9:                                # %if.end22.fold.split
	#DEBUG_VALUE: lzma_index_buffer_decode:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_buffer_decode:memlimit <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- $r15
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- $r13
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- $r14
	#DEBUG_VALUE: lzma_index_buffer_decode:in_start <- $r12
	#DEBUG_VALUE: lzma_index_buffer_decode:ret <- $ebp
	.loc	0 0 7 is_stmt 0                 # liblzma/common/index_decoder.c:0:7
	movl	%ebp, %eax
.Ltmp78:
.LBB2_10:                               # %cleanup25
	#DEBUG_VALUE: lzma_index_buffer_decode:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_buffer_decode:memlimit <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- $r15
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- $r13
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- $r14
	addq	$104, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp79:
	#DEBUG_VALUE: lzma_index_buffer_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
.Ltmp80:
	#DEBUG_VALUE: lzma_index_buffer_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $r8
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp81:
	#DEBUG_VALUE: lzma_index_buffer_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r9
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp82:
	#DEBUG_VALUE: lzma_index_buffer_decode:in <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	.loc	0 349 1 is_stmt 1               # liblzma/common/index_decoder.c:349:1
	retq
.Ltmp83:
.Lfunc_end2:
	.size	lzma_index_buffer_decode, .Lfunc_end2-lzma_index_buffer_decode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_decode
	.type	index_decode,@function
index_decode:                           # @index_decode
.Lfunc_begin3:
	.loc	0 64 0                          # liblzma/common/index_decoder.c:64:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: index_decode:pcoder <- $rdi
	#DEBUG_VALUE: index_decode:allocator <- $rsi
	#DEBUG_VALUE: index_decode:in <- $rdx
	#DEBUG_VALUE: index_decode:in_pos <- $rcx
	#DEBUG_VALUE: index_decode:in_size <- $r8
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
.Ltmp84:
	#DEBUG_VALUE: index_decode:coder <- $rdi
	movq	%rdx, %r14
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
.Ltmp85:
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	movq	%rdi, %rbx
.Ltmp86:
	.loc	0 67 26 prologue_end            # liblzma/common/index_decoder.c:67:26
	movq	(%rcx), %rax
.Ltmp87:
	#DEBUG_VALUE: index_decode:in_start <- $rax
	.loc	0 0 26 is_stmt 0                # liblzma/common/index_decoder.c:0:26
	xorl	%ebp, %ebp
.Ltmp88:
	#DEBUG_VALUE: index_decode:ret <- 0
	movq	%rax, %rsi
	.loc	0 70 17 is_stmt 1               # liblzma/common/index_decoder.c:70:17
	cmpq	%r8, %rax
	.loc	0 70 2 is_stmt 0                # liblzma/common/index_decoder.c:70:2
	jae	.LBB3_31
.Ltmp89:
# %bb.1:                                # %while.body.lr.ph
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $rcx
	#DEBUG_VALUE: index_decode:in_size <- $r8
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- $rsi
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 0 2                           # liblzma/common/index_decoder.c:0:2
	movq	%r8, %r12
	movq	%rcx, %r15
	leaq	56(%rbx), %r13
	leaq	40(%rbx), %rcx
.Ltmp90:
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	leaq	48(%rbx), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	leaq	32(%rbx), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	.loc	0 71 17 is_stmt 1               # liblzma/common/index_decoder.c:71:17
	movl	(%rbx), %ecx
	movq	%rax, (%rsp)                    # 8-byte Spill
	jmp	.LBB3_7
.Ltmp91:
.LBB3_2:                                # %do.body
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 139 4                         # liblzma/common/index_decoder.c:139:4
	movq	16(%rbx), %rdi
	movq	40(%rbx), %rdx
	movq	48(%rbx), %rcx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	lzma_index_append@PLT
.Ltmp92:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 139 4 is_stmt 0               # liblzma/common/index_decoder.c:139:4
	testl	%eax, %eax
	jne	.LBB3_37
.Ltmp93:
# %bb.3:                                # %do.end
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 145 37 is_stmt 1              # liblzma/common/index_decoder.c:145:37
	xorl	%eax, %eax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	.loc	0 145 22 is_stmt 0              # liblzma/common/index_decoder.c:145:22
	decq	(%rcx)
.Ltmp94:
.LBB3_4:                                # %sw.epilog.sink.split
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 0 0                           # liblzma/common/index_decoder.c:0:0
	sete	%al
	leal	3(,%rax,2), %ecx
.Ltmp95:
.LBB3_5:                                # %sw.epilog.sink.split
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	movl	%ecx, (%rbx)
.Ltmp96:
.LBB3_6:                                # %sw.epilog
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 70 9 is_stmt 1                # liblzma/common/index_decoder.c:70:9
	movq	(%r15), %rax
	.loc	0 70 17 is_stmt 0               # liblzma/common/index_decoder.c:70:17
	cmpq	%r12, %rax
	.loc	0 70 2                          # liblzma/common/index_decoder.c:70:2
	jae	.LBB3_21
.Ltmp97:
.LBB3_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 71 2 is_stmt 1                # liblzma/common/index_decoder.c:71:2
	cmpl	$7, %ecx
	ja	.LBB3_34
.Ltmp98:
# %bb.8:                                # %while.body
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	movl	%ecx, %edx
	jmpq	*.LJTI3_0(,%rdx,8)
.Ltmp99:
.LBB3_9:                                # %sw.bb23
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 116 36                        # liblzma/common/index_decoder.c:116:36
	cmpl	$3, %ecx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	.loc	0 116 20 is_stmt 0              # liblzma/common/index_decoder.c:116:20
	cmoveq	16(%rsp), %rdi                  # 8-byte Folded Reload
.Ltmp100:
	#DEBUG_VALUE: size <- $rdi
	.loc	0 120 9 is_stmt 1               # liblzma/common/index_decoder.c:120:9
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lzma_vli_decode@PLT
.Ltmp101:
	#DEBUG_VALUE: index_decode:ret <- $eax
	.loc	0 122 11                        # liblzma/common/index_decoder.c:122:11
	cmpl	$1, %eax
.Ltmp102:
	.loc	0 122 7 is_stmt 0               # liblzma/common/index_decoder.c:122:7
	jne	.LBB3_22
.Ltmp103:
# %bb.10:                               # %if.end33
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- $eax
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 126 14 is_stmt 1              # liblzma/common/index_decoder.c:126:14
	movq	$0, 56(%rbx)
.Ltmp104:
	.loc	0 128 23                        # liblzma/common/index_decoder.c:128:23
	cmpl	$3, (%rbx)
.Ltmp105:
	.loc	0 128 7 is_stmt 0               # liblzma/common/index_decoder.c:128:7
	jne	.LBB3_2
.Ltmp106:
# %bb.11:                               # %if.then38
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 0 7                           # liblzma/common/index_decoder.c:0:7
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movabsq	$-9223372036854775805, %rcx     # imm = 0x8000000000000003
.Ltmp107:
	.loc	0 132 6 is_stmt 1               # liblzma/common/index_decoder.c:132:6
	addq	%rcx, %rax
	leaq	5(%rcx), %rdx
	movl	$4, %ecx
	cmpq	%rdx, %rax
	jae	.LBB3_5
	jmp	.LBB3_36
.Ltmp108:
.LBB3_12:                               # %sw.bb4
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 0 6 is_stmt 0                 # liblzma/common/index_decoder.c:0:6
	movq	8(%rsp), %rdi                   # 8-byte Reload
	.loc	0 89 9 is_stmt 1                # liblzma/common/index_decoder.c:89:9
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lzma_vli_decode@PLT
.Ltmp109:
	#DEBUG_VALUE: index_decode:ret <- $eax
	.loc	0 91 11                         # liblzma/common/index_decoder.c:91:11
	cmpl	$1, %eax
.Ltmp110:
	.loc	0 91 7 is_stmt 0                # liblzma/common/index_decoder.c:91:7
	jne	.LBB3_22
.Ltmp111:
# %bb.13:                               # %if.end8
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- $eax
	.loc	0 94 14 is_stmt 1               # liblzma/common/index_decoder.c:94:14
	movq	$0, 56(%rbx)
	.loc	0 95 19                         # liblzma/common/index_decoder.c:95:19
	movl	$2, (%rbx)
.Ltmp112:
.LBB3_14:                               # %sw.bb11
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	.loc	0 100 37                        # liblzma/common/index_decoder.c:100:37
	movq	32(%rbx), %rsi
	.loc	0 100 7 is_stmt 0               # liblzma/common/index_decoder.c:100:7
	movl	$1, %edi
	callq	lzma_index_memusage@PLT
.Ltmp113:
	.loc	0 100 44                        # liblzma/common/index_decoder.c:100:44
	cmpq	8(%rbx), %rax
.Ltmp114:
	.loc	0 100 7                         # liblzma/common/index_decoder.c:100:7
	ja	.LBB3_29
.Ltmp115:
# %bb.15:                               # %if.end17
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	.loc	0 107 30 is_stmt 1              # liblzma/common/index_decoder.c:107:30
	movq	16(%rbx), %rdi
	.loc	0 107 44 is_stmt 0              # liblzma/common/index_decoder.c:107:44
	movq	32(%rbx), %rsi
	.loc	0 107 3                         # liblzma/common/index_decoder.c:107:3
	callq	lzma_index_prealloc@PLT
.Ltmp116:
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 110 34 is_stmt 1              # liblzma/common/index_decoder.c:110:34
	xorl	%eax, %eax
	cmpq	$0, 32(%rbx)
	jmp	.LBB3_4
.Ltmp117:
.LBB3_16:                               # %sw.bb
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 82 19                         # liblzma/common/index_decoder.c:82:19
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movl	$1, %ecx
	.loc	0 82 23 is_stmt 0               # liblzma/common/index_decoder.c:82:23
	cmpb	$0, (%r14,%rax)
.Ltmp118:
	.loc	0 82 7                          # liblzma/common/index_decoder.c:82:7
	je	.LBB3_5
	jmp	.LBB3_36
.Ltmp119:
.LBB3_17:                               # %sw.bb64
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 154 47 is_stmt 1              # liblzma/common/index_decoder.c:154:47
	movq	16(%rbx), %rdi
	.loc	0 154 16 is_stmt 0              # liblzma/common/index_decoder.c:154:16
	callq	lzma_index_padding_size@PLT
.Ltmp120:
	movl	%eax, %eax
	.loc	0 154 14                        # liblzma/common/index_decoder.c:154:14
	movq	%rax, 56(%rbx)
	.loc	0 155 19 is_stmt 1              # liblzma/common/index_decoder.c:155:19
	movl	$6, (%rbx)
.Ltmp121:
	.loc	0 160 18                        # liblzma/common/index_decoder.c:160:18
	testq	%rax, %rax
.Ltmp122:
	.loc	0 160 7 is_stmt 0               # liblzma/common/index_decoder.c:160:7
	jne	.LBB3_19
	jmp	.LBB3_23
.Ltmp123:
.LBB3_18:                               # %while.body.sw.bb70_crit_edge
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 160 14                        # liblzma/common/index_decoder.c:160:14
	movq	(%r13), %rax
	.loc	0 160 18                        # liblzma/common/index_decoder.c:160:18
	testq	%rax, %rax
.Ltmp124:
	.loc	0 160 7                         # liblzma/common/index_decoder.c:160:7
	je	.LBB3_23
.Ltmp125:
.LBB3_19:                               # %if.then74
                                        #   in Loop: Header=BB3_7 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 161 4 is_stmt 1               # liblzma/common/index_decoder.c:161:4
	decq	%rax
	movq	%rax, (%r13)
.Ltmp126:
	.loc	0 162 20                        # liblzma/common/index_decoder.c:162:20
	movq	(%r15), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movl	$6, %ecx
	.loc	0 162 24 is_stmt 0              # liblzma/common/index_decoder.c:162:24
	cmpb	$0, (%r14,%rax)
.Ltmp127:
	.loc	0 162 8                         # liblzma/common/index_decoder.c:162:8
	je	.LBB3_6
.Ltmp128:
.LBB3_36:
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 0 8                           # liblzma/common/index_decoder.c:0:8
	movl	$9, %ebp
.Ltmp129:
	.loc	0 181 8 is_stmt 1               # liblzma/common/index_decoder.c:181:8
	jmp	.LBB3_32
.Ltmp130:
.LBB3_21:
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 0 8 is_stmt 0                 # liblzma/common/index_decoder.c:0:8
	xorl	%ebp, %ebp
	jmp	.LBB3_30
.Ltmp131:
.LBB3_22:
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- $eax
	movl	%eax, %ebp
	jmp	.LBB3_30
.Ltmp132:
.LBB3_23:                               # %if.end84
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	movq	(%rsp), %rax                    # 8-byte Reload
	.loc	0 169 32 is_stmt 1              # liblzma/common/index_decoder.c:169:32
	leaq	(%r14,%rax), %rdi
	.loc	0 170 5                         # liblzma/common/index_decoder.c:170:5
	movq	(%r15), %rsi
	.loc	0 170 13 is_stmt 0              # liblzma/common/index_decoder.c:170:13
	subq	%rax, %rsi
	.loc	0 170 32                        # liblzma/common/index_decoder.c:170:32
	movl	64(%rbx), %edx
	.loc	0 169 18 is_stmt 1              # liblzma/common/index_decoder.c:169:18
	callq	lzma_crc32@PLT
.Ltmp133:
	.loc	0 169 16 is_stmt 0              # liblzma/common/index_decoder.c:169:16
	movl	%eax, 64(%rbx)
	.loc	0 172 19 is_stmt 1              # liblzma/common/index_decoder.c:172:19
	movl	$7, (%rbx)
	movq	(%r15), %rax
.Ltmp134:
.LBB3_24:                               # %sw.bb88
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 177 3                         # liblzma/common/index_decoder.c:177:3
	incq	%rax
	negq	%r12
.Ltmp135:
	#DEBUG_VALUE: index_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	.p2align	4, 0x90
.LBB3_25:                               # %do.body89
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 178 16                        # liblzma/common/index_decoder.c:178:16
	leaq	(%r12,%rax), %rcx
	cmpq	$1, %rcx
.Ltmp136:
	.loc	0 178 8 is_stmt 0               # liblzma/common/index_decoder.c:178:8
	je	.LBB3_33
.Ltmp137:
# %bb.26:                               # %if.end93
                                        #   in Loop: Header=BB3_25 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 181 17 is_stmt 1              # liblzma/common/index_decoder.c:181:17
	movl	64(%rbx), %esi
	.loc	0 181 34 is_stmt 0              # liblzma/common/index_decoder.c:181:34
	movq	56(%rbx), %rdx
	.loc	0 181 23                        # liblzma/common/index_decoder.c:181:23
	leal	(,%rdx,8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	.loc	0 182 21 is_stmt 1              # liblzma/common/index_decoder.c:182:21
	movq	%rax, (%r15)
	.loc	0 182 6 is_stmt 0               # liblzma/common/index_decoder.c:182:6
	cmpb	%sil, -1(%r14,%rax)
.Ltmp138:
	.loc	0 181 8 is_stmt 1               # liblzma/common/index_decoder.c:181:8
	jne	.LBB3_36
.Ltmp139:
# %bb.27:                               # %do.cond103
                                        #   in Loop: Header=BB3_25 Depth=1
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 185 12                        # liblzma/common/index_decoder.c:185:12
	incq	%rdx
	movq	%rdx, (%r13)
.Ltmp140:
	.loc	0 185 3 is_stmt 0               # liblzma/common/index_decoder.c:185:3
	incq	%rax
.Ltmp141:
	.loc	0 185 25                        # liblzma/common/index_decoder.c:185:25
	cmpq	$4, %rdx
.Ltmp142:
	.loc	0 185 3                         # liblzma/common/index_decoder.c:185:3
	jb	.LBB3_25
.Ltmp143:
# %bb.28:                               # %do.end108
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 189 30 is_stmt 1              # liblzma/common/index_decoder.c:189:30
	movq	16(%rbx), %rax
	.loc	0 189 11 is_stmt 0              # liblzma/common/index_decoder.c:189:11
	movq	24(%rbx), %rcx
	.loc	0 189 21                        # liblzma/common/index_decoder.c:189:21
	movq	%rax, (%rcx)
	.loc	0 192 16 is_stmt 1              # liblzma/common/index_decoder.c:192:16
	movq	$0, 16(%rbx)
	movl	$1, %ebp
	jmp	.LBB3_32
.Ltmp144:
.LBB3_29:
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	.loc	0 0 16 is_stmt 0                # liblzma/common/index_decoder.c:0:16
	movl	$6, %ebp
.Ltmp145:
.LBB3_30:                               # %out111.loopexit
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	movq	(%rsp), %rax                    # 8-byte Reload
	.loc	0 204 4 is_stmt 1               # liblzma/common/index_decoder.c:204:4
	movq	(%r15), %rsi
.Ltmp146:
.LBB3_31:                               # %out111
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: index_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- $rax
	#DEBUG_LABEL: index_decode:out
	.loc	0 203 31                        # liblzma/common/index_decoder.c:203:31
	addq	%rax, %r14
.Ltmp147:
	#DEBUG_VALUE: index_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 204 12                        # liblzma/common/index_decoder.c:204:12
	subq	%rax, %rsi
	.loc	0 204 31 is_stmt 0              # liblzma/common/index_decoder.c:204:31
	movl	64(%rbx), %edx
	.loc	0 203 17 is_stmt 1              # liblzma/common/index_decoder.c:203:17
	movq	%r14, %rdi
	callq	lzma_crc32@PLT
.Ltmp148:
	.loc	0 203 15 is_stmt 0              # liblzma/common/index_decoder.c:203:15
	movl	%eax, 64(%rbx)
.Ltmp149:
.LBB3_32:                               # %cleanup117
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: index_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: index_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: index_decode:coder <- $rbx
	.loc	0 207 1 is_stmt 1               # liblzma/common/index_decoder.c:207:1
	movl	%ebp, %eax
	.loc	0 207 1 epilogue_begin is_stmt 0 # liblzma/common/index_decoder.c:207:1
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp150:
	#DEBUG_VALUE: index_decode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
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
.Ltmp151:
.LBB3_33:
	.cfi_def_cfa_offset 96
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 0 1                           # liblzma/common/index_decoder.c:0:1
	xorl	%ebp, %ebp
.Ltmp152:
	.loc	0 178 8 is_stmt 1               # liblzma/common/index_decoder.c:178:8
	jmp	.LBB3_32
.Ltmp153:
.LBB3_34:
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	.loc	0 0 8 is_stmt 0                 # liblzma/common/index_decoder.c:0:8
	movl	$11, %ebp
	.loc	0 71 2 is_stmt 1                # liblzma/common/index_decoder.c:71:2
	jmp	.LBB3_32
.Ltmp154:
.LBB3_37:
	#DEBUG_VALUE: index_decode:pcoder <- $rbx
	#DEBUG_VALUE: index_decode:allocator <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: index_decode:in <- $r14
	#DEBUG_VALUE: index_decode:in_pos <- $r15
	#DEBUG_VALUE: index_decode:in_size <- $r12
	#DEBUG_VALUE: index_decode:coder <- $rbx
	#DEBUG_VALUE: index_decode:in_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_decode:ret <- 0
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 0 2 is_stmt 0                 # liblzma/common/index_decoder.c:0:2
	movl	%eax, %ebp
	jmp	.LBB3_32
.Lfunc_end3:
	.size	index_decode, .Lfunc_end3-index_decode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI3_0:
	.quad	.LBB3_16
	.quad	.LBB3_12
	.quad	.LBB3_14
	.quad	.LBB3_9
	.quad	.LBB3_9
	.quad	.LBB3_17
	.quad	.LBB3_18
	.quad	.LBB3_24
	.file	11 "liblzma/common" "index.h" md5 0x8c1da33cfb6445c1ed40367774c91b69
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function index_decoder_end
	.type	index_decoder_end,@function
index_decoder_end:                      # @index_decoder_end
.Lfunc_begin4:
	.loc	0 212 0 is_stmt 1               # liblzma/common/index_decoder.c:212:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: index_decoder_end:pcoder <- $rdi
	#DEBUG_VALUE: index_decoder_end:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp155:
	#DEBUG_VALUE: index_decoder_end:coder <- $rdi
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp156:
	.loc	0 214 24 prologue_end           # liblzma/common/index_decoder.c:214:24
	movq	16(%rdi), %rdi
.Ltmp157:
	#DEBUG_VALUE: index_decoder_end:coder <- $r14
	#DEBUG_VALUE: index_decoder_end:pcoder <- $r14
	.loc	0 214 2 is_stmt 0               # liblzma/common/index_decoder.c:214:2
	callq	lzma_index_end@PLT
.Ltmp158:
	#DEBUG_VALUE: index_decoder_end:allocator <- $rbx
	.loc	0 215 2 is_stmt 1               # liblzma/common/index_decoder.c:215:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 215 2 epilogue_begin is_stmt 0 # liblzma/common/index_decoder.c:215:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp159:
	#DEBUG_VALUE: index_decoder_end:allocator <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp160:
	#DEBUG_VALUE: index_decoder_end:coder <- $rdi
	#DEBUG_VALUE: index_decoder_end:pcoder <- $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp161:
.Lfunc_end4:
	.size	index_decoder_end, .Lfunc_end4-index_decoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_decoder_memconfig
	.type	index_decoder_memconfig,@function
index_decoder_memconfig:                # @index_decoder_memconfig
.Lfunc_begin5:
	.loc	0 223 0 is_stmt 1               # liblzma/common/index_decoder.c:223:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: index_decoder_memconfig:pcoder <- $rdi
	#DEBUG_VALUE: index_decoder_memconfig:memusage <- $rsi
	#DEBUG_VALUE: index_decoder_memconfig:old_memlimit <- $rdx
	#DEBUG_VALUE: index_decoder_memconfig:new_memlimit <- $rcx
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
.Ltmp162:
	#DEBUG_VALUE: index_decoder_memconfig:coder <- $rdi
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
.Ltmp163:
	.loc	0 225 44 prologue_end           # liblzma/common/index_decoder.c:225:44
	movq	32(%rdi), %rsi
.Ltmp164:
	#DEBUG_VALUE: index_decoder_memconfig:memusage <- $r15
	.loc	0 225 14 is_stmt 0              # liblzma/common/index_decoder.c:225:14
	movl	$1, %edi
.Ltmp165:
	#DEBUG_VALUE: index_decoder_memconfig:coder <- $r14
	#DEBUG_VALUE: index_decoder_memconfig:pcoder <- $r14
	callq	lzma_index_memusage@PLT
.Ltmp166:
	#DEBUG_VALUE: index_decoder_memconfig:new_memlimit <- $rbx
	#DEBUG_VALUE: index_decoder_memconfig:old_memlimit <- $r12
	.loc	0 225 12                        # liblzma/common/index_decoder.c:225:12
	movq	%rax, (%r15)
	.loc	0 226 25 is_stmt 1              # liblzma/common/index_decoder.c:226:25
	movq	8(%r14), %rax
	.loc	0 226 16 is_stmt 0              # liblzma/common/index_decoder.c:226:16
	movq	%rax, (%r12)
	xorl	%eax, %eax
.Ltmp167:
	.loc	0 228 19 is_stmt 1              # liblzma/common/index_decoder.c:228:19
	testq	%rbx, %rbx
.Ltmp168:
	.loc	0 228 6 is_stmt 0               # liblzma/common/index_decoder.c:228:6
	je	.LBB5_3
.Ltmp169:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: index_decoder_memconfig:pcoder <- $r14
	#DEBUG_VALUE: index_decoder_memconfig:memusage <- $r15
	#DEBUG_VALUE: index_decoder_memconfig:old_memlimit <- $r12
	#DEBUG_VALUE: index_decoder_memconfig:new_memlimit <- $rbx
	#DEBUG_VALUE: index_decoder_memconfig:coder <- $r14
	.loc	0 0 6                           # liblzma/common/index_decoder.c:0:6
	movl	$6, %eax
.Ltmp170:
	.loc	0 229 20 is_stmt 1              # liblzma/common/index_decoder.c:229:20
	cmpq	%rbx, (%r15)
.Ltmp171:
	.loc	0 229 7 is_stmt 0               # liblzma/common/index_decoder.c:229:7
	ja	.LBB5_3
.Ltmp172:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: index_decoder_memconfig:pcoder <- $r14
	#DEBUG_VALUE: index_decoder_memconfig:memusage <- $r15
	#DEBUG_VALUE: index_decoder_memconfig:old_memlimit <- $r12
	#DEBUG_VALUE: index_decoder_memconfig:new_memlimit <- $rbx
	#DEBUG_VALUE: index_decoder_memconfig:coder <- $r14
	.loc	0 232 19 is_stmt 1              # liblzma/common/index_decoder.c:232:19
	movq	%rbx, 8(%r14)
	xorl	%eax, %eax
.Ltmp173:
.LBB5_3:                                # %cleanup
	#DEBUG_VALUE: index_decoder_memconfig:pcoder <- $r14
	#DEBUG_VALUE: index_decoder_memconfig:memusage <- $r15
	#DEBUG_VALUE: index_decoder_memconfig:old_memlimit <- $r12
	#DEBUG_VALUE: index_decoder_memconfig:new_memlimit <- $rbx
	#DEBUG_VALUE: index_decoder_memconfig:coder <- $r14
	.loc	0 236 1 epilogue_begin          # liblzma/common/index_decoder.c:236:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp174:
	#DEBUG_VALUE: index_decoder_memconfig:new_memlimit <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 32
	popq	%r12
.Ltmp175:
	#DEBUG_VALUE: index_decoder_memconfig:old_memlimit <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp176:
	#DEBUG_VALUE: index_decoder_memconfig:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp177:
	#DEBUG_VALUE: index_decoder_memconfig:memusage <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp178:
.Lfunc_end5:
	.size	index_decoder_memconfig, .Lfunc_end5-index_decoder_memconfig
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	41                              # Offset entry count
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
	.long	.Ldebug_loc18-.Lloclists_table_base0
	.long	.Ldebug_loc19-.Lloclists_table_base0
	.long	.Ldebug_loc20-.Lloclists_table_base0
	.long	.Ldebug_loc21-.Lloclists_table_base0
	.long	.Ldebug_loc22-.Lloclists_table_base0
	.long	.Ldebug_loc23-.Lloclists_table_base0
	.long	.Ldebug_loc24-.Lloclists_table_base0
	.long	.Ldebug_loc25-.Lloclists_table_base0
	.long	.Ldebug_loc26-.Lloclists_table_base0
	.long	.Ldebug_loc27-.Lloclists_table_base0
	.long	.Ldebug_loc28-.Lloclists_table_base0
	.long	.Ldebug_loc29-.Lloclists_table_base0
	.long	.Ldebug_loc30-.Lloclists_table_base0
	.long	.Ldebug_loc31-.Lloclists_table_base0
	.long	.Ldebug_loc32-.Lloclists_table_base0
	.long	.Ldebug_loc33-.Lloclists_table_base0
	.long	.Ldebug_loc34-.Lloclists_table_base0
	.long	.Ldebug_loc35-.Lloclists_table_base0
	.long	.Ldebug_loc36-.Lloclists_table_base0
	.long	.Ldebug_loc37-.Lloclists_table_base0
	.long	.Ldebug_loc38-.Lloclists_table_base0
	.long	.Ldebug_loc39-.Lloclists_table_base0
	.long	.Ldebug_loc40-.Lloclists_table_base0
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
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
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
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
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
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp144-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp153-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp161-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp161-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp161-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp176-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp176-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp164-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp177-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp177-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp175-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp174-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp176-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
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
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
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
	.byte	26                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
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
	.byte	28                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
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
	.byte	5                               # DW_FORM_data2
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
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
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
	.byte	42                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
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
	.byte	46                              # Abbreviation Code
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
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
	.byte	10                              # DW_TAG_label
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	49                              # Abbreviation Code
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
	.byte	50                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x89d DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0x30c:0x78 DW_TAG_structure_type
	.byte	90                              # DW_AT_name
	.byte	72                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x311:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	794                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0x31a:0x21 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x322:0x3 DW_TAG_enumerator
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x325:0x3 DW_TAG_enumerator
	.byte	71                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x328:0x3 DW_TAG_enumerator
	.byte	72                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x32b:0x3 DW_TAG_enumerator
	.byte	73                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x32e:0x3 DW_TAG_enumerator
	.byte	74                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x331:0x3 DW_TAG_enumerator
	.byte	75                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x334:0x3 DW_TAG_enumerator
	.byte	76                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x337:0x3 DW_TAG_enumerator
	.byte	77                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x33b:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x344:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	900                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x34d:0x9 DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	915                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x356:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x35f:0x9 DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x368:0x9 DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x371:0x9 DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x37a:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	920                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x384:0x5 DW_TAG_pointer_type
	.long	905                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x389:0x8 DW_TAG_typedef
	.long	913                             # DW_AT_type
	.byte	81                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x391:0x2 DW_TAG_structure_type
	.byte	80                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	8                               # Abbrev [8] 0x393:0x5 DW_TAG_pointer_type
	.long	900                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x398:0x8 DW_TAG_typedef
	.long	928                             # DW_AT_type
	.byte	89                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x3a0:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	88                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x3a8:0x5 DW_TAG_pointer_type
	.long	780                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x3ad:0x5f DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	127                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x3bd:0xa DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
	.long	1050                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x3c7:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	115                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
	.long	915                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x3d1:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x3db:0x1e DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x3dd:0xa DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	134                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	296                             # DW_AT_decl_line
	.long	2206                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x3e7:0x11 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp0                   # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x3ed:0xa DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	134                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	296                             # DW_AT_decl_line
	.long	2206                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x3f9:0x6 DW_TAG_call_site
	.long	1036                            # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x3ff:0x6 DW_TAG_call_site
	.long	1272                            # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x405:0x6 DW_TAG_call_site
	.long	1403                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x40c:0xe DW_TAG_subprogram
	.byte	91                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x414:0x5 DW_TAG_formal_parameter
	.long	1050                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x41a:0x5 DW_TAG_pointer_type
	.long	1055                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x41f:0x9 DW_TAG_typedef
	.long	1064                            # DW_AT_type
	.byte	111                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x428:0xba DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x42d:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x437:0xa DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x441:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x44b:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	567                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x455:0xa DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x45f:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x469:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	415                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x473:0xa DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	1250                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x47d:0xa DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x487:0xa DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x491:0xa DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x49b:0xa DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4a5:0xa DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4af:0xa DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4b9:0xa DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4c3:0xa DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4cd:0xa DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	1264                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x4d7:0xa DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	1264                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4e2:0x5 DW_TAG_pointer_type
	.long	1255                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4e7:0x9 DW_TAG_typedef
	.long	134                             # DW_AT_type
	.byte	99                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x4f0:0x8 DW_TAG_typedef
	.long	768                             # DW_AT_type
	.byte	109                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	31                              # Abbrev [31] 0x4f8:0x83 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x508:0xa DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.long	1478                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x512:0xa DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x51c:0xa DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	115                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	269                             # DW_AT_decl_line
	.long	915                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x526:0xa DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	269                             # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x530:0x32 DW_TAG_inlined_subroutine
	.long	1414                            # DW_AT_abstract_origin
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp41-.Ltmp36                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	289                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x53e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	92
	.long	1422                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x545:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1430                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x54c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	1438                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x553:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1446                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x55a:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	92
	.long	1454                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x562:0x6 DW_TAG_call_site
	.long	1463                            # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x568:0x6 DW_TAG_call_site
	.long	1483                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x56e:0x6 DW_TAG_call_site
	.long	1499                            # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x574:0x6 DW_TAG_call_site
	.long	1518                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x57b:0xb DW_TAG_subprogram
	.byte	112                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x580:0x5 DW_TAG_formal_parameter
	.long	1050                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x586:0x31 DW_TAG_subprogram
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_inline
	.byte	37                              # Abbrev [37] 0x58e:0x8 DW_TAG_formal_parameter
	.byte	114                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x596:0x8 DW_TAG_formal_parameter
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x59e:0x8 DW_TAG_formal_parameter
	.byte	115                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.long	915                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x5a6:0x8 DW_TAG_formal_parameter
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x5ae:0x8 DW_TAG_variable
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.long	936                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x5b7:0xf DW_TAG_subprogram
	.byte	116                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5bb:0x5 DW_TAG_formal_parameter
	.long	1478                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5c0:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5c6:0x5 DW_TAG_pointer_type
	.long	212                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x5cb:0x10 DW_TAG_subprogram
	.byte	117                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	315                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5d0:0x5 DW_TAG_formal_parameter
	.long	900                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5d5:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x5db:0x13 DW_TAG_subprogram
	.byte	118                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	491                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5e3:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5e8:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x5ee:0xf DW_TAG_subprogram
	.byte	119                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	900                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5f7:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x5fd:0xbb DW_TAG_subprogram
	.byte	11                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x60d:0xa DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	115                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.long	915                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x617:0xa DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x621:0xa DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x62b:0xa DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	135                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	308                             # DW_AT_decl_line
	.long	522                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x635:0xa DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	136                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	308                             # DW_AT_decl_line
	.long	557                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x63f:0xa DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	308                             # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x649:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	32
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.long	780                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x655:0xa DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	321                             # DW_AT_decl_line
	.long	2211                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x65f:0xa DW_TAG_variable
	.byte	22                              # DW_AT_location
	.byte	139                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	324                             # DW_AT_decl_line
	.long	407                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x669:0x36 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x66b:0xa DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	134                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	317                             # DW_AT_decl_line
	.long	2206                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0x675:0x29 DW_TAG_inlined_subroutine
	.long	1414                            # DW_AT_abstract_origin
	.byte	2                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	317                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	43                              # Abbrev [43] 0x67f:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.long	1422                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x685:0x6 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.long	1430                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x68b:0x6 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.long	1438                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x691:0x6 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.long	1446                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x697:0x6 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.long	1454                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x69f:0x6 DW_TAG_call_site
	.long	1518                            # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x6a5:0x6 DW_TAG_call_site
	.long	1720                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x6ab:0x6 DW_TAG_call_site
	.long	1483                            # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x6b1:0x6 DW_TAG_call_site
	.long	1921                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x6b8:0xc9 DW_TAG_subprogram
	.byte	16                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x6c7:0x9 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.byte	114                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x6d0:0x9 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_location
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x6d9:0x9 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.byte	135                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	517                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x6e2:0x9 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_location
	.byte	136                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	552                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x6eb:0x9 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x6f4:0x8 DW_TAG_formal_parameter
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	562                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x6fc:0x8 DW_TAG_formal_parameter
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	552                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x704:0x8 DW_TAG_formal_parameter
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x70c:0x8 DW_TAG_formal_parameter
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.long	572                             # DW_AT_type
	.byte	47                              # Abbrev [47] 0x714:0x9 DW_TAG_variable
	.byte	28                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.long	936                             # DW_AT_type
	.byte	47                              # Abbrev [47] 0x71d:0x9 DW_TAG_variable
	.byte	29                              # DW_AT_location
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	2211                            # DW_AT_type
	.byte	47                              # Abbrev [47] 0x726:0x9 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.byte	139                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	407                             # DW_AT_type
	.byte	48                              # Abbrev [48] 0x72f:0x5 DW_TAG_label
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	31                              # DW_AT_low_pc
	.byte	26                              # Abbrev [26] 0x734:0x1c DW_TAG_lexical_block
	.byte	3                               # DW_AT_ranges
	.byte	47                              # Abbrev [47] 0x736:0x9 DW_TAG_variable
	.byte	32                              # DW_AT_location
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	2005                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x73f:0x10 DW_TAG_lexical_block
	.byte	17                              # DW_AT_low_pc
	.long	.Ltmp93-.Ltmp91                 # DW_AT_high_pc
	.byte	47                              # Abbrev [47] 0x745:0x9 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.byte	134                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.long	2206                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x750:0x6 DW_TAG_call_site
	.long	1941                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x756:0x6 DW_TAG_call_site
	.long	1971                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x75c:0x6 DW_TAG_call_site
	.long	1971                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x762:0x6 DW_TAG_call_site
	.long	1921                            # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x768:0x6 DW_TAG_call_site
	.long	2010                            # DW_AT_call_origin
	.byte	22                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x76e:0x6 DW_TAG_call_site
	.long	2025                            # DW_AT_call_origin
	.byte	23                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x774:0x6 DW_TAG_call_site
	.long	2049                            # DW_AT_call_origin
	.byte	24                              # DW_AT_call_return_pc
	.byte	29                              # Abbrev [29] 0x77a:0x6 DW_TAG_call_site
	.long	2049                            # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x781:0x14 DW_TAG_subprogram
	.byte	120                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	286                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	315                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x78a:0x5 DW_TAG_formal_parameter
	.long	307                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x78f:0x5 DW_TAG_formal_parameter
	.long	307                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x795:0x1e DW_TAG_subprogram
	.byte	121                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	343                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x79e:0x5 DW_TAG_formal_parameter
	.long	900                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7a3:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7a8:0x5 DW_TAG_formal_parameter
	.long	307                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7ad:0x5 DW_TAG_formal_parameter
	.long	307                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x7b3:0x22 DW_TAG_subprogram
	.byte	122                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x7bb:0x5 DW_TAG_formal_parameter
	.long	2005                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7c0:0x5 DW_TAG_formal_parameter
	.long	557                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7c5:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7ca:0x5 DW_TAG_formal_parameter
	.long	557                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7cf:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x7d5:0x5 DW_TAG_pointer_type
	.long	307                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x7da:0xf DW_TAG_subprogram
	.byte	123                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x7de:0x5 DW_TAG_formal_parameter
	.long	900                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7e3:0x5 DW_TAG_formal_parameter
	.long	307                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x7e9:0xe DW_TAG_subprogram
	.byte	124                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	920                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x7f1:0x5 DW_TAG_formal_parameter
	.long	2039                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x7f7:0x5 DW_TAG_pointer_type
	.long	2044                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x7fc:0x5 DW_TAG_const_type
	.long	905                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x801:0x18 DW_TAG_subprogram
	.byte	125                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	920                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x809:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x80e:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x813:0x5 DW_TAG_formal_parameter
	.long	920                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x819:0x33 DW_TAG_subprogram
	.byte	26                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	46                              # Abbrev [46] 0x824:0x9 DW_TAG_formal_parameter
	.byte	33                              # DW_AT_location
	.byte	114                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x82d:0x9 DW_TAG_formal_parameter
	.byte	34                              # DW_AT_location
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	47                              # Abbrev [47] 0x836:0x9 DW_TAG_variable
	.byte	35                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.long	936                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x83f:0x6 DW_TAG_call_site
	.long	1483                            # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	50                              # Abbrev [50] 0x845:0x6 DW_TAG_call_site
	.long	2124                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	28                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x84c:0xf DW_TAG_subprogram
	.byte	126                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x850:0x5 DW_TAG_formal_parameter
	.long	491                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x855:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x85b:0x43 DW_TAG_subprogram
	.byte	29                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x86a:0x9 DW_TAG_formal_parameter
	.byte	36                              # DW_AT_location
	.byte	114                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x873:0x9 DW_TAG_formal_parameter
	.byte	37                              # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x87c:0x9 DW_TAG_formal_parameter
	.byte	38                              # DW_AT_location
	.byte	146                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x885:0x9 DW_TAG_formal_parameter
	.byte	39                              # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	47                              # Abbrev [47] 0x88e:0x9 DW_TAG_variable
	.byte	40                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.long	936                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x897:0x6 DW_TAG_call_site
	.long	1921                            # DW_AT_call_origin
	.byte	30                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x89e:0x5 DW_TAG_const_type
	.long	407                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x8a3:0x5 DW_TAG_const_type
	.long	492                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	4                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
	.long	.Ldebug_ranges3-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	596                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/index_decoder.c" # string offset=105
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
	.asciz	"SEQ_INDICATOR"                 # string offset=997
.Linfo_string71:
	.asciz	"SEQ_COUNT"                     # string offset=1011
.Linfo_string72:
	.asciz	"SEQ_MEMUSAGE"                  # string offset=1021
.Linfo_string73:
	.asciz	"SEQ_UNPADDED"                  # string offset=1034
.Linfo_string74:
	.asciz	"SEQ_UNCOMPRESSED"              # string offset=1047
.Linfo_string75:
	.asciz	"SEQ_PADDING_INIT"              # string offset=1064
.Linfo_string76:
	.asciz	"SEQ_PADDING"                   # string offset=1081
.Linfo_string77:
	.asciz	"SEQ_CRC32"                     # string offset=1093
.Linfo_string78:
	.asciz	"memlimit"                      # string offset=1103
.Linfo_string79:
	.asciz	"index"                         # string offset=1112
.Linfo_string80:
	.asciz	"lzma_index_s"                  # string offset=1118
.Linfo_string81:
	.asciz	"lzma_index"                    # string offset=1131
.Linfo_string82:
	.asciz	"index_ptr"                     # string offset=1142
.Linfo_string83:
	.asciz	"count"                         # string offset=1152
.Linfo_string84:
	.asciz	"unpadded_size"                 # string offset=1158
.Linfo_string85:
	.asciz	"uncompressed_size"             # string offset=1172
.Linfo_string86:
	.asciz	"pos"                           # string offset=1190
.Linfo_string87:
	.asciz	"crc32"                         # string offset=1194
.Linfo_string88:
	.asciz	"__uint32_t"                    # string offset=1200
.Linfo_string89:
	.asciz	"uint32_t"                      # string offset=1211
.Linfo_string90:
	.asciz	"lzma_coder_s"                  # string offset=1220
.Linfo_string91:
	.asciz	"lzma_strm_init"                # string offset=1233
.Linfo_string92:
	.asciz	"next_in"                       # string offset=1248
.Linfo_string93:
	.asciz	"total_in"                      # string offset=1256
.Linfo_string94:
	.asciz	"next_out"                      # string offset=1265
.Linfo_string95:
	.asciz	"avail_out"                     # string offset=1274
.Linfo_string96:
	.asciz	"total_out"                     # string offset=1284
.Linfo_string97:
	.asciz	"allocator"                     # string offset=1294
.Linfo_string98:
	.asciz	"internal"                      # string offset=1304
.Linfo_string99:
	.asciz	"lzma_internal"                 # string offset=1313
.Linfo_string100:
	.asciz	"reserved_ptr1"                 # string offset=1327
.Linfo_string101:
	.asciz	"reserved_ptr2"                 # string offset=1341
.Linfo_string102:
	.asciz	"reserved_ptr3"                 # string offset=1355
.Linfo_string103:
	.asciz	"reserved_ptr4"                 # string offset=1369
.Linfo_string104:
	.asciz	"reserved_int1"                 # string offset=1383
.Linfo_string105:
	.asciz	"reserved_int2"                 # string offset=1397
.Linfo_string106:
	.asciz	"reserved_int3"                 # string offset=1411
.Linfo_string107:
	.asciz	"reserved_int4"                 # string offset=1425
.Linfo_string108:
	.asciz	"reserved_enum1"                # string offset=1439
.Linfo_string109:
	.asciz	"lzma_reserved_enum"            # string offset=1454
.Linfo_string110:
	.asciz	"reserved_enum2"                # string offset=1473
.Linfo_string111:
	.asciz	"lzma_stream"                   # string offset=1488
.Linfo_string112:
	.asciz	"lzma_end"                      # string offset=1500
.Linfo_string113:
	.asciz	"index_decoder_reset"           # string offset=1509
.Linfo_string114:
	.asciz	"pcoder"                        # string offset=1529
.Linfo_string115:
	.asciz	"i"                             # string offset=1536
.Linfo_string116:
	.asciz	"lzma_next_end"                 # string offset=1538
.Linfo_string117:
	.asciz	"lzma_index_end"                # string offset=1552
.Linfo_string118:
	.asciz	"lzma_alloc"                    # string offset=1567
.Linfo_string119:
	.asciz	"lzma_index_init"               # string offset=1578
.Linfo_string120:
	.asciz	"lzma_index_memusage"           # string offset=1594
.Linfo_string121:
	.asciz	"lzma_index_append"             # string offset=1614
.Linfo_string122:
	.asciz	"lzma_vli_decode"               # string offset=1632
.Linfo_string123:
	.asciz	"lzma_index_prealloc"           # string offset=1648
.Linfo_string124:
	.asciz	"lzma_index_padding_size"       # string offset=1668
.Linfo_string125:
	.asciz	"lzma_crc32"                    # string offset=1692
.Linfo_string126:
	.asciz	"lzma_free"                     # string offset=1703
.Linfo_string127:
	.asciz	"lzma_index_decoder"            # string offset=1713
.Linfo_string128:
	.asciz	"index_decoder_init"            # string offset=1732
.Linfo_string129:
	.asciz	"lzma_index_buffer_decode"      # string offset=1751
.Linfo_string130:
	.asciz	"index_decode"                  # string offset=1776
.Linfo_string131:
	.asciz	"index_decoder_end"             # string offset=1789
.Linfo_string132:
	.asciz	"index_decoder_memconfig"       # string offset=1807
.Linfo_string133:
	.asciz	"strm"                          # string offset=1831
.Linfo_string134:
	.asciz	"ret_"                          # string offset=1836
.Linfo_string135:
	.asciz	"in"                            # string offset=1841
.Linfo_string136:
	.asciz	"in_pos"                        # string offset=1844
.Linfo_string137:
	.asciz	"in_size"                       # string offset=1851
.Linfo_string138:
	.asciz	"in_start"                      # string offset=1859
.Linfo_string139:
	.asciz	"ret"                           # string offset=1868
.Linfo_string140:
	.asciz	"size"                          # string offset=1872
.Linfo_string141:
	.asciz	"out"                           # string offset=1877
.Linfo_string142:
	.asciz	"out_pos"                       # string offset=1881
.Linfo_string143:
	.asciz	"out_size"                      # string offset=1889
.Linfo_string144:
	.asciz	"action"                        # string offset=1898
.Linfo_string145:
	.asciz	"memusage"                      # string offset=1905
.Linfo_string146:
	.asciz	"old_memlimit"                  # string offset=1914
.Linfo_string147:
	.asciz	"new_memlimit"                  # string offset=1927
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
	.quad	.Ltmp7
	.quad	.Ltmp11
	.quad	.Lfunc_begin1
	.quad	.Ltmp36
	.quad	.Ltmp24
	.quad	.Ltmp29
	.quad	.Ltmp31
	.quad	.Ltmp37
	.quad	.Lfunc_begin2
	.quad	.Ltmp57
	.quad	.Ltmp64
	.quad	.Ltmp69
	.quad	.Ltmp72
	.quad	.Lfunc_begin3
	.quad	.Ltmp91
	.quad	.Ltmp92
	.quad	.Ltmp101
	.quad	.Ltmp109
	.quad	.Ltmp113
	.quad	.Ltmp116
	.quad	.Ltmp120
	.quad	.Ltmp133
	.quad	.Ltmp148
	.quad	.Lfunc_begin4
	.quad	.Ltmp158
	.quad	.Ltmp160
	.quad	.Lfunc_begin5
	.quad	.Ltmp166
	.quad	.Ltmp146
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
