	.text
	.file	"index_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/index_encoder.c" md5 0x16b8a0128ac6b9bca59f5e628fc962e5
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
	.file	11 "liblzma/api/lzma" "stream_flags.h" md5 0xd3814c86a389337e759db33a259f1072
	.globl	lzma_index_encoder_init         # -- Begin function lzma_index_encoder_init
	.p2align	4, 0x90
	.type	lzma_index_encoder_init,@function
lzma_index_encoder_init:                # @lzma_index_encoder_init
.Lfunc_begin0:
	.loc	0 188 0                         # liblzma/common/index_encoder.c:188:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $rdx
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
	movq	%rsi, %r12
	movq	%rdi, %r14
.Ltmp0:
	.loc	0 189 2 prologue_end            # liblzma/common/index_encoder.c:189:2
	cmpq	$lzma_index_encoder_init, 16(%rdi)
.Ltmp1:
	.loc	0 189 2 is_stmt 0               # liblzma/common/index_encoder.c:189:2
	je	.LBB0_2
.Ltmp2:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $rbx
	.loc	0 189 2                         # liblzma/common/index_encoder.c:189:2
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	lzma_next_end@PLT
.Ltmp3:
.LBB0_2:                                # %if.end
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $rbx
	.loc	0 189 2                         # liblzma/common/index_encoder.c:189:2
	movq	$lzma_index_encoder_init, 16(%r14)
.Ltmp4:
	.loc	0 191 8 is_stmt 1               # liblzma/common/index_encoder.c:191:8
	testq	%rbx, %rbx
.Ltmp5:
	.loc	0 191 6 is_stmt 0               # liblzma/common/index_encoder.c:191:6
	je	.LBB0_3
.Ltmp6:
# %bb.4:                                # %if.end4
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $rbx
	.loc	0 194 12 is_stmt 1              # liblzma/common/index_encoder.c:194:12
	movq	(%r14), %r15
	.loc	0 194 18 is_stmt 0              # liblzma/common/index_encoder.c:194:18
	testq	%r15, %r15
.Ltmp7:
	.loc	0 194 6                         # liblzma/common/index_encoder.c:194:6
	jne	.LBB0_8
.Ltmp8:
# %bb.5:                                # %if.then6
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $rbx
	.loc	0 195 17 is_stmt 1              # liblzma/common/index_encoder.c:195:17
	movl	$336, %edi                      # imm = 0x150
	movq	%r12, %rsi
	callq	lzma_alloc@PLT
.Ltmp9:
	.loc	0 195 15 is_stmt 0              # liblzma/common/index_encoder.c:195:15
	movq	%rax, (%r14)
.Ltmp10:
	.loc	0 196 19 is_stmt 1              # liblzma/common/index_encoder.c:196:19
	testq	%rax, %rax
.Ltmp11:
	.loc	0 196 7 is_stmt 0               # liblzma/common/index_encoder.c:196:7
	je	.LBB0_6
.Ltmp12:
# %bb.7:                                # %if.end11
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $rbx
	.loc	0 0 0                           # liblzma/common/index_encoder.c:0:0
	movq	%rax, %r15
	.loc	0 199 14 is_stmt 1              # liblzma/common/index_encoder.c:199:14
	movq	$index_encode, 24(%r14)
	.loc	0 200 13                        # liblzma/common/index_encoder.c:200:13
	movq	$index_encoder_end, 32(%r14)
.Ltmp13:
.LBB0_8:                                # %if.end12
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $rbx
	#DEBUG_VALUE: index_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: index_encoder_reset:i <- $rbx
	#DEBUG_VALUE: index_encoder_reset:coder <- $r15
	.loc	0 174 31                        # liblzma/common/index_encoder.c:174:31
	leaq	16(%r15), %rdi
	.loc	0 174 2 is_stmt 0               # liblzma/common/index_encoder.c:174:2
	movq	%rbx, %rsi
	callq	lzma_index_iter_init@PLT
.Ltmp14:
	.loc	0 176 18 is_stmt 1              # liblzma/common/index_encoder.c:176:18
	movl	$0, (%r15)
	.loc	0 177 15                        # liblzma/common/index_encoder.c:177:15
	movq	%rbx, 8(%r15)
	.loc	0 178 13                        # liblzma/common/index_encoder.c:178:13
	movq	$0, 320(%r15)
	.loc	0 179 15                        # liblzma/common/index_encoder.c:179:15
	movl	$0, 328(%r15)
	xorl	%eax, %eax
	jmp	.LBB0_9
.Ltmp15:
.LBB0_3:
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $rbx
	.loc	0 0 15 is_stmt 0                # liblzma/common/index_encoder.c:0:15
	movl	$11, %eax
.Ltmp16:
.LBB0_9:                                # %return
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $rbx
	.loc	0 206 1 epilogue_begin is_stmt 1 # liblzma/common/index_encoder.c:206:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp17:
	#DEBUG_VALUE: lzma_index_encoder_init:i <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 32
	popq	%r12
.Ltmp18:
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp19:
	#DEBUG_VALUE: lzma_index_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp20:
.LBB0_6:
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $rbx
	.loc	0 0 1 is_stmt 0                 # liblzma/common/index_encoder.c:0:1
	movl	$5, %eax
.Ltmp21:
	.loc	0 196 7 is_stmt 1               # liblzma/common/index_encoder.c:196:7
	jmp	.LBB0_9
.Ltmp22:
.Lfunc_end0:
	.size	lzma_index_encoder_init, .Lfunc_end0-lzma_index_encoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_encode
	.type	index_encode,@function
index_encode:                           # @index_encode
.Lfunc_begin1:
	.loc	0 52 0                          # liblzma/common/index_encoder.c:52:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: index_encode:pcoder <- $rdi
	#DEBUG_VALUE: index_encode:out <- $r9
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
.Ltmp23:
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rdi
	movq	%r9, %r14
	movq	%rdi, %rbx
	movq	88(%rsp), %r12
	movq	80(%rsp), %r15
.Ltmp24:
	.loc	0 56 27 prologue_end            # liblzma/common/index_encoder.c:56:27
	movq	(%r15), %rax
.Ltmp25:
	#DEBUG_VALUE: index_encode:out_start <- $rax
	.loc	0 0 27 is_stmt 0                # liblzma/common/index_encoder.c:0:27
	xorl	%ebp, %ebp
.Ltmp26:
	#DEBUG_VALUE: index_encode:ret <- 0
	movq	%rax, %rsi
	.loc	0 64 18 is_stmt 1               # liblzma/common/index_encoder.c:64:18
	cmpq	%r12, %rax
	.loc	0 64 2 is_stmt 0                # liblzma/common/index_encoder.c:64:2
	jae	.LBB1_22
.Ltmp27:
# %bb.1:                                # %while.body.lr.ph
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- $rax
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 0 2                           # liblzma/common/index_encoder.c:0:2
	leaq	320(%rbx), %r13
	leaq	16(%rbx), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rax, %rsi
	.loc	0 65 17 is_stmt 1               # liblzma/common/index_encoder.c:65:17
	movl	(%rbx), %eax
.Ltmp28:
	#DEBUG_VALUE: index_encode:out_start <- $rsi
	.loc	0 0 17 is_stmt 0                # liblzma/common/index_encoder.c:0:17
	movl	%eax, %ecx
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
.Ltmp29:
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	jmp	.LBB1_4
.Ltmp30:
.LBB1_2:                                # %sw.bb
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 67 17 is_stmt 1               # liblzma/common/index_encoder.c:67:17
	movb	$0, (%r14,%rsi)
	.loc	0 68 3                          # liblzma/common/index_encoder.c:68:3
	incq	%rsi
	movq	%rsi, (%r15)
	.loc	0 69 19                         # liblzma/common/index_encoder.c:69:19
	movl	$1, (%rbx)
	movl	$1, %eax
	movl	$1, %ecx
.Ltmp31:
	.p2align	4, 0x90
.LBB1_3:                                # %sw.epilog
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 64 9                          # liblzma/common/index_encoder.c:64:9
	movq	(%r15), %rsi
	.loc	0 64 18 is_stmt 0               # liblzma/common/index_encoder.c:64:18
	cmpq	%r12, %rsi
	.loc	0 64 2                          # liblzma/common/index_encoder.c:64:2
	jae	.LBB1_17
.Ltmp32:
.LBB1_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 65 2 is_stmt 1                # liblzma/common/index_encoder.c:65:2
	cmpl	$6, %ecx
	ja	.LBB1_19
.Ltmp33:
# %bb.5:                                # %while.body
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	movl	%ecx, %ecx
	jmpq	*.LJTI1_0(,%rcx,8)
.Ltmp34:
.LBB1_6:                                # %sw.bb16
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 0 2 is_stmt 0                 # liblzma/common/index_encoder.c:0:2
	movl	$184, %ecx
.Ltmp35:
	.loc	0 101 41 is_stmt 1              # liblzma/common/index_encoder.c:101:41
	cmpl	$2, %eax
	.loc	0 101 25 is_stmt 0              # liblzma/common/index_encoder.c:101:25
	je	.LBB1_14
	jmp	.LBB1_15
.Ltmp36:
.LBB1_7:                                # %sw.bb7
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 0 25                          # liblzma/common/index_encoder.c:0:25
	movq	16(%rsp), %rdi                  # 8-byte Reload
.Ltmp37:
	.loc	0 86 7 is_stmt 1                # liblzma/common/index_encoder.c:86:7
	movl	$2, %esi
	callq	lzma_index_iter_next@PLT
.Ltmp38:
	testb	%al, %al
.Ltmp39:
	.loc	0 86 7 is_stmt 0                # liblzma/common/index_encoder.c:86:7
	je	.LBB1_13
.Ltmp40:
# %bb.8:                                # %if.then9
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 89 48 is_stmt 1               # liblzma/common/index_encoder.c:89:48
	movq	8(%rbx), %rdi
	.loc	0 89 17 is_stmt 0               # liblzma/common/index_encoder.c:89:17
	callq	lzma_index_padding_size@PLT
.Ltmp41:
	movl	%eax, %eax
	.loc	0 89 15                         # liblzma/common/index_encoder.c:89:15
	movq	%rax, 320(%rbx)
	.loc	0 91 20 is_stmt 1               # liblzma/common/index_encoder.c:91:20
	movl	$5, (%rbx)
	movl	$5, %eax
	movl	$5, %ecx
.Ltmp42:
	.loc	0 122 4                         # liblzma/common/index_encoder.c:122:4
	jmp	.LBB1_3
.Ltmp43:
.LBB1_9:                                # %sw.bb2
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 73 56                         # liblzma/common/index_encoder.c:73:56
	movq	8(%rbx), %rdi
	.loc	0 73 26 is_stmt 0               # liblzma/common/index_encoder.c:73:26
	callq	lzma_index_block_count@PLT
.Ltmp44:
	#DEBUG_VALUE: count <- $rax
	.loc	0 74 9 is_stmt 1                # liblzma/common/index_encoder.c:74:9
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lzma_vli_encode@PLT
.Ltmp45:
	#DEBUG_VALUE: index_encode:ret <- $eax
	.loc	0 76 11                         # liblzma/common/index_encoder.c:76:11
	cmpl	$1, %eax
.Ltmp46:
	.loc	0 76 7 is_stmt 0                # liblzma/common/index_encoder.c:76:7
	jne	.LBB1_20
.Ltmp47:
# %bb.10:                               # %cleanup.thread
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- $eax
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 80 14 is_stmt 1               # liblzma/common/index_encoder.c:80:14
	movq	$0, 320(%rbx)
	.loc	0 81 19                         # liblzma/common/index_encoder.c:81:19
	movl	$4, (%rbx)
	movl	$4, %eax
	movl	$4, %ecx
	jmp	.LBB1_3
.Ltmp48:
.LBB1_11:                               # %sw.bb34
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 119 14                        # liblzma/common/index_encoder.c:119:14
	movq	(%r13), %rcx
	.loc	0 119 18 is_stmt 0              # liblzma/common/index_encoder.c:119:18
	testq	%rcx, %rcx
.Ltmp49:
	.loc	0 119 7                         # liblzma/common/index_encoder.c:119:7
	je	.LBB1_24
.Ltmp50:
# %bb.12:                               # %if.then38
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 120 4 is_stmt 1               # liblzma/common/index_encoder.c:120:4
	decq	%rcx
	movq	%rcx, (%r13)
	.loc	0 121 18                        # liblzma/common/index_encoder.c:121:18
	leaq	1(%rsi), %rcx
	movq	%rcx, (%r15)
	.loc	0 121 22 is_stmt 0              # liblzma/common/index_encoder.c:121:22
	movb	$0, (%r14,%rsi)
	movl	$5, %ecx
	.loc	0 122 4 is_stmt 1               # liblzma/common/index_encoder.c:122:4
	jmp	.LBB1_3
.Ltmp51:
.LBB1_13:                               # %sw.bb16.thread
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 95 19                         # liblzma/common/index_encoder.c:95:19
	movl	$2, (%rbx)
.Ltmp52:
.LBB1_14:                               #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 0 19 is_stmt 0                # liblzma/common/index_encoder.c:0:19
	movl	$192, %ecx
.Ltmp53:
.LBB1_15:                               #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 101 25 is_stmt 1              # liblzma/common/index_encoder.c:101:25
	movq	(%rbx,%rcx), %rdi
.Ltmp54:
	#DEBUG_VALUE: size <- $rdi
	.loc	0 105 9                         # liblzma/common/index_encoder.c:105:9
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lzma_vli_encode@PLT
.Ltmp55:
	#DEBUG_VALUE: index_encode:ret <- $eax
	.loc	0 107 11                        # liblzma/common/index_encoder.c:107:11
	cmpl	$1, %eax
.Ltmp56:
	.loc	0 107 7 is_stmt 0               # liblzma/common/index_encoder.c:107:7
	jne	.LBB1_20
.Ltmp57:
# %bb.16:                               # %cleanup32.thread
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- $eax
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 111 14 is_stmt 1              # liblzma/common/index_encoder.c:111:14
	movq	$0, 320(%rbx)
	.loc	0 114 3                         # liblzma/common/index_encoder.c:114:3
	movl	(%rbx), %eax
	incl	%eax
	movl	%eax, (%rbx)
	movl	%eax, %ecx
	jmp	.LBB1_3
.Ltmp58:
.LBB1_17:
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/common/index_encoder.c:0:3
	xorl	%ebp, %ebp
	jmp	.LBB1_21
.Ltmp59:
.LBB1_20:
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- $eax
	movl	%eax, %ebp
.Ltmp60:
.LBB1_21:                               # %out60.loopexit
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	.loc	0 156 4 is_stmt 1               # liblzma/common/index_encoder.c:156:4
	movq	(%r15), %rsi
	movq	8(%rsp), %rax                   # 8-byte Reload
.Ltmp61:
.LBB1_22:                               # %out60
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- $rax
	#DEBUG_LABEL: index_encode:out
	.loc	0 155 32                        # liblzma/common/index_encoder.c:155:32
	addq	%rax, %r14
.Ltmp62:
	#DEBUG_VALUE: index_encode:out <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 156 13                        # liblzma/common/index_encoder.c:156:13
	subq	%rax, %rsi
	.loc	0 156 33 is_stmt 0              # liblzma/common/index_encoder.c:156:33
	movl	328(%rbx), %edx
	.loc	0 155 17 is_stmt 1              # liblzma/common/index_encoder.c:155:17
	movq	%r14, %rdi
	callq	lzma_crc32@PLT
.Ltmp63:
	.loc	0 155 15 is_stmt 0              # liblzma/common/index_encoder.c:155:15
	movl	%eax, 328(%rbx)
.Ltmp64:
.LBB1_23:                               # %cleanup66
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	.loc	0 159 1 is_stmt 1               # liblzma/common/index_encoder.c:159:1
	movl	%ebp, %eax
	.loc	0 159 1 epilogue_begin is_stmt 0 # liblzma/common/index_encoder.c:159:1
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp65:
	#DEBUG_VALUE: index_encode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
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
.Ltmp66:
.LBB1_19:                               # %cleanup66.loopexit1
	.cfi_def_cfa_offset 80
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 0 1                           # liblzma/common/index_encoder.c:0:1
	movl	$11, %ebp
	jmp	.LBB1_23
.Ltmp67:
.LBB1_24:                               # %if.end42
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	movq	8(%rsp), %rax                   # 8-byte Reload
.Ltmp68:
	.loc	0 126 33 is_stmt 1              # liblzma/common/index_encoder.c:126:33
	leaq	(%r14,%rax), %rdi
	.loc	0 127 14                        # liblzma/common/index_encoder.c:127:14
	subq	%rax, %rsi
	.loc	0 127 34 is_stmt 0              # liblzma/common/index_encoder.c:127:34
	movl	328(%rbx), %edx
	.loc	0 126 18 is_stmt 1              # liblzma/common/index_encoder.c:126:18
	callq	lzma_crc32@PLT
.Ltmp69:
	.loc	0 126 16 is_stmt 0              # liblzma/common/index_encoder.c:126:16
	movl	%eax, 328(%rbx)
	.loc	0 129 19 is_stmt 1              # liblzma/common/index_encoder.c:129:19
	movl	$6, (%rbx)
	movq	(%r15), %rsi
.Ltmp70:
.LBB1_25:                               # %sw.bb46
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 136 3                         # liblzma/common/index_encoder.c:136:3
	incq	%rsi
	negq	%r12
.Ltmp71:
	.p2align	4, 0x90
.LBB1_26:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 137 17                        # liblzma/common/index_encoder.c:137:17
	leaq	(%r12,%rsi), %rax
	cmpq	$1, %rax
.Ltmp72:
	.loc	0 137 8 is_stmt 0               # liblzma/common/index_encoder.c:137:8
	je	.LBB1_29
.Ltmp73:
# %bb.27:                               # %if.end50
                                        #   in Loop: Header=BB1_26 Depth=1
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 140 28 is_stmt 1              # liblzma/common/index_encoder.c:140:28
	movl	328(%rbx), %eax
	.loc	0 140 45 is_stmt 0              # liblzma/common/index_encoder.c:140:45
	movq	320(%rbx), %rdx
	.loc	0 140 34                        # liblzma/common/index_encoder.c:140:34
	leal	(,%rdx,8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %eax
	.loc	0 140 18                        # liblzma/common/index_encoder.c:140:18
	movb	%al, -1(%r14,%rsi)
	.loc	0 142 4 is_stmt 1               # liblzma/common/index_encoder.c:142:4
	movq	%rsi, (%r15)
.Ltmp74:
	.loc	0 144 12                        # liblzma/common/index_encoder.c:144:12
	incq	%rdx
	movq	%rdx, 320(%rbx)
.Ltmp75:
	.loc	0 144 3 is_stmt 0               # liblzma/common/index_encoder.c:144:3
	incq	%rsi
.Ltmp76:
	.loc	0 144 25                        # liblzma/common/index_encoder.c:144:25
	cmpq	$4, %rdx
.Ltmp77:
	.loc	0 144 3                         # liblzma/common/index_encoder.c:144:3
	jb	.LBB1_26
.Ltmp78:
# %bb.28:
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 0 3                           # liblzma/common/index_encoder.c:0:3
	movl	$1, %ebp
	.loc	0 144 3                         # liblzma/common/index_encoder.c:144:3
	jmp	.LBB1_23
.Ltmp79:
.LBB1_29:
	#DEBUG_VALUE: index_encode:pcoder <- $rbx
	#DEBUG_VALUE: index_encode:out <- $r14
	#DEBUG_VALUE: index_encode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: index_encode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: index_encode:coder <- $rbx
	#DEBUG_VALUE: index_encode:out_start <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_encode:ret <- 0
	.loc	0 0 3                           # liblzma/common/index_encoder.c:0:3
	xorl	%ebp, %ebp
	.loc	0 137 8 is_stmt 1               # liblzma/common/index_encoder.c:137:8
	jmp	.LBB1_23
.Ltmp80:
.Lfunc_end1:
	.size	index_encode, .Lfunc_end1-index_encode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_2
	.quad	.LBB1_9
	.quad	.LBB1_6
	.quad	.LBB1_6
	.quad	.LBB1_7
	.quad	.LBB1_11
	.quad	.LBB1_25
	.file	12 "liblzma/common" "index.h" md5 0x8c1da33cfb6445c1ed40367774c91b69
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function index_encoder_end
	.type	index_encoder_end,@function
index_encoder_end:                      # @index_encoder_end
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: index_encoder_end:pcoder <- $rdi
	#DEBUG_VALUE: index_encoder_end:allocator <- $rsi
	.loc	0 165 2 prologue_end            # liblzma/common/index_encoder.c:165:2
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp81:
.Lfunc_end2:
	.size	index_encoder_end, .Lfunc_end2-index_encoder_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_encoder              # -- Begin function lzma_index_encoder
	.p2align	4, 0x90
	.type	lzma_index_encoder,@function
lzma_index_encoder:                     # @lzma_index_encoder
.Lfunc_begin3:
	.loc	0 211 0                         # liblzma/common/index_encoder.c:211:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_encoder:strm <- $rdi
	#DEBUG_VALUE: lzma_index_encoder:i <- $rsi
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp82:
	.loc	0 212 2 prologue_end            # liblzma/common/index_encoder.c:212:2
	callq	lzma_strm_init@PLT
.Ltmp83:
	#DEBUG_VALUE: lzma_index_encoder:i <- $r14
	#DEBUG_VALUE: lzma_index_encoder:strm <- $rbx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 212 2 is_stmt 0               # liblzma/common/index_encoder.c:212:2
	testl	%eax, %eax
	jne	.LBB3_11
.Ltmp84:
# %bb.1:                                # %do.end
	#DEBUG_VALUE: lzma_index_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_encoder:i <- $r14
	.loc	0 212 2                         # liblzma/common/index_encoder.c:212:2
	movq	48(%rbx), %r13
.Ltmp85:
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r13
	movq	56(%rbx), %r15
.Ltmp86:
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $r14
	.loc	0 189 2 is_stmt 1               # liblzma/common/index_encoder.c:189:2
	cmpq	$lzma_index_encoder_init, 16(%r15)
.Ltmp87:
	.loc	0 189 2 is_stmt 0               # liblzma/common/index_encoder.c:189:2
	je	.LBB3_3
.Ltmp88:
# %bb.2:                                # %if.then.i
	#DEBUG_VALUE: lzma_index_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_encoder:i <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r13
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $r14
	.loc	0 189 2                         # liblzma/common/index_encoder.c:189:2
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	lzma_next_end@PLT
.Ltmp89:
.LBB3_3:                                # %if.end.i
	#DEBUG_VALUE: lzma_index_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_encoder:i <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r13
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $r14
	.loc	0 189 2                         # liblzma/common/index_encoder.c:189:2
	movq	$lzma_index_encoder_init, 16(%r15)
.Ltmp90:
	.loc	0 191 8 is_stmt 1               # liblzma/common/index_encoder.c:191:8
	testq	%r14, %r14
.Ltmp91:
	.loc	0 191 6 is_stmt 0               # liblzma/common/index_encoder.c:191:6
	je	.LBB3_4
.Ltmp92:
# %bb.5:                                # %if.end4.i
	#DEBUG_VALUE: lzma_index_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_encoder:i <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r13
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $r14
	.loc	0 194 12 is_stmt 1              # liblzma/common/index_encoder.c:194:12
	movq	(%r15), %r12
	.loc	0 194 18 is_stmt 0              # liblzma/common/index_encoder.c:194:18
	testq	%r12, %r12
.Ltmp93:
	.loc	0 194 6                         # liblzma/common/index_encoder.c:194:6
	jne	.LBB3_10
.Ltmp94:
# %bb.6:                                # %if.then6.i
	#DEBUG_VALUE: lzma_index_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_encoder:i <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r13
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $r14
	.loc	0 195 17 is_stmt 1              # liblzma/common/index_encoder.c:195:17
	movl	$336, %edi                      # imm = 0x150
	movq	%r13, %rsi
	callq	lzma_alloc@PLT
.Ltmp95:
	.loc	0 195 15 is_stmt 0              # liblzma/common/index_encoder.c:195:15
	movq	%rax, (%r15)
.Ltmp96:
	.loc	0 196 19 is_stmt 1              # liblzma/common/index_encoder.c:196:19
	testq	%rax, %rax
.Ltmp97:
	.loc	0 196 7 is_stmt 0               # liblzma/common/index_encoder.c:196:7
	je	.LBB3_7
.Ltmp98:
# %bb.9:                                # %if.end11.i
	#DEBUG_VALUE: lzma_index_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_encoder:i <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r13
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $r14
	.loc	0 0 0                           # liblzma/common/index_encoder.c:0:0
	movq	%rax, %r12
	.loc	0 199 14 is_stmt 1              # liblzma/common/index_encoder.c:199:14
	movq	$index_encode, 24(%r15)
	.loc	0 200 13                        # liblzma/common/index_encoder.c:200:13
	movq	$index_encoder_end, 32(%r15)
.Ltmp99:
.LBB3_10:                               # %do.end10
	#DEBUG_VALUE: lzma_index_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_encoder:i <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r13
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $r14
	#DEBUG_VALUE: index_encoder_reset:pcoder <- $r12
	#DEBUG_VALUE: index_encoder_reset:i <- $r14
	#DEBUG_VALUE: index_encoder_reset:coder <- $r12
	.loc	0 174 31                        # liblzma/common/index_encoder.c:174:31
	leaq	16(%r12), %rdi
	.loc	0 174 2 is_stmt 0               # liblzma/common/index_encoder.c:174:2
	movq	%r14, %rsi
	callq	lzma_index_iter_init@PLT
.Ltmp100:
	.loc	0 176 18 is_stmt 1              # liblzma/common/index_encoder.c:176:18
	movl	$0, (%r12)
	.loc	0 177 15                        # liblzma/common/index_encoder.c:177:15
	movq	%r14, 8(%r12)
	.loc	0 178 13                        # liblzma/common/index_encoder.c:178:13
	movq	$0, 320(%r12)
	.loc	0 179 15                        # liblzma/common/index_encoder.c:179:15
	movl	$0, 328(%r12)
.Ltmp101:
	#DEBUG_VALUE: ret_ <- 0
	.loc	0 214 8                         # liblzma/common/index_encoder.c:214:8
	movq	56(%rbx), %rax
	.loc	0 214 46 is_stmt 0              # liblzma/common/index_encoder.c:214:46
	movb	$1, 80(%rax)
	.loc	0 215 8 is_stmt 1               # liblzma/common/index_encoder.c:215:8
	movq	56(%rbx), %rax
	.loc	0 215 49 is_stmt 0              # liblzma/common/index_encoder.c:215:49
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	jmp	.LBB3_11
.Ltmp102:
.LBB3_4:
	#DEBUG_VALUE: lzma_index_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_encoder:i <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r13
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $r14
	.loc	0 0 49                          # liblzma/common/index_encoder.c:0:49
	movl	$11, %ebp
.Ltmp103:
.LBB3_8:                                # %cleanup7
	#DEBUG_VALUE: lzma_index_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_encoder:i <- $r14
	#DEBUG_VALUE: ret_ <- $ebp
	.loc	0 212 2 is_stmt 1               # liblzma/common/index_encoder.c:212:2
	movq	%rbx, %rdi
	callq	lzma_end@PLT
.Ltmp104:
	.loc	0 0 2 is_stmt 0                 # liblzma/common/index_encoder.c:0:2
	movl	%ebp, %eax
.Ltmp105:
.LBB3_11:                               # %return
	#DEBUG_VALUE: lzma_index_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_encoder:i <- $r14
	.loc	0 218 1 epilogue_begin is_stmt 1 # liblzma/common/index_encoder.c:218:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp106:
	#DEBUG_VALUE: lzma_index_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp107:
	#DEBUG_VALUE: lzma_index_encoder:i <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp108:
.LBB3_7:
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: lzma_index_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_index_encoder:i <- $r14
	#DEBUG_VALUE: lzma_index_encoder_init:allocator <- $r13
	#DEBUG_VALUE: lzma_index_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_index_encoder_init:i <- $r14
	.loc	0 0 1 is_stmt 0                 # liblzma/common/index_encoder.c:0:1
	movl	$5, %ebp
	jmp	.LBB3_8
.Lfunc_end3:
	.size	lzma_index_encoder, .Lfunc_end3-lzma_index_encoder
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_buffer_encode        # -- Begin function lzma_index_buffer_encode
	.p2align	4, 0x90
	.type	lzma_index_buffer_encode,@function
lzma_index_buffer_encode:               # @lzma_index_buffer_encode
.Lfunc_begin4:
	.loc	0 224 0 is_stmt 1               # liblzma/common/index_encoder.c:224:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_buffer_encode:i <- $rdi
	#DEBUG_VALUE: lzma_index_buffer_encode:out <- $rsi
	#DEBUG_VALUE: lzma_index_buffer_encode:out_pos <- $rdx
	#DEBUG_VALUE: lzma_index_buffer_encode:out_size <- $rcx
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
	subq	$336, %rsp                      # imm = 0x150
	.cfi_def_cfa_offset 384
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
.Ltmp109:
	.loc	0 226 8 prologue_end            # liblzma/common/index_encoder.c:226:8
	testq	%rdi, %rdi
	sete	%al
	testq	%rsi, %rsi
	sete	%dl
.Ltmp110:
	#DEBUG_VALUE: lzma_index_buffer_encode:out_pos <- $rbx
	.loc	0 226 16 is_stmt 0              # liblzma/common/index_encoder.c:226:16
	orb	%al, %dl
	testq	%rbx, %rbx
	sete	%al
	orb	%dl, %al
	movl	$11, %eax
	jne	.LBB4_5
.Ltmp111:
# %bb.1:                                # %lor.lhs.false4
	#DEBUG_VALUE: lzma_index_buffer_encode:i <- $rdi
	#DEBUG_VALUE: lzma_index_buffer_encode:out <- $rsi
	#DEBUG_VALUE: lzma_index_buffer_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_encode:out_size <- $rcx
	.loc	0 226 62                        # liblzma/common/index_encoder.c:226:62
	movq	%rcx, %r13
	subq	(%rbx), %r13
.Ltmp112:
	.loc	0 226 6                         # liblzma/common/index_encoder.c:226:6
	jb	.LBB4_5
.Ltmp113:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lzma_index_buffer_encode:i <- $rdi
	#DEBUG_VALUE: lzma_index_buffer_encode:out <- $rsi
	#DEBUG_VALUE: lzma_index_buffer_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_encode:out_size <- $rcx
	.loc	0 0 6                           # liblzma/common/index_encoder.c:0:6
	movq	%rdi, %r14
	movq	%rsi, %r15
.Ltmp114:
	#DEBUG_VALUE: lzma_index_buffer_encode:out <- $r15
	movq	%rcx, %r12
.Ltmp115:
	#DEBUG_VALUE: lzma_index_buffer_encode:out_size <- $r12
	.loc	0 230 28 is_stmt 1              # liblzma/common/index_encoder.c:230:28
	callq	lzma_index_size@PLT
.Ltmp116:
	#DEBUG_VALUE: lzma_index_buffer_encode:i <- $r14
	movq	%rax, %rcx
	movl	$10, %eax
	.loc	0 230 26 is_stmt 0              # liblzma/common/index_encoder.c:230:26
	cmpq	%rcx, %r13
.Ltmp117:
	.loc	0 230 6                         # liblzma/common/index_encoder.c:230:6
	jb	.LBB4_5
.Ltmp118:
# %bb.3:                                # %if.end8
	#DEBUG_VALUE: lzma_index_buffer_encode:i <- $r14
	#DEBUG_VALUE: lzma_index_buffer_encode:out <- $r15
	#DEBUG_VALUE: lzma_index_buffer_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_encode:out_size <- $r12
	#DEBUG_VALUE: index_encoder_reset:pcoder <- $rsp
	#DEBUG_VALUE: index_encoder_reset:i <- $r14
	#DEBUG_VALUE: index_encoder_reset:coder <- $rsp
	.loc	0 174 31 is_stmt 1              # liblzma/common/index_encoder.c:174:31
	leaq	16(%rsp), %rdi
	.loc	0 174 2 is_stmt 0               # liblzma/common/index_encoder.c:174:2
	movq	%r14, %rsi
	callq	lzma_index_iter_init@PLT
.Ltmp119:
	.loc	0 176 18 is_stmt 1              # liblzma/common/index_encoder.c:176:18
	movl	$0, (%rsp)
	.loc	0 177 15                        # liblzma/common/index_encoder.c:177:15
	movq	%r14, 8(%rsp)
	.loc	0 178 13                        # liblzma/common/index_encoder.c:178:13
	movq	$0, 320(%rsp)
	.loc	0 179 15                        # liblzma/common/index_encoder.c:179:15
	movl	$0, 328(%rsp)
.Ltmp120:
	.loc	0 240 27                        # liblzma/common/index_encoder.c:240:27
	movq	(%rbx), %r14
.Ltmp121:
	#DEBUG_VALUE: lzma_index_buffer_encode:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_buffer_encode:out_start <- $r14
	.loc	0 241 17                        # liblzma/common/index_encoder.c:241:17
	subq	$16, %rsp
.Ltmp122:
	.cfi_adjust_cfa_offset 16
	.loc	0 0 17 is_stmt 0                # liblzma/common/index_encoder.c:0:17
	leaq	16(%rsp), %rdi
	.loc	0 241 17                        # liblzma/common/index_encoder.c:241:17
	movq	%r15, %r9
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	index_encode
.Ltmp123:
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	%eax, %ecx
.Ltmp124:
	#DEBUG_VALUE: lzma_index_buffer_encode:ret <- $eax
	.loc	0 0 17                          # liblzma/common/index_encoder.c:0:17
	xorl	%eax, %eax
.Ltmp125:
	#DEBUG_VALUE: lzma_index_buffer_encode:ret <- $ecx
	.loc	0 244 10 is_stmt 1              # liblzma/common/index_encoder.c:244:10
	cmpl	$1, %ecx
.Ltmp126:
	.loc	0 244 6 is_stmt 0               # liblzma/common/index_encoder.c:244:6
	je	.LBB4_5
.Ltmp127:
# %bb.4:                                # %if.else
	#DEBUG_VALUE: lzma_index_buffer_encode:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_buffer_encode:out <- $r15
	#DEBUG_VALUE: lzma_index_buffer_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_encode:out_size <- $r12
	#DEBUG_VALUE: lzma_index_buffer_encode:out_start <- $r14
	#DEBUG_VALUE: lzma_index_buffer_encode:ret <- $ecx
	.loc	0 251 12 is_stmt 1              # liblzma/common/index_encoder.c:251:12
	movq	%r14, (%rbx)
	movl	$11, %eax
.Ltmp128:
	#DEBUG_VALUE: lzma_index_buffer_encode:ret <- 11
	#DEBUG_VALUE: lzma_index_buffer_encode:ret <- $eax
.LBB4_5:                                # %return
	#DEBUG_VALUE: lzma_index_buffer_encode:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_buffer_encode:out <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_index_buffer_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_index_buffer_encode:out_size <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 256 1 epilogue_begin          # liblzma/common/index_encoder.c:256:1
	addq	$336, %rsp                      # imm = 0x150
	.cfi_def_cfa_offset 48
	popq	%rbx
.Ltmp129:
	#DEBUG_VALUE: lzma_index_buffer_encode:out_pos <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp130:
.Lfunc_end4:
	.size	lzma_index_buffer_encode, .Lfunc_end4-lzma_index_buffer_encode
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	20                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
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
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
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
	.byte	46                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	47                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
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
	.byte	51                              # Abbreviation Code
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
	.byte	52                              # Abbreviation Code
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
	.byte	53                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0xa51 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	23                              # Abbrev [23] 0x30c:0x54 DW_TAG_structure_type
	.byte	136                             # DW_AT_name
	.short	336                             # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x312:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	795                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0x31b:0x1e DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x323:0x3 DW_TAG_enumerator
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x326:0x3 DW_TAG_enumerator
	.byte	71                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x329:0x3 DW_TAG_enumerator
	.byte	72                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x32c:0x3 DW_TAG_enumerator
	.byte	73                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x32f:0x3 DW_TAG_enumerator
	.byte	74                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x332:0x3 DW_TAG_enumerator
	.byte	75                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x335:0x3 DW_TAG_enumerator
	.byte	76                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x339:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	864                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x342:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	884                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x34b:0xa DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.short	320                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x355:0xa DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	1432                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.short	328                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x360:0x5 DW_TAG_pointer_type
	.long	869                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x365:0x5 DW_TAG_const_type
	.long	874                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x36a:0x8 DW_TAG_typedef
	.long	882                             # DW_AT_type
	.byte	79                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x372:0x2 DW_TAG_structure_type
	.byte	78                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0x374:0x8 DW_TAG_typedef
	.long	892                             # DW_AT_type
	.byte	133                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x37c:0x16c DW_TAG_structure_type
	.short	304                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x381:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x38a:0x8c DW_TAG_structure_type
	.byte	120                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x38e:0x9 DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	1256                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x397:0x9 DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	1464                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3a0:0x9 DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	1464                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3a9:0x9 DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	1464                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3b2:0x9 DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3bb:0x9 DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3c4:0x9 DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3cd:0x9 DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3d6:0x9 DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3df:0x9 DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3e8:0x9 DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3f1:0x9 DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3fa:0x9 DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x403:0x9 DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x40c:0x9 DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x416:0x9 DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	1055                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x41f:0x9e DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x423:0x9 DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x42c:0x9 DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x435:0x9 DW_TAG_member
	.byte	122                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x43e:0x9 DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x447:0x9 DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x450:0x9 DW_TAG_member
	.byte	125                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x459:0x9 DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x462:0x9 DW_TAG_member
	.byte	126                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x46b:0x9 DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x474:0x9 DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x47d:0x9 DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x486:0x9 DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x48f:0x9 DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x498:0x9 DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	1464                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4a1:0x9 DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	1464                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4aa:0x9 DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	1464                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4b3:0x9 DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	1464                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x4bd:0xa DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	1470                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.short	256                             # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x4c7:0x20 DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4cb:0x9 DW_TAG_member
	.byte	130                             # DW_AT_name
	.long	1464                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4d4:0x9 DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4dd:0x9 DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4e8:0x5 DW_TAG_pointer_type
	.long	1261                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x4ed:0x5 DW_TAG_const_type
	.long	1266                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4f2:0x8 DW_TAG_typedef
	.long	1274                            # DW_AT_type
	.byte	104                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x4fa:0x9e DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4fe:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	1432                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x507:0x9 DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x510:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	622                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x519:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1448                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x522:0x9 DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1448                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x52b:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	1448                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x534:0x9 DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	1448                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x53d:0x9 DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	1456                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x546:0x9 DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	1456                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	37                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x54f:0x9 DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	1456                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	38                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x558:0x9 DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	1456                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	39                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x561:0x9 DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	1456                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x56a:0x9 DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	1456                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	41                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x573:0x9 DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1456                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	42                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x57c:0x9 DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	1456                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	43                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x585:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	1432                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x58e:0x9 DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	1432                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x598:0x8 DW_TAG_typedef
	.long	1440                            # DW_AT_type
	.byte	85                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x5a0:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	84                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x5a8:0x8 DW_TAG_typedef
	.long	768                             # DW_AT_type
	.byte	89                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x5b0:0x8 DW_TAG_typedef
	.long	548                             # DW_AT_type
	.byte	94                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x5b8:0x5 DW_TAG_pointer_type
	.long	1469                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x5bd:0x1 DW_TAG_const_type
	.byte	20                              # Abbrev [20] 0x5be:0xc DW_TAG_array_type
	.long	1223                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x5c3:0x6 DW_TAG_subrange_type
	.long	764                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x5ca:0x15 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x5d2:0x3 DW_TAG_enumerator
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x5d5:0x3 DW_TAG_enumerator
	.byte	138                             # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x5d8:0x3 DW_TAG_enumerator
	.byte	139                             # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x5db:0x3 DW_TAG_enumerator
	.byte	140                             # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x5df:0x1d DW_TAG_subprogram
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x5e3:0x8 DW_TAG_formal_parameter
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x5eb:0x8 DW_TAG_formal_parameter
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.long	864                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x5f3:0x8 DW_TAG_variable
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.long	1532                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5fc:0x5 DW_TAG_pointer_type
	.long	780                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x601:0x54 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	2050                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x60d:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	2058                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x613:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.long	2066                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x619:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.long	2074                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x61f:0x23 DW_TAG_inlined_subroutine
	.long	1503                            # DW_AT_abstract_origin
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp15-.Ltmp13                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	203                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x62c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	1507                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x633:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1515                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x63a:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	95
	.long	1523                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x642:0x6 DW_TAG_call_site
	.long	1621                            # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x648:0x6 DW_TAG_call_site
	.long	1641                            # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x64e:0x6 DW_TAG_call_site
	.long	1660                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x655:0xf DW_TAG_subprogram
	.byte	144                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x659:0x5 DW_TAG_formal_parameter
	.long	1636                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x65e:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x664:0x5 DW_TAG_pointer_type
	.long	212                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x669:0x13 DW_TAG_subprogram
	.byte	145                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	491                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x671:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x676:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x67c:0x10 DW_TAG_subprogram
	.byte	146                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x681:0x5 DW_TAG_formal_parameter
	.long	1676                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x686:0x5 DW_TAG_formal_parameter
	.long	864                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x68c:0x5 DW_TAG_pointer_type
	.long	884                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x691:0xc8 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	168                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
	.byte	42                              # Abbrev [42] 0x6a0:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6a9:0x8 DW_TAG_formal_parameter
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6b1:0x8 DW_TAG_formal_parameter
	.byte	179                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	517                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6b9:0x8 DW_TAG_formal_parameter
	.byte	180                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	552                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6c1:0x8 DW_TAG_formal_parameter
	.byte	181                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	42                              # Abbrev [42] 0x6c9:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	172                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	562                             # DW_AT_type
	.byte	43                              # Abbrev [43] 0x6d2:0xc DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\320"
	.byte	173                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	552                             # DW_AT_type
	.byte	43                              # Abbrev [43] 0x6de:0xc DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\330"
	.byte	174                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6ea:0x8 DW_TAG_formal_parameter
	.byte	182                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	572                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x6f2:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	1532                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x6fb:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.long	2637                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x704:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	176                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	407                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x70d:0x5 DW_TAG_label
	.byte	172                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	29                              # DW_AT_low_pc
	.byte	46                              # Abbrev [46] 0x712:0xc DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	44                              # Abbrev [44] 0x714:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	178                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.long	2642                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0x71e:0x10 DW_TAG_lexical_block
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp48-.Ltmp43                 # DW_AT_high_pc
	.byte	44                              # Abbrev [44] 0x724:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	177                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	2642                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x72e:0x6 DW_TAG_call_site
	.long	1881                            # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x734:0x6 DW_TAG_call_site
	.long	1910                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x73a:0x6 DW_TAG_call_site
	.long	1924                            # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x740:0x6 DW_TAG_call_site
	.long	1939                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x746:0x6 DW_TAG_call_site
	.long	1939                            # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x74c:0x6 DW_TAG_call_site
	.long	1973                            # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x752:0x6 DW_TAG_call_site
	.long	1973                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0x759:0x14 DW_TAG_subprogram
	.byte	147                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	514                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1456                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x762:0x5 DW_TAG_formal_parameter
	.long	1676                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x767:0x5 DW_TAG_formal_parameter
	.long	1901                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x76d:0x9 DW_TAG_typedef
	.long	1482                            # DW_AT_type
	.byte	148                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.byte	39                              # Abbrev [39] 0x776:0xe DW_TAG_subprogram
	.byte	149                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1432                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x77e:0x5 DW_TAG_formal_parameter
	.long	864                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0x784:0xf DW_TAG_subprogram
	.byte	150                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	415                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	307                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x78d:0x5 DW_TAG_formal_parameter
	.long	864                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x793:0x22 DW_TAG_subprogram
	.byte	151                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x79b:0x5 DW_TAG_formal_parameter
	.long	307                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7a0:0x5 DW_TAG_formal_parameter
	.long	557                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7a5:0x5 DW_TAG_formal_parameter
	.long	567                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7aa:0x5 DW_TAG_formal_parameter
	.long	557                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7af:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x7b5:0x18 DW_TAG_subprogram
	.byte	152                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1432                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x7bd:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7c2:0x5 DW_TAG_formal_parameter
	.long	492                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7c7:0x5 DW_TAG_formal_parameter
	.long	1432                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x7cd:0x26 DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	43                              # Abbrev [43] 0x7d8:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	43                              # Abbrev [43] 0x7e2:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	50                              # Abbrev [50] 0x7ec:0x6 DW_TAG_call_site
	.long	2035                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	14                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x7f3:0xf DW_TAG_subprogram
	.byte	153                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x7f7:0x5 DW_TAG_formal_parameter
	.long	491                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7fc:0x5 DW_TAG_formal_parameter
	.long	415                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x802:0x21 DW_TAG_subprogram
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x80a:0x8 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.long	1636                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x812:0x8 DW_TAG_formal_parameter
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.long	415                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x81a:0x8 DW_TAG_formal_parameter
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.long	864                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0x823:0xa2 DW_TAG_subprogram
	.byte	15                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	170                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_external
	.byte	42                              # Abbrev [42] 0x832:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	183                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	2259                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0x83b:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	864                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x844:0x62 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	44                              # Abbrev [44] 0x846:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	184                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.long	2647                            # DW_AT_type
	.byte	47                              # Abbrev [47] 0x84f:0x10 DW_TAG_lexical_block
	.byte	16                              # DW_AT_low_pc
	.long	.Ltmp84-.Ltmp82                 # DW_AT_high_pc
	.byte	44                              # Abbrev [44] 0x855:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	184                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.long	2647                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x85f:0x46 DW_TAG_inlined_subroutine
	.long	2050                            # DW_AT_abstract_origin
	.byte	17                              # DW_AT_low_pc
	.long	.Ltmp101-.Ltmp86                # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	212                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x86c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	2058                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x873:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	93
	.long	2066                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x87a:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	2074                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x881:0x23 DW_TAG_inlined_subroutine
	.long	1503                            # DW_AT_abstract_origin
	.byte	18                              # DW_AT_low_pc
	.long	.Ltmp101-.Ltmp99                # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	203                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x88e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	92
	.long	1507                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x895:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1515                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x89c:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	92
	.long	1523                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x8a6:0x6 DW_TAG_call_site
	.long	2245                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x8ac:0x6 DW_TAG_call_site
	.long	1621                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x8b2:0x6 DW_TAG_call_site
	.long	1641                            # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x8b8:0x6 DW_TAG_call_site
	.long	1660                            # DW_AT_call_origin
	.byte	22                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x8be:0x6 DW_TAG_call_site
	.long	2473                            # DW_AT_call_origin
	.byte	23                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x8c5:0xe DW_TAG_subprogram
	.byte	156                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x8cd:0x5 DW_TAG_formal_parameter
	.long	2259                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x8d3:0x5 DW_TAG_pointer_type
	.long	2264                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x8d8:0x9 DW_TAG_typedef
	.long	2273                            # DW_AT_type
	.byte	165                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x8e1:0xba DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x8e6:0xa DW_TAG_member
	.byte	157                             # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8f0:0xa DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8fa:0xa DW_TAG_member
	.byte	158                             # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x904:0xa DW_TAG_member
	.byte	159                             # DW_AT_name
	.long	567                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x90e:0xa DW_TAG_member
	.byte	160                             # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x918:0xa DW_TAG_member
	.byte	161                             # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x922:0xa DW_TAG_member
	.byte	155                             # DW_AT_name
	.long	415                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x92c:0xa DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	2459                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x936:0xa DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x940:0xa DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x94a:0xa DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x954:0xa DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x95e:0xa DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x968:0xa DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x972:0xa DW_TAG_member
	.byte	163                             # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x97c:0xa DW_TAG_member
	.byte	164                             # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x986:0xa DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1448                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x990:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1448                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x99b:0x5 DW_TAG_pointer_type
	.long	2464                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x9a0:0x9 DW_TAG_typedef
	.long	134                             # DW_AT_type
	.byte	162                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	40                              # Abbrev [40] 0x9a9:0xb DW_TAG_subprogram
	.byte	166                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x9ae:0x5 DW_TAG_formal_parameter
	.long	2259                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0x9b4:0x8a DW_TAG_subprogram
	.byte	24                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\200}"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	171                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	407                             # DW_AT_type
                                        # DW_AT_external
	.byte	42                              # Abbrev [42] 0x9c7:0x9 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.long	864                             # DW_AT_type
	.byte	42                              # Abbrev [42] 0x9d0:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	172                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.long	567                             # DW_AT_type
	.byte	42                              # Abbrev [42] 0x9d9:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	173                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.long	557                             # DW_AT_type
	.byte	42                              # Abbrev [42] 0x9e2:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	174                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	53                              # Abbrev [53] 0x9eb:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.long	780                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x9f6:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.long	2637                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x9ff:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	176                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.long	407                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0xa08:0x23 DW_TAG_inlined_subroutine
	.long	1503                            # DW_AT_abstract_origin
	.byte	25                              # DW_AT_low_pc
	.long	.Ltmp120-.Ltmp118               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	236                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0xa15:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	87
	.long	1507                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0xa1c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1515                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0xa23:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	87
	.long	1523                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0xa2b:0x6 DW_TAG_call_site
	.long	2622                            # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0xa31:0x6 DW_TAG_call_site
	.long	1660                            # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0xa37:0x6 DW_TAG_call_site
	.long	1681                            # DW_AT_call_origin
	.byte	28                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0xa3e:0xf DW_TAG_subprogram
	.byte	167                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	424                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	307                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0xa47:0x5 DW_TAG_formal_parameter
	.long	864                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xa4d:0x5 DW_TAG_const_type
	.long	492                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa52:0x5 DW_TAG_const_type
	.long	307                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa57:0x5 DW_TAG_const_type
	.long	407                             # DW_AT_type
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
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	744                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/index_encoder.c" # string offset=105
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
	.asciz	"SEQ_UNPADDED"                  # string offset=1021
.Linfo_string73:
	.asciz	"SEQ_UNCOMPRESSED"              # string offset=1034
.Linfo_string74:
	.asciz	"SEQ_NEXT"                      # string offset=1051
.Linfo_string75:
	.asciz	"SEQ_PADDING"                   # string offset=1060
.Linfo_string76:
	.asciz	"SEQ_CRC32"                     # string offset=1072
.Linfo_string77:
	.asciz	"index"                         # string offset=1082
.Linfo_string78:
	.asciz	"lzma_index_s"                  # string offset=1088
.Linfo_string79:
	.asciz	"lzma_index"                    # string offset=1101
.Linfo_string80:
	.asciz	"iter"                          # string offset=1112
.Linfo_string81:
	.asciz	"stream"                        # string offset=1117
.Linfo_string82:
	.asciz	"flags"                         # string offset=1124
.Linfo_string83:
	.asciz	"version"                       # string offset=1130
.Linfo_string84:
	.asciz	"__uint32_t"                    # string offset=1138
.Linfo_string85:
	.asciz	"uint32_t"                      # string offset=1149
.Linfo_string86:
	.asciz	"backward_size"                 # string offset=1158
.Linfo_string87:
	.asciz	"check"                         # string offset=1172
.Linfo_string88:
	.asciz	"reserved_enum1"                # string offset=1178
.Linfo_string89:
	.asciz	"lzma_reserved_enum"            # string offset=1193
.Linfo_string90:
	.asciz	"reserved_enum2"                # string offset=1212
.Linfo_string91:
	.asciz	"reserved_enum3"                # string offset=1227
.Linfo_string92:
	.asciz	"reserved_enum4"                # string offset=1242
.Linfo_string93:
	.asciz	"reserved_bool1"                # string offset=1257
.Linfo_string94:
	.asciz	"lzma_bool"                     # string offset=1272
.Linfo_string95:
	.asciz	"reserved_bool2"                # string offset=1282
.Linfo_string96:
	.asciz	"reserved_bool3"                # string offset=1297
.Linfo_string97:
	.asciz	"reserved_bool4"                # string offset=1312
.Linfo_string98:
	.asciz	"reserved_bool5"                # string offset=1327
.Linfo_string99:
	.asciz	"reserved_bool6"                # string offset=1342
.Linfo_string100:
	.asciz	"reserved_bool7"                # string offset=1357
.Linfo_string101:
	.asciz	"reserved_bool8"                # string offset=1372
.Linfo_string102:
	.asciz	"reserved_int1"                 # string offset=1387
.Linfo_string103:
	.asciz	"reserved_int2"                 # string offset=1401
.Linfo_string104:
	.asciz	"lzma_stream_flags"             # string offset=1415
.Linfo_string105:
	.asciz	"reserved_ptr1"                 # string offset=1433
.Linfo_string106:
	.asciz	"reserved_ptr2"                 # string offset=1447
.Linfo_string107:
	.asciz	"reserved_ptr3"                 # string offset=1461
.Linfo_string108:
	.asciz	"number"                        # string offset=1475
.Linfo_string109:
	.asciz	"block_count"                   # string offset=1482
.Linfo_string110:
	.asciz	"compressed_offset"             # string offset=1494
.Linfo_string111:
	.asciz	"uncompressed_offset"           # string offset=1512
.Linfo_string112:
	.asciz	"compressed_size"               # string offset=1532
.Linfo_string113:
	.asciz	"uncompressed_size"             # string offset=1548
.Linfo_string114:
	.asciz	"padding"                       # string offset=1566
.Linfo_string115:
	.asciz	"reserved_vli1"                 # string offset=1574
.Linfo_string116:
	.asciz	"reserved_vli2"                 # string offset=1588
.Linfo_string117:
	.asciz	"reserved_vli3"                 # string offset=1602
.Linfo_string118:
	.asciz	"reserved_vli4"                 # string offset=1616
.Linfo_string119:
	.asciz	"block"                         # string offset=1630
.Linfo_string120:
	.asciz	"number_in_file"                # string offset=1636
.Linfo_string121:
	.asciz	"compressed_file_offset"        # string offset=1651
.Linfo_string122:
	.asciz	"uncompressed_file_offset"      # string offset=1674
.Linfo_string123:
	.asciz	"number_in_stream"              # string offset=1699
.Linfo_string124:
	.asciz	"compressed_stream_offset"      # string offset=1716
.Linfo_string125:
	.asciz	"uncompressed_stream_offset"    # string offset=1741
.Linfo_string126:
	.asciz	"unpadded_size"                 # string offset=1768
.Linfo_string127:
	.asciz	"total_size"                    # string offset=1782
.Linfo_string128:
	.asciz	"reserved_ptr4"                 # string offset=1793
.Linfo_string129:
	.asciz	"internal"                      # string offset=1807
.Linfo_string130:
	.asciz	"p"                             # string offset=1816
.Linfo_string131:
	.asciz	"s"                             # string offset=1818
.Linfo_string132:
	.asciz	"v"                             # string offset=1820
.Linfo_string133:
	.asciz	"lzma_index_iter"               # string offset=1822
.Linfo_string134:
	.asciz	"pos"                           # string offset=1838
.Linfo_string135:
	.asciz	"crc32"                         # string offset=1842
.Linfo_string136:
	.asciz	"lzma_coder_s"                  # string offset=1848
.Linfo_string137:
	.asciz	"LZMA_INDEX_ITER_ANY"           # string offset=1861
.Linfo_string138:
	.asciz	"LZMA_INDEX_ITER_STREAM"        # string offset=1881
.Linfo_string139:
	.asciz	"LZMA_INDEX_ITER_BLOCK"         # string offset=1904
.Linfo_string140:
	.asciz	"LZMA_INDEX_ITER_NONEMPTY_BLOCK" # string offset=1926
.Linfo_string141:
	.asciz	"index_encoder_reset"           # string offset=1957
.Linfo_string142:
	.asciz	"pcoder"                        # string offset=1977
.Linfo_string143:
	.asciz	"i"                             # string offset=1984
.Linfo_string144:
	.asciz	"lzma_next_end"                 # string offset=1986
.Linfo_string145:
	.asciz	"lzma_alloc"                    # string offset=2000
.Linfo_string146:
	.asciz	"lzma_index_iter_init"          # string offset=2011
.Linfo_string147:
	.asciz	"lzma_index_iter_next"          # string offset=2032
.Linfo_string148:
	.asciz	"lzma_index_iter_mode"          # string offset=2053
.Linfo_string149:
	.asciz	"lzma_index_padding_size"       # string offset=2074
.Linfo_string150:
	.asciz	"lzma_index_block_count"        # string offset=2098
.Linfo_string151:
	.asciz	"lzma_vli_encode"               # string offset=2121
.Linfo_string152:
	.asciz	"lzma_crc32"                    # string offset=2137
.Linfo_string153:
	.asciz	"lzma_free"                     # string offset=2148
.Linfo_string154:
	.asciz	"lzma_index_encoder_init"       # string offset=2158
.Linfo_string155:
	.asciz	"allocator"                     # string offset=2182
.Linfo_string156:
	.asciz	"lzma_strm_init"                # string offset=2192
.Linfo_string157:
	.asciz	"next_in"                       # string offset=2207
.Linfo_string158:
	.asciz	"total_in"                      # string offset=2215
.Linfo_string159:
	.asciz	"next_out"                      # string offset=2224
.Linfo_string160:
	.asciz	"avail_out"                     # string offset=2233
.Linfo_string161:
	.asciz	"total_out"                     # string offset=2243
.Linfo_string162:
	.asciz	"lzma_internal"                 # string offset=2253
.Linfo_string163:
	.asciz	"reserved_int3"                 # string offset=2267
.Linfo_string164:
	.asciz	"reserved_int4"                 # string offset=2281
.Linfo_string165:
	.asciz	"lzma_stream"                   # string offset=2295
.Linfo_string166:
	.asciz	"lzma_end"                      # string offset=2307
.Linfo_string167:
	.asciz	"lzma_index_size"               # string offset=2316
.Linfo_string168:
	.asciz	"index_encode"                  # string offset=2332
.Linfo_string169:
	.asciz	"index_encoder_end"             # string offset=2345
.Linfo_string170:
	.asciz	"lzma_index_encoder"            # string offset=2363
.Linfo_string171:
	.asciz	"lzma_index_buffer_encode"      # string offset=2382
.Linfo_string172:
	.asciz	"out"                           # string offset=2407
.Linfo_string173:
	.asciz	"out_pos"                       # string offset=2411
.Linfo_string174:
	.asciz	"out_size"                      # string offset=2419
.Linfo_string175:
	.asciz	"out_start"                     # string offset=2428
.Linfo_string176:
	.asciz	"ret"                           # string offset=2438
.Linfo_string177:
	.asciz	"count"                         # string offset=2442
.Linfo_string178:
	.asciz	"size"                          # string offset=2448
.Linfo_string179:
	.asciz	"in"                            # string offset=2453
.Linfo_string180:
	.asciz	"in_pos"                        # string offset=2456
.Linfo_string181:
	.asciz	"in_size"                       # string offset=2463
.Linfo_string182:
	.asciz	"action"                        # string offset=2471
.Linfo_string183:
	.asciz	"strm"                          # string offset=2478
.Linfo_string184:
	.asciz	"ret_"                          # string offset=2483
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
	.long	.Linfo_string174
	.long	.Linfo_string175
	.long	.Linfo_string176
	.long	.Linfo_string177
	.long	.Linfo_string178
	.long	.Linfo_string179
	.long	.Linfo_string180
	.long	.Linfo_string181
	.long	.Linfo_string182
	.long	.Linfo_string183
	.long	.Linfo_string184
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp13
	.quad	.Ltmp3
	.quad	.Ltmp9
	.quad	.Ltmp14
	.quad	.Lfunc_begin1
	.quad	.Ltmp43
	.quad	.Ltmp38
	.quad	.Ltmp41
	.quad	.Ltmp44
	.quad	.Ltmp45
	.quad	.Ltmp55
	.quad	.Ltmp63
	.quad	.Ltmp69
	.quad	.Lfunc_begin2
	.quad	.Lfunc_begin3
	.quad	.Ltmp82
	.quad	.Ltmp86
	.quad	.Ltmp99
	.quad	.Ltmp83
	.quad	.Ltmp89
	.quad	.Ltmp95
	.quad	.Ltmp100
	.quad	.Ltmp104
	.quad	.Lfunc_begin4
	.quad	.Ltmp118
	.quad	.Ltmp116
	.quad	.Ltmp119
	.quad	.Ltmp123
	.quad	.Ltmp61
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
