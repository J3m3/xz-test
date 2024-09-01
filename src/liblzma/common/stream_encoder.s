	.text
	.file	"stream_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/stream_encoder.c" md5 0x287ced045cc767023270c37a9a55e979
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	10 "liblzma/api/lzma" "block.h" md5 0xbf8cbafce550217b909c63081e414910
	.file	11 "liblzma/api/lzma" "index.h" md5 0x923fbd07d3b348bf7a676d089b5c066f
	.globl	lzma_stream_encoder_init        # -- Begin function lzma_stream_encoder_init
	.p2align	4, 0x90
	.type	lzma_stream_encoder_init,@function
lzma_stream_encoder_init:               # @lzma_stream_encoder_init
.Lfunc_begin0:
	.loc	0 274 0                         # liblzma/common/stream_encoder.c:274:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_stream_encoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_stream_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_stream_encoder_init:filters <- $rdx
	#DEBUG_VALUE: lzma_stream_encoder_init:check <- $ecx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
.Ltmp0:
	.loc	0 275 2 prologue_end            # liblzma/common/stream_encoder.c:275:2
	cmpq	$lzma_stream_encoder_init, 16(%rdi)
.Ltmp1:
	.loc	0 275 2 is_stmt 0               # liblzma/common/stream_encoder.c:275:2
	je	.LBB0_2
.Ltmp2:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lzma_stream_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_stream_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_stream_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder_init:check <- $ebp
	.loc	0 275 2                         # liblzma/common/stream_encoder.c:275:2
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	lzma_next_end@PLT
.Ltmp3:
.LBB0_2:                                # %if.end
	#DEBUG_VALUE: lzma_stream_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_stream_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_stream_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder_init:check <- $ebp
	.loc	0 275 2                         # liblzma/common/stream_encoder.c:275:2
	movq	$lzma_stream_encoder_init, 16(%r15)
.Ltmp4:
	.loc	0 277 14 is_stmt 1              # liblzma/common/stream_encoder.c:277:14
	testq	%rbx, %rbx
.Ltmp5:
	.loc	0 277 6 is_stmt 0               # liblzma/common/stream_encoder.c:277:6
	je	.LBB0_9
.Ltmp6:
# %bb.3:                                # %if.end4
	#DEBUG_VALUE: lzma_stream_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_stream_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_stream_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder_init:check <- $ebp
	.loc	0 280 12 is_stmt 1              # liblzma/common/stream_encoder.c:280:12
	movq	(%r15), %rax
	.loc	0 280 18 is_stmt 0              # liblzma/common/stream_encoder.c:280:18
	testq	%rax, %rax
.Ltmp7:
	.loc	0 280 6                         # liblzma/common/stream_encoder.c:280:6
	jne	.LBB0_6
.Ltmp8:
# %bb.4:                                # %if.then6
	#DEBUG_VALUE: lzma_stream_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_stream_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_stream_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder_init:check <- $ebp
	.loc	0 281 17 is_stmt 1              # liblzma/common/stream_encoder.c:281:17
	movl	$1472, %edi                     # imm = 0x5C0
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp9:
	.loc	0 281 15 is_stmt 0              # liblzma/common/stream_encoder.c:281:15
	movq	%rax, (%r15)
.Ltmp10:
	.loc	0 282 19 is_stmt 1              # liblzma/common/stream_encoder.c:282:19
	testq	%rax, %rax
.Ltmp11:
	.loc	0 282 7 is_stmt 0               # liblzma/common/stream_encoder.c:282:7
	je	.LBB0_11
.Ltmp12:
# %bb.5:                                # %if.end11
	#DEBUG_VALUE: lzma_stream_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_stream_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_stream_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder_init:check <- $ebp
	.loc	0 285 14 is_stmt 1              # liblzma/common/stream_encoder.c:285:14
	movq	$stream_encode, 24(%r15)
	.loc	0 286 13                        # liblzma/common/stream_encoder.c:286:13
	movq	$stream_encoder_end, 32(%r15)
	.loc	0 287 16                        # liblzma/common/stream_encoder.c:287:16
	movq	$stream_encoder_update, 56(%r15)
	.loc	0 289 54                        # liblzma/common/stream_encoder.c:289:54
	movq	$-1, 280(%rax)
	.loc	0 290 32                        # liblzma/common/stream_encoder.c:290:32
	movq	(%r15), %rax
	.loc	0 290 56 is_stmt 0              # liblzma/common/stream_encoder.c:290:56
	movq	$0, 8(%rax)
	movq	$-1, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movups	%xmm0, 40(%rax)
	movups	%xmm0, 56(%rax)
	.loc	0 291 32 is_stmt 1              # liblzma/common/stream_encoder.c:291:32
	movq	(%r15), %rax
	.loc	0 291 56 is_stmt 0              # liblzma/common/stream_encoder.c:291:56
	movq	$0, 360(%rax)
	movq	$-1, 368(%rax)
	movups	%xmm0, 376(%rax)
	movups	%xmm0, 392(%rax)
	movups	%xmm0, 408(%rax)
	.loc	0 292 32 is_stmt 1              # liblzma/common/stream_encoder.c:292:32
	movq	(%r15), %rax
	.loc	0 292 46 is_stmt 0              # liblzma/common/stream_encoder.c:292:46
	movq	$0, 424(%rax)
.Ltmp13:
	.loc	0 296 31 is_stmt 1              # liblzma/common/stream_encoder.c:296:31
	movq	(%r15), %rax
.Ltmp14:
.LBB0_6:                                # %if.end32
	#DEBUG_VALUE: lzma_stream_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_stream_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_stream_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder_init:check <- $ebp
	.loc	0 296 48 is_stmt 0              # liblzma/common/stream_encoder.c:296:48
	movl	$0, (%rax)
	.loc	0 297 31 is_stmt 1              # liblzma/common/stream_encoder.c:297:31
	movq	(%r15), %rax
	.loc	0 297 61 is_stmt 0              # liblzma/common/stream_encoder.c:297:61
	movl	$0, 72(%rax)
	.loc	0 298 31 is_stmt 1              # liblzma/common/stream_encoder.c:298:31
	movq	(%r15), %rax
	.loc	0 298 59 is_stmt 0              # liblzma/common/stream_encoder.c:298:59
	movl	%ebp, 80(%rax)
	.loc	0 301 46 is_stmt 1              # liblzma/common/stream_encoder.c:301:46
	movq	(%r15), %rax
	.loc	0 301 54 is_stmt 0              # liblzma/common/stream_encoder.c:301:54
	movq	424(%rax), %rdi
	.loc	0 301 2                         # liblzma/common/stream_encoder.c:301:2
	movq	%r14, %rsi
	callq	lzma_index_end@PLT
.Ltmp15:
	.loc	0 302 47 is_stmt 1              # liblzma/common/stream_encoder.c:302:47
	movq	%r14, %rdi
	callq	lzma_index_init@PLT
.Ltmp16:
	.loc	0 302 31 is_stmt 0              # liblzma/common/stream_encoder.c:302:31
	movq	(%r15), %rcx
	.loc	0 302 45                        # liblzma/common/stream_encoder.c:302:45
	movq	%rax, 424(%rcx)
.Ltmp17:
	.loc	0 303 35 is_stmt 1              # liblzma/common/stream_encoder.c:303:35
	movq	(%r15), %rsi
	.loc	0 303 49 is_stmt 0              # liblzma/common/stream_encoder.c:303:49
	cmpq	$0, 424(%rsi)
.Ltmp18:
	.loc	0 303 6                         # liblzma/common/stream_encoder.c:303:6
	je	.LBB0_11
.Ltmp19:
# %bb.7:                                # %if.end47
	#DEBUG_VALUE: lzma_stream_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_stream_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_stream_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder_init:check <- $ebp
	.loc	0 307 20 is_stmt 1              # liblzma/common/stream_encoder.c:307:20
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, (%rsp)
	movq	$0, 48(%rsp)
	.loc	0 307 35 is_stmt 0              # liblzma/common/stream_encoder.c:307:35
	movl	%ebp, 16(%rsp)
.Ltmp20:
	.loc	0 311 2 is_stmt 1               # liblzma/common/stream_encoder.c:311:2
	addq	$448, %rsi                      # imm = 0x1C0
	movq	%rsp, %rdi
	callq	lzma_stream_header_encode@PLT
.Ltmp21:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 311 2 is_stmt 0               # liblzma/common/stream_encoder.c:311:2
	testl	%eax, %eax
	jne	.LBB0_12
.Ltmp22:
# %bb.8:                                # %do.end56
	#DEBUG_VALUE: lzma_stream_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_stream_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_stream_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder_init:check <- $ebp
	.loc	0 314 31 is_stmt 1              # liblzma/common/stream_encoder.c:314:31
	movq	(%r15), %rax
	.loc	0 314 50 is_stmt 0              # liblzma/common/stream_encoder.c:314:50
	movq	$0, 432(%rax)
	.loc	0 315 31 is_stmt 1              # liblzma/common/stream_encoder.c:315:31
	movq	(%r15), %rax
	.loc	0 315 51 is_stmt 0              # liblzma/common/stream_encoder.c:315:51
	movq	$12, 440(%rax)
	.loc	0 321 10 is_stmt 1              # liblzma/common/stream_encoder.c:321:10
	movq	(%r15), %rdi
	.loc	0 320 9                         # liblzma/common/stream_encoder.c:320:9
	movq	%r14, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	stream_encoder_update
.Ltmp23:
	.loc	0 0 9 is_stmt 0                 # liblzma/common/stream_encoder.c:0:9
	jmp	.LBB0_12
.Ltmp24:
.LBB0_9:
	#DEBUG_VALUE: lzma_stream_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_stream_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_stream_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder_init:check <- $ebp
	movl	$11, %eax
	.loc	0 277 6 is_stmt 1               # liblzma/common/stream_encoder.c:277:6
	jmp	.LBB0_12
.Ltmp25:
.LBB0_11:
	#DEBUG_VALUE: lzma_stream_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_stream_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_stream_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder_init:check <- $ebp
	.loc	0 0 6 is_stmt 0                 # liblzma/common/stream_encoder.c:0:6
	movl	$5, %eax
.Ltmp26:
.LBB0_12:                               # %return
	#DEBUG_VALUE: lzma_stream_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_stream_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_stream_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder_init:check <- $ebp
	.loc	0 322 1 epilogue_begin is_stmt 1 # liblzma/common/stream_encoder.c:322:1
	addq	$56, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp27:
	#DEBUG_VALUE: lzma_stream_encoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp28:
	#DEBUG_VALUE: lzma_stream_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp29:
	#DEBUG_VALUE: lzma_stream_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp30:
	#DEBUG_VALUE: lzma_stream_encoder_init:check <- [DW_OP_LLVM_entry_value 1] $ecx
	.cfi_def_cfa_offset 8
	retq
.Ltmp31:
.Lfunc_end0:
	.size	lzma_stream_encoder_init, .Lfunc_end0-lzma_stream_encoder_init
	.cfi_endproc
	.file	12 "liblzma/api/lzma" "stream_flags.h" md5 0xd3814c86a389337e759db33a259f1072
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function stream_encode
.LCPI1_0:
	.zero	16,255
	.text
	.p2align	4, 0x90
	.type	stream_encode,@function
stream_encode:                          # @stream_encode
.Lfunc_begin1:
	.loc	0 87 0                          # liblzma/common/stream_encoder.c:87:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: stream_encode:pcoder <- $rdi
	#DEBUG_VALUE: stream_encode:allocator <- $rsi
	#DEBUG_VALUE: stream_encode:in <- $rdx
	#DEBUG_VALUE: stream_encode:in_pos <- $rcx
	#DEBUG_VALUE: stream_encode:in_size <- $r8
	#DEBUG_VALUE: stream_encode:out <- $r9
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
.Ltmp32:
	#DEBUG_VALUE: stream_encode:out_pos <- [DW_OP_plus_uconst 192] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out_size <- [DW_OP_plus_uconst 200] [$rsp+0]
	#DEBUG_VALUE: stream_encode:action <- [DW_OP_plus_uconst 208] [$rsp+0]
	movq	%r9, 16(%rsp)                   # 8-byte Spill
.Ltmp33:
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	movq	%r8, 32(%rsp)                   # 8-byte Spill
.Ltmp34:
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
.Ltmp35:
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
.Ltmp36:
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	movq	%rsi, (%rsp)                    # 8-byte Spill
.Ltmp37:
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	movq	200(%rsp), %r12
	movq	192(%rsp), %r14
.Ltmp38:
	#DEBUG_VALUE: stream_encode:coder <- undef
	.loc	0 90 18 prologue_end            # liblzma/common/stream_encoder.c:90:18
	cmpq	%r12, (%r14)
	.loc	0 90 2 is_stmt 0                # liblzma/common/stream_encoder.c:90:2
	jae	.LBB1_25
.Ltmp39:
# %bb.1:                                # %while.body.lr.ph
	#DEBUG_VALUE: stream_encode:pcoder <- $rdi
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out_pos <- [DW_OP_plus_uconst 192] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out_size <- [DW_OP_plus_uconst 200] [$rsp+0]
	#DEBUG_VALUE: stream_encode:action <- [DW_OP_plus_uconst 208] [$rsp+0]
	.loc	0 0 2                           # liblzma/common/stream_encoder.c:0:2
	movq	%rdi, %rbp
	leaq	360(%rdi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leaq	448(%rdi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	8(%rdi), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	72(%rdi), %rbx
	leaq	88(%rdi), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	432(%rdi), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	.loc	0 91 17 is_stmt 1               # liblzma/common/stream_encoder.c:91:17
	movl	(%rdi), %eax
	movq	%rbx, %r15
	jmp	.LBB1_5
.Ltmp40:
.LBB1_2:                                # %cleanup74
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ret <- $r13d
	.loc	0 174 19                        # liblzma/common/stream_encoder.c:174:19
	movl	$1, (%rbp)
	movl	$1, %eax
	movq	%r15, %rbx
.Ltmp41:
	.loc	0 90 18                         # liblzma/common/stream_encoder.c:90:18
	cmpq	%r12, (%r14)
	.loc	0 90 2 is_stmt 0                # liblzma/common/stream_encoder.c:90:2
	jae	.LBB1_25
.Ltmp42:
	.p2align	4, 0x90
.LBB1_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 0 2                           # liblzma/common/stream_encoder.c:0:2
	movl	$11, %r13d
	.loc	0 91 2 is_stmt 1                # liblzma/common/stream_encoder.c:91:2
	cmpl	$5, %eax
	ja	.LBB1_26
.Ltmp43:
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	movl	%eax, %eax
	jmpq	*.LJTI1_0(,%rax,8)
.Ltmp44:
.LBB1_7:                                # %sw.bb
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 96 12                         # liblzma/common/stream_encoder.c:96:12
	movq	440(%rbp), %rdx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	.loc	0 95 3                          # liblzma/common/stream_encoder.c:95:3
	movq	%r14, %r8
	movq	%r12, %r9
	callq	lzma_bufcpy@PLT
.Ltmp45:
	.loc	0 97 14                         # liblzma/common/stream_encoder.c:97:14
	movq	432(%rbp), %rax
	.loc	0 97 25 is_stmt 0               # liblzma/common/stream_encoder.c:97:25
	cmpq	440(%rbp), %rax
.Ltmp46:
	.loc	0 97 7                          # liblzma/common/stream_encoder.c:97:7
	jb	.LBB1_25
.Ltmp47:
# %bb.8:                                # %if.end
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 100 14 is_stmt 1              # liblzma/common/stream_encoder.c:100:14
	movl	(%rbp), %eax
	.loc	0 100 23 is_stmt 0              # liblzma/common/stream_encoder.c:100:23
	cmpl	$5, %eax
.Ltmp48:
	.loc	0 100 7                         # liblzma/common/stream_encoder.c:100:7
	je	.LBB1_27
.Ltmp49:
# %bb.9:                                # %if.end7
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 0 7                           # liblzma/common/stream_encoder.c:0:7
	movq	%r15, %rbx
	.loc	0 103 21 is_stmt 1              # liblzma/common/stream_encoder.c:103:21
	movq	$0, 432(%rbp)
	.loc	0 104 3                         # liblzma/common/stream_encoder.c:104:3
	incl	%eax
	movl	%eax, (%rbp)
.Ltmp50:
	.loc	0 90 18                         # liblzma/common/stream_encoder.c:90:18
	cmpq	%r12, (%r14)
	jb	.LBB1_5
	jmp	.LBB1_25
.Ltmp51:
.LBB1_10:                               # %sw.bb10
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 0 18 is_stmt 0                # liblzma/common/stream_encoder.c:0:18
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
.Ltmp52:
	.loc	0 108 15 is_stmt 1              # liblzma/common/stream_encoder.c:108:15
	cmpq	%rax, (%rcx)
.Ltmp53:
	.loc	0 108 7 is_stmt 0               # liblzma/common/stream_encoder.c:108:7
	jne	.LBB1_20
.Ltmp54:
# %bb.11:                               # %if.then12
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 0 7                           # liblzma/common/stream_encoder.c:0:7
	cmpl	$3, 208(%rsp)
.Ltmp55:
	.loc	0 112 8 is_stmt 1               # liblzma/common/stream_encoder.c:112:8
	jne	.LBB1_30
.Ltmp56:
# %bb.12:                               # %do.body
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 123 4                         # liblzma/common/stream_encoder.c:123:4
	movq	424(%rbp), %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	(%rsp), %rsi                    # 8-byte Reload
	callq	lzma_index_encoder_init@PLT
.Ltmp57:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 123 4 is_stmt 0               # liblzma/common/stream_encoder.c:123:4
	testl	%eax, %eax
	jne	.LBB1_31
.Ltmp58:
# %bb.13:                               # %do.end
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 126 20 is_stmt 1              # liblzma/common/stream_encoder.c:126:20
	movl	$4, (%rbp)
	movl	$4, %eax
	movq	%r15, %rbx
.Ltmp59:
	.loc	0 90 18                         # liblzma/common/stream_encoder.c:90:18
	cmpq	%r12, (%r14)
	jb	.LBB1_5
	jmp	.LBB1_25
.Ltmp60:
.LBB1_14:                               # %sw.bb76
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 182 26                        # liblzma/common/stream_encoder.c:182:26
	movq	360(%rbp), %rdi
	.loc	0 181 24                        # liblzma/common/stream_encoder.c:181:24
	subq	$8, %rsp
.Ltmp61:
	.cfi_adjust_cfa_offset 8
	.loc	0 0 24 is_stmt 0                # liblzma/common/stream_encoder.c:0:24
	movq	8(%rsp), %rsi                   # 8-byte Reload
	.loc	0 181 24                        # liblzma/common/stream_encoder.c:181:24
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	24(%rsp), %r9                   # 8-byte Reload
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*384(%rbp)
.Ltmp62:
	#DEBUG_VALUE: ret <- $eax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
.Ltmp63:
	.loc	0 185 11 is_stmt 1              # liblzma/common/stream_encoder.c:185:11
	cmpl	$1, %eax
.Ltmp64:
	.loc	0 185 7 is_stmt 0               # liblzma/common/stream_encoder.c:185:7
	jne	.LBB1_31
.Ltmp65:
# %bb.15:                               # %if.end86
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ret <- $eax
	.loc	0 0 7                           # liblzma/common/stream_encoder.c:0:7
	pxor	%xmm0, %xmm0
	.loc	0 189 27 is_stmt 1              # liblzma/common/stream_encoder.c:189:27
	movdqa	%xmm0, 112(%rsp)
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movq	$0, 128(%rsp)
	.loc	0 191 44                        # liblzma/common/stream_encoder.c:191:44
	movq	424(%rbp), %rdi
	.loc	0 191 21 is_stmt 0              # liblzma/common/stream_encoder.c:191:21
	callq	lzma_index_size@PLT
.Ltmp66:
	.loc	0 189 42 is_stmt 1              # liblzma/common/stream_encoder.c:189:42
	movq	%rax, 88(%rsp)
	.loc	0 192 34                        # liblzma/common/stream_encoder.c:192:34
	movl	80(%rbp), %eax
	.loc	0 189 42                        # liblzma/common/stream_encoder.c:189:42
	movl	%eax, 96(%rsp)
.Ltmp67:
	.loc	0 195 7                         # liblzma/common/stream_encoder.c:195:7
	leaq	80(%rsp), %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	lzma_stream_footer_encode@PLT
.Ltmp68:
	.loc	0 196 5                         # liblzma/common/stream_encoder.c:196:5
	testl	%eax, %eax
.Ltmp69:
	.loc	0 195 7                         # liblzma/common/stream_encoder.c:195:7
	jne	.LBB1_26
.Ltmp70:
# %bb.16:                               # %cleanup101.thread176
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 199 22                        # liblzma/common/stream_encoder.c:199:22
	movq	$12, 440(%rbp)
	.loc	0 200 19                        # liblzma/common/stream_encoder.c:200:19
	movl	$5, (%rbp)
	movl	$5, %eax
	movq	%r15, %rbx
.Ltmp71:
	.loc	0 90 18                         # liblzma/common/stream_encoder.c:90:18
	cmpq	%r12, (%r14)
	jb	.LBB1_5
	jmp	.LBB1_25
.Ltmp72:
.LBB1_17:                               # %sw.bb46
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 160 26                        # liblzma/common/stream_encoder.c:160:26
	movq	8(%rbp), %rdi
	.loc	0 162 29                        # liblzma/common/stream_encoder.c:162:29
	movl	208(%rsp), %eax
	movl	stream_encode.convert(,%rax,4), %eax
	.loc	0 159 24                        # liblzma/common/stream_encoder.c:159:24
	subq	$8, %rsp
.Ltmp73:
	.cfi_adjust_cfa_offset 8
	.loc	0 0 24 is_stmt 0                # liblzma/common/stream_encoder.c:0:24
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	24(%rsp), %r9                   # 8-byte Reload
	.loc	0 159 24                        # liblzma/common/stream_encoder.c:159:24
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*32(%rbp)
.Ltmp74:
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	%eax, %r13d
.Ltmp75:
	#DEBUG_VALUE: ret <- $r13d
	.loc	0 0 24                          # liblzma/common/stream_encoder.c:0:24
	cmpl	$1, 208(%rsp)
.Ltmp76:
	.loc	0 163 30 is_stmt 1              # liblzma/common/stream_encoder.c:163:30
	je	.LBB1_26
.Ltmp77:
# %bb.18:                               # %sw.bb46
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ret <- $r13d
	cmpl	$1, %r13d
	jne	.LBB1_26
.Ltmp78:
# %bb.19:                               # %if.end55
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: ret <- $r13d
	.loc	0 167 34                        # liblzma/common/stream_encoder.c:167:34
	movq	%r15, %rdi
	callq	lzma_block_unpadded_size@PLT
.Ltmp79:
	#DEBUG_VALUE: unpadded_size <- $rax
	.loc	0 170 3                         # liblzma/common/stream_encoder.c:170:3
	movq	96(%rbp), %rcx
	movq	424(%rbp), %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rax, %rdx
	callq	lzma_index_append@PLT
.Ltmp80:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 170 3 is_stmt 0               # liblzma/common/stream_encoder.c:170:3
	testl	%eax, %eax
	je	.LBB1_2
	jmp	.LBB1_31
.Ltmp81:
.LBB1_20:                               # %if.end22
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 133 7 is_stmt 1               # liblzma/common/stream_encoder.c:133:7
	cmpb	$0, 4(%rbp)
	jne	.LBB1_23
.Ltmp82:
# %bb.21:                               # %do.body24
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: block_encoder_init:pcoder <- $rbp
	#DEBUG_VALUE: block_encoder_init:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: block_encoder_init:coder <- $rbp
	.loc	0 0 7 is_stmt 0                 # liblzma/common/stream_encoder.c:0:7
	movq	48(%rsp), %rax                  # 8-byte Reload
.Ltmp83:
	.loc	0 72 41 is_stmt 1               # liblzma/common/stream_encoder.c:72:41
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, (%rax)
.Ltmp84:
	.loc	0 74 2                          # liblzma/common/stream_encoder.c:74:2
	movq	%rbx, %rdi
	callq	lzma_block_header_size@PLT
.Ltmp85:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 74 2 is_stmt 0                # liblzma/common/stream_encoder.c:74:2
	testl	%eax, %eax
	jne	.LBB1_31
.Ltmp86:
# %bb.22:                               # %block_encoder_init.exit
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: block_encoder_init:pcoder <- $rbp
	#DEBUG_VALUE: block_encoder_init:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: block_encoder_init:coder <- $rbp
	.loc	0 0 2                           # liblzma/common/stream_encoder.c:0:2
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	(%rsp), %rsi                    # 8-byte Reload
	.loc	0 77 9 is_stmt 1                # liblzma/common/stream_encoder.c:77:9
	movq	%rbx, %rdx
	callq	lzma_block_encoder_init@PLT
.Ltmp87:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 134 4                         # liblzma/common/stream_encoder.c:134:4
	testl	%eax, %eax
	jne	.LBB1_31
.Ltmp88:
.LBB1_23:                               # %if.end35
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 138 39                        # liblzma/common/stream_encoder.c:138:39
	movb	$0, 4(%rbp)
.Ltmp89:
	.loc	0 142 7                         # liblzma/common/stream_encoder.c:142:7
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	lzma_block_header_encode@PLT
.Ltmp90:
	.loc	0 143 20                        # liblzma/common/stream_encoder.c:143:20
	testl	%eax, %eax
.Ltmp91:
	.loc	0 142 7                         # liblzma/common/stream_encoder.c:142:7
	jne	.LBB1_26
.Ltmp92:
# %bb.24:                               # %if.end42
                                        #   in Loop: Header=BB1_5 Depth=1
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 146 45                        # liblzma/common/stream_encoder.c:146:45
	movl	76(%rbp), %eax
	.loc	0 146 22 is_stmt 0              # liblzma/common/stream_encoder.c:146:22
	movq	%rax, 440(%rbp)
	.loc	0 147 19 is_stmt 1              # liblzma/common/stream_encoder.c:147:19
	movl	$2, (%rbp)
	movl	$2, %eax
	movq	%r15, %rbx
.Ltmp93:
	.loc	0 90 18                         # liblzma/common/stream_encoder.c:90:18
	cmpq	%r12, (%r14)
	.loc	0 90 2 is_stmt 0                # liblzma/common/stream_encoder.c:90:2
	jb	.LBB1_5
.Ltmp94:
.LBB1_25:
	#DEBUG_VALUE: stream_encode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 0 2                           # liblzma/common/stream_encoder.c:0:2
	xorl	%r13d, %r13d
.Ltmp95:
.LBB1_26:                               # %cleanup103
	#DEBUG_VALUE: stream_encode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 210 1 is_stmt 1               # liblzma/common/stream_encoder.c:210:1
	movl	%r13d, %eax
	.loc	0 210 1 epilogue_begin is_stmt 0 # liblzma/common/stream_encoder.c:210:1
	addq	$136, %rsp
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
.Ltmp96:
.LBB1_31:
	.cfi_def_cfa_offset 192
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 0 1                           # liblzma/common/stream_encoder.c:0:1
	movl	%eax, %r13d
.Ltmp97:
	.loc	0 185 7 is_stmt 1               # liblzma/common/stream_encoder.c:185:7
	jmp	.LBB1_26
.Ltmp98:
.LBB1_27:
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 0 7 is_stmt 0                 # liblzma/common/stream_encoder.c:0:7
	movl	$1, %r13d
	.loc	0 100 7 is_stmt 1               # liblzma/common/stream_encoder.c:100:7
	jmp	.LBB1_26
.Ltmp99:
.LBB1_30:                               # %if.then14
	#DEBUG_VALUE: stream_encode:pcoder <- $rbp
	#DEBUG_VALUE: stream_encode:allocator <- [$rsp+0]
	#DEBUG_VALUE: stream_encode:in <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_pos <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: stream_encode:in_size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: stream_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 113 19                        # liblzma/common/stream_encoder.c:113:19
	xorl	%r13d, %r13d
	cmpl	$0, 208(%rsp)
	setne	%r13b
	.loc	0 113 5 is_stmt 0               # liblzma/common/stream_encoder.c:113:5
	jmp	.LBB1_26
.Ltmp100:
.Lfunc_end1:
	.size	stream_encode, .Lfunc_end1-stream_encode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_7
	.quad	.LBB1_10
	.quad	.LBB1_7
	.quad	.LBB1_17
	.quad	.LBB1_14
	.quad	.LBB1_7
	.file	13 "liblzma/common" "index_encoder.h" md5 0x1f7a42f9f8fa2ab3e3b4b125f8be1d4d
	.file	14 "liblzma/common" "block_encoder.h" md5 0x8a5855f99931e218b4ed02132bba4fb7
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function stream_encoder_end
	.type	stream_encoder_end,@function
stream_encoder_end:                     # @stream_encoder_end
.Lfunc_begin2:
	.loc	0 215 0 is_stmt 1               # liblzma/common/stream_encoder.c:215:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: stream_encoder_end:pcoder <- $rdi
	#DEBUG_VALUE: stream_encoder_end:allocator <- $rsi
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
.Ltmp101:
	#DEBUG_VALUE: stream_encoder_end:coder <- $rdi
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp102:
	.loc	0 218 24 prologue_end           # liblzma/common/stream_encoder.c:218:24
	addq	$8, %rdi
.Ltmp103:
	#DEBUG_VALUE: stream_encoder_end:coder <- $r14
	#DEBUG_VALUE: stream_encoder_end:pcoder <- $r14
	.loc	0 218 2 is_stmt 0               # liblzma/common/stream_encoder.c:218:2
	callq	lzma_next_end@PLT
.Ltmp104:
	#DEBUG_VALUE: stream_encoder_end:allocator <- $rbx
	.loc	0 219 24 is_stmt 1              # liblzma/common/stream_encoder.c:219:24
	leaq	360(%r14), %rdi
	.loc	0 219 2 is_stmt 0               # liblzma/common/stream_encoder.c:219:2
	movq	%rbx, %rsi
	callq	lzma_next_end@PLT
.Ltmp105:
	.loc	0 220 24 is_stmt 1              # liblzma/common/stream_encoder.c:220:24
	movq	424(%r14), %rdi
	.loc	0 220 2 is_stmt 0               # liblzma/common/stream_encoder.c:220:2
	movq	%rbx, %rsi
	callq	lzma_index_end@PLT
.Ltmp106:
	#DEBUG_VALUE: i <- 0
	.loc	0 222 42 is_stmt 1              # liblzma/common/stream_encoder.c:222:42
	cmpq	$-1, 280(%r14)
.Ltmp107:
	.loc	0 222 2 is_stmt 0               # liblzma/common/stream_encoder.c:222:2
	je	.LBB2_3
.Ltmp108:
# %bb.1:                                # %for.body.preheader
	#DEBUG_VALUE: stream_encoder_end:pcoder <- $r14
	#DEBUG_VALUE: stream_encoder_end:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_end:coder <- $r14
	#DEBUG_VALUE: i <- 0
	leaq	296(%r14), %r15
.Ltmp109:
	.p2align	4, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: stream_encoder_end:pcoder <- $r14
	#DEBUG_VALUE: stream_encoder_end:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_end:coder <- $r14
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_consts 296, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_stack_value] $r15, $r14
	.loc	0 223 31 is_stmt 1              # liblzma/common/stream_encoder.c:223:31
	movq	-8(%r15), %rdi
	.loc	0 223 3 is_stmt 0               # liblzma/common/stream_encoder.c:223:3
	movq	%rbx, %rsi
	callq	lzma_free@PLT
.Ltmp110:
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_consts 296, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r15, $r14
	.loc	0 222 42 is_stmt 1              # liblzma/common/stream_encoder.c:222:42
	cmpq	$-1, (%r15)
.Ltmp111:
	.loc	0 222 2 is_stmt 0               # liblzma/common/stream_encoder.c:222:2
	leaq	16(%r15), %r15
.Ltmp112:
	jne	.LBB2_2
.Ltmp113:
.LBB2_3:                                # %for.cond.cleanup
	#DEBUG_VALUE: stream_encoder_end:pcoder <- $r14
	#DEBUG_VALUE: stream_encoder_end:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_end:coder <- $r14
	.loc	0 225 2 is_stmt 1               # liblzma/common/stream_encoder.c:225:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 225 2 epilogue_begin is_stmt 0 # liblzma/common/stream_encoder.c:225:2
	popq	%rbx
.Ltmp114:
	#DEBUG_VALUE: stream_encoder_end:allocator <- $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp115:
	#DEBUG_VALUE: stream_encoder_end:coder <- $rdi
	#DEBUG_VALUE: stream_encoder_end:pcoder <- $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.Ltmp116:
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp117:
.Lfunc_end2:
	.size	stream_encoder_end, .Lfunc_end2-stream_encoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function stream_encoder_update
	.type	stream_encoder_update,@function
stream_encoder_update:                  # @stream_encoder_update
.Lfunc_begin3:
	.loc	0 234 0 is_stmt 1               # liblzma/common/stream_encoder.c:234:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: stream_encoder_update:pcoder <- $rdi
	#DEBUG_VALUE: stream_encoder_update:allocator <- $rsi
	#DEBUG_VALUE: stream_encoder_update:filters <- $rdx
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- $rcx
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
.Ltmp118:
	#DEBUG_VALUE: stream_encoder_update:coder <- $rdi
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
.Ltmp119:
	.loc	0 237 13 prologue_end           # liblzma/common/stream_encoder.c:237:13
	movl	(%rdi), %edx
.Ltmp120:
	#DEBUG_VALUE: stream_encoder_update:filters <- $r14
	.loc	0 237 22 is_stmt 0              # liblzma/common/stream_encoder.c:237:22
	cmpl	$1, %edx
.Ltmp121:
	.loc	0 237 6                         # liblzma/common/stream_encoder.c:237:6
	ja	.LBB3_6
.Ltmp122:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: stream_encoder_update:pcoder <- $r15
	#DEBUG_VALUE: stream_encoder_update:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_update:filters <- $r14
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- $rcx
	#DEBUG_VALUE: stream_encoder_update:coder <- $r15
	.loc	0 242 39 is_stmt 1              # liblzma/common/stream_encoder.c:242:39
	movb	$0, 4(%r15)
	.loc	0 243 32                        # liblzma/common/stream_encoder.c:243:32
	movq	%r14, 104(%r15)
.Ltmp123:
	#DEBUG_VALUE: block_encoder_init:pcoder <- $r15
	#DEBUG_VALUE: block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: block_encoder_init:coder <- $r15
	.loc	0 71 9                          # liblzma/common/stream_encoder.c:71:9
	leaq	72(%r15), %r12
	.loc	0 72 41                         # liblzma/common/stream_encoder.c:72:41
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, 88(%r15)
.Ltmp124:
	.loc	0 74 2                          # liblzma/common/stream_encoder.c:74:2
	movq	%r12, %rdi
	callq	lzma_block_header_size@PLT
.Ltmp125:
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 74 2 is_stmt 0                # liblzma/common/stream_encoder.c:74:2
	testl	%eax, %eax
	je	.LBB3_4
.Ltmp126:
# %bb.2:                                # %block_encoder_init.exit.thread
	#DEBUG_VALUE: stream_encoder_update:pcoder <- $r15
	#DEBUG_VALUE: stream_encoder_update:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_update:filters <- $r14
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: stream_encoder_update:coder <- $r15
	#DEBUG_VALUE: ret <- $eax
	.loc	0 245 41 is_stmt 1              # liblzma/common/stream_encoder.c:245:41
	leaq	280(%r15), %rcx
	.loc	0 245 32 is_stmt 0              # liblzma/common/stream_encoder.c:245:32
	movq	%rcx, 104(%r15)
	jmp	.LBB3_3
.Ltmp127:
.LBB3_6:                                # %if.else
	#DEBUG_VALUE: stream_encoder_update:pcoder <- $r15
	#DEBUG_VALUE: stream_encoder_update:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_update:filters <- $r14
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- $rcx
	#DEBUG_VALUE: stream_encoder_update:coder <- $r15
	.loc	0 0 32                          # liblzma/common/stream_encoder.c:0:32
	movl	$11, %eax
.Ltmp128:
	.loc	0 251 29 is_stmt 1              # liblzma/common/stream_encoder.c:251:29
	cmpl	$3, %edx
.Ltmp129:
	.loc	0 251 13 is_stmt 0              # liblzma/common/stream_encoder.c:251:13
	ja	.LBB3_3
.Ltmp130:
# %bb.7:                                # %do.body
	#DEBUG_VALUE: stream_encoder_update:pcoder <- $r15
	#DEBUG_VALUE: stream_encoder_update:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_update:filters <- $r14
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- $rcx
	#DEBUG_VALUE: stream_encoder_update:coder <- $r15
	.loc	0 254 3 is_stmt 1               # liblzma/common/stream_encoder.c:254:3
	movq	8(%r15), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*64(%r15)
.Ltmp131:
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 254 3 is_stmt 0               # liblzma/common/stream_encoder.c:254:3
	testl	%eax, %eax
	jne	.LBB3_3
.Ltmp132:
# %bb.8:                                # %if.end22
	#DEBUG_VALUE: stream_encoder_update:pcoder <- $r15
	#DEBUG_VALUE: stream_encoder_update:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_update:filters <- $r14
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: stream_encoder_update:coder <- $r15
	#DEBUG_VALUE: i <- 0
	.loc	0 0 3                           # liblzma/common/stream_encoder.c:0:3
	leaq	280(%r15), %r12
.Ltmp133:
	.loc	0 264 42 is_stmt 1              # liblzma/common/stream_encoder.c:264:42
	cmpq	$-1, 280(%r15)
.Ltmp134:
	.loc	0 264 2 is_stmt 0               # liblzma/common/stream_encoder.c:264:2
	jne	.LBB3_9
	jmp	.LBB3_11
.Ltmp135:
.LBB3_4:                                # %block_encoder_init.exit
	#DEBUG_VALUE: stream_encoder_update:pcoder <- $r15
	#DEBUG_VALUE: stream_encoder_update:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_update:filters <- $r14
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: stream_encoder_update:coder <- $r15
	#DEBUG_VALUE: block_encoder_init:pcoder <- $r15
	#DEBUG_VALUE: block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: block_encoder_init:coder <- $r15
	.loc	0 77 41 is_stmt 1               # liblzma/common/stream_encoder.c:77:41
	leaq	8(%r15), %rdi
	.loc	0 77 9 is_stmt 0                # liblzma/common/stream_encoder.c:77:9
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	lzma_block_encoder_init@PLT
.Ltmp136:
	#DEBUG_VALUE: ret <- $eax
	.loc	0 245 41 is_stmt 1              # liblzma/common/stream_encoder.c:245:41
	leaq	280(%r15), %rcx
	.loc	0 245 32 is_stmt 0              # liblzma/common/stream_encoder.c:245:32
	movq	%rcx, 104(%r15)
.Ltmp137:
	.loc	0 246 11 is_stmt 1              # liblzma/common/stream_encoder.c:246:11
	testl	%eax, %eax
.Ltmp138:
	.loc	0 246 7 is_stmt 0               # liblzma/common/stream_encoder.c:246:7
	je	.LBB3_5
.Ltmp139:
.LBB3_3:                                # %cleanup31
	#DEBUG_VALUE: stream_encoder_update:pcoder <- $r15
	#DEBUG_VALUE: stream_encoder_update:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_update:filters <- $r14
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: stream_encoder_update:coder <- $r15
	.loc	0 268 1 epilogue_begin is_stmt 1 # liblzma/common/stream_encoder.c:268:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp140:
	#DEBUG_VALUE: stream_encoder_update:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp141:
	#DEBUG_VALUE: stream_encoder_update:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp142:
	#DEBUG_VALUE: stream_encoder_update:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp143:
.LBB3_5:                                # %if.end
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: stream_encoder_update:pcoder <- $r15
	#DEBUG_VALUE: stream_encoder_update:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_update:filters <- $r14
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: stream_encoder_update:coder <- $r15
	#DEBUG_VALUE: ret <- $eax
	.loc	0 249 39                        # liblzma/common/stream_encoder.c:249:39
	movb	$1, 4(%r15)
.Ltmp144:
	#DEBUG_VALUE: i <- 0
	.loc	0 0 39 is_stmt 0                # liblzma/common/stream_encoder.c:0:39
	leaq	280(%r15), %r12
.Ltmp145:
	.loc	0 264 42 is_stmt 1              # liblzma/common/stream_encoder.c:264:42
	cmpq	$-1, 280(%r15)
.Ltmp146:
	.loc	0 264 2 is_stmt 0               # liblzma/common/stream_encoder.c:264:2
	je	.LBB3_11
.Ltmp147:
.LBB3_9:                                # %for.body.preheader
	#DEBUG_VALUE: stream_encoder_update:pcoder <- $r15
	#DEBUG_VALUE: stream_encoder_update:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_update:filters <- $r14
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: stream_encoder_update:coder <- $r15
	#DEBUG_VALUE: i <- 0
	addq	$296, %r15                      # imm = 0x128
.Ltmp148:
	#DEBUG_VALUE: stream_encoder_update:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.p2align	4, 0x90
.LBB3_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: stream_encoder_update:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: stream_encoder_update:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_update:filters <- $r14
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_consts 296, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_stack_value] undef, undef
	.loc	0 265 31 is_stmt 1              # liblzma/common/stream_encoder.c:265:31
	movq	-8(%r15), %rdi
	.loc	0 265 3 is_stmt 0               # liblzma/common/stream_encoder.c:265:3
	movq	%rbx, %rsi
	callq	lzma_free@PLT
.Ltmp149:
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_consts 296, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] undef, undef
	.loc	0 264 42 is_stmt 1              # liblzma/common/stream_encoder.c:264:42
	cmpq	$-1, (%r15)
.Ltmp150:
	.loc	0 264 2 is_stmt 0               # liblzma/common/stream_encoder.c:264:2
	leaq	16(%r15), %r15
	jne	.LBB3_10
.Ltmp151:
.LBB3_11:                               # %for.cond.cleanup
	#DEBUG_VALUE: stream_encoder_update:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: stream_encoder_update:allocator <- $rbx
	#DEBUG_VALUE: stream_encoder_update:filters <- $r14
	#DEBUG_VALUE: stream_encoder_update:reversed_filters <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 267 9 is_stmt 1               # liblzma/common/stream_encoder.c:267:9
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	.loc	0 267 9 epilogue_begin is_stmt 0 # liblzma/common/stream_encoder.c:267:9
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp152:
	#DEBUG_VALUE: stream_encoder_update:allocator <- $rdx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp153:
	#DEBUG_VALUE: stream_encoder_update:filters <- $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.Ltmp154:
	jmp	lzma_filters_copy@PLT           # TAILCALL
.Ltmp155:
.Lfunc_end3:
	.size	stream_encoder_update, .Lfunc_end3-stream_encoder_update
	.cfi_endproc
                                        # -- End function
	.globl	lzma_stream_encoder             # -- Begin function lzma_stream_encoder
	.p2align	4, 0x90
	.type	lzma_stream_encoder,@function
lzma_stream_encoder:                    # @lzma_stream_encoder
.Lfunc_begin4:
	.loc	0 328 0 is_stmt 1               # liblzma/common/stream_encoder.c:328:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_stream_encoder:strm <- $rdi
	#DEBUG_VALUE: lzma_stream_encoder:filters <- $rsi
	#DEBUG_VALUE: lzma_stream_encoder:check <- $edx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp156:
	.loc	0 329 2 prologue_end            # liblzma/common/stream_encoder.c:329:2
	callq	lzma_strm_init@PLT
.Ltmp157:
	#DEBUG_VALUE: lzma_stream_encoder:check <- $ebp
	#DEBUG_VALUE: lzma_stream_encoder:filters <- $r14
	#DEBUG_VALUE: lzma_stream_encoder:strm <- $rbx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 329 2 is_stmt 0               # liblzma/common/stream_encoder.c:329:2
	testl	%eax, %eax
	je	.LBB4_1
.Ltmp158:
# %bb.4:                                # %return
	#DEBUG_VALUE: lzma_stream_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder:filters <- $r14
	#DEBUG_VALUE: lzma_stream_encoder:check <- $ebp
	.loc	0 337 1 epilogue_begin is_stmt 1 # liblzma/common/stream_encoder.c:337:1
	popq	%rbx
.Ltmp159:
	#DEBUG_VALUE: lzma_stream_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp160:
	#DEBUG_VALUE: lzma_stream_encoder:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp161:
	#DEBUG_VALUE: lzma_stream_encoder:check <- [DW_OP_LLVM_entry_value 1] $edx
	.cfi_def_cfa_offset 8
	retq
.Ltmp162:
.LBB4_1:                                # %do.end
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_stream_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder:filters <- $r14
	#DEBUG_VALUE: lzma_stream_encoder:check <- $ebp
	.loc	0 329 2                         # liblzma/common/stream_encoder.c:329:2
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	callq	lzma_stream_encoder_init
.Ltmp163:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 329 2 is_stmt 0               # liblzma/common/stream_encoder.c:329:2
	testl	%eax, %eax
.Ltmp164:
	.loc	0 329 2                         # liblzma/common/stream_encoder.c:329:2
	je	.LBB4_3
.Ltmp165:
# %bb.2:                                # %cleanup7
	#DEBUG_VALUE: lzma_stream_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder:filters <- $r14
	#DEBUG_VALUE: lzma_stream_encoder:check <- $ebp
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 329 2                         # liblzma/common/stream_encoder.c:329:2
	movq	%rbx, %rdi
	movl	%eax, %ebx
.Ltmp166:
	#DEBUG_VALUE: ret_ <- $ebx
	#DEBUG_VALUE: lzma_stream_encoder:strm <- $rdi
	callq	lzma_end@PLT
.Ltmp167:
	#DEBUG_VALUE: lzma_stream_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 2                           # liblzma/common/stream_encoder.c:0:2
	movl	%ebx, %eax
.Ltmp168:
	.loc	0 337 1 epilogue_begin is_stmt 1 # liblzma/common/stream_encoder.c:337:1
	popq	%rbx
.Ltmp169:
	#DEBUG_VALUE: ret_ <- $eax
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp170:
	#DEBUG_VALUE: lzma_stream_encoder:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp171:
	#DEBUG_VALUE: lzma_stream_encoder:check <- [DW_OP_LLVM_entry_value 1] $edx
	.cfi_def_cfa_offset 8
	retq
.Ltmp172:
.LBB4_3:                                # %do.end10
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_stream_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_stream_encoder:filters <- $r14
	#DEBUG_VALUE: lzma_stream_encoder:check <- $ebp
	.loc	0 331 8                         # liblzma/common/stream_encoder.c:331:8
	movq	56(%rbx), %rax
	.loc	0 331 46 is_stmt 0              # liblzma/common/stream_encoder.c:331:46
	movb	$1, 80(%rax)
	.loc	0 332 8 is_stmt 1               # liblzma/common/stream_encoder.c:332:8
	movq	56(%rbx), %rax
	.loc	0 332 53 is_stmt 0              # liblzma/common/stream_encoder.c:332:53
	movb	$1, 81(%rax)
	.loc	0 333 8 is_stmt 1               # liblzma/common/stream_encoder.c:333:8
	movq	56(%rbx), %rax
	.loc	0 333 53 is_stmt 0              # liblzma/common/stream_encoder.c:333:53
	movb	$1, 82(%rax)
	.loc	0 334 8 is_stmt 1               # liblzma/common/stream_encoder.c:334:8
	movq	56(%rbx), %rax
	.loc	0 334 49 is_stmt 0              # liblzma/common/stream_encoder.c:334:49
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	.loc	0 337 1 epilogue_begin is_stmt 1 # liblzma/common/stream_encoder.c:337:1
	popq	%rbx
.Ltmp173:
	#DEBUG_VALUE: lzma_stream_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp174:
	#DEBUG_VALUE: lzma_stream_encoder:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp175:
	#DEBUG_VALUE: lzma_stream_encoder:check <- [DW_OP_LLVM_entry_value 1] $edx
	.cfi_def_cfa_offset 8
	retq
.Ltmp176:
.Lfunc_end4:
	.size	lzma_stream_encoder, .Lfunc_end4-lzma_stream_encoder
	.cfi_endproc
                                        # -- End function
	.type	stream_encode.convert,@object   # @stream_encode.convert
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
stream_encode.convert:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	3                               # 0x3
	.long	3                               # 0x3
	.size	stream_encode.convert, 16

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	42                              # Offset entry count
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
	.long	.Ldebug_loc41-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
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
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 192
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 200
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 208
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	13                              # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	168                             # 296
	.byte	2                               # 
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	16                              # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	168                             # 296
	.byte	2                               # 
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp142-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp155-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp153-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp155-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp144-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp167-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp167-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp172-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp170-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp172-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp174-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp161-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp161-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp171-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp171-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp172-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp175-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp169-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
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
	.byte	3                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
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
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
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
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
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
	.byte	44                              # Abbreviation Code
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
	.byte	45                              # Abbreviation Code
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
	.byte	46                              # Abbreviation Code
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
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
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
	.byte	49                              # Abbreviation Code
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
	.byte	50                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	51                              # Abbreviation Code
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
	.byte	52                              # Abbreviation Code
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
	.byte	53                              # Abbreviation Code
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
	.byte	54                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	55                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0xb60 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x144 DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\300~"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x3e:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	367                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x49:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x52:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	825                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x5b:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	927                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x64:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	163                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	962                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x6d:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	164                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	902                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x76:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	165                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	972                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x7f:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	166                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	962                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x88:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	167                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	902                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x91:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	168                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	384                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x9a:0x8 DW_TAG_variable
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.long	1623                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0xa2:0x25 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	7                               # Abbrev [7] 0xa4:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.long	2229                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0xad:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	170                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.long	2918                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0xb6:0x10 DW_TAG_lexical_block
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp81-.Ltmp79                 # DW_AT_high_pc
	.byte	7                               # Abbrev [7] 0xbc:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.long	2229                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xc7:0x10 DW_TAG_lexical_block
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp58-.Ltmp56                 # DW_AT_high_pc
	.byte	7                               # Abbrev [7] 0xcd:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.long	2229                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xd7:0x41 DW_TAG_lexical_block
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp88-.Ltmp83                 # DW_AT_high_pc
	.byte	7                               # Abbrev [7] 0xdd:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.long	2229                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xe6:0x31 DW_TAG_inlined_subroutine
	.long	2186                            # DW_AT_abstract_origin
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp87-.Ltmp83                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	134                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	10                              # Abbrev [10] 0xf3:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2194                            # DW_AT_abstract_origin
	.byte	10                              # Abbrev [10] 0xfa:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	2202                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x102:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2210                            # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0x109:0xd DW_TAG_lexical_block
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp86-.Ltmp84                 # DW_AT_high_pc
	.byte	12                              # Abbrev [12] 0x10f:0x6 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.long	2219                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x118:0x18 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	13                              # Abbrev [13] 0x11a:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\320"
	.byte	161                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.long	1844                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x126:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.long	2229                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x130:0x6 DW_TAG_call_site
	.long	2234                            # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x136:0x6 DW_TAG_call_site
	.long	2273                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	15                              # Abbrev [15] 0x13c:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	86
	.byte	16                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x140:0x6 DW_TAG_call_site
	.long	2307                            # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x146:0x6 DW_TAG_call_site
	.long	2322                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	15                              # Abbrev [15] 0x14c:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	86
	.byte	19                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x150:0x6 DW_TAG_call_site
	.long	2341                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x156:0x6 DW_TAG_call_site
	.long	2366                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x15c:0x6 DW_TAG_call_site
	.long	2396                            # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x162:0x6 DW_TAG_call_site
	.long	2416                            # DW_AT_call_origin
	.byte	22                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x168:0x6 DW_TAG_call_site
	.long	2440                            # DW_AT_call_origin
	.byte	23                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x16f:0xc DW_TAG_array_type
	.long	379                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x174:0x6 DW_TAG_subrange_type
	.long	418                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x17b:0x5 DW_TAG_const_type
	.long	384                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x180:0x9 DW_TAG_typedef
	.long	393                             # DW_AT_type
	.byte	9                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x189:0x15 DW_TAG_enumeration_type
	.long	414                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x191:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x194:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x197:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x19a:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x19e:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	23                              # Abbrev [23] 0x1a2:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	20                              # Abbrev [20] 0x1a6:0x2d DW_TAG_enumeration_type
	.long	414                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x1ae:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1b1:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1b4:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1b7:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1ba:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1bd:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1c0:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1c3:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1c6:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1c9:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1cc:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1cf:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x1d3:0x15 DW_TAG_enumeration_type
	.long	414                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x1db:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1de:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1e1:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x1e4:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x1e8:0x82 DW_TAG_structure_type
	.byte	111                             # DW_AT_name
	.short	1472                            # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x1ee:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	503                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1f7:0x1b DW_TAG_enumeration_type
	.long	414                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x1ff:0x3 DW_TAG_enumerator
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x202:0x3 DW_TAG_enumerator
	.byte	29                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x205:0x3 DW_TAG_enumerator
	.byte	30                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x208:0x3 DW_TAG_enumerator
	.byte	31                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x20b:0x3 DW_TAG_enumerator
	.byte	32                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x20e:0x3 DW_TAG_enumerator
	.byte	33                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x212:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x21b:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	622                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x224:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	1149                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x22d:0xa DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	1493                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.short	280                             # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x237:0xa DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	622                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.short	360                             # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x241:0xa DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	1505                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.short	424                             # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x24b:0xa DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	902                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.short	432                             # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x255:0xa DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	902                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.short	440                             # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x25f:0xa DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	1520                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.short	448                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x26a:0x4 DW_TAG_base_type
	.byte	35                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	27                              # Abbrev [27] 0x26e:0x8 DW_TAG_typedef
	.long	630                             # DW_AT_type
	.byte	66                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	28                              # Abbrev [28] 0x276:0x4e DW_TAG_structure_type
	.byte	65                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x27b:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	708                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x284:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	717                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x28d:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	745                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x296:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	753                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x29f:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	982                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x2a8:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	1007                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x2b1:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	1041                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x2ba:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	1077                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x2c4:0x5 DW_TAG_pointer_type
	.long	713                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x2c9:0x4 DW_TAG_typedef
	.byte	38                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x2cd:0x8 DW_TAG_typedef
	.long	725                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x2d5:0x8 DW_TAG_typedef
	.long	733                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x2dd:0x8 DW_TAG_typedef
	.long	741                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2e5:0x4 DW_TAG_base_type
	.byte	40                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	27                              # Abbrev [27] 0x2e9:0x8 DW_TAG_typedef
	.long	741                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x2f1:0x8 DW_TAG_typedef
	.long	761                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x2f9:0x5 DW_TAG_pointer_type
	.long	766                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x2fe:0x33 DW_TAG_subroutine_type
	.long	817                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	32                              # Abbrev [32] 0x303:0x5 DW_TAG_formal_parameter
	.long	708                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x308:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x30d:0x5 DW_TAG_formal_parameter
	.long	927                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x312:0x5 DW_TAG_formal_parameter
	.long	962                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x317:0x5 DW_TAG_formal_parameter
	.long	902                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x31c:0x5 DW_TAG_formal_parameter
	.long	972                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x321:0x5 DW_TAG_formal_parameter
	.long	962                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x326:0x5 DW_TAG_formal_parameter
	.long	902                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x32b:0x5 DW_TAG_formal_parameter
	.long	384                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x331:0x8 DW_TAG_typedef
	.long	422                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x339:0x5 DW_TAG_pointer_type
	.long	830                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x33e:0x9 DW_TAG_typedef
	.long	839                             # DW_AT_type
	.byte	52                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x347:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	34                              # Abbrev [34] 0x34c:0xa DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	875                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0x356:0xa DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	910                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0x360:0xa DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	901                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x36b:0x5 DW_TAG_pointer_type
	.long	880                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x370:0x15 DW_TAG_subroutine_type
	.long	901                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	32                              # Abbrev [32] 0x375:0x5 DW_TAG_formal_parameter
	.long	901                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x37a:0x5 DW_TAG_formal_parameter
	.long	902                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x37f:0x5 DW_TAG_formal_parameter
	.long	902                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x385:0x1 DW_TAG_pointer_type
	.byte	27                              # Abbrev [27] 0x386:0x8 DW_TAG_typedef
	.long	741                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x38e:0x5 DW_TAG_pointer_type
	.long	915                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x393:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	32                              # Abbrev [32] 0x394:0x5 DW_TAG_formal_parameter
	.long	901                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x399:0x5 DW_TAG_formal_parameter
	.long	901                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x39f:0x5 DW_TAG_restrict_type
	.long	932                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x3a4:0x5 DW_TAG_pointer_type
	.long	937                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x3a9:0x5 DW_TAG_const_type
	.long	942                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x3ae:0x8 DW_TAG_typedef
	.long	950                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x3b6:0x8 DW_TAG_typedef
	.long	958                             # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x3be:0x4 DW_TAG_base_type
	.byte	53                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	37                              # Abbrev [37] 0x3c2:0x5 DW_TAG_restrict_type
	.long	967                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x3c7:0x5 DW_TAG_pointer_type
	.long	902                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x3cc:0x5 DW_TAG_restrict_type
	.long	977                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x3d1:0x5 DW_TAG_pointer_type
	.long	942                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x3d6:0x8 DW_TAG_typedef
	.long	990                             # DW_AT_type
	.byte	58                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x3de:0x5 DW_TAG_pointer_type
	.long	995                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x3e3:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	32                              # Abbrev [32] 0x3e4:0x5 DW_TAG_formal_parameter
	.long	708                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x3e9:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x3ef:0x5 DW_TAG_pointer_type
	.long	1012                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x3f4:0xb DW_TAG_subroutine_type
	.long	1023                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	32                              # Abbrev [32] 0x3f9:0x5 DW_TAG_formal_parameter
	.long	1031                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x3ff:0x8 DW_TAG_typedef
	.long	467                             # DW_AT_type
	.byte	60                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x407:0x5 DW_TAG_pointer_type
	.long	1036                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x40c:0x5 DW_TAG_const_type
	.long	713                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x411:0x5 DW_TAG_pointer_type
	.long	1046                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x416:0x1a DW_TAG_subroutine_type
	.long	817                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	32                              # Abbrev [32] 0x41b:0x5 DW_TAG_formal_parameter
	.long	708                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x420:0x5 DW_TAG_formal_parameter
	.long	1072                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x425:0x5 DW_TAG_formal_parameter
	.long	1072                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x42a:0x5 DW_TAG_formal_parameter
	.long	725                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x430:0x5 DW_TAG_pointer_type
	.long	725                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x435:0x5 DW_TAG_pointer_type
	.long	1082                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x43a:0x1a DW_TAG_subroutine_type
	.long	817                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	32                              # Abbrev [32] 0x43f:0x5 DW_TAG_formal_parameter
	.long	708                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x444:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x449:0x5 DW_TAG_formal_parameter
	.long	1108                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x44e:0x5 DW_TAG_formal_parameter
	.long	1108                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x454:0x5 DW_TAG_pointer_type
	.long	1113                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x459:0x5 DW_TAG_const_type
	.long	1118                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x45e:0x8 DW_TAG_typedef
	.long	1126                            # DW_AT_type
	.byte	64                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	38                              # Abbrev [38] 0x466:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x46a:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	717                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x473:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	901                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x47d:0x8 DW_TAG_typedef
	.long	1157                            # DW_AT_type
	.byte	103                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	38                              # Abbrev [38] 0x485:0x113 DW_TAG_structure_type
	.byte	208                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x489:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	1432                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x492:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	1432                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x49b:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	1023                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x4a4:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	717                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x4ad:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	717                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x4b6:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	1448                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x4bf:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	1453                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x4c8:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	901                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x4d1:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	901                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x4da:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	901                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x4e3:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	1432                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x4ec:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	1432                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x4f5:0x9 DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	717                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x4fe:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	717                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x507:0x9 DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	717                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x510:0x9 DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	717                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x519:0x9 DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	717                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x522:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	717                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x52b:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1465                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x534:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	1465                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	188                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x53d:0x9 DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	1465                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x546:0x9 DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	1465                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x54f:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	200                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x558:0x9 DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	201                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x561:0x9 DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.byte	202                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x56a:0x9 DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	203                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x573:0x9 DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	204                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x57c:0x9 DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	205                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x585:0x9 DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	206                             # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x58e:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	207                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x598:0x8 DW_TAG_typedef
	.long	1440                            # DW_AT_type
	.byte	70                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x5a0:0x8 DW_TAG_typedef
	.long	414                             # DW_AT_type
	.byte	69                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x5a8:0x5 DW_TAG_pointer_type
	.long	1118                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x5ad:0xc DW_TAG_array_type
	.long	942                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x5b2:0x6 DW_TAG_subrange_type
	.long	418                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x5b9:0x8 DW_TAG_typedef
	.long	1473                            # DW_AT_type
	.byte	90                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x5c1:0xc DW_TAG_enumeration_type
	.long	414                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x5c9:0x3 DW_TAG_enumerator
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x5cd:0x8 DW_TAG_typedef
	.long	958                             # DW_AT_type
	.byte	95                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x5d5:0xc DW_TAG_array_type
	.long	1118                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x5da:0x6 DW_TAG_subrange_type
	.long	418                             # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x5e1:0x5 DW_TAG_pointer_type
	.long	1510                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x5e6:0x8 DW_TAG_typedef
	.long	1518                            # DW_AT_type
	.byte	107                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	39                              # Abbrev [39] 0x5ee:0x2 DW_TAG_structure_type
	.byte	106                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	16                              # Abbrev [16] 0x5f0:0xd DW_TAG_array_type
	.long	942                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x5f5:0x7 DW_TAG_subrange_type
	.long	418                             # DW_AT_type
	.short	1024                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x5fd:0x4e DW_TAG_structure_type
	.byte	122                             # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x602:0x9 DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	622                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x60b:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	1556                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x614:0x1b DW_TAG_enumeration_type
	.long	414                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x61c:0x3 DW_TAG_enumerator
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x61f:0x3 DW_TAG_enumerator
	.byte	114                             # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x622:0x3 DW_TAG_enumerator
	.byte	115                             # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x625:0x3 DW_TAG_enumerator
	.byte	116                             # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x628:0x3 DW_TAG_enumerator
	.byte	117                             # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	21                              # Abbrev [21] 0x62b:0x3 DW_TAG_enumerator
	.byte	118                             # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x62f:0x9 DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	902                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x638:0x9 DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	1611                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x641:0x9 DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	618                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x64b:0xc DW_TAG_array_type
	.long	618                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x650:0x6 DW_TAG_subrange_type
	.long	418                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x657:0x5 DW_TAG_pointer_type
	.long	488                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x65c:0x7a DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	272                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
                                        # DW_AT_external
	.byte	42                              # Abbrev [42] 0x66c:0xa DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	272                             # DW_AT_decl_line
	.long	1765                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0x676:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	272                             # DW_AT_decl_line
	.long	825                             # DW_AT_type
	.byte	42                              # Abbrev [42] 0x680:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	273                             # DW_AT_decl_line
	.long	1108                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0x68a:0xa DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	273                             # DW_AT_decl_line
	.long	1023                            # DW_AT_type
	.byte	43                              # Abbrev [43] 0x694:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	161                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.long	1849                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x6a0:0x11 DW_TAG_lexical_block
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp22-.Ltmp20                 # DW_AT_high_pc
	.byte	44                              # Abbrev [44] 0x6a6:0xa DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.long	2229                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x6b1:0x6 DW_TAG_call_site
	.long	1750                            # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x6b7:0x6 DW_TAG_call_site
	.long	1770                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x6bd:0x6 DW_TAG_call_site
	.long	1789                            # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x6c3:0x6 DW_TAG_call_site
	.long	1805                            # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x6c9:0x6 DW_TAG_call_site
	.long	1820                            # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x6cf:0x6 DW_TAG_call_site
	.long	2015                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x6d6:0xf DW_TAG_subprogram
	.byte	123                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x6da:0x5 DW_TAG_formal_parameter
	.long	1765                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x6df:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x6e5:0x5 DW_TAG_pointer_type
	.long	622                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x6ea:0x13 DW_TAG_subprogram
	.byte	124                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	901                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x6f2:0x5 DW_TAG_formal_parameter
	.long	902                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x6f7:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0x6fd:0x10 DW_TAG_subprogram
	.byte	125                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	315                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x702:0x5 DW_TAG_formal_parameter
	.long	1505                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x707:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0x70d:0xf DW_TAG_subprogram
	.byte	126                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1505                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x716:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x71c:0x13 DW_TAG_subprogram
	.byte	127                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x724:0x5 DW_TAG_formal_parameter
	.long	1839                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x729:0x5 DW_TAG_formal_parameter
	.long	977                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x72f:0x5 DW_TAG_pointer_type
	.long	1844                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x734:0x5 DW_TAG_const_type
	.long	1849                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x739:0x8 DW_TAG_typedef
	.long	1857                            # DW_AT_type
	.byte	129                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	38                              # Abbrev [38] 0x741:0x9e DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	12                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x745:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	1432                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x74e:0x9 DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	717                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x757:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	1023                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x760:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1465                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x769:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	1465                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x772:0x9 DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	1465                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x77b:0x9 DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	1465                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x784:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x78d:0x9 DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	37                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x796:0x9 DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	38                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x79f:0x9 DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	39                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x7a8:0x9 DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x7b1:0x9 DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	41                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x7ba:0x9 DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	42                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x7c3:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	43                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x7cc:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	1432                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	25                              # Abbrev [25] 0x7d5:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	1432                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x7df:0xab DW_TAG_subprogram
	.byte	30                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x7ee:0x9 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x7f7:0x9 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.long	825                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x800:0x9 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.long	1108                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x809:0x9 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.byte	172                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.long	1108                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x812:0x9 DW_TAG_variable
	.byte	29                              # DW_AT_location
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.long	1623                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x81b:0x35 DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	7                               # Abbrev [7] 0x81d:0x9 DW_TAG_variable
	.byte	34                              # DW_AT_location
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	244                             # DW_AT_decl_line
	.long	2229                            # DW_AT_type
	.byte	49                              # Abbrev [49] 0x826:0x29 DW_TAG_inlined_subroutine
	.long	2186                            # DW_AT_abstract_origin
	.byte	3                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	244                             # DW_AT_call_line
	.byte	24                              # DW_AT_call_column
	.byte	50                              # Abbrev [50] 0x82f:0x6 DW_TAG_formal_parameter
	.byte	30                              # DW_AT_location
	.long	2194                            # DW_AT_abstract_origin
	.byte	50                              # Abbrev [50] 0x835:0x6 DW_TAG_formal_parameter
	.byte	31                              # DW_AT_location
	.long	2202                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x83b:0x6 DW_TAG_variable
	.byte	32                              # DW_AT_location
	.long	2210                            # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0x841:0xd DW_TAG_lexical_block
	.byte	31                              # DW_AT_low_pc
	.long	.Ltmp126-.Ltmp124               # DW_AT_high_pc
	.byte	12                              # Abbrev [12] 0x847:0x6 DW_TAG_variable
	.byte	33                              # DW_AT_location
	.long	2219                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x850:0x10 DW_TAG_lexical_block
	.byte	32                              # DW_AT_low_pc
	.long	.Ltmp132-.Ltmp130               # DW_AT_high_pc
	.byte	7                               # Abbrev [7] 0x856:0x9 DW_TAG_variable
	.byte	35                              # DW_AT_location
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.long	2229                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x860:0xd DW_TAG_lexical_block
	.byte	4                               # DW_AT_ranges
	.byte	44                              # Abbrev [44] 0x862:0xa DW_TAG_variable
	.byte	36                              # DW_AT_location
	.byte	171                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	264                             # DW_AT_decl_line
	.long	902                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x86d:0x6 DW_TAG_call_site
	.long	2396                            # DW_AT_call_origin
	.byte	33                              # DW_AT_call_return_pc
	.byte	15                              # Abbrev [15] 0x873:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	95
	.byte	34                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x877:0x6 DW_TAG_call_site
	.long	2416                            # DW_AT_call_origin
	.byte	35                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x87d:0x6 DW_TAG_call_site
	.long	2545                            # DW_AT_call_origin
	.byte	36                              # DW_AT_call_return_pc
	.byte	51                              # Abbrev [51] 0x883:0x6 DW_TAG_call_site
	.long	2560                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	37                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0x88a:0x2b DW_TAG_subprogram
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
                                        # DW_AT_inline
	.byte	53                              # Abbrev [53] 0x892:0x8 DW_TAG_formal_parameter
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	53                              # Abbrev [53] 0x89a:0x8 DW_TAG_formal_parameter
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.long	825                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x8a2:0x8 DW_TAG_variable
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	1623                            # DW_AT_type
	.byte	54                              # Abbrev [54] 0x8aa:0xa DW_TAG_lexical_block
	.byte	5                               # Abbrev [5] 0x8ab:0x8 DW_TAG_variable
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	2229                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x8b5:0x5 DW_TAG_const_type
	.long	817                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x8ba:0x27 DW_TAG_subprogram
	.byte	134                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	902                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x8c2:0x5 DW_TAG_formal_parameter
	.long	927                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x8c7:0x5 DW_TAG_formal_parameter
	.long	962                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x8cc:0x5 DW_TAG_formal_parameter
	.long	902                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x8d1:0x5 DW_TAG_formal_parameter
	.long	972                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x8d6:0x5 DW_TAG_formal_parameter
	.long	962                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x8db:0x5 DW_TAG_formal_parameter
	.long	902                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x8e1:0x18 DW_TAG_subprogram
	.byte	135                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x8e9:0x5 DW_TAG_formal_parameter
	.long	1765                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x8ee:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x8f3:0x5 DW_TAG_formal_parameter
	.long	2297                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x8f9:0x5 DW_TAG_pointer_type
	.long	2302                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x8fe:0x5 DW_TAG_const_type
	.long	1510                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x903:0xf DW_TAG_subprogram
	.byte	136                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	424                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	717                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x90c:0x5 DW_TAG_formal_parameter
	.long	2297                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x912:0x13 DW_TAG_subprogram
	.byte	137                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x91a:0x5 DW_TAG_formal_parameter
	.long	1839                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x91f:0x5 DW_TAG_formal_parameter
	.long	977                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0x925:0xf DW_TAG_subprogram
	.byte	138                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	717                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x92e:0x5 DW_TAG_formal_parameter
	.long	2356                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x934:0x5 DW_TAG_pointer_type
	.long	2361                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x939:0x5 DW_TAG_const_type
	.long	1149                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x93e:0x1e DW_TAG_subprogram
	.byte	139                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.short	343                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x947:0x5 DW_TAG_formal_parameter
	.long	1505                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x94c:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x951:0x5 DW_TAG_formal_parameter
	.long	717                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x956:0x5 DW_TAG_formal_parameter
	.long	717                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0x95c:0xf DW_TAG_subprogram
	.byte	140                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	283                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x965:0x5 DW_TAG_formal_parameter
	.long	2411                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x96b:0x5 DW_TAG_pointer_type
	.long	1149                            # DW_AT_type
	.byte	46                              # Abbrev [46] 0x970:0x18 DW_TAG_subprogram
	.byte	141                             # DW_AT_name
	.byte	14                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x978:0x5 DW_TAG_formal_parameter
	.long	1765                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x97d:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x982:0x5 DW_TAG_formal_parameter
	.long	2411                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0x988:0x14 DW_TAG_subprogram
	.byte	142                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	305                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x991:0x5 DW_TAG_formal_parameter
	.long	2356                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x996:0x5 DW_TAG_formal_parameter
	.long	977                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x99c:0x55 DW_TAG_subprogram
	.byte	24                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	4                               # Abbrev [4] 0x9a7:0x9 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.long	708                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x9b0:0x9 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.long	825                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x9b9:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.long	1623                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x9c2:0x10 DW_TAG_lexical_block
	.byte	25                              # DW_AT_low_pc
	.long	.Ltmp113-.Ltmp106               # DW_AT_high_pc
	.byte	7                               # Abbrev [7] 0x9c8:0x9 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	171                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.long	902                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x9d2:0x6 DW_TAG_call_site
	.long	1750                            # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x9d8:0x6 DW_TAG_call_site
	.long	1750                            # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x9de:0x6 DW_TAG_call_site
	.long	1789                            # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x9e4:0x6 DW_TAG_call_site
	.long	2545                            # DW_AT_call_origin
	.byte	28                              # DW_AT_call_return_pc
	.byte	51                              # Abbrev [51] 0x9ea:0x6 DW_TAG_call_site
	.long	2545                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	29                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x9f1:0xf DW_TAG_subprogram
	.byte	143                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x9f5:0x5 DW_TAG_formal_parameter
	.long	901                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x9fa:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0xa00:0x18 DW_TAG_subprogram
	.byte	144                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xa08:0x5 DW_TAG_formal_parameter
	.long	1108                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xa0d:0x5 DW_TAG_formal_parameter
	.long	1448                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0xa12:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0xa18:0x5f DW_TAG_subprogram
	.byte	38                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	326                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
                                        # DW_AT_external
	.byte	42                              # Abbrev [42] 0xa28:0xa DW_TAG_formal_parameter
	.byte	37                              # DW_AT_location
	.byte	173                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	326                             # DW_AT_decl_line
	.long	2693                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0xa32:0xa DW_TAG_formal_parameter
	.byte	38                              # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	327                             # DW_AT_decl_line
	.long	1108                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0xa3c:0xa DW_TAG_formal_parameter
	.byte	39                              # DW_AT_location
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	327                             # DW_AT_decl_line
	.long	1023                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0xa46:0x1e DW_TAG_lexical_block
	.byte	5                               # DW_AT_ranges
	.byte	44                              # Abbrev [44] 0xa48:0xa DW_TAG_variable
	.byte	41                              # DW_AT_location
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	329                             # DW_AT_decl_line
	.long	2229                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0xa52:0x11 DW_TAG_lexical_block
	.byte	39                              # DW_AT_low_pc
	.long	.Ltmp158-.Ltmp156               # DW_AT_high_pc
	.byte	44                              # Abbrev [44] 0xa58:0xa DW_TAG_variable
	.byte	40                              # DW_AT_location
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	329                             # DW_AT_decl_line
	.long	2229                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0xa64:0x6 DW_TAG_call_site
	.long	2679                            # DW_AT_call_origin
	.byte	40                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0xa6a:0x6 DW_TAG_call_site
	.long	1628                            # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0xa70:0x6 DW_TAG_call_site
	.long	2907                            # DW_AT_call_origin
	.byte	42                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0xa77:0xe DW_TAG_subprogram
	.byte	145                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	817                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xa7f:0x5 DW_TAG_formal_parameter
	.long	2693                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0xa85:0x5 DW_TAG_pointer_type
	.long	2698                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xa8a:0x9 DW_TAG_typedef
	.long	2707                            # DW_AT_type
	.byte	154                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0xa93:0xba DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	34                              # Abbrev [34] 0xa98:0xa DW_TAG_member
	.byte	146                             # DW_AT_name
	.long	932                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xaa2:0xa DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	902                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xaac:0xa DW_TAG_member
	.byte	147                             # DW_AT_name
	.long	725                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xab6:0xa DW_TAG_member
	.byte	148                             # DW_AT_name
	.long	977                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xac0:0xa DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	902                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xaca:0xa DW_TAG_member
	.byte	150                             # DW_AT_name
	.long	725                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xad4:0xa DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	825                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xade:0xa DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	2893                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xae8:0xa DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	901                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xaf2:0xa DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	901                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xafc:0xa DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	901                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xb06:0xa DW_TAG_member
	.byte	153                             # DW_AT_name
	.long	901                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xb10:0xa DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	725                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xb1a:0xa DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	725                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xb24:0xa DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	902                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xb2e:0xa DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	902                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xb38:0xa DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1465                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0xb42:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	1465                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0xb4d:0x5 DW_TAG_pointer_type
	.long	2898                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xb52:0x9 DW_TAG_typedef
	.long	1533                            # DW_AT_type
	.byte	152                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	47                              # Abbrev [47] 0xb5b:0xb DW_TAG_subprogram
	.byte	155                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0xb60:0x5 DW_TAG_formal_parameter
	.long	2693                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xb66:0x5 DW_TAG_const_type
	.long	717                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	6                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
	.long	.Ldebug_ranges3-.Lrnglists_table_base0
	.long	.Ldebug_ranges4-.Lrnglists_table_base0
	.long	.Ldebug_ranges5-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges4:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges5:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp156-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	700                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/stream_encoder.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=137
.Linfo_string3:
	.asciz	"convert"                       # string offset=169
.Linfo_string4:
	.asciz	"unsigned int"                  # string offset=177
.Linfo_string5:
	.asciz	"LZMA_RUN"                      # string offset=190
.Linfo_string6:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=199
.Linfo_string7:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=215
.Linfo_string8:
	.asciz	"LZMA_FINISH"                   # string offset=231
.Linfo_string9:
	.asciz	"lzma_action"                   # string offset=243
.Linfo_string10:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=255
.Linfo_string11:
	.asciz	"LZMA_OK"                       # string offset=275
.Linfo_string12:
	.asciz	"LZMA_STREAM_END"               # string offset=283
.Linfo_string13:
	.asciz	"LZMA_NO_CHECK"                 # string offset=299
.Linfo_string14:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=313
.Linfo_string15:
	.asciz	"LZMA_GET_CHECK"                # string offset=336
.Linfo_string16:
	.asciz	"LZMA_MEM_ERROR"                # string offset=351
.Linfo_string17:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=366
.Linfo_string18:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=386
.Linfo_string19:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=404
.Linfo_string20:
	.asciz	"LZMA_DATA_ERROR"               # string offset=423
.Linfo_string21:
	.asciz	"LZMA_BUF_ERROR"                # string offset=439
.Linfo_string22:
	.asciz	"LZMA_PROG_ERROR"               # string offset=454
.Linfo_string23:
	.asciz	"LZMA_CHECK_NONE"               # string offset=470
.Linfo_string24:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=486
.Linfo_string25:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=503
.Linfo_string26:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=520
.Linfo_string27:
	.asciz	"sequence"                      # string offset=538
.Linfo_string28:
	.asciz	"SEQ_STREAM_HEADER"             # string offset=547
.Linfo_string29:
	.asciz	"SEQ_BLOCK_INIT"                # string offset=565
.Linfo_string30:
	.asciz	"SEQ_BLOCK_HEADER"              # string offset=580
.Linfo_string31:
	.asciz	"SEQ_BLOCK_ENCODE"              # string offset=597
.Linfo_string32:
	.asciz	"SEQ_INDEX_ENCODE"              # string offset=614
.Linfo_string33:
	.asciz	"SEQ_STREAM_FOOTER"             # string offset=631
.Linfo_string34:
	.asciz	"block_encoder_is_initialized"  # string offset=649
.Linfo_string35:
	.asciz	"_Bool"                         # string offset=678
.Linfo_string36:
	.asciz	"block_encoder"                 # string offset=684
.Linfo_string37:
	.asciz	"coder"                         # string offset=698
.Linfo_string38:
	.asciz	"lzma_coder"                    # string offset=704
.Linfo_string39:
	.asciz	"id"                            # string offset=715
.Linfo_string40:
	.asciz	"unsigned long"                 # string offset=718
.Linfo_string41:
	.asciz	"__uint64_t"                    # string offset=732
.Linfo_string42:
	.asciz	"uint64_t"                      # string offset=743
.Linfo_string43:
	.asciz	"lzma_vli"                      # string offset=752
.Linfo_string44:
	.asciz	"init"                          # string offset=761
.Linfo_string45:
	.asciz	"uintptr_t"                     # string offset=766
.Linfo_string46:
	.asciz	"code"                          # string offset=776
.Linfo_string47:
	.asciz	"lzma_ret"                      # string offset=781
.Linfo_string48:
	.asciz	"alloc"                         # string offset=790
.Linfo_string49:
	.asciz	"size_t"                        # string offset=796
.Linfo_string50:
	.asciz	"free"                          # string offset=803
.Linfo_string51:
	.asciz	"opaque"                        # string offset=808
.Linfo_string52:
	.asciz	"lzma_allocator"                # string offset=815
.Linfo_string53:
	.asciz	"unsigned char"                 # string offset=830
.Linfo_string54:
	.asciz	"__uint8_t"                     # string offset=844
.Linfo_string55:
	.asciz	"uint8_t"                       # string offset=854
.Linfo_string56:
	.asciz	"lzma_code_function"            # string offset=862
.Linfo_string57:
	.asciz	"end"                           # string offset=881
.Linfo_string58:
	.asciz	"lzma_end_function"             # string offset=885
.Linfo_string59:
	.asciz	"get_check"                     # string offset=903
.Linfo_string60:
	.asciz	"lzma_check"                    # string offset=913
.Linfo_string61:
	.asciz	"memconfig"                     # string offset=924
.Linfo_string62:
	.asciz	"update"                        # string offset=934
.Linfo_string63:
	.asciz	"options"                       # string offset=941
.Linfo_string64:
	.asciz	"lzma_filter"                   # string offset=949
.Linfo_string65:
	.asciz	"lzma_next_coder_s"             # string offset=961
.Linfo_string66:
	.asciz	"lzma_next_coder"               # string offset=979
.Linfo_string67:
	.asciz	"block_options"                 # string offset=995
.Linfo_string68:
	.asciz	"version"                       # string offset=1009
.Linfo_string69:
	.asciz	"__uint32_t"                    # string offset=1017
.Linfo_string70:
	.asciz	"uint32_t"                      # string offset=1028
.Linfo_string71:
	.asciz	"header_size"                   # string offset=1037
.Linfo_string72:
	.asciz	"check"                         # string offset=1049
.Linfo_string73:
	.asciz	"compressed_size"               # string offset=1055
.Linfo_string74:
	.asciz	"uncompressed_size"             # string offset=1071
.Linfo_string75:
	.asciz	"filters"                       # string offset=1089
.Linfo_string76:
	.asciz	"raw_check"                     # string offset=1097
.Linfo_string77:
	.asciz	"reserved_ptr1"                 # string offset=1107
.Linfo_string78:
	.asciz	"reserved_ptr2"                 # string offset=1121
.Linfo_string79:
	.asciz	"reserved_ptr3"                 # string offset=1135
.Linfo_string80:
	.asciz	"reserved_int1"                 # string offset=1149
.Linfo_string81:
	.asciz	"reserved_int2"                 # string offset=1163
.Linfo_string82:
	.asciz	"reserved_int3"                 # string offset=1177
.Linfo_string83:
	.asciz	"reserved_int4"                 # string offset=1191
.Linfo_string84:
	.asciz	"reserved_int5"                 # string offset=1205
.Linfo_string85:
	.asciz	"reserved_int6"                 # string offset=1219
.Linfo_string86:
	.asciz	"reserved_int7"                 # string offset=1233
.Linfo_string87:
	.asciz	"reserved_int8"                 # string offset=1247
.Linfo_string88:
	.asciz	"reserved_enum1"                # string offset=1261
.Linfo_string89:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=1276
.Linfo_string90:
	.asciz	"lzma_reserved_enum"            # string offset=1295
.Linfo_string91:
	.asciz	"reserved_enum2"                # string offset=1314
.Linfo_string92:
	.asciz	"reserved_enum3"                # string offset=1329
.Linfo_string93:
	.asciz	"reserved_enum4"                # string offset=1344
.Linfo_string94:
	.asciz	"reserved_bool1"                # string offset=1359
.Linfo_string95:
	.asciz	"lzma_bool"                     # string offset=1374
.Linfo_string96:
	.asciz	"reserved_bool2"                # string offset=1384
.Linfo_string97:
	.asciz	"reserved_bool3"                # string offset=1399
.Linfo_string98:
	.asciz	"reserved_bool4"                # string offset=1414
.Linfo_string99:
	.asciz	"reserved_bool5"                # string offset=1429
.Linfo_string100:
	.asciz	"reserved_bool6"                # string offset=1444
.Linfo_string101:
	.asciz	"reserved_bool7"                # string offset=1459
.Linfo_string102:
	.asciz	"reserved_bool8"                # string offset=1474
.Linfo_string103:
	.asciz	"lzma_block"                    # string offset=1489
.Linfo_string104:
	.asciz	"index_encoder"                 # string offset=1500
.Linfo_string105:
	.asciz	"index"                         # string offset=1514
.Linfo_string106:
	.asciz	"lzma_index_s"                  # string offset=1520
.Linfo_string107:
	.asciz	"lzma_index"                    # string offset=1533
.Linfo_string108:
	.asciz	"buffer_pos"                    # string offset=1544
.Linfo_string109:
	.asciz	"buffer_size"                   # string offset=1555
.Linfo_string110:
	.asciz	"buffer"                        # string offset=1567
.Linfo_string111:
	.asciz	"lzma_coder_s"                  # string offset=1574
.Linfo_string112:
	.asciz	"next"                          # string offset=1587
.Linfo_string113:
	.asciz	"ISEQ_RUN"                      # string offset=1592
.Linfo_string114:
	.asciz	"ISEQ_SYNC_FLUSH"               # string offset=1601
.Linfo_string115:
	.asciz	"ISEQ_FULL_FLUSH"               # string offset=1617
.Linfo_string116:
	.asciz	"ISEQ_FINISH"                   # string offset=1633
.Linfo_string117:
	.asciz	"ISEQ_END"                      # string offset=1645
.Linfo_string118:
	.asciz	"ISEQ_ERROR"                    # string offset=1654
.Linfo_string119:
	.asciz	"avail_in"                      # string offset=1665
.Linfo_string120:
	.asciz	"supported_actions"             # string offset=1674
.Linfo_string121:
	.asciz	"allow_buf_error"               # string offset=1692
.Linfo_string122:
	.asciz	"lzma_internal_s"               # string offset=1708
.Linfo_string123:
	.asciz	"lzma_next_end"                 # string offset=1724
.Linfo_string124:
	.asciz	"lzma_alloc"                    # string offset=1738
.Linfo_string125:
	.asciz	"lzma_index_end"                # string offset=1749
.Linfo_string126:
	.asciz	"lzma_index_init"               # string offset=1764
.Linfo_string127:
	.asciz	"lzma_stream_header_encode"     # string offset=1780
.Linfo_string128:
	.asciz	"backward_size"                 # string offset=1806
.Linfo_string129:
	.asciz	"lzma_stream_flags"             # string offset=1820
.Linfo_string130:
	.asciz	"block_encoder_init"            # string offset=1838
.Linfo_string131:
	.asciz	"pcoder"                        # string offset=1857
.Linfo_string132:
	.asciz	"allocator"                     # string offset=1864
.Linfo_string133:
	.asciz	"ret_"                          # string offset=1874
.Linfo_string134:
	.asciz	"lzma_bufcpy"                   # string offset=1879
.Linfo_string135:
	.asciz	"lzma_index_encoder_init"       # string offset=1891
.Linfo_string136:
	.asciz	"lzma_index_size"               # string offset=1915
.Linfo_string137:
	.asciz	"lzma_stream_footer_encode"     # string offset=1931
.Linfo_string138:
	.asciz	"lzma_block_unpadded_size"      # string offset=1957
.Linfo_string139:
	.asciz	"lzma_index_append"             # string offset=1982
.Linfo_string140:
	.asciz	"lzma_block_header_size"        # string offset=2000
.Linfo_string141:
	.asciz	"lzma_block_encoder_init"       # string offset=2023
.Linfo_string142:
	.asciz	"lzma_block_header_encode"      # string offset=2047
.Linfo_string143:
	.asciz	"lzma_free"                     # string offset=2072
.Linfo_string144:
	.asciz	"lzma_filters_copy"             # string offset=2082
.Linfo_string145:
	.asciz	"lzma_strm_init"                # string offset=2100
.Linfo_string146:
	.asciz	"next_in"                       # string offset=2115
.Linfo_string147:
	.asciz	"total_in"                      # string offset=2123
.Linfo_string148:
	.asciz	"next_out"                      # string offset=2132
.Linfo_string149:
	.asciz	"avail_out"                     # string offset=2141
.Linfo_string150:
	.asciz	"total_out"                     # string offset=2151
.Linfo_string151:
	.asciz	"internal"                      # string offset=2161
.Linfo_string152:
	.asciz	"lzma_internal"                 # string offset=2170
.Linfo_string153:
	.asciz	"reserved_ptr4"                 # string offset=2184
.Linfo_string154:
	.asciz	"lzma_stream"                   # string offset=2198
.Linfo_string155:
	.asciz	"lzma_end"                      # string offset=2210
.Linfo_string156:
	.asciz	"lzma_stream_encoder_init"      # string offset=2219
.Linfo_string157:
	.asciz	"stream_encode"                 # string offset=2244
.Linfo_string158:
	.asciz	"stream_encoder_end"            # string offset=2258
.Linfo_string159:
	.asciz	"stream_encoder_update"         # string offset=2277
.Linfo_string160:
	.asciz	"lzma_stream_encoder"           # string offset=2299
.Linfo_string161:
	.asciz	"stream_flags"                  # string offset=2319
.Linfo_string162:
	.asciz	"in"                            # string offset=2332
.Linfo_string163:
	.asciz	"in_pos"                        # string offset=2335
.Linfo_string164:
	.asciz	"in_size"                       # string offset=2342
.Linfo_string165:
	.asciz	"out"                           # string offset=2350
.Linfo_string166:
	.asciz	"out_pos"                       # string offset=2354
.Linfo_string167:
	.asciz	"out_size"                      # string offset=2362
.Linfo_string168:
	.asciz	"action"                        # string offset=2371
.Linfo_string169:
	.asciz	"ret"                           # string offset=2378
.Linfo_string170:
	.asciz	"unpadded_size"                 # string offset=2382
.Linfo_string171:
	.asciz	"i"                             # string offset=2396
.Linfo_string172:
	.asciz	"reversed_filters"              # string offset=2398
.Linfo_string173:
	.asciz	"strm"                          # string offset=2415
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
	.long	.Linfo_string153
	.long	.Linfo_string154
	.long	.Linfo_string155
	.long	.Linfo_string156
	.long	.Linfo_string157
	.long	.Linfo_string158
	.long	.Linfo_string159
	.long	.Linfo_string160
	.long	.Linfo_string161
	.long	.Linfo_string162
	.long	.Linfo_string163
	.long	.Linfo_string164
	.long	.Linfo_string165
	.long	.Linfo_string166
	.long	.Linfo_string167
	.long	.Linfo_string168
	.long	.Linfo_string169
	.long	.Linfo_string170
	.long	.Linfo_string171
	.long	.Linfo_string172
	.long	.Linfo_string173
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	stream_encode.convert
	.quad	.Lfunc_begin0
	.quad	.Ltmp20
	.quad	.Ltmp3
	.quad	.Ltmp9
	.quad	.Ltmp15
	.quad	.Ltmp16
	.quad	.Ltmp21
	.quad	.Ltmp23
	.quad	.Lfunc_begin1
	.quad	.Ltmp79
	.quad	.Ltmp56
	.quad	.Ltmp83
	.quad	.Ltmp84
	.quad	.Ltmp45
	.quad	.Ltmp57
	.quad	.Ltmp62
	.quad	.Ltmp66
	.quad	.Ltmp68
	.quad	.Ltmp74
	.quad	.Ltmp80
	.quad	.Ltmp85
	.quad	.Ltmp87
	.quad	.Ltmp90
	.quad	.Lfunc_begin2
	.quad	.Ltmp106
	.quad	.Ltmp104
	.quad	.Ltmp105
	.quad	.Ltmp110
	.quad	.Ltmp116
	.quad	.Lfunc_begin3
	.quad	.Ltmp124
	.quad	.Ltmp130
	.quad	.Ltmp125
	.quad	.Ltmp131
	.quad	.Ltmp136
	.quad	.Ltmp149
	.quad	.Ltmp154
	.quad	.Lfunc_begin4
	.quad	.Ltmp156
	.quad	.Ltmp157
	.quad	.Ltmp163
	.quad	.Ltmp167
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
