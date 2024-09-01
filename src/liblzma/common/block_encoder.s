	.text
	.file	"block_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/block_encoder.c" md5 0x6fefd92350726e39daee7a2ff1aa92a6
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
	.file	11 "liblzma/check" "check.h" md5 0x938220df6e0ab33115ef85b0d8c70c5b
	.globl	lzma_block_encoder_init         # -- Begin function lzma_block_encoder_init
	.p2align	4, 0x90
	.type	lzma_block_encoder_init,@function
lzma_block_encoder_init:                # @lzma_block_encoder_init
.Lfunc_begin0:
	.loc	0 164 0                         # liblzma/common/block_encoder.c:164:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_block_encoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_encoder_init:block <- $rdx
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
	movq	%rsi, %rbx
	movq	%rdi, %r15
.Ltmp0:
	.loc	0 165 2 prologue_end            # liblzma/common/block_encoder.c:165:2
	cmpq	$lzma_block_encoder_init, 16(%rdi)
.Ltmp1:
	.loc	0 165 2 is_stmt 0               # liblzma/common/block_encoder.c:165:2
	je	.LBB0_2
.Ltmp2:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lzma_block_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_encoder_init:block <- $r14
	.loc	0 165 2                         # liblzma/common/block_encoder.c:165:2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	lzma_next_end@PLT
.Ltmp3:
.LBB0_2:                                # %if.end
	#DEBUG_VALUE: lzma_block_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_encoder_init:block <- $r14
	.loc	0 165 2                         # liblzma/common/block_encoder.c:165:2
	movq	$lzma_block_encoder_init, 16(%r15)
	movl	$11, %eax
.Ltmp4:
	.loc	0 167 12 is_stmt 1              # liblzma/common/block_encoder.c:167:12
	testq	%r14, %r14
.Ltmp5:
	.loc	0 167 6 is_stmt 0               # liblzma/common/block_encoder.c:167:6
	je	.LBB0_7
.Ltmp6:
# %bb.3:                                # %if.end4
	#DEBUG_VALUE: lzma_block_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_encoder_init:block <- $r14
	.loc	0 0 6                           # liblzma/common/block_encoder.c:0:6
	movl	$8, %eax
.Ltmp7:
	.loc	0 172 21 is_stmt 1              # liblzma/common/block_encoder.c:172:21
	cmpl	$0, (%r14)
.Ltmp8:
	.loc	0 172 6 is_stmt 0               # liblzma/common/block_encoder.c:172:6
	je	.LBB0_4
.Ltmp9:
.LBB0_7:                                # %return
	#DEBUG_VALUE: lzma_block_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_encoder_init:block <- $r14
	.loc	0 208 1 epilogue_begin is_stmt 1 # liblzma/common/block_encoder.c:208:1
	popq	%rbx
.Ltmp10:
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp11:
	#DEBUG_VALUE: lzma_block_encoder_init:block <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp12:
	#DEBUG_VALUE: lzma_block_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp13:
.LBB0_4:                                # %if.end7
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_block_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_encoder_init:block <- $r14
	.loc	0 177 28                        # liblzma/common/block_encoder.c:177:28
	movl	8(%r14), %edi
	movl	$11, %eax
	.loc	0 177 35 is_stmt 0              # liblzma/common/block_encoder.c:177:35
	cmpl	$15, %edi
.Ltmp14:
	.loc	0 177 6                         # liblzma/common/block_encoder.c:177:6
	ja	.LBB0_7
.Ltmp15:
# %bb.5:                                # %if.end10
	#DEBUG_VALUE: lzma_block_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_encoder_init:block <- $r14
	.loc	0 180 7 is_stmt 1               # liblzma/common/block_encoder.c:180:7
	callq	lzma_check_is_supported@PLT
.Ltmp16:
	testb	%al, %al
.Ltmp17:
	.loc	0 180 6 is_stmt 0               # liblzma/common/block_encoder.c:180:6
	je	.LBB0_6
.Ltmp18:
# %bb.8:                                # %if.end13
	#DEBUG_VALUE: lzma_block_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_encoder_init:block <- $r14
	.loc	0 184 12 is_stmt 1              # liblzma/common/block_encoder.c:184:12
	movq	(%r15), %rax
	.loc	0 184 18 is_stmt 0              # liblzma/common/block_encoder.c:184:18
	testq	%rax, %rax
.Ltmp19:
	.loc	0 184 6                         # liblzma/common/block_encoder.c:184:6
	jne	.LBB0_12
.Ltmp20:
# %bb.9:                                # %if.then15
	#DEBUG_VALUE: lzma_block_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_encoder_init:block <- $r14
	.loc	0 185 17 is_stmt 1              # liblzma/common/block_encoder.c:185:17
	movl	$208, %edi
	movq	%rbx, %rsi
	callq	lzma_alloc@PLT
.Ltmp21:
	.loc	0 185 15 is_stmt 0              # liblzma/common/block_encoder.c:185:15
	movq	%rax, (%r15)
.Ltmp22:
	.loc	0 186 19 is_stmt 1              # liblzma/common/block_encoder.c:186:19
	testq	%rax, %rax
.Ltmp23:
	.loc	0 186 7 is_stmt 0               # liblzma/common/block_encoder.c:186:7
	je	.LBB0_10
.Ltmp24:
# %bb.11:                               # %if.end21
	#DEBUG_VALUE: lzma_block_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_encoder_init:block <- $r14
	.loc	0 189 14 is_stmt 1              # liblzma/common/block_encoder.c:189:14
	movq	$block_encode, 24(%r15)
	.loc	0 190 13                        # liblzma/common/block_encoder.c:190:13
	movq	$block_encoder_end, 32(%r15)
	.loc	0 191 16                        # liblzma/common/block_encoder.c:191:16
	movq	$block_encoder_update, 56(%r15)
	.loc	0 192 47                        # liblzma/common/block_encoder.c:192:47
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
.Ltmp25:
	.loc	0 196 31                        # liblzma/common/block_encoder.c:196:31
	movq	(%r15), %rax
.Ltmp26:
.LBB0_12:                               # %if.end29
	#DEBUG_VALUE: lzma_block_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_encoder_init:block <- $r14
	.loc	0 196 48 is_stmt 0              # liblzma/common/block_encoder.c:196:48
	movl	$0, 72(%rax)
	.loc	0 197 31 is_stmt 1              # liblzma/common/block_encoder.c:197:31
	movq	(%r15), %rax
	.loc	0 197 45 is_stmt 0              # liblzma/common/block_encoder.c:197:45
	movq	%r14, 64(%rax)
	.loc	0 198 31 is_stmt 1              # liblzma/common/block_encoder.c:198:31
	movq	(%r15), %rax
	.loc	0 198 55 is_stmt 0              # liblzma/common/block_encoder.c:198:55
	movq	$0, 80(%rax)
	.loc	0 199 31 is_stmt 1              # liblzma/common/block_encoder.c:199:31
	movq	(%r15), %rax
	.loc	0 199 57 is_stmt 0              # liblzma/common/block_encoder.c:199:57
	movq	$0, 88(%rax)
	.loc	0 200 31 is_stmt 1              # liblzma/common/block_encoder.c:200:31
	movq	(%r15), %rax
	.loc	0 200 43 is_stmt 0              # liblzma/common/block_encoder.c:200:43
	movq	$0, 96(%rax)
	.loc	0 203 48 is_stmt 1              # liblzma/common/block_encoder.c:203:48
	movq	(%r15), %rdi
	.loc	0 203 56 is_stmt 0              # liblzma/common/block_encoder.c:203:56
	addq	$104, %rdi
	.loc	0 203 70                        # liblzma/common/block_encoder.c:203:70
	movl	8(%r14), %esi
	.loc	0 203 2                         # liblzma/common/block_encoder.c:203:2
	callq	lzma_check_init@PLT
.Ltmp27:
	.loc	0 206 61 is_stmt 1              # liblzma/common/block_encoder.c:206:61
	movq	(%r15), %rdi
	.loc	0 207 11                        # liblzma/common/block_encoder.c:207:11
	movq	32(%r14), %rdx
	.loc	0 206 9                         # liblzma/common/block_encoder.c:206:9
	movq	%rbx, %rsi
	.loc	0 206 9 epilogue_begin is_stmt 0 # liblzma/common/block_encoder.c:206:9
	popq	%rbx
.Ltmp28:
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp29:
	#DEBUG_VALUE: lzma_block_encoder_init:block <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp30:
	#DEBUG_VALUE: lzma_block_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_raw_encoder_init@PLT       # TAILCALL
.Ltmp31:
.LBB0_6:
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_block_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_encoder_init:block <- $r14
	.loc	0 0 9                           # liblzma/common/block_encoder.c:0:9
	movl	$3, %eax
	.loc	0 208 1 epilogue_begin is_stmt 1 # liblzma/common/block_encoder.c:208:1
	popq	%rbx
.Ltmp32:
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp33:
	#DEBUG_VALUE: lzma_block_encoder_init:block <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp34:
	#DEBUG_VALUE: lzma_block_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp35:
.LBB0_10:
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_block_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_encoder_init:block <- $r14
	.loc	0 0 1 is_stmt 0                 # liblzma/common/block_encoder.c:0:1
	movl	$5, %eax
	.loc	0 208 1 epilogue_begin          # liblzma/common/block_encoder.c:208:1
	popq	%rbx
.Ltmp36:
	#DEBUG_VALUE: lzma_block_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp37:
	#DEBUG_VALUE: lzma_block_encoder_init:block <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp38:
	#DEBUG_VALUE: lzma_block_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp39:
.Lfunc_end0:
	.size	lzma_block_encoder_init, .Lfunc_end0-lzma_block_encoder_init
	.cfi_endproc
	.file	12 "liblzma/common" "filter_encoder.h" md5 0xddc4c6a58369644501ee0eefd7b6bf8f
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_encode
	.type	block_encode,@function
block_encode:                           # @block_encode
.Lfunc_begin1:
	.loc	0 52 0 is_stmt 1                # liblzma/common/block_encoder.c:52:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: block_encode:pcoder <- $rdi
	#DEBUG_VALUE: block_encode:allocator <- $rsi
	#DEBUG_VALUE: block_encode:in <- $rdx
	#DEBUG_VALUE: block_encode:in_pos <- $rcx
	#DEBUG_VALUE: block_encode:in_size <- $r8
	#DEBUG_VALUE: block_encode:out <- $r9
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
.Ltmp40:
	#DEBUG_VALUE: block_encode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: block_encode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: block_encode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	movq	%r9, %r14
	movq	%rdi, %rbx
.Ltmp41:
	#DEBUG_VALUE: block_encode:coder <- $rbx
	movabsq	$9223372036854774716, %r12      # imm = 0x7FFFFFFFFFFFFBBC
.Ltmp42:
	.loc	0 55 28 prologue_end            # liblzma/common/block_encoder.c:55:28
	movq	88(%rdi), %rax
	.loc	0 55 19 is_stmt 0               # liblzma/common/block_encoder.c:55:19
	negq	%rax
	leaq	(%r12,%rax), %rdi
.Ltmp43:
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	addq	$1091, %rdi                     # imm = 0x443
	.loc	0 55 58                         # liblzma/common/block_encoder.c:55:58
	movq	(%rcx), %r15
	.loc	0 55 56                         # liblzma/common/block_encoder.c:55:56
	movq	%r8, %r9
.Ltmp44:
	#DEBUG_VALUE: block_encode:out <- $r14
	subq	%r15, %r9
	movl	$9, %eax
	.loc	0 55 46                         # liblzma/common/block_encoder.c:55:46
	cmpq	%r9, %rdi
.Ltmp45:
	.loc	0 55 6                          # liblzma/common/block_encoder.c:55:6
	jae	.LBB1_1
.Ltmp46:
.LBB1_21:                               # %cleanup62
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 134 1 epilogue_begin is_stmt 1 # liblzma/common/block_encoder.c:134:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp47:
	#DEBUG_VALUE: block_encode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp48:
	#DEBUG_VALUE: block_encode:out <- [DW_OP_LLVM_entry_value 1] $r9
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp49:
.LBB1_1:                                # %if.end
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- $rsi
	#DEBUG_VALUE: block_encode:in <- $rdx
	#DEBUG_VALUE: block_encode:in_pos <- $rcx
	#DEBUG_VALUE: block_encode:in_size <- $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: block_encode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: block_encode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 0 1 is_stmt 0                 # liblzma/common/block_encoder.c:0:1
	movq	72(%rsp), %r10
	movq	64(%rsp), %r13
	.loc	0 58 17 is_stmt 1               # liblzma/common/block_encoder.c:58:17
	movl	72(%rbx), %edi
	.loc	0 58 2 is_stmt 0                # liblzma/common/block_encoder.c:58:2
	cmpl	$2, %edi
	je	.LBB1_18
.Ltmp50:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- $rsi
	#DEBUG_VALUE: block_encode:in <- $rdx
	#DEBUG_VALUE: block_encode:in_pos <- $rcx
	#DEBUG_VALUE: block_encode:in_size <- $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: block_encode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: block_encode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: block_encode:coder <- $rbx
	cmpl	$1, %edi
	je	.LBB1_7
.Ltmp51:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- $rsi
	#DEBUG_VALUE: block_encode:in <- $rdx
	#DEBUG_VALUE: block_encode:in_pos <- $rcx
	#DEBUG_VALUE: block_encode:in_size <- $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: block_encode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: block_encode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 0 2                           # liblzma/common/block_encoder.c:0:2
	movl	$11, %eax
	.loc	0 58 2                          # liblzma/common/block_encoder.c:58:2
	testl	%edi, %edi
	jne	.LBB1_21
.Ltmp52:
# %bb.4:                                # %sw.bb
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- $rsi
	#DEBUG_VALUE: block_encode:in <- $rdx
	#DEBUG_VALUE: block_encode:in_pos <- $rcx
	#DEBUG_VALUE: block_encode:in_size <- $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:out_pos <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: block_encode:out_size <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: block_encode:action <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 0 2                           # liblzma/common/block_encoder.c:0:2
	movl	80(%rsp), %eax
.Ltmp53:
	#DEBUG_VALUE: in_start <- $r15
	.loc	0 61 28 is_stmt 1               # liblzma/common/block_encoder.c:61:28
	movq	(%r13), %rdi
.Ltmp54:
	#DEBUG_VALUE: out_start <- $rdi
	.loc	0 0 28 is_stmt 0                # liblzma/common/block_encoder.c:0:28
	movq	%rdi, (%rsp)                    # 8-byte Spill
.Ltmp55:
	#DEBUG_VALUE: out_start <- [DW_OP_deref] $rsp
	.loc	0 63 53 is_stmt 1               # liblzma/common/block_encoder.c:63:53
	movq	(%rbx), %rdi
	.loc	0 63 24 is_stmt 0               # liblzma/common/block_encoder.c:63:24
	subq	$8, %rsp
.Ltmp56:
	.cfi_adjust_cfa_offset 8
	.loc	0 0 24                          # liblzma/common/block_encoder.c:0:24
	movq	%rdx, %r13
	movq	%rcx, %rbp
	.loc	0 63 24                         # liblzma/common/block_encoder.c:63:24
	movq	%r14, %r9
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	*24(%rbx)
.Ltmp57:
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:in_pos <- $rbp
	#DEBUG_VALUE: block_encode:in <- $r13
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 0 24                          # liblzma/common/block_encoder.c:0:24
	movq	%rbp, %rcx
	movq	%r13, %rdx
	movq	96(%rsp), %r13
.Ltmp58:
	#DEBUG_VALUE: block_encode:in <- $rdx
	.loc	0 63 24                         # liblzma/common/block_encoder.c:63:24
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	%eax, %ebp
.Ltmp59:
	#DEBUG_VALUE: block_encode:in_pos <- $rcx
	#DEBUG_VALUE: ret <- $ebp
	#DEBUG_VALUE: in_used <- undef
	.loc	0 68 27 is_stmt 1               # liblzma/common/block_encoder.c:68:27
	movq	(%r13), %rsi
	.loc	0 68 36 is_stmt 0               # liblzma/common/block_encoder.c:68:36
	subq	(%rsp), %rsi                    # 8-byte Folded Reload
.Ltmp60:
	#DEBUG_VALUE: out_used <- $rsi
	.loc	0 70 36 is_stmt 1               # liblzma/common/block_encoder.c:70:36
	movq	80(%rbx), %rdi
	.loc	0 70 27 is_stmt 0               # liblzma/common/block_encoder.c:70:27
	subq	%rdi, %r12
	movl	$9, %eax
	.loc	0 70 52                         # liblzma/common/block_encoder.c:70:52
	cmpq	%rsi, %r12
.Ltmp61:
	.loc	0 70 7                          # liblzma/common/block_encoder.c:70:7
	jb	.LBB1_21
.Ltmp62:
# %bb.5:                                # %if.end9
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	#DEBUG_VALUE: in_start <- $r15
	#DEBUG_VALUE: out_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $ebp
	#DEBUG_VALUE: out_used <- $rsi
	.loc	0 67 26 is_stmt 1               # liblzma/common/block_encoder.c:67:26
	movq	(%rcx), %rcx
.Ltmp63:
	#DEBUG_VALUE: in_used <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_stack_value] $rcx, $r15
	.loc	0 67 34 is_stmt 0               # liblzma/common/block_encoder.c:67:34
	subq	%r15, %rcx
.Ltmp64:
	#DEBUG_VALUE: in_used <- $rcx
	.loc	0 73 26 is_stmt 1               # liblzma/common/block_encoder.c:73:26
	addq	%rsi, %rdi
	movq	%rdi, 80(%rbx)
	.loc	0 77 28                         # liblzma/common/block_encoder.c:77:28
	addq	%rcx, 88(%rbx)
	.loc	0 79 29                         # liblzma/common/block_encoder.c:79:29
	leaq	104(%rbx), %rdi
	.loc	0 79 43 is_stmt 0               # liblzma/common/block_encoder.c:79:43
	movq	64(%rbx), %rax
	.loc	0 79 50                         # liblzma/common/block_encoder.c:79:50
	movl	8(%rax), %esi
.Ltmp65:
	.loc	0 80 8 is_stmt 1                # liblzma/common/block_encoder.c:80:8
	addq	%r15, %rdx
	.loc	0 79 3                          # liblzma/common/block_encoder.c:79:3
	callq	lzma_check_update@PLT
.Ltmp66:
	.loc	0 0 3 is_stmt 0                 # liblzma/common/block_encoder.c:0:3
	movq	72(%rsp), %r10
.Ltmp67:
	.loc	0 82 11 is_stmt 1               # liblzma/common/block_encoder.c:82:11
	cmpl	$1, %ebp
	setne	%al
	movl	80(%rsp), %ecx
	cmpl	$1, %ecx
	sete	%cl
	.loc	0 82 30 is_stmt 0               # liblzma/common/block_encoder.c:82:30
	orb	%al, %cl
	movl	%ebp, %eax
	jne	.LBB1_21
.Ltmp68:
# %bb.6:                                # %cleanup
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	#DEBUG_VALUE: in_start <- $r15
	#DEBUG_VALUE: out_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $ebp
	.loc	0 90 10 is_stmt 1               # liblzma/common/block_encoder.c:90:10
	movq	64(%rbx), %rax
	.loc	0 90 42 is_stmt 0               # liblzma/common/block_encoder.c:90:42
	movq	80(%rbx), %rcx
	.loc	0 90 33                         # liblzma/common/block_encoder.c:90:33
	movq	%rcx, 16(%rax)
	.loc	0 91 10 is_stmt 1               # liblzma/common/block_encoder.c:91:10
	movq	64(%rbx), %rax
	.loc	0 91 44 is_stmt 0               # liblzma/common/block_encoder.c:91:44
	movq	88(%rbx), %rcx
	.loc	0 91 35                         # liblzma/common/block_encoder.c:91:35
	movq	%rcx, 24(%rax)
	.loc	0 93 19 is_stmt 1               # liblzma/common/block_encoder.c:93:19
	movl	$1, 72(%rbx)
.Ltmp69:
.LBB1_7:                                # %sw.bb29
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 0 19 is_stmt 0                # liblzma/common/block_encoder.c:0:19
	movq	80(%rbx), %rcx
	.loc	0 102 3 is_stmt 1               # liblzma/common/block_encoder.c:102:3
	testb	$3, %cl
	je	.LBB1_16
.Ltmp70:
# %bb.8:                                # %while.body.lr.ph
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 0 3 is_stmt 0                 # liblzma/common/block_encoder.c:0:3
	movq	(%r13), %rdx
	xorl	%eax, %eax
.Ltmp71:
	.loc	0 103 17 is_stmt 1              # liblzma/common/block_encoder.c:103:17
	cmpq	%r10, %rdx
.Ltmp72:
	.loc	0 103 8 is_stmt 0               # liblzma/common/block_encoder.c:103:8
	jae	.LBB1_21
.Ltmp73:
# %bb.9:                                # %if.end33
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 106 18 is_stmt 1              # liblzma/common/block_encoder.c:106:18
	movb	$0, (%r14,%rdx)
	.loc	0 107 4                         # liblzma/common/block_encoder.c:107:4
	leaq	1(%rdx), %rsi
	movq	%rsi, (%r13)
	.loc	0 108 4                         # liblzma/common/block_encoder.c:108:4
	leaq	1(%rcx), %rdi
	movq	%rdi, 80(%rbx)
.Ltmp74:
	.loc	0 102 3                         # liblzma/common/block_encoder.c:102:3
	testb	$3, %dil
	je	.LBB1_16
.Ltmp75:
# %bb.10:                               # %while.body.1
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 103 17                        # liblzma/common/block_encoder.c:103:17
	cmpq	%r10, %rsi
.Ltmp76:
	.loc	0 103 8 is_stmt 0               # liblzma/common/block_encoder.c:103:8
	jae	.LBB1_21
.Ltmp77:
# %bb.11:                               # %if.end33.1
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 106 18 is_stmt 1              # liblzma/common/block_encoder.c:106:18
	movb	$0, 1(%r14,%rdx)
	.loc	0 107 4                         # liblzma/common/block_encoder.c:107:4
	leaq	2(%rdx), %rsi
	movq	%rsi, (%r13)
	.loc	0 108 4                         # liblzma/common/block_encoder.c:108:4
	leaq	2(%rcx), %rdi
	movq	%rdi, 80(%rbx)
.Ltmp78:
	.loc	0 102 3                         # liblzma/common/block_encoder.c:102:3
	testb	$3, %dil
	je	.LBB1_16
.Ltmp79:
# %bb.12:                               # %while.body.2
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 103 17                        # liblzma/common/block_encoder.c:103:17
	cmpq	%r10, %rsi
.Ltmp80:
	.loc	0 103 8 is_stmt 0               # liblzma/common/block_encoder.c:103:8
	jae	.LBB1_21
.Ltmp81:
# %bb.13:                               # %if.end33.2
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 106 18 is_stmt 1              # liblzma/common/block_encoder.c:106:18
	movb	$0, 2(%r14,%rdx)
	.loc	0 107 4                         # liblzma/common/block_encoder.c:107:4
	leaq	3(%rdx), %rsi
	movq	%rsi, (%r13)
	.loc	0 108 4                         # liblzma/common/block_encoder.c:108:4
	leaq	3(%rcx), %rdi
	movq	%rdi, 80(%rbx)
.Ltmp82:
	.loc	0 102 3                         # liblzma/common/block_encoder.c:102:3
	testb	$3, %dil
	je	.LBB1_16
.Ltmp83:
# %bb.14:                               # %while.body.3
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 103 17                        # liblzma/common/block_encoder.c:103:17
	cmpq	%r10, %rsi
.Ltmp84:
	.loc	0 103 8 is_stmt 0               # liblzma/common/block_encoder.c:103:8
	jae	.LBB1_21
.Ltmp85:
# %bb.15:                               # %if.end33.3
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 106 18 is_stmt 1              # liblzma/common/block_encoder.c:106:18
	movb	$0, 3(%r14,%rdx)
	.loc	0 107 4                         # liblzma/common/block_encoder.c:107:4
	addq	$4, %rdx
	movq	%rdx, (%r13)
	.loc	0 108 4                         # liblzma/common/block_encoder.c:108:4
	addq	$4, %rcx
	movq	%rcx, 80(%rbx)
.Ltmp86:
.LBB1_16:                               # %while.end
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 111 14                        # liblzma/common/block_encoder.c:111:14
	movq	64(%rbx), %rax
	.loc	0 111 21 is_stmt 0              # liblzma/common/block_encoder.c:111:21
	movl	8(%rax), %esi
	.loc	0 111 27                        # liblzma/common/block_encoder.c:111:27
	testl	%esi, %esi
.Ltmp87:
	.loc	0 111 7                         # liblzma/common/block_encoder.c:111:7
	je	.LBB1_20
.Ltmp88:
# %bb.17:                               # %if.end40
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 114 29 is_stmt 1              # liblzma/common/block_encoder.c:114:29
	leaq	104(%rbx), %rdi
	movq	%r10, %r15
	.loc	0 114 3 is_stmt 0               # liblzma/common/block_encoder.c:114:3
	callq	lzma_check_finish@PLT
.Ltmp89:
	.loc	0 0 3                           # liblzma/common/block_encoder.c:0:3
	movq	%r15, %r10
	.loc	0 116 19 is_stmt 1              # liblzma/common/block_encoder.c:116:19
	movl	$2, 72(%rbx)
.Ltmp90:
.LBB1_18:                               # %sw.bb45
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 121 52                        # liblzma/common/block_encoder.c:121:52
	movq	64(%rbx), %rax
	.loc	0 121 59 is_stmt 0              # liblzma/common/block_encoder.c:121:59
	movl	8(%rax), %edi
	movq	%r10, %r15
	.loc	0 121 29                        # liblzma/common/block_encoder.c:121:29
	callq	lzma_check_size@PLT
.Ltmp91:
	.loc	0 0 29                          # liblzma/common/block_encoder.c:0:29
	movq	%r13, %r8
	.loc	0 121 29                        # liblzma/common/block_encoder.c:121:29
	movl	%eax, %r13d
.Ltmp92:
	#DEBUG_VALUE: check_size <- $r13d
	.loc	0 122 22 is_stmt 1              # liblzma/common/block_encoder.c:122:22
	leaq	104(%rbx), %rbp
	.loc	0 122 47 is_stmt 0              # liblzma/common/block_encoder.c:122:47
	leaq	96(%rbx), %rsi
	.loc	0 122 3                         # liblzma/common/block_encoder.c:122:3
	movq	%rbp, %rdi
	movq	%r13, %rdx
	movq	%r14, %rcx
	movq	%r15, %r9
	callq	lzma_bufcpy@PLT
.Ltmp93:
	.loc	0 0 3                           # liblzma/common/block_encoder.c:0:3
	xorl	%eax, %eax
.Ltmp94:
	.loc	0 124 18 is_stmt 1              # liblzma/common/block_encoder.c:124:18
	cmpq	%r13, 96(%rbx)
.Ltmp95:
	.loc	0 124 7 is_stmt 0               # liblzma/common/block_encoder.c:124:7
	jb	.LBB1_21
.Ltmp96:
# %bb.19:                               # %if.end55
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	#DEBUG_VALUE: check_size <- $r13d
	.loc	0 127 17 is_stmt 1              # liblzma/common/block_encoder.c:127:17
	movq	64(%rbx), %rdi
	.loc	0 127 24 is_stmt 0              # liblzma/common/block_encoder.c:127:24
	addq	$40, %rdi
	.loc	0 127 3                         # liblzma/common/block_encoder.c:127:3
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memcpy@PLT
.Ltmp97:
.LBB1_20:                               # %cleanup62
	#DEBUG_VALUE: block_encode:pcoder <- $rbx
	#DEBUG_VALUE: block_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: block_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: block_encode:out <- $r14
	#DEBUG_VALUE: block_encode:coder <- $rbx
	.loc	0 0 3                           # liblzma/common/block_encoder.c:0:3
	movl	$1, %eax
	jmp	.LBB1_21
.Lfunc_end1:
	.size	block_encode, .Lfunc_end1-block_encode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_encoder_end
	.type	block_encoder_end,@function
block_encoder_end:                      # @block_encoder_end
.Lfunc_begin2:
	.loc	0 139 0 is_stmt 1               # liblzma/common/block_encoder.c:139:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: block_encoder_end:pcoder <- $rdi
	#DEBUG_VALUE: block_encoder_end:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp98:
	#DEBUG_VALUE: block_encoder_end:coder <- $rdi
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp99:
	.loc	0 141 2 prologue_end            # liblzma/common/block_encoder.c:141:2
	callq	lzma_next_end@PLT
.Ltmp100:
	#DEBUG_VALUE: block_encoder_end:allocator <- $rbx
	#DEBUG_VALUE: block_encoder_end:coder <- $r14
	#DEBUG_VALUE: block_encoder_end:pcoder <- $r14
	.loc	0 142 2                         # liblzma/common/block_encoder.c:142:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 142 2 epilogue_begin is_stmt 0 # liblzma/common/block_encoder.c:142:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp101:
	#DEBUG_VALUE: block_encoder_end:allocator <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp102:
	#DEBUG_VALUE: block_encoder_end:coder <- $rdi
	#DEBUG_VALUE: block_encoder_end:pcoder <- $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp103:
.Lfunc_end2:
	.size	block_encoder_end, .Lfunc_end2-block_encoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_encoder_update
	.type	block_encoder_update,@function
block_encoder_update:                   # @block_encoder_update
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: block_encoder_update:pcoder <- $rdi
	#DEBUG_VALUE: block_encoder_update:allocator <- $rsi
	#DEBUG_VALUE: block_encoder_update:reversed_filters <- $rcx
	#DEBUG_VALUE: block_encoder_update:coder <- $rdi
	.loc	0 153 22 prologue_end is_stmt 1 # liblzma/common/block_encoder.c:153:22
	cmpl	$0, 72(%rdi)
.Ltmp104:
	.loc	0 153 6 is_stmt 0               # liblzma/common/block_encoder.c:153:6
	je	.LBB3_2
.Ltmp105:
# %bb.1:                                # %cleanup
	#DEBUG_VALUE: block_encoder_update:pcoder <- $rdi
	#DEBUG_VALUE: block_encoder_update:allocator <- $rsi
	#DEBUG_VALUE: block_encoder_update:reversed_filters <- $rcx
	#DEBUG_VALUE: block_encoder_update:coder <- $rdi
	.loc	0 158 1 is_stmt 1               # liblzma/common/block_encoder.c:158:1
	movl	$11, %eax
	retq
.Ltmp106:
.LBB3_2:                                # %if.end
	#DEBUG_VALUE: block_encoder_update:pcoder <- $rdi
	#DEBUG_VALUE: block_encoder_update:allocator <- $rsi
	#DEBUG_VALUE: block_encoder_update:reversed_filters <- $rcx
	#DEBUG_VALUE: block_encoder_update:coder <- $rdi
	.loc	0 156 9                         # liblzma/common/block_encoder.c:156:9
	movq	%rcx, %rdx
.Ltmp107:
	jmp	lzma_next_filter_update@PLT     # TAILCALL
.Ltmp108:
.Lfunc_end3:
	.size	block_encoder_update, .Lfunc_end3-block_encoder_update
	.cfi_endproc
                                        # -- End function
	.globl	lzma_block_encoder              # -- Begin function lzma_block_encoder
	.p2align	4, 0x90
	.type	lzma_block_encoder,@function
lzma_block_encoder:                     # @lzma_block_encoder
.Lfunc_begin4:
	.loc	0 213 0                         # liblzma/common/block_encoder.c:213:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_block_encoder:strm <- $rdi
	#DEBUG_VALUE: lzma_block_encoder:block <- $rsi
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
.Ltmp109:
	.loc	0 214 2 prologue_end            # liblzma/common/block_encoder.c:214:2
	callq	lzma_strm_init@PLT
.Ltmp110:
	#DEBUG_VALUE: lzma_block_encoder:block <- $r14
	#DEBUG_VALUE: lzma_block_encoder:strm <- $rbx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 214 2 is_stmt 0               # liblzma/common/block_encoder.c:214:2
	testl	%eax, %eax
	je	.LBB4_1
.Ltmp111:
# %bb.4:                                # %return
	#DEBUG_VALUE: lzma_block_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_block_encoder:block <- $r14
	.loc	0 220 1 epilogue_begin is_stmt 1 # liblzma/common/block_encoder.c:220:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp112:
	#DEBUG_VALUE: lzma_block_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp113:
	#DEBUG_VALUE: lzma_block_encoder:block <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp114:
.LBB4_1:                                # %do.end
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_block_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_block_encoder:block <- $r14
	.loc	0 214 2                         # liblzma/common/block_encoder.c:214:2
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movq	%r14, %rdx
	callq	lzma_block_encoder_init
.Ltmp115:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 214 2 is_stmt 0               # liblzma/common/block_encoder.c:214:2
	testl	%eax, %eax
.Ltmp116:
	.loc	0 214 2                         # liblzma/common/block_encoder.c:214:2
	je	.LBB4_3
.Ltmp117:
# %bb.2:                                # %cleanup7
	#DEBUG_VALUE: lzma_block_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_block_encoder:block <- $r14
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 214 2                         # liblzma/common/block_encoder.c:214:2
	movq	%rbx, %rdi
	movl	%eax, %ebx
.Ltmp118:
	#DEBUG_VALUE: ret_ <- $ebx
	#DEBUG_VALUE: lzma_block_encoder:strm <- $rdi
	callq	lzma_end@PLT
.Ltmp119:
	#DEBUG_VALUE: lzma_block_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 2                           # liblzma/common/block_encoder.c:0:2
	movl	%ebx, %eax
.Ltmp120:
	.loc	0 220 1 epilogue_begin is_stmt 1 # liblzma/common/block_encoder.c:220:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp121:
	#DEBUG_VALUE: ret_ <- $eax
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp122:
	#DEBUG_VALUE: lzma_block_encoder:block <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp123:
.LBB4_3:                                # %do.end10
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_block_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_block_encoder:block <- $r14
	.loc	0 216 8                         # liblzma/common/block_encoder.c:216:8
	movq	56(%rbx), %rax
	.loc	0 216 46 is_stmt 0              # liblzma/common/block_encoder.c:216:46
	movb	$1, 80(%rax)
	.loc	0 217 8 is_stmt 1               # liblzma/common/block_encoder.c:217:8
	movq	56(%rbx), %rax
	.loc	0 217 49 is_stmt 0              # liblzma/common/block_encoder.c:217:49
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	.loc	0 220 1 epilogue_begin is_stmt 1 # liblzma/common/block_encoder.c:220:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp124:
	#DEBUG_VALUE: lzma_block_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp125:
	#DEBUG_VALUE: lzma_block_encoder:block <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp126:
.Lfunc_end4:
	.size	lzma_block_encoder, .Lfunc_end4-lzma_block_encoder
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	25                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	6                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
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
	.byte	11                              # DW_FORM_data1
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
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
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
	.byte	28                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
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
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
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
	.byte	5                               # DW_FORM_data2
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
	.byte	1                               # Abbrev [1] 0xc:0x906 DW_TAG_compile_unit
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
	.byte	2                               # Abbrev [2] 0x86:0xc DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x8e:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x92:0x57 DW_TAG_structure_type
	.byte	109                             # DW_AT_name
	.byte	208                             # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x97:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	233                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa0:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	769                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xa9:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	178                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0xb2:0x12 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xba:0x3 DW_TAG_enumerator
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xbd:0x3 DW_TAG_enumerator
	.byte	96                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xc0:0x3 DW_TAG_enumerator
	.byte	97                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xc4:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xcd:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xd6:0x9 DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	513                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xdf:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	1110                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xe9:0x8 DW_TAG_typedef
	.long	241                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xf1:0x4e DW_TAG_structure_type
	.byte	55                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xf6:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	319                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xff:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x108:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	356                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x111:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	364                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x11a:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	602                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x123:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	627                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x12c:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x135:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	697                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x13f:0x5 DW_TAG_pointer_type
	.long	324                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x144:0x4 DW_TAG_typedef
	.byte	27                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x148:0x8 DW_TAG_typedef
	.long	336                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x150:0x8 DW_TAG_typedef
	.long	344                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x158:0x8 DW_TAG_typedef
	.long	352                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x160:0x4 DW_TAG_base_type
	.byte	29                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x164:0x8 DW_TAG_typedef
	.long	352                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x16c:0x8 DW_TAG_typedef
	.long	372                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x174:0x5 DW_TAG_pointer_type
	.long	377                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x179:0x33 DW_TAG_subroutine_type
	.long	428                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x17e:0x5 DW_TAG_formal_parameter
	.long	319                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x183:0x5 DW_TAG_formal_parameter
	.long	436                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x188:0x5 DW_TAG_formal_parameter
	.long	538                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x18d:0x5 DW_TAG_formal_parameter
	.long	573                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x192:0x5 DW_TAG_formal_parameter
	.long	513                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x197:0x5 DW_TAG_formal_parameter
	.long	583                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x19c:0x5 DW_TAG_formal_parameter
	.long	573                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1a1:0x5 DW_TAG_formal_parameter
	.long	513                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1a6:0x5 DW_TAG_formal_parameter
	.long	593                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1ac:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1b4:0x5 DW_TAG_pointer_type
	.long	441                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1b9:0x9 DW_TAG_typedef
	.long	450                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1c2:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x1c7:0xa DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	486                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1d1:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1db:0xa DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	512                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1e6:0x5 DW_TAG_pointer_type
	.long	491                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1eb:0x15 DW_TAG_subroutine_type
	.long	512                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x1f0:0x5 DW_TAG_formal_parameter
	.long	512                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1f5:0x5 DW_TAG_formal_parameter
	.long	513                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1fa:0x5 DW_TAG_formal_parameter
	.long	513                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x200:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0x201:0x8 DW_TAG_typedef
	.long	352                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x209:0x5 DW_TAG_pointer_type
	.long	526                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x20e:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x20f:0x5 DW_TAG_formal_parameter
	.long	512                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x214:0x5 DW_TAG_formal_parameter
	.long	512                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x21a:0x5 DW_TAG_restrict_type
	.long	543                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x21f:0x5 DW_TAG_pointer_type
	.long	548                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x224:0x5 DW_TAG_const_type
	.long	553                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x229:0x8 DW_TAG_typedef
	.long	561                             # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x231:0x8 DW_TAG_typedef
	.long	569                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x239:0x4 DW_TAG_base_type
	.byte	42                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x23d:0x5 DW_TAG_restrict_type
	.long	578                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x242:0x5 DW_TAG_pointer_type
	.long	513                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x247:0x5 DW_TAG_restrict_type
	.long	588                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x24c:0x5 DW_TAG_pointer_type
	.long	553                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x251:0x9 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x25a:0x8 DW_TAG_typedef
	.long	610                             # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x262:0x5 DW_TAG_pointer_type
	.long	615                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x267:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x268:0x5 DW_TAG_formal_parameter
	.long	319                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x26d:0x5 DW_TAG_formal_parameter
	.long	436                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x273:0x5 DW_TAG_pointer_type
	.long	632                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x278:0xb DW_TAG_subroutine_type
	.long	643                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x27d:0x5 DW_TAG_formal_parameter
	.long	651                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x283:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x28b:0x5 DW_TAG_pointer_type
	.long	656                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x290:0x5 DW_TAG_const_type
	.long	324                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x295:0x5 DW_TAG_pointer_type
	.long	666                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x29a:0x1a DW_TAG_subroutine_type
	.long	428                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x29f:0x5 DW_TAG_formal_parameter
	.long	319                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2a4:0x5 DW_TAG_formal_parameter
	.long	692                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2a9:0x5 DW_TAG_formal_parameter
	.long	692                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2ae:0x5 DW_TAG_formal_parameter
	.long	336                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2b4:0x5 DW_TAG_pointer_type
	.long	336                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2b9:0x5 DW_TAG_pointer_type
	.long	702                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2be:0x1a DW_TAG_subroutine_type
	.long	428                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x2c3:0x5 DW_TAG_formal_parameter
	.long	319                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2c8:0x5 DW_TAG_formal_parameter
	.long	436                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2cd:0x5 DW_TAG_formal_parameter
	.long	728                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2d2:0x5 DW_TAG_formal_parameter
	.long	728                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2d8:0x5 DW_TAG_pointer_type
	.long	733                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2dd:0x5 DW_TAG_const_type
	.long	738                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2e2:0x8 DW_TAG_typedef
	.long	746                             # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x2ea:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x2ee:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2f7:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	512                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x301:0x5 DW_TAG_pointer_type
	.long	774                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x306:0x8 DW_TAG_typedef
	.long	782                             # DW_AT_type
	.byte	93                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x30e:0x113 DW_TAG_structure_type
	.byte	208                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x312:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	1057                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x31b:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	1057                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x324:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	643                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x32d:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x336:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x33f:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	1073                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x348:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	1078                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x351:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	512                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x35a:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	512                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x363:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	512                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x36c:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	1057                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x375:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	1057                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x37e:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x387:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x390:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x399:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3a2:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3ab:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3b4:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	1094                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3bd:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	1094                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	188                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3c6:0x9 DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	1094                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3cf:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	1094                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3d8:0x9 DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	1102                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	200                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3e1:0x9 DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	1102                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	201                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3ea:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	1102                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.byte	202                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3f3:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1102                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	203                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3fc:0x9 DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1102                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	204                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x405:0x9 DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1102                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	205                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x40e:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	1102                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	206                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x417:0x9 DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	1102                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	207                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x421:0x8 DW_TAG_typedef
	.long	1065                            # DW_AT_type
	.byte	60                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x429:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	59                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x431:0x5 DW_TAG_pointer_type
	.long	738                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x436:0xc DW_TAG_array_type
	.long	553                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x43b:0x6 DW_TAG_subrange_type
	.long	1090                            # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x442:0x4 DW_TAG_base_type
	.byte	67                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x446:0x8 DW_TAG_typedef
	.long	134                             # DW_AT_type
	.byte	80                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x44e:0x8 DW_TAG_typedef
	.long	569                             # DW_AT_type
	.byte	85                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x456:0x8 DW_TAG_typedef
	.long	1118                            # DW_AT_type
	.byte	108                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x45e:0x6e DW_TAG_structure_type
	.byte	104                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x462:0x9 DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x46b:0x20 DW_TAG_union_type
	.byte	64                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x46f:0x9 DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1078                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x478:0x9 DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	1228                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x481:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	1240                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x48b:0x9 DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	1172                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x494:0x37 DW_TAG_union_type
	.byte	40                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x498:0x9 DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	1057                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4a1:0x9 DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4aa:0x9 DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	1203                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x4b3:0x17 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4b7:0x9 DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	1252                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4c0:0x9 DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x4cc:0xc DW_TAG_array_type
	.long	1057                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x4d1:0x6 DW_TAG_subrange_type
	.long	1090                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x4d8:0xc DW_TAG_array_type
	.long	336                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x4dd:0x6 DW_TAG_subrange_type
	.long	1090                            # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x4e4:0xc DW_TAG_array_type
	.long	1057                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x4e9:0x6 DW_TAG_subrange_type
	.long	1090                            # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x4f0:0x4e DW_TAG_structure_type
	.byte	120                             # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4f5:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	233                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4fe:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	1287                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0x507:0x1b DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x50f:0x3 DW_TAG_enumerator
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x512:0x3 DW_TAG_enumerator
	.byte	111                             # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x515:0x3 DW_TAG_enumerator
	.byte	112                             # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x518:0x3 DW_TAG_enumerator
	.byte	113                             # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x51b:0x3 DW_TAG_enumerator
	.byte	114                             # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x51e:0x3 DW_TAG_enumerator
	.byte	115                             # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x522:0x9 DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	513                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x52b:0x9 DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	1342                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x534:0x9 DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	1354                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x53e:0xc DW_TAG_array_type
	.long	1354                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x543:0x6 DW_TAG_subrange_type
	.long	1090                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x54a:0x4 DW_TAG_base_type
	.byte	118                             # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x54e:0x5 DW_TAG_pointer_type
	.long	146                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x553:0x49 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	428                             # DW_AT_type
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x562:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.long	1451                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x56b:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.long	436                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x574:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.long	769                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x57d:0x6 DW_TAG_call_site
	.long	1436                            # DW_AT_call_origin
	.byte	1                               # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x583:0x6 DW_TAG_call_site
	.long	1456                            # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x589:0x6 DW_TAG_call_site
	.long	1470                            # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x58f:0x6 DW_TAG_call_site
	.long	1489                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	27                              # Abbrev [27] 0x595:0x6 DW_TAG_call_site
	.long	1509                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	5                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x59c:0xf DW_TAG_subprogram
	.byte	121                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5a0:0x5 DW_TAG_formal_parameter
	.long	1451                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5a5:0x5 DW_TAG_formal_parameter
	.long	436                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5ab:0x5 DW_TAG_pointer_type
	.long	233                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x5b0:0xe DW_TAG_subprogram
	.byte	122                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1102                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5b8:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x5be:0x13 DW_TAG_subprogram
	.byte	123                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	512                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5c6:0x5 DW_TAG_formal_parameter
	.long	513                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5cb:0x5 DW_TAG_formal_parameter
	.long	436                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x5d1:0xf DW_TAG_subprogram
	.byte	124                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5d5:0x5 DW_TAG_formal_parameter
	.long	1504                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5da:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5e0:0x5 DW_TAG_pointer_type
	.long	1110                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x5e5:0x18 DW_TAG_subprogram
	.byte	125                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	428                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5ed:0x5 DW_TAG_formal_parameter
	.long	1451                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5f2:0x5 DW_TAG_formal_parameter
	.long	436                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5f7:0x5 DW_TAG_formal_parameter
	.long	728                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x5fd:0xce DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	4                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.byte	64
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	428                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x60f:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	319                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x618:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	436                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x621:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	538                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x62a:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	573                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x633:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	513                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x63c:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	583                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x645:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	573                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x64e:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	513                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x657:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	593                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x660:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	1358                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x669:0x35 DW_TAG_lexical_block
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp69-.Ltmp53                 # DW_AT_high_pc
	.byte	33                              # Abbrev [33] 0x66f:0xa DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	95
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	2311                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x679:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	2311                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x682:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.long	2316                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x68b:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	2311                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x694:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	161                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	2311                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x69e:0x10 DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp97-.Ltmp90                 # DW_AT_high_pc
	.byte	31                              # Abbrev [31] 0x6a4:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.long	2311                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x6ae:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	83
	.byte	9                               # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x6b2:0x6 DW_TAG_call_site
	.long	1739                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x6b8:0x6 DW_TAG_call_site
	.long	1764                            # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x6be:0x6 DW_TAG_call_site
	.long	1779                            # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x6c4:0x6 DW_TAG_call_site
	.long	1793                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x6cb:0x19 DW_TAG_subprogram
	.byte	126                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x6cf:0x5 DW_TAG_formal_parameter
	.long	1504                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6d4:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6d9:0x5 DW_TAG_formal_parameter
	.long	543                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6de:0x5 DW_TAG_formal_parameter
	.long	513                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x6e4:0xf DW_TAG_subprogram
	.byte	127                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x6e8:0x5 DW_TAG_formal_parameter
	.long	1504                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6ed:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x6f3:0xe DW_TAG_subprogram
	.byte	128                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1057                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x6fb:0x5 DW_TAG_formal_parameter
	.long	643                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x701:0x27 DW_TAG_subprogram
	.byte	129                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	513                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x709:0x5 DW_TAG_formal_parameter
	.long	538                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x70e:0x5 DW_TAG_formal_parameter
	.long	573                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x713:0x5 DW_TAG_formal_parameter
	.long	513                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x718:0x5 DW_TAG_formal_parameter
	.long	583                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x71d:0x5 DW_TAG_formal_parameter
	.long	573                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x722:0x5 DW_TAG_formal_parameter
	.long	513                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x728:0x33 DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	146                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	25                              # Abbrev [25] 0x733:0x9 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.long	319                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x73c:0x9 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.long	436                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x745:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.long	1358                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x74e:0x6 DW_TAG_call_site
	.long	1436                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	27                              # Abbrev [27] 0x754:0x6 DW_TAG_call_site
	.long	1883                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	16                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x75b:0xf DW_TAG_subprogram
	.byte	130                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x75f:0x5 DW_TAG_formal_parameter
	.long	512                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x764:0x5 DW_TAG_formal_parameter
	.long	436                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x76a:0x46 DW_TAG_subprogram
	.byte	17                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	428                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x779:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.long	319                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x783:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.long	436                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x78d:0x8 DW_TAG_formal_parameter
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.long	728                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x795:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	163                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.long	728                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x79f:0xa DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.long	1358                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7a9:0x6 DW_TAG_call_site
	.long	1968                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	18                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x7b0:0x18 DW_TAG_subprogram
	.byte	131                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	428                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x7b8:0x5 DW_TAG_formal_parameter
	.long	1451                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7bd:0x5 DW_TAG_formal_parameter
	.long	436                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7c2:0x5 DW_TAG_formal_parameter
	.long	728                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x7c8:0x50 DW_TAG_subprogram
	.byte	19                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	428                             # DW_AT_type
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x7d7:0x9 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.byte	164                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.long	2086                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x7e0:0x9 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.long	769                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x7e9:0x1c DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	31                              # Abbrev [31] 0x7eb:0x9 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	165                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.long	2316                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x7f4:0x10 DW_TAG_lexical_block
	.byte	20                              # DW_AT_low_pc
	.long	.Ltmp111-.Ltmp109               # DW_AT_high_pc
	.byte	31                              # Abbrev [31] 0x7fa:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	165                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.long	2316                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x805:0x6 DW_TAG_call_site
	.long	2072                            # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x80b:0x6 DW_TAG_call_site
	.long	1363                            # DW_AT_call_origin
	.byte	22                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x811:0x6 DW_TAG_call_site
	.long	2300                            # DW_AT_call_origin
	.byte	23                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x818:0xe DW_TAG_subprogram
	.byte	132                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	428                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x820:0x5 DW_TAG_formal_parameter
	.long	2086                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x826:0x5 DW_TAG_pointer_type
	.long	2091                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x82b:0x9 DW_TAG_typedef
	.long	2100                            # DW_AT_type
	.byte	142                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x834:0xba DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x839:0xa DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	543                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x843:0xa DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	513                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x84d:0xa DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x857:0xa DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x861:0xa DW_TAG_member
	.byte	136                             # DW_AT_name
	.long	513                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x86b:0xa DW_TAG_member
	.byte	137                             # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x875:0xa DW_TAG_member
	.byte	138                             # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x87f:0xa DW_TAG_member
	.byte	139                             # DW_AT_name
	.long	2286                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x889:0xa DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	512                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x893:0xa DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	512                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x89d:0xa DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	512                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8a7:0xa DW_TAG_member
	.byte	141                             # DW_AT_name
	.long	512                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8b1:0xa DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8bb:0xa DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8c5:0xa DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	513                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8cf:0xa DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	513                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8d9:0xa DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	1094                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8e3:0xa DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	1094                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x8ee:0x5 DW_TAG_pointer_type
	.long	2291                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x8f3:0x9 DW_TAG_typedef
	.long	1264                            # DW_AT_type
	.byte	140                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	39                              # Abbrev [39] 0x8fc:0xb DW_TAG_subprogram
	.byte	143                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x901:0x5 DW_TAG_formal_parameter
	.long	2086                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x907:0x5 DW_TAG_const_type
	.long	513                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x90c:0x5 DW_TAG_const_type
	.long	428                             # DW_AT_type
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
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	668                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/block_encoder.c" # string offset=105
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
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=497
.Linfo_string25:
	.asciz	"next"                          # string offset=516
.Linfo_string26:
	.asciz	"coder"                         # string offset=521
.Linfo_string27:
	.asciz	"lzma_coder"                    # string offset=527
.Linfo_string28:
	.asciz	"id"                            # string offset=538
.Linfo_string29:
	.asciz	"unsigned long"                 # string offset=541
.Linfo_string30:
	.asciz	"__uint64_t"                    # string offset=555
.Linfo_string31:
	.asciz	"uint64_t"                      # string offset=566
.Linfo_string32:
	.asciz	"lzma_vli"                      # string offset=575
.Linfo_string33:
	.asciz	"init"                          # string offset=584
.Linfo_string34:
	.asciz	"uintptr_t"                     # string offset=589
.Linfo_string35:
	.asciz	"code"                          # string offset=599
.Linfo_string36:
	.asciz	"lzma_ret"                      # string offset=604
.Linfo_string37:
	.asciz	"alloc"                         # string offset=613
.Linfo_string38:
	.asciz	"size_t"                        # string offset=619
.Linfo_string39:
	.asciz	"free"                          # string offset=626
.Linfo_string40:
	.asciz	"opaque"                        # string offset=631
.Linfo_string41:
	.asciz	"lzma_allocator"                # string offset=638
.Linfo_string42:
	.asciz	"unsigned char"                 # string offset=653
.Linfo_string43:
	.asciz	"__uint8_t"                     # string offset=667
.Linfo_string44:
	.asciz	"uint8_t"                       # string offset=677
.Linfo_string45:
	.asciz	"lzma_action"                   # string offset=685
.Linfo_string46:
	.asciz	"lzma_code_function"            # string offset=697
.Linfo_string47:
	.asciz	"end"                           # string offset=716
.Linfo_string48:
	.asciz	"lzma_end_function"             # string offset=720
.Linfo_string49:
	.asciz	"get_check"                     # string offset=738
.Linfo_string50:
	.asciz	"lzma_check"                    # string offset=748
.Linfo_string51:
	.asciz	"memconfig"                     # string offset=759
.Linfo_string52:
	.asciz	"update"                        # string offset=769
.Linfo_string53:
	.asciz	"options"                       # string offset=776
.Linfo_string54:
	.asciz	"lzma_filter"                   # string offset=784
.Linfo_string55:
	.asciz	"lzma_next_coder_s"             # string offset=796
.Linfo_string56:
	.asciz	"lzma_next_coder"               # string offset=814
.Linfo_string57:
	.asciz	"block"                         # string offset=830
.Linfo_string58:
	.asciz	"version"                       # string offset=836
.Linfo_string59:
	.asciz	"__uint32_t"                    # string offset=844
.Linfo_string60:
	.asciz	"uint32_t"                      # string offset=855
.Linfo_string61:
	.asciz	"header_size"                   # string offset=864
.Linfo_string62:
	.asciz	"check"                         # string offset=876
.Linfo_string63:
	.asciz	"compressed_size"               # string offset=882
.Linfo_string64:
	.asciz	"uncompressed_size"             # string offset=898
.Linfo_string65:
	.asciz	"filters"                       # string offset=916
.Linfo_string66:
	.asciz	"raw_check"                     # string offset=924
.Linfo_string67:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=934
.Linfo_string68:
	.asciz	"reserved_ptr1"                 # string offset=954
.Linfo_string69:
	.asciz	"reserved_ptr2"                 # string offset=968
.Linfo_string70:
	.asciz	"reserved_ptr3"                 # string offset=982
.Linfo_string71:
	.asciz	"reserved_int1"                 # string offset=996
.Linfo_string72:
	.asciz	"reserved_int2"                 # string offset=1010
.Linfo_string73:
	.asciz	"reserved_int3"                 # string offset=1024
.Linfo_string74:
	.asciz	"reserved_int4"                 # string offset=1038
.Linfo_string75:
	.asciz	"reserved_int5"                 # string offset=1052
.Linfo_string76:
	.asciz	"reserved_int6"                 # string offset=1066
.Linfo_string77:
	.asciz	"reserved_int7"                 # string offset=1080
.Linfo_string78:
	.asciz	"reserved_int8"                 # string offset=1094
.Linfo_string79:
	.asciz	"reserved_enum1"                # string offset=1108
.Linfo_string80:
	.asciz	"lzma_reserved_enum"            # string offset=1123
.Linfo_string81:
	.asciz	"reserved_enum2"                # string offset=1142
.Linfo_string82:
	.asciz	"reserved_enum3"                # string offset=1157
.Linfo_string83:
	.asciz	"reserved_enum4"                # string offset=1172
.Linfo_string84:
	.asciz	"reserved_bool1"                # string offset=1187
.Linfo_string85:
	.asciz	"lzma_bool"                     # string offset=1202
.Linfo_string86:
	.asciz	"reserved_bool2"                # string offset=1212
.Linfo_string87:
	.asciz	"reserved_bool3"                # string offset=1227
.Linfo_string88:
	.asciz	"reserved_bool4"                # string offset=1242
.Linfo_string89:
	.asciz	"reserved_bool5"                # string offset=1257
.Linfo_string90:
	.asciz	"reserved_bool6"                # string offset=1272
.Linfo_string91:
	.asciz	"reserved_bool7"                # string offset=1287
.Linfo_string92:
	.asciz	"reserved_bool8"                # string offset=1302
.Linfo_string93:
	.asciz	"lzma_block"                    # string offset=1317
.Linfo_string94:
	.asciz	"sequence"                      # string offset=1328
.Linfo_string95:
	.asciz	"SEQ_CODE"                      # string offset=1337
.Linfo_string96:
	.asciz	"SEQ_PADDING"                   # string offset=1346
.Linfo_string97:
	.asciz	"SEQ_CHECK"                     # string offset=1358
.Linfo_string98:
	.asciz	"pos"                           # string offset=1368
.Linfo_string99:
	.asciz	"buffer"                        # string offset=1372
.Linfo_string100:
	.asciz	"u8"                            # string offset=1379
.Linfo_string101:
	.asciz	"u32"                           # string offset=1382
.Linfo_string102:
	.asciz	"u64"                           # string offset=1386
.Linfo_string103:
	.asciz	"state"                         # string offset=1390
.Linfo_string104:
	.asciz	"crc32"                         # string offset=1396
.Linfo_string105:
	.asciz	"crc64"                         # string offset=1402
.Linfo_string106:
	.asciz	"sha256"                        # string offset=1408
.Linfo_string107:
	.asciz	"size"                          # string offset=1415
.Linfo_string108:
	.asciz	"lzma_check_state"              # string offset=1420
.Linfo_string109:
	.asciz	"lzma_coder_s"                  # string offset=1437
.Linfo_string110:
	.asciz	"ISEQ_RUN"                      # string offset=1450
.Linfo_string111:
	.asciz	"ISEQ_SYNC_FLUSH"               # string offset=1459
.Linfo_string112:
	.asciz	"ISEQ_FULL_FLUSH"               # string offset=1475
.Linfo_string113:
	.asciz	"ISEQ_FINISH"                   # string offset=1491
.Linfo_string114:
	.asciz	"ISEQ_END"                      # string offset=1503
.Linfo_string115:
	.asciz	"ISEQ_ERROR"                    # string offset=1512
.Linfo_string116:
	.asciz	"avail_in"                      # string offset=1523
.Linfo_string117:
	.asciz	"supported_actions"             # string offset=1532
.Linfo_string118:
	.asciz	"_Bool"                         # string offset=1550
.Linfo_string119:
	.asciz	"allow_buf_error"               # string offset=1556
.Linfo_string120:
	.asciz	"lzma_internal_s"               # string offset=1572
.Linfo_string121:
	.asciz	"lzma_next_end"                 # string offset=1588
.Linfo_string122:
	.asciz	"lzma_check_is_supported"       # string offset=1602
.Linfo_string123:
	.asciz	"lzma_alloc"                    # string offset=1626
.Linfo_string124:
	.asciz	"lzma_check_init"               # string offset=1637
.Linfo_string125:
	.asciz	"lzma_raw_encoder_init"         # string offset=1653
.Linfo_string126:
	.asciz	"lzma_check_update"             # string offset=1675
.Linfo_string127:
	.asciz	"lzma_check_finish"             # string offset=1693
.Linfo_string128:
	.asciz	"lzma_check_size"               # string offset=1711
.Linfo_string129:
	.asciz	"lzma_bufcpy"                   # string offset=1727
.Linfo_string130:
	.asciz	"lzma_free"                     # string offset=1739
.Linfo_string131:
	.asciz	"lzma_next_filter_update"       # string offset=1749
.Linfo_string132:
	.asciz	"lzma_strm_init"                # string offset=1773
.Linfo_string133:
	.asciz	"next_in"                       # string offset=1788
.Linfo_string134:
	.asciz	"total_in"                      # string offset=1796
.Linfo_string135:
	.asciz	"next_out"                      # string offset=1805
.Linfo_string136:
	.asciz	"avail_out"                     # string offset=1814
.Linfo_string137:
	.asciz	"total_out"                     # string offset=1824
.Linfo_string138:
	.asciz	"allocator"                     # string offset=1834
.Linfo_string139:
	.asciz	"internal"                      # string offset=1844
.Linfo_string140:
	.asciz	"lzma_internal"                 # string offset=1853
.Linfo_string141:
	.asciz	"reserved_ptr4"                 # string offset=1867
.Linfo_string142:
	.asciz	"lzma_stream"                   # string offset=1881
.Linfo_string143:
	.asciz	"lzma_end"                      # string offset=1893
.Linfo_string144:
	.asciz	"lzma_block_encoder_init"       # string offset=1902
.Linfo_string145:
	.asciz	"block_encode"                  # string offset=1926
.Linfo_string146:
	.asciz	"block_encoder_end"             # string offset=1939
.Linfo_string147:
	.asciz	"block_encoder_update"          # string offset=1957
.Linfo_string148:
	.asciz	"lzma_block_encoder"            # string offset=1978
.Linfo_string149:
	.asciz	"pcoder"                        # string offset=1997
.Linfo_string150:
	.asciz	"in"                            # string offset=2004
.Linfo_string151:
	.asciz	"in_pos"                        # string offset=2007
.Linfo_string152:
	.asciz	"in_size"                       # string offset=2014
.Linfo_string153:
	.asciz	"out"                           # string offset=2022
.Linfo_string154:
	.asciz	"out_pos"                       # string offset=2026
.Linfo_string155:
	.asciz	"out_size"                      # string offset=2034
.Linfo_string156:
	.asciz	"action"                        # string offset=2043
.Linfo_string157:
	.asciz	"in_start"                      # string offset=2050
.Linfo_string158:
	.asciz	"out_start"                     # string offset=2059
.Linfo_string159:
	.asciz	"ret"                           # string offset=2069
.Linfo_string160:
	.asciz	"in_used"                       # string offset=2073
.Linfo_string161:
	.asciz	"out_used"                      # string offset=2081
.Linfo_string162:
	.asciz	"check_size"                    # string offset=2090
.Linfo_string163:
	.asciz	"reversed_filters"              # string offset=2101
.Linfo_string164:
	.asciz	"strm"                          # string offset=2118
.Linfo_string165:
	.asciz	"ret_"                          # string offset=2123
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp3
	.quad	.Ltmp16
	.quad	.Ltmp21
	.quad	.Ltmp27
	.quad	.Ltmp30
	.quad	.Lfunc_begin1
	.quad	.Ltmp53
	.quad	.Ltmp90
	.quad	.Ltmp57
	.quad	.Ltmp66
	.quad	.Ltmp89
	.quad	.Ltmp91
	.quad	.Ltmp93
	.quad	.Lfunc_begin2
	.quad	.Ltmp100
	.quad	.Ltmp102
	.quad	.Lfunc_begin3
	.quad	.Ltmp107
	.quad	.Lfunc_begin4
	.quad	.Ltmp109
	.quad	.Ltmp110
	.quad	.Ltmp115
	.quad	.Ltmp119
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
