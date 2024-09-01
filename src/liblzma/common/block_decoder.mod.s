	.text
	.file	"block_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/block_decoder.c" md5 0xa9c2ade3280bfe5426dd8f7a5b8e1a9e
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
	.globl	lzma_block_decoder_init         # -- Begin function lzma_block_decoder_init
	.p2align	4, 0x90
	.type	lzma_block_decoder_init,@function
lzma_block_decoder_init:                # @lzma_block_decoder_init
.Lfunc_begin0:
	.loc	0 186 0                         # liblzma/common/block_decoder.c:186:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_block_decoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_decoder_init:block <- $rdx
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
.Ltmp0:
	.loc	0 187 2 prologue_end            # liblzma/common/block_decoder.c:187:2
	cmpq	$lzma_block_decoder_init, 16(%rdi)
.Ltmp1:
	.loc	0 187 2 is_stmt 0               # liblzma/common/block_decoder.c:187:2
	je	.LBB0_2
.Ltmp2:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lzma_block_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_decoder_init:block <- $r14
	.loc	0 187 2                         # liblzma/common/block_decoder.c:187:2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	lzma_next_end@PLT
.Ltmp3:
.LBB0_2:                                # %if.end
	#DEBUG_VALUE: lzma_block_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_decoder_init:block <- $r14
	.loc	0 187 2                         # liblzma/common/block_decoder.c:187:2
	movq	$lzma_block_decoder_init, 16(%r15)
.Ltmp4:
	.loc	0 192 6 is_stmt 1               # liblzma/common/block_decoder.c:192:6
	movq	%r14, %rdi
	callq	lzma_block_unpadded_size@PLT
.Ltmp5:
	movq	%rax, %rcx
	movl	$11, %eax
	.loc	0 192 38 is_stmt 0              # liblzma/common/block_decoder.c:192:38
	testq	%rcx, %rcx
	.loc	0 193 4 is_stmt 1               # liblzma/common/block_decoder.c:193:4
	je	.LBB0_7
.Ltmp6:
# %bb.3:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_block_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_decoder_init:block <- $r14
	.loc	0 193 8 is_stmt 0               # liblzma/common/block_decoder.c:193:8
	cmpq	$-1, 24(%r14)
	jl	.LBB0_7
.Ltmp7:
# %bb.4:                                # %if.end8
	#DEBUG_VALUE: lzma_block_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_decoder_init:block <- $r14
	.loc	0 197 12 is_stmt 1              # liblzma/common/block_decoder.c:197:12
	movq	(%r15), %rax
	.loc	0 197 18 is_stmt 0              # liblzma/common/block_decoder.c:197:18
	testq	%rax, %rax
.Ltmp8:
	.loc	0 197 6                         # liblzma/common/block_decoder.c:197:6
	jne	.LBB0_9
.Ltmp9:
# %bb.5:                                # %if.then10
	#DEBUG_VALUE: lzma_block_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_decoder_init:block <- $r14
	.loc	0 198 17 is_stmt 1              # liblzma/common/block_decoder.c:198:17
	movl	$216, %edi
	movq	%rbx, %rsi
	callq	lzma_alloc@PLT
.Ltmp10:
	.loc	0 198 15 is_stmt 0              # liblzma/common/block_decoder.c:198:15
	movq	%rax, (%r15)
.Ltmp11:
	.loc	0 199 19 is_stmt 1              # liblzma/common/block_decoder.c:199:19
	testq	%rax, %rax
.Ltmp12:
	.loc	0 199 7 is_stmt 0               # liblzma/common/block_decoder.c:199:7
	je	.LBB0_6
.Ltmp13:
# %bb.8:                                # %if.end16
	#DEBUG_VALUE: lzma_block_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_decoder_init:block <- $r14
	.loc	0 202 14 is_stmt 1              # liblzma/common/block_decoder.c:202:14
	movq	$block_decode, 24(%r15)
	.loc	0 203 13                        # liblzma/common/block_decoder.c:203:13
	movq	$block_decoder_end, 32(%r15)
	.loc	0 204 47                        # liblzma/common/block_decoder.c:204:47
	movq	$0, 8(%rax)
	movq	$-1, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movups	%xmm0, 40(%rax)
	movups	%xmm0, 56(%rax)
.Ltmp14:
	.loc	0 208 31                        # liblzma/common/block_decoder.c:208:31
	movq	(%r15), %rax
.Ltmp15:
.LBB0_9:                                # %if.end23
	#DEBUG_VALUE: lzma_block_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_decoder_init:block <- $r14
	.loc	0 208 48 is_stmt 0              # liblzma/common/block_decoder.c:208:48
	movl	$0, (%rax)
	.loc	0 209 31 is_stmt 1              # liblzma/common/block_decoder.c:209:31
	movq	(%r15), %rax
	.loc	0 209 45 is_stmt 0              # liblzma/common/block_decoder.c:209:45
	movq	%r14, 72(%rax)
	.loc	0 210 31 is_stmt 1              # liblzma/common/block_decoder.c:210:31
	movq	(%r15), %rax
	.loc	0 210 55 is_stmt 0              # liblzma/common/block_decoder.c:210:55
	movq	$0, 80(%rax)
	.loc	0 211 31 is_stmt 1              # liblzma/common/block_decoder.c:211:31
	movq	(%r15), %rax
	.loc	0 211 57 is_stmt 0              # liblzma/common/block_decoder.c:211:57
	movq	$0, 88(%rax)
	.loc	0 217 13 is_stmt 1              # liblzma/common/block_decoder.c:217:13
	movq	16(%r14), %rax
	.loc	0 217 29 is_stmt 0              # liblzma/common/block_decoder.c:217:29
	cmpq	$-1, %rax
	.loc	0 217 6                         # liblzma/common/block_decoder.c:217:6
	jne	.LBB0_11
.Ltmp16:
# %bb.10:                               # %cond.true
	#DEBUG_VALUE: lzma_block_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_decoder_init:block <- $r14
	.loc	0 219 15 is_stmt 1              # liblzma/common/block_decoder.c:219:15
	movl	4(%r14), %r12d
	.loc	0 220 31                        # liblzma/common/block_decoder.c:220:31
	movl	8(%r14), %edi
	.loc	0 220 8 is_stmt 0               # liblzma/common/block_decoder.c:220:8
	callq	lzma_check_size@PLT
.Ltmp17:
	movl	%eax, %ecx
	.loc	0 220 6                         # liblzma/common/block_decoder.c:220:6
	addq	%r12, %rcx
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	subq	%rcx, %rax
.Ltmp18:
.LBB0_11:                               # %cond.end
	#DEBUG_VALUE: lzma_block_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_decoder_init:block <- $r14
	.loc	0 216 31 is_stmt 1              # liblzma/common/block_decoder.c:216:31
	movq	(%r15), %rcx
	.loc	0 217 4                         # liblzma/common/block_decoder.c:217:4
	movq	%rax, 96(%rcx)
	.loc	0 226 31                        # liblzma/common/block_decoder.c:226:31
	movq	(%r15), %rax
	.loc	0 226 49 is_stmt 0              # liblzma/common/block_decoder.c:226:49
	movq	$0, 104(%rax)
	.loc	0 227 48 is_stmt 1              # liblzma/common/block_decoder.c:227:48
	movq	(%r15), %rdi
	.loc	0 227 56 is_stmt 0              # liblzma/common/block_decoder.c:227:56
	addq	$112, %rdi
	.loc	0 227 70                        # liblzma/common/block_decoder.c:227:70
	movl	8(%r14), %esi
	.loc	0 227 2                         # liblzma/common/block_decoder.c:227:2
	callq	lzma_check_init@PLT
.Ltmp19:
	.loc	0 230 61 is_stmt 1              # liblzma/common/block_decoder.c:230:61
	movq	(%r15), %rdi
	.loc	0 230 69 is_stmt 0              # liblzma/common/block_decoder.c:230:69
	addq	$8, %rdi
	.loc	0 231 11 is_stmt 1              # liblzma/common/block_decoder.c:231:11
	movq	32(%r14), %rdx
	.loc	0 230 9                         # liblzma/common/block_decoder.c:230:9
	movq	%rbx, %rsi
	.loc	0 230 9 epilogue_begin is_stmt 0 # liblzma/common/block_decoder.c:230:9
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp20:
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- $rsi
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp21:
	#DEBUG_VALUE: lzma_block_decoder_init:block <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp22:
	#DEBUG_VALUE: lzma_block_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_raw_decoder_init@PLT       # TAILCALL
.Ltmp23:
.LBB0_6:
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: lzma_block_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_decoder_init:block <- $r14
	.loc	0 0 9                           # liblzma/common/block_decoder.c:0:9
	movl	$5, %eax
.Ltmp24:
.LBB0_7:                                # %return
	#DEBUG_VALUE: lzma_block_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_decoder_init:block <- $r14
	.loc	0 232 1 epilogue_begin is_stmt 1 # liblzma/common/block_decoder.c:232:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp25:
	#DEBUG_VALUE: lzma_block_decoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp26:
	#DEBUG_VALUE: lzma_block_decoder_init:block <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp27:
	#DEBUG_VALUE: lzma_block_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp28:
.Lfunc_end0:
	.size	lzma_block_decoder_init, .Lfunc_end0-lzma_block_decoder_init
	.cfi_endproc
	.file	12 "liblzma/common" "filter_decoder.h" md5 0xeb6564ac887b86e116dfd99078c48b83
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_decode
	.type	block_decode,@function
block_decode:                           # @block_decode
.Lfunc_begin1:
	.loc	0 78 0                          # liblzma/common/block_decoder.c:78:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: block_decode:pcoder <- $rdi
	#DEBUG_VALUE: block_decode:allocator <- $rsi
	#DEBUG_VALUE: block_decode:in <- $rdx
	#DEBUG_VALUE: block_decode:in_pos <- $rcx
	#DEBUG_VALUE: block_decode:in_size <- $r8
	#DEBUG_VALUE: block_decode:out <- $r9
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
.Ltmp29:
	#DEBUG_VALUE: block_decode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: block_decode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: block_decode:action <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: block_decode:coder <- $rdi
	movq	%r8, %r15
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rdi, %rbx
.Ltmp30:
	.loc	0 80 17 prologue_end            # liblzma/common/block_decoder.c:80:17
	movl	(%rdi), %ecx
.Ltmp31:
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	.loc	0 80 2 is_stmt 0                # liblzma/common/block_decoder.c:80:2
	cmpl	$2, %ecx
	je	.LBB1_30
.Ltmp32:
# %bb.1:                                # %entry
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- $r9
	#DEBUG_VALUE: block_decode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: block_decode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: block_decode:action <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: block_decode:coder <- $rbx
	cmpl	$1, %ecx
	je	.LBB1_12
.Ltmp33:
# %bb.2:                                # %entry
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- $r9
	#DEBUG_VALUE: block_decode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: block_decode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: block_decode:action <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 0 2                           # liblzma/common/block_decoder.c:0:2
	movl	$11, %eax
	.loc	0 80 2                          # liblzma/common/block_decoder.c:80:2
	testl	%ecx, %ecx
	jne	.LBB1_34
.Ltmp34:
# %bb.3:                                # %sw.bb
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- $r9
	#DEBUG_VALUE: block_decode:out_pos <- [DW_OP_plus_uconst 80] [$rsp+0]
	#DEBUG_VALUE: block_decode:out_size <- [DW_OP_plus_uconst 88] [$rsp+0]
	#DEBUG_VALUE: block_decode:action <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 0 2                           # liblzma/common/block_decoder.c:0:2
	movl	96(%rsp), %eax
	movq	80(%rsp), %rbp
.Ltmp35:
	.loc	0 82 27 is_stmt 1               # liblzma/common/block_decoder.c:82:27
	movq	(%r14), %r13
.Ltmp36:
	#DEBUG_VALUE: in_start <- $r13
	.loc	0 83 28                         # liblzma/common/block_decoder.c:83:28
	movq	(%rbp), %rcx
.Ltmp37:
	#DEBUG_VALUE: out_start <- $rcx
	.loc	0 0 28 is_stmt 0                # liblzma/common/block_decoder.c:0:28
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
.Ltmp38:
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 85 53 is_stmt 1               # liblzma/common/block_decoder.c:85:53
	movq	8(%rbx), %rdi
	.loc	0 85 24 is_stmt 0               # liblzma/common/block_decoder.c:85:24
	subq	$8, %rsp
.Ltmp39:
	.cfi_adjust_cfa_offset 8
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	movq	%r9, 16(%rsp)                   # 8-byte Spill
.Ltmp40:
	#DEBUG_VALUE: block_decode:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	pushq	%rax
.Ltmp41:
	.cfi_adjust_cfa_offset 8
	pushq	104(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	*32(%rbx)
.Ltmp42:
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: ret <- $eax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	.loc	0 89 26 is_stmt 1               # liblzma/common/block_decoder.c:89:26
	movq	(%r14), %rsi
	.loc	0 89 34 is_stmt 0               # liblzma/common/block_decoder.c:89:34
	subq	%r13, %rsi
.Ltmp43:
	#DEBUG_VALUE: in_used <- $rsi
	#DEBUG_VALUE: out_used <- undef
	.loc	0 57 14 is_stmt 1               # liblzma/common/block_decoder.c:57:14
	movq	80(%rbx), %rdi
.Ltmp44:
	.loc	0 95 13                         # liblzma/common/block_decoder.c:95:13
	movq	96(%rbx), %rcx
.Ltmp45:
	#DEBUG_VALUE: update_size:limit <- $rcx
	.loc	0 0 13 is_stmt 0                # liblzma/common/block_decoder.c:0:13
	movabsq	$9223372036854775807, %rdx      # imm = 0x7FFFFFFFFFFFFFFF
.Ltmp46:
	#DEBUG_VALUE: update_size:add <- $rsi
	#DEBUG_VALUE: update_size:size <- [DW_OP_plus_uconst 80, DW_OP_stack_value] $rbx
	.loc	0 54 6 is_stmt 1                # liblzma/common/block_decoder.c:54:6
	cmpq	%rdx, %rcx
	cmovaeq	%rdx, %rcx
.Ltmp47:
	#DEBUG_VALUE: update_size:limit <- $rcx
	.loc	0 57 12                         # liblzma/common/block_decoder.c:57:12
	subq	%rdi, %rcx
.Ltmp48:
	setb	%r8b
	cmpq	%rsi, %rcx
	setb	%cl
	.loc	0 57 20 is_stmt 0               # liblzma/common/block_decoder.c:57:20
	orb	%r8b, %cl
	jne	.LBB1_4
.Ltmp49:
# %bb.5:                                # %lor.lhs.false
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_decode:coder <- $rbx
	#DEBUG_VALUE: in_start <- $r13
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $eax
	#DEBUG_VALUE: in_used <- $rsi
	#DEBUG_VALUE: update_size:add <- $rsi
	#DEBUG_VALUE: update_size:size <- [DW_OP_plus_uconst 80, DW_OP_stack_value] $rbx
	.loc	0 0 0                           # liblzma/common/block_decoder.c:0:0
	movq	(%rbp), %rcx
	movq	16(%rsp), %r9                   # 8-byte Reload
	subq	%r9, %rcx
.Ltmp50:
	#DEBUG_VALUE: out_used <- $rcx
	.loc	0 60 8 is_stmt 1                # liblzma/common/block_decoder.c:60:8
	addq	%rsi, %rdi
	movq	%rdi, 80(%rbx)
.Ltmp51:
	.loc	0 98 13                         # liblzma/common/block_decoder.c:98:13
	movq	72(%rbx), %rsi
.Ltmp52:
	.loc	0 57 14                         # liblzma/common/block_decoder.c:57:14
	movq	88(%rbx), %rdi
.Ltmp53:
	.loc	0 98 20                         # liblzma/common/block_decoder.c:98:20
	movq	24(%rsi), %r8
.Ltmp54:
	#DEBUG_VALUE: update_size:limit <- $r8
	#DEBUG_VALUE: update_size:add <- $rcx
	#DEBUG_VALUE: update_size:size <- [DW_OP_plus_uconst 88, DW_OP_stack_value] $rbx
	.loc	0 54 6                          # liblzma/common/block_decoder.c:54:6
	cmpq	%rdx, %r8
	cmovbq	%r8, %rdx
.Ltmp55:
	#DEBUG_VALUE: update_size:limit <- $rdx
	.loc	0 57 12                         # liblzma/common/block_decoder.c:57:12
	subq	%rdi, %rdx
.Ltmp56:
	setb	%r8b
	cmpq	%rcx, %rdx
	setb	%dl
	.loc	0 57 20 is_stmt 0               # liblzma/common/block_decoder.c:57:20
	orb	%r8b, %dl
	jne	.LBB1_4
.Ltmp57:
# %bb.7:                                # %if.end
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_decode:coder <- $rbx
	#DEBUG_VALUE: in_start <- $r13
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $eax
	#DEBUG_VALUE: out_used <- $rcx
	#DEBUG_VALUE: update_size:add <- $rcx
	#DEBUG_VALUE: update_size:size <- [DW_OP_plus_uconst 88, DW_OP_stack_value] $rbx
	.loc	0 60 8 is_stmt 1                # liblzma/common/block_decoder.c:60:8
	addq	%rcx, %rdi
	movq	%rdi, 88(%rbx)
.Ltmp58:
	.loc	0 101 29                        # liblzma/common/block_decoder.c:101:29
	leaq	112(%rbx), %rdi
	.loc	0 101 50 is_stmt 0              # liblzma/common/block_decoder.c:101:50
	movl	8(%rsi), %esi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	.loc	0 102 9 is_stmt 1               # liblzma/common/block_decoder.c:102:9
	addq	%r9, %rdx
	movl	%eax, %ebp
.Ltmp59:
	#DEBUG_VALUE: ret <- $ebp
	.loc	0 101 3                         # liblzma/common/block_decoder.c:101:3
	callq	lzma_check_update@PLT
.Ltmp60:
	.loc	0 0 3 is_stmt 0                 # liblzma/common/block_decoder.c:0:3
	movl	%ebp, %eax
.Ltmp61:
	.loc	0 104 11 is_stmt 1              # liblzma/common/block_decoder.c:104:11
	cmpl	$1, %ebp
.Ltmp62:
	.loc	0 104 7 is_stmt 0               # liblzma/common/block_decoder.c:104:7
	jne	.LBB1_34
.Ltmp63:
# %bb.8:                                # %if.end10
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_decode:coder <- $rbx
	#DEBUG_VALUE: in_start <- $r13
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $ebp
	.loc	0 110 13 is_stmt 1              # liblzma/common/block_decoder.c:110:13
	movq	72(%rbx), %rcx
	.loc	0 109 29                        # liblzma/common/block_decoder.c:109:29
	movq	80(%rbx), %rdx
	.loc	0 110 20                        # liblzma/common/block_decoder.c:110:20
	movq	16(%rcx), %rax
.Ltmp64:
	#DEBUG_VALUE: is_size_valid:reference <- $rax
	#DEBUG_VALUE: is_size_valid:size <- $rdx
	.loc	0 69 19                         # liblzma/common/block_decoder.c:69:19
	cmpq	$-1, %rax
	setne	%sil
	.loc	0 69 39 is_stmt 0               # liblzma/common/block_decoder.c:69:39
	cmpq	%rdx, %rax
	setne	%al
.Ltmp65:
	.loc	0 111 5 is_stmt 1               # liblzma/common/block_decoder.c:111:5
	testb	%al, %sil
	jne	.LBB1_4
.Ltmp66:
# %bb.9:                                # %lor.lhs.false15
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_decode:coder <- $rbx
	#DEBUG_VALUE: in_start <- $r13
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $ebp
	.loc	0 112 20                        # liblzma/common/block_decoder.c:112:20
	movq	24(%rcx), %rsi
.Ltmp67:
	#DEBUG_VALUE: is_size_valid:reference <- $rsi
	#DEBUG_VALUE: is_size_valid:size <- undef
	.loc	0 69 19                         # liblzma/common/block_decoder.c:69:19
	cmpq	$-1, %rsi
.Ltmp68:
	.loc	0 109 7                         # liblzma/common/block_decoder.c:109:7
	je	.LBB1_11
.Ltmp69:
# %bb.10:                               # %lor.lhs.false15
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_decode:coder <- $rbx
	#DEBUG_VALUE: in_start <- $r13
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $ebp
	.loc	0 0 7 is_stmt 0                 # liblzma/common/block_decoder.c:0:7
	movl	$9, %eax
	.loc	0 109 7                         # liblzma/common/block_decoder.c:109:7
	cmpq	88(%rbx), %rsi
	jne	.LBB1_34
.Ltmp70:
.LBB1_11:                               # %cleanup
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_decode:coder <- $rbx
	#DEBUG_VALUE: in_start <- $r13
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $ebp
	.loc	0 117 33 is_stmt 1              # liblzma/common/block_decoder.c:117:33
	movq	%rdx, 16(%rcx)
	.loc	0 118 10                        # liblzma/common/block_decoder.c:118:10
	movq	72(%rbx), %rax
	.loc	0 118 44 is_stmt 0              # liblzma/common/block_decoder.c:118:44
	movq	88(%rbx), %rcx
	.loc	0 118 35                        # liblzma/common/block_decoder.c:118:35
	movq	%rcx, 24(%rax)
	.loc	0 120 19 is_stmt 1              # liblzma/common/block_decoder.c:120:19
	movl	$1, (%rbx)
.Ltmp71:
.LBB1_12:                               # %sw.bb33
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 0 19 is_stmt 0                # liblzma/common/block_decoder.c:0:19
	movq	80(%rbx), %rcx
	.loc	0 127 3 is_stmt 1               # liblzma/common/block_decoder.c:127:3
	testb	$3, %cl
	je	.LBB1_28
.Ltmp72:
# %bb.13:                               # %while.body
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 128 8                         # liblzma/common/block_decoder.c:128:8
	movq	(%r14), %rdx
	xorl	%eax, %eax
	.loc	0 128 16 is_stmt 0              # liblzma/common/block_decoder.c:128:16
	cmpq	%r15, %rdx
.Ltmp73:
	.loc	0 128 8                         # liblzma/common/block_decoder.c:128:8
	jae	.LBB1_34
.Ltmp74:
# %bb.14:                               # %if.end37
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 135 4 is_stmt 1               # liblzma/common/block_decoder.c:135:4
	leaq	1(%rcx), %rsi
	movq	%rsi, 80(%rbx)
.Ltmp75:
	.loc	0 137 20                        # liblzma/common/block_decoder.c:137:20
	leaq	1(%rdx), %rdi
	movq	%rdi, (%r14)
	.loc	0 137 24 is_stmt 0              # liblzma/common/block_decoder.c:137:24
	cmpb	$0, (%r12,%rdx)
.Ltmp76:
	.loc	0 137 8                         # liblzma/common/block_decoder.c:137:8
	je	.LBB1_16
.Ltmp77:
.LBB1_4:
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 0 8                           # liblzma/common/block_decoder.c:0:8
	movl	$9, %eax
	.loc	0 137 8                         # liblzma/common/block_decoder.c:137:8
	jmp	.LBB1_34
.Ltmp78:
.LBB1_16:                               # %while.cond.1
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 127 3 is_stmt 1               # liblzma/common/block_decoder.c:127:3
	testb	$3, %sil
	je	.LBB1_28
.Ltmp79:
# %bb.17:                               # %while.body.1
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 128 8                         # liblzma/common/block_decoder.c:128:8
	movq	(%r14), %rdx
	.loc	0 128 16 is_stmt 0              # liblzma/common/block_decoder.c:128:16
	cmpq	%r15, %rdx
.Ltmp80:
	.loc	0 128 8                         # liblzma/common/block_decoder.c:128:8
	jae	.LBB1_34
.Ltmp81:
# %bb.18:                               # %if.end37.1
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 135 4 is_stmt 1               # liblzma/common/block_decoder.c:135:4
	leaq	2(%rcx), %rsi
	movq	%rsi, 80(%rbx)
.Ltmp82:
	.loc	0 137 20                        # liblzma/common/block_decoder.c:137:20
	leaq	1(%rdx), %rdi
	movq	%rdi, (%r14)
	.loc	0 137 24 is_stmt 0              # liblzma/common/block_decoder.c:137:24
	cmpb	$0, (%r12,%rdx)
.Ltmp83:
	.loc	0 137 8                         # liblzma/common/block_decoder.c:137:8
	jne	.LBB1_4
.Ltmp84:
# %bb.21:                               # %while.cond.2
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 127 3 is_stmt 1               # liblzma/common/block_decoder.c:127:3
	testb	$3, %sil
	je	.LBB1_28
.Ltmp85:
# %bb.22:                               # %while.body.2
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 128 8                         # liblzma/common/block_decoder.c:128:8
	movq	(%r14), %rdx
	.loc	0 128 16 is_stmt 0              # liblzma/common/block_decoder.c:128:16
	cmpq	%r15, %rdx
.Ltmp86:
	.loc	0 128 8                         # liblzma/common/block_decoder.c:128:8
	jae	.LBB1_34
.Ltmp87:
# %bb.23:                               # %if.end37.2
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 135 4 is_stmt 1               # liblzma/common/block_decoder.c:135:4
	leaq	3(%rcx), %rsi
	movq	%rsi, 80(%rbx)
.Ltmp88:
	.loc	0 137 20                        # liblzma/common/block_decoder.c:137:20
	leaq	1(%rdx), %rdi
	movq	%rdi, (%r14)
	.loc	0 137 24 is_stmt 0              # liblzma/common/block_decoder.c:137:24
	cmpb	$0, (%r12,%rdx)
.Ltmp89:
	.loc	0 137 8                         # liblzma/common/block_decoder.c:137:8
	jne	.LBB1_4
.Ltmp90:
# %bb.25:                               # %while.cond.3
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 127 3 is_stmt 1               # liblzma/common/block_decoder.c:127:3
	testb	$3, %sil
	je	.LBB1_28
.Ltmp91:
# %bb.26:                               # %while.body.3
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 128 8                         # liblzma/common/block_decoder.c:128:8
	movq	(%r14), %rdx
	.loc	0 128 16 is_stmt 0              # liblzma/common/block_decoder.c:128:16
	cmpq	%r15, %rdx
.Ltmp92:
	.loc	0 128 8                         # liblzma/common/block_decoder.c:128:8
	jae	.LBB1_34
.Ltmp93:
# %bb.27:                               # %if.end37.3
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 135 4 is_stmt 1               # liblzma/common/block_decoder.c:135:4
	addq	$4, %rcx
	movq	%rcx, 80(%rbx)
.Ltmp94:
	.loc	0 137 20                        # liblzma/common/block_decoder.c:137:20
	incq	%rdx
	movq	%rdx, (%r14)
	movl	$9, %eax
.Ltmp95:
	.loc	0 137 8 is_stmt 0               # liblzma/common/block_decoder.c:137:8
	jmp	.LBB1_34
.Ltmp96:
.LBB1_28:                               # %while.end
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 141 14 is_stmt 1              # liblzma/common/block_decoder.c:141:14
	movq	72(%rbx), %rax
	.loc	0 141 21 is_stmt 0              # liblzma/common/block_decoder.c:141:21
	movl	8(%rax), %esi
	.loc	0 141 27                        # liblzma/common/block_decoder.c:141:27
	testl	%esi, %esi
.Ltmp97:
	.loc	0 141 7                         # liblzma/common/block_decoder.c:141:7
	je	.LBB1_33
.Ltmp98:
# %bb.29:                               # %if.end49
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 144 29 is_stmt 1              # liblzma/common/block_decoder.c:144:29
	leaq	112(%rbx), %rdi
	.loc	0 144 3 is_stmt 0               # liblzma/common/block_decoder.c:144:3
	callq	lzma_check_finish@PLT
.Ltmp99:
	.loc	0 145 19 is_stmt 1              # liblzma/common/block_decoder.c:145:19
	movl	$2, (%rbx)
.Ltmp100:
.LBB1_30:                               # %sw.bb54
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	.loc	0 150 52                        # liblzma/common/block_decoder.c:150:52
	movq	72(%rbx), %rax
	.loc	0 150 59 is_stmt 0              # liblzma/common/block_decoder.c:150:59
	movl	8(%rax), %edi
	.loc	0 150 29                        # liblzma/common/block_decoder.c:150:29
	callq	lzma_check_size@PLT
.Ltmp101:
	movl	%eax, %r13d
.Ltmp102:
	#DEBUG_VALUE: check_size <- $r13d
	.loc	0 151 43 is_stmt 1              # liblzma/common/block_decoder.c:151:43
	movq	72(%rbx), %rcx
	.loc	0 151 50 is_stmt 0              # liblzma/common/block_decoder.c:151:50
	addq	$40, %rcx
	.loc	0 152 13 is_stmt 1              # liblzma/common/block_decoder.c:152:13
	leaq	104(%rbx), %r8
	.loc	0 151 3                         # liblzma/common/block_decoder.c:151:3
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r13, %r9
	callq	lzma_bufcpy@PLT
.Ltmp103:
	.loc	0 0 3 is_stmt 0                 # liblzma/common/block_decoder.c:0:3
	xorl	%eax, %eax
.Ltmp104:
	.loc	0 153 24 is_stmt 1              # liblzma/common/block_decoder.c:153:24
	cmpq	%r13, 104(%rbx)
.Ltmp105:
	.loc	0 153 7 is_stmt 0               # liblzma/common/block_decoder.c:153:7
	jb	.LBB1_34
.Ltmp106:
# %bb.31:                               # %if.end65
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	#DEBUG_VALUE: check_size <- $r13d
	.loc	0 159 38 is_stmt 1              # liblzma/common/block_decoder.c:159:38
	movq	72(%rbx), %rax
	.loc	0 159 45 is_stmt 0              # liblzma/common/block_decoder.c:159:45
	movl	8(%rax), %edi
	.loc	0 159 7                         # liblzma/common/block_decoder.c:159:7
	callq	lzma_check_is_supported@PLT
.Ltmp107:
	testb	%al, %al
	.loc	0 160 5 is_stmt 1               # liblzma/common/block_decoder.c:160:5
	je	.LBB1_33
.Ltmp108:
# %bb.32:                               # %land.lhs.true
	#DEBUG_VALUE: block_decode:pcoder <- $rbx
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_decode:coder <- $rbx
	#DEBUG_VALUE: check_size <- $r13d
	.loc	0 160 22 is_stmt 0              # liblzma/common/block_decoder.c:160:22
	movq	72(%rbx), %rdi
	.loc	0 160 29                        # liblzma/common/block_decoder.c:160:29
	addq	$40, %rdi
	.loc	0 161 13 is_stmt 1              # liblzma/common/block_decoder.c:161:13
	addq	$112, %rbx
.Ltmp109:
	#DEBUG_VALUE: block_decode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 160 8                         # liblzma/common/block_decoder.c:160:8
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	bcmp@PLT
.Ltmp110:
	movl	%eax, %ecx
	movl	$9, %eax
	.loc	0 162 18                        # liblzma/common/block_decoder.c:162:18
	testl	%ecx, %ecx
.Ltmp111:
	.loc	0 159 7                         # liblzma/common/block_decoder.c:159:7
	jne	.LBB1_34
.Ltmp112:
.LBB1_33:                               # %if.end80
	#DEBUG_VALUE: block_decode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 0 7 is_stmt 0                 # liblzma/common/block_decoder.c:0:7
	movl	$1, %eax
.Ltmp113:
.LBB1_34:                               # %cleanup82
	#DEBUG_VALUE: block_decode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: block_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_decode:in <- $r12
	#DEBUG_VALUE: block_decode:in_pos <- $r14
	#DEBUG_VALUE: block_decode:in_size <- $r15
	#DEBUG_VALUE: block_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 170 1 epilogue_begin is_stmt 1 # liblzma/common/block_decoder.c:170:1
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
.Ltmp114:
	#DEBUG_VALUE: block_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp115:
	#DEBUG_VALUE: block_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp116:
	#DEBUG_VALUE: block_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp117:
.Lfunc_end1:
	.size	block_decode, .Lfunc_end1-block_decode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_decoder_end
	.type	block_decoder_end,@function
block_decoder_end:                      # @block_decoder_end
.Lfunc_begin2:
	.loc	0 175 0                         # liblzma/common/block_decoder.c:175:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: block_decoder_end:pcoder <- $rdi
	#DEBUG_VALUE: block_decoder_end:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp118:
	#DEBUG_VALUE: block_decoder_end:coder <- $rdi
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp119:
	.loc	0 177 24 prologue_end           # liblzma/common/block_decoder.c:177:24
	addq	$8, %rdi
.Ltmp120:
	#DEBUG_VALUE: block_decoder_end:coder <- $r14
	#DEBUG_VALUE: block_decoder_end:pcoder <- $r14
	.loc	0 177 2 is_stmt 0               # liblzma/common/block_decoder.c:177:2
	callq	lzma_next_end@PLT
.Ltmp121:
	#DEBUG_VALUE: block_decoder_end:allocator <- $rbx
	.loc	0 178 2 is_stmt 1               # liblzma/common/block_decoder.c:178:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 178 2 epilogue_begin is_stmt 0 # liblzma/common/block_decoder.c:178:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp122:
	#DEBUG_VALUE: block_decoder_end:allocator <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp123:
	#DEBUG_VALUE: block_decoder_end:coder <- $rdi
	#DEBUG_VALUE: block_decoder_end:pcoder <- $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp124:
.Lfunc_end2:
	.size	block_decoder_end, .Lfunc_end2-block_decoder_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_block_decoder              # -- Begin function lzma_block_decoder
	.p2align	4, 0x90
	.type	lzma_block_decoder,@function
lzma_block_decoder:                     # @lzma_block_decoder
.Lfunc_begin3:
	.loc	0 237 0 is_stmt 1               # liblzma/common/block_decoder.c:237:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_block_decoder:strm <- $rdi
	#DEBUG_VALUE: lzma_block_decoder:block <- $rsi
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
.Ltmp125:
	.loc	0 238 2 prologue_end            # liblzma/common/block_decoder.c:238:2
	callq	lzma_strm_init@PLT
.Ltmp126:
	#DEBUG_VALUE: lzma_block_decoder:block <- $r14
	#DEBUG_VALUE: lzma_block_decoder:strm <- $rbx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 238 2 is_stmt 0               # liblzma/common/block_decoder.c:238:2
	testl	%eax, %eax
	je	.LBB3_1
.Ltmp127:
# %bb.4:                                # %return
	#DEBUG_VALUE: lzma_block_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_block_decoder:block <- $r14
	.loc	0 244 1 epilogue_begin is_stmt 1 # liblzma/common/block_decoder.c:244:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp128:
	#DEBUG_VALUE: lzma_block_decoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp129:
	#DEBUG_VALUE: lzma_block_decoder:block <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp130:
.LBB3_1:                                # %do.end
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_block_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_block_decoder:block <- $r14
	.loc	0 238 2                         # liblzma/common/block_decoder.c:238:2
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movq	%r14, %rdx
	callq	lzma_block_decoder_init
.Ltmp131:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 238 2 is_stmt 0               # liblzma/common/block_decoder.c:238:2
	testl	%eax, %eax
.Ltmp132:
	.loc	0 238 2                         # liblzma/common/block_decoder.c:238:2
	je	.LBB3_3
.Ltmp133:
# %bb.2:                                # %cleanup7
	#DEBUG_VALUE: lzma_block_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_block_decoder:block <- $r14
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 238 2                         # liblzma/common/block_decoder.c:238:2
	movq	%rbx, %rdi
	movl	%eax, %ebx
.Ltmp134:
	#DEBUG_VALUE: ret_ <- $ebx
	#DEBUG_VALUE: lzma_block_decoder:strm <- $rdi
	callq	lzma_end@PLT
.Ltmp135:
	#DEBUG_VALUE: lzma_block_decoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 2                           # liblzma/common/block_decoder.c:0:2
	movl	%ebx, %eax
.Ltmp136:
	.loc	0 244 1 epilogue_begin is_stmt 1 # liblzma/common/block_decoder.c:244:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp137:
	#DEBUG_VALUE: ret_ <- $eax
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp138:
	#DEBUG_VALUE: lzma_block_decoder:block <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp139:
.LBB3_3:                                # %do.end10
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_block_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_block_decoder:block <- $r14
	.loc	0 240 8                         # liblzma/common/block_decoder.c:240:8
	movq	56(%rbx), %rax
	.loc	0 240 46 is_stmt 0              # liblzma/common/block_decoder.c:240:46
	movb	$1, 80(%rax)
	.loc	0 241 8 is_stmt 1               # liblzma/common/block_decoder.c:241:8
	movq	56(%rbx), %rax
	.loc	0 241 49 is_stmt 0              # liblzma/common/block_decoder.c:241:49
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	.loc	0 244 1 epilogue_begin is_stmt 1 # liblzma/common/block_decoder.c:244:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp140:
	#DEBUG_VALUE: lzma_block_decoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp141:
	#DEBUG_VALUE: lzma_block_decoder:block <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp142:
.Lfunc_end3:
	.size	lzma_block_decoder, .Lfunc_end3-lzma_block_decoder
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	32                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	115                             # DW_OP_breg3
	.byte	208                             # 80
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	115                             # DW_OP_breg3
	.byte	216                             # 88
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp134-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp134-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
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
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x97e DW_TAG_compile_unit
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
	.byte	2                               # Abbrev [2] 0x86:0xc DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x8e:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x92:0x60 DW_TAG_structure_type
	.byte	110                             # DW_AT_name
	.byte	216                             # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x97:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	160                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0xa0:0x12 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xa8:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xab:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xae:0x3 DW_TAG_enumerator
	.byte	28                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xb2:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	242                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xbb:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	778                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xc4:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xcd:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xd6:0x9 DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xdf:0x9 DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xe8:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	1119                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xf2:0x8 DW_TAG_typedef
	.long	250                             # DW_AT_type
	.byte	60                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xfa:0x4e DW_TAG_structure_type
	.byte	59                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xff:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x108:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x111:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x11a:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	373                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x123:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	611                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x12c:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	636                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x135:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	670                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x13e:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	706                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x148:0x5 DW_TAG_pointer_type
	.long	333                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x14d:0x4 DW_TAG_typedef
	.byte	31                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x151:0x8 DW_TAG_typedef
	.long	345                             # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x159:0x8 DW_TAG_typedef
	.long	353                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x161:0x8 DW_TAG_typedef
	.long	361                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x169:0x4 DW_TAG_base_type
	.byte	33                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x16d:0x8 DW_TAG_typedef
	.long	361                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x175:0x8 DW_TAG_typedef
	.long	381                             # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x17d:0x5 DW_TAG_pointer_type
	.long	386                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x182:0x33 DW_TAG_subroutine_type
	.long	437                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x187:0x5 DW_TAG_formal_parameter
	.long	328                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x18c:0x5 DW_TAG_formal_parameter
	.long	445                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x191:0x5 DW_TAG_formal_parameter
	.long	547                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x196:0x5 DW_TAG_formal_parameter
	.long	582                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x19b:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1a0:0x5 DW_TAG_formal_parameter
	.long	592                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1a5:0x5 DW_TAG_formal_parameter
	.long	582                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1aa:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1af:0x5 DW_TAG_formal_parameter
	.long	602                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1b5:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1bd:0x5 DW_TAG_pointer_type
	.long	450                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1c2:0x9 DW_TAG_typedef
	.long	459                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1cb:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x1d0:0xa DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	495                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1da:0xa DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1e4:0xa DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1ef:0x5 DW_TAG_pointer_type
	.long	500                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1f4:0x15 DW_TAG_subroutine_type
	.long	521                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x1f9:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1fe:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x203:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x209:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0x20a:0x8 DW_TAG_typedef
	.long	361                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x212:0x5 DW_TAG_pointer_type
	.long	535                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x217:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x218:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x21d:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x223:0x5 DW_TAG_restrict_type
	.long	552                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x228:0x5 DW_TAG_pointer_type
	.long	557                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x22d:0x5 DW_TAG_const_type
	.long	562                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x232:0x8 DW_TAG_typedef
	.long	570                             # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x23a:0x8 DW_TAG_typedef
	.long	578                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x242:0x4 DW_TAG_base_type
	.byte	46                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x246:0x5 DW_TAG_restrict_type
	.long	587                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x24b:0x5 DW_TAG_pointer_type
	.long	522                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x250:0x5 DW_TAG_restrict_type
	.long	597                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x255:0x5 DW_TAG_pointer_type
	.long	562                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x25a:0x9 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x263:0x8 DW_TAG_typedef
	.long	619                             # DW_AT_type
	.byte	52                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x26b:0x5 DW_TAG_pointer_type
	.long	624                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x270:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x271:0x5 DW_TAG_formal_parameter
	.long	328                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x276:0x5 DW_TAG_formal_parameter
	.long	445                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x27c:0x5 DW_TAG_pointer_type
	.long	641                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x281:0xb DW_TAG_subroutine_type
	.long	652                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x286:0x5 DW_TAG_formal_parameter
	.long	660                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x28c:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x294:0x5 DW_TAG_pointer_type
	.long	665                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x299:0x5 DW_TAG_const_type
	.long	333                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x29e:0x5 DW_TAG_pointer_type
	.long	675                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2a3:0x1a DW_TAG_subroutine_type
	.long	437                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x2a8:0x5 DW_TAG_formal_parameter
	.long	328                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2ad:0x5 DW_TAG_formal_parameter
	.long	701                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2b2:0x5 DW_TAG_formal_parameter
	.long	701                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2b7:0x5 DW_TAG_formal_parameter
	.long	345                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2bd:0x5 DW_TAG_pointer_type
	.long	345                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2c2:0x5 DW_TAG_pointer_type
	.long	711                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2c7:0x1a DW_TAG_subroutine_type
	.long	437                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x2cc:0x5 DW_TAG_formal_parameter
	.long	328                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2d1:0x5 DW_TAG_formal_parameter
	.long	445                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2d6:0x5 DW_TAG_formal_parameter
	.long	737                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2db:0x5 DW_TAG_formal_parameter
	.long	737                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2e1:0x5 DW_TAG_pointer_type
	.long	742                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2e6:0x5 DW_TAG_const_type
	.long	747                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2eb:0x8 DW_TAG_typedef
	.long	755                             # DW_AT_type
	.byte	58                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x2f3:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x2f7:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x300:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x30a:0x5 DW_TAG_pointer_type
	.long	783                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x30f:0x8 DW_TAG_typedef
	.long	791                             # DW_AT_type
	.byte	97                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x317:0x113 DW_TAG_structure_type
	.byte	208                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x31b:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x324:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x32d:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	652                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x336:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x33f:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x348:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x351:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	1087                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x35a:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x363:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x36c:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x375:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x37e:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x387:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x390:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x399:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3a2:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3ab:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3b4:0x9 DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3bd:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	1103                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3c6:0x9 DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	1103                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	188                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3cf:0x9 DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	1103                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3d8:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	1103                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3e1:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1111                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	200                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3ea:0x9 DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1111                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	201                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3f3:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	1111                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.byte	202                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x3fc:0x9 DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	1111                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	203                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x405:0x9 DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	1111                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	204                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x40e:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	1111                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	205                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x417:0x9 DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	1111                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	206                             # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x420:0x9 DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	1111                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	207                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x42a:0x8 DW_TAG_typedef
	.long	1074                            # DW_AT_type
	.byte	64                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x432:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	63                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x43a:0x5 DW_TAG_pointer_type
	.long	747                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x43f:0xc DW_TAG_array_type
	.long	562                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x444:0x6 DW_TAG_subrange_type
	.long	1099                            # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x44b:0x4 DW_TAG_base_type
	.byte	71                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x44f:0x8 DW_TAG_typedef
	.long	134                             # DW_AT_type
	.byte	84                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x457:0x8 DW_TAG_typedef
	.long	578                             # DW_AT_type
	.byte	89                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x45f:0x8 DW_TAG_typedef
	.long	1127                            # DW_AT_type
	.byte	109                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x467:0x6e DW_TAG_structure_type
	.byte	104                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x46b:0x9 DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1140                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x474:0x20 DW_TAG_union_type
	.byte	64                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x478:0x9 DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	1087                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x481:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	1237                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x48a:0x9 DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	1249                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x494:0x9 DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	1181                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x49d:0x37 DW_TAG_union_type
	.byte	40                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4a1:0x9 DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4aa:0x9 DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	345                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4b3:0x9 DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	1212                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x4bc:0x17 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4c0:0x9 DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	1261                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4c9:0x9 DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	345                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x4d5:0xc DW_TAG_array_type
	.long	1066                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x4da:0x6 DW_TAG_subrange_type
	.long	1099                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x4e1:0xc DW_TAG_array_type
	.long	345                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x4e6:0x6 DW_TAG_subrange_type
	.long	1099                            # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x4ed:0xc DW_TAG_array_type
	.long	1066                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x4f2:0x6 DW_TAG_subrange_type
	.long	1099                            # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x4f9:0x4e DW_TAG_structure_type
	.byte	121                             # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4fe:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	242                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x507:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	1296                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0x510:0x1b DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x518:0x3 DW_TAG_enumerator
	.byte	111                             # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x51b:0x3 DW_TAG_enumerator
	.byte	112                             # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x51e:0x3 DW_TAG_enumerator
	.byte	113                             # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x521:0x3 DW_TAG_enumerator
	.byte	114                             # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x524:0x3 DW_TAG_enumerator
	.byte	115                             # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x527:0x3 DW_TAG_enumerator
	.byte	116                             # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x52b:0x9 DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x534:0x9 DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	1351                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x53d:0x9 DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	1363                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x547:0xc DW_TAG_array_type
	.long	1363                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x54c:0x6 DW_TAG_subrange_type
	.long	1099                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x553:0x4 DW_TAG_base_type
	.byte	119                             # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x557:0x5 DW_TAG_pointer_type
	.long	146                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x55c:0x4f DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	437                             # DW_AT_type
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x56b:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.long	1466                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x574:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x57d:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.long	778                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x586:0x6 DW_TAG_call_site
	.long	1451                            # DW_AT_call_origin
	.byte	1                               # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x58c:0x6 DW_TAG_call_site
	.long	1471                            # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x592:0x6 DW_TAG_call_site
	.long	1496                            # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x598:0x6 DW_TAG_call_site
	.long	1515                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x59e:0x6 DW_TAG_call_site
	.long	1529                            # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	27                              # Abbrev [27] 0x5a4:0x6 DW_TAG_call_site
	.long	1549                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	6                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x5ab:0xf DW_TAG_subprogram
	.byte	122                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5af:0x5 DW_TAG_formal_parameter
	.long	1466                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5b4:0x5 DW_TAG_formal_parameter
	.long	445                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5ba:0x5 DW_TAG_pointer_type
	.long	242                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x5bf:0xf DW_TAG_subprogram
	.byte	123                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	337                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5c8:0x5 DW_TAG_formal_parameter
	.long	1486                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5ce:0x5 DW_TAG_pointer_type
	.long	1491                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x5d3:0x5 DW_TAG_const_type
	.long	783                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x5d8:0x13 DW_TAG_subprogram
	.byte	124                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	521                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5e0:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5e5:0x5 DW_TAG_formal_parameter
	.long	445                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x5eb:0xe DW_TAG_subprogram
	.byte	125                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1066                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5f3:0x5 DW_TAG_formal_parameter
	.long	652                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x5f9:0xf DW_TAG_subprogram
	.byte	126                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5fd:0x5 DW_TAG_formal_parameter
	.long	1544                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x602:0x5 DW_TAG_formal_parameter
	.long	652                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x608:0x5 DW_TAG_pointer_type
	.long	1119                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x60d:0x18 DW_TAG_subprogram
	.byte	127                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	437                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x615:0x5 DW_TAG_formal_parameter
	.long	1466                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x61a:0x5 DW_TAG_formal_parameter
	.long	445                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x61f:0x5 DW_TAG_formal_parameter
	.long	737                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x625:0x21 DW_TAG_subprogram
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1363                            # DW_AT_type
                                        # DW_AT_inline
	.byte	32                              # Abbrev [32] 0x62d:0x8 DW_TAG_formal_parameter
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	1606                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x635:0x8 DW_TAG_formal_parameter
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	337                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x63d:0x8 DW_TAG_formal_parameter
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	337                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x646:0x5 DW_TAG_pointer_type
	.long	337                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x64b:0x19 DW_TAG_subprogram
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1363                            # DW_AT_type
                                        # DW_AT_inline
	.byte	32                              # Abbrev [32] 0x653:0x8 DW_TAG_formal_parameter
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	337                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x65b:0x8 DW_TAG_formal_parameter
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	337                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x664:0x13d DW_TAG_subprogram
	.byte	7                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\260\177"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	437                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x677:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	328                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x680:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x689:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.long	547                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x692:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.long	582                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x69b:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	522                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x6a4:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	592                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x6ad:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	582                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x6b6:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	522                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x6bf:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	161                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	602                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x6c8:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	1367                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x6d1:0x9d DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp71-.Ltmp35                 # DW_AT_high_pc
	.byte	34                              # Abbrev [34] 0x6d7:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	2431                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x6e0:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	163                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	2431                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x6e9:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	164                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	2436                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x6f2:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	165                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	2431                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x6fb:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	166                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	2431                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x704:0x1c DW_TAG_inlined_subroutine
	.long	1573                            # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	94                              # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	37                              # Abbrev [37] 0x70d:0x6 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.long	1581                            # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x713:0x6 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.long	1589                            # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x719:0x6 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.long	1597                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x720:0x1c DW_TAG_inlined_subroutine
	.long	1573                            # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	96                              # DW_AT_call_line
	.byte	8                               # DW_AT_call_column
	.byte	37                              # Abbrev [37] 0x729:0x6 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.long	1581                            # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x72f:0x6 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.long	1589                            # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x735:0x6 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.long	1597                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x73c:0x1c DW_TAG_inlined_subroutine
	.long	1611                            # DW_AT_abstract_origin
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp65-.Ltmp64                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	109                             # DW_AT_call_line
	.byte	8                               # DW_AT_call_column
	.byte	39                              # Abbrev [39] 0x749:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	1619                            # DW_AT_abstract_origin
	.byte	39                              # Abbrev [39] 0x750:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	80
	.long	1627                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x758:0x15 DW_TAG_inlined_subroutine
	.long	1611                            # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp68-.Ltmp67                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	111                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	39                              # Abbrev [39] 0x765:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	1627                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x76e:0x10 DW_TAG_lexical_block
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp112-.Ltmp100               # DW_AT_high_pc
	.byte	34                              # Abbrev [34] 0x774:0x9 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	167                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.long	2431                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x77e:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	83
	.byte	12                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x782:0x6 DW_TAG_call_site
	.long	1953                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x788:0x6 DW_TAG_call_site
	.long	1978                            # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x78e:0x6 DW_TAG_call_site
	.long	1515                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x794:0x6 DW_TAG_call_site
	.long	1993                            # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x79a:0x6 DW_TAG_call_site
	.long	2032                            # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x7a1:0x19 DW_TAG_subprogram
	.byte	133                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x7a5:0x5 DW_TAG_formal_parameter
	.long	1544                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7aa:0x5 DW_TAG_formal_parameter
	.long	652                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7af:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7b4:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x7ba:0xf DW_TAG_subprogram
	.byte	134                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x7be:0x5 DW_TAG_formal_parameter
	.long	1544                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7c3:0x5 DW_TAG_formal_parameter
	.long	652                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x7c9:0x27 DW_TAG_subprogram
	.byte	135                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	522                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x7d1:0x5 DW_TAG_formal_parameter
	.long	547                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7d6:0x5 DW_TAG_formal_parameter
	.long	582                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7db:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7e0:0x5 DW_TAG_formal_parameter
	.long	592                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7e5:0x5 DW_TAG_formal_parameter
	.long	582                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7ea:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x7f0:0xe DW_TAG_subprogram
	.byte	136                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1111                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x7f8:0x5 DW_TAG_formal_parameter
	.long	652                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x7fe:0x33 DW_TAG_subprogram
	.byte	18                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	25                              # Abbrev [25] 0x809:0x9 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.long	328                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x812:0x9 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_location
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x81b:0x9 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.long	1367                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x824:0x6 DW_TAG_call_site
	.long	1451                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	27                              # Abbrev [27] 0x82a:0x6 DW_TAG_call_site
	.long	2097                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	20                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x831:0xf DW_TAG_subprogram
	.byte	137                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x835:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x83a:0x5 DW_TAG_formal_parameter
	.long	445                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x840:0x50 DW_TAG_subprogram
	.byte	21                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	437                             # DW_AT_type
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x84f:0x9 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.byte	168                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.long	2206                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x858:0x9 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_location
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.long	778                             # DW_AT_type
	.byte	42                              # Abbrev [42] 0x861:0x1c DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0x863:0x9 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.long	2436                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x86c:0x10 DW_TAG_lexical_block
	.byte	22                              # DW_AT_low_pc
	.long	.Ltmp127-.Ltmp125               # DW_AT_high_pc
	.byte	34                              # Abbrev [34] 0x872:0x9 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.long	2436                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x87d:0x6 DW_TAG_call_site
	.long	2192                            # DW_AT_call_origin
	.byte	23                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x883:0x6 DW_TAG_call_site
	.long	1372                            # DW_AT_call_origin
	.byte	24                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x889:0x6 DW_TAG_call_site
	.long	2420                            # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x890:0xe DW_TAG_subprogram
	.byte	138                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	437                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x898:0x5 DW_TAG_formal_parameter
	.long	2206                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x89e:0x5 DW_TAG_pointer_type
	.long	2211                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x8a3:0x9 DW_TAG_typedef
	.long	2220                            # DW_AT_type
	.byte	148                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x8ac:0xba DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x8b1:0xa DW_TAG_member
	.byte	139                             # DW_AT_name
	.long	552                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8bb:0xa DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8c5:0xa DW_TAG_member
	.byte	140                             # DW_AT_name
	.long	345                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8cf:0xa DW_TAG_member
	.byte	141                             # DW_AT_name
	.long	597                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8d9:0xa DW_TAG_member
	.byte	142                             # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8e3:0xa DW_TAG_member
	.byte	143                             # DW_AT_name
	.long	345                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8ed:0xa DW_TAG_member
	.byte	144                             # DW_AT_name
	.long	445                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8f7:0xa DW_TAG_member
	.byte	145                             # DW_AT_name
	.long	2406                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x901:0xa DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x90b:0xa DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x915:0xa DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x91f:0xa DW_TAG_member
	.byte	147                             # DW_AT_name
	.long	521                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x929:0xa DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	345                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x933:0xa DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	345                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x93d:0xa DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x947:0xa DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x951:0xa DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	1103                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x95b:0xa DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	1103                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x966:0x5 DW_TAG_pointer_type
	.long	2411                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x96b:0x9 DW_TAG_typedef
	.long	1273                            # DW_AT_type
	.byte	146                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	43                              # Abbrev [43] 0x974:0xb DW_TAG_subprogram
	.byte	149                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x979:0x5 DW_TAG_formal_parameter
	.long	2206                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x97f:0x5 DW_TAG_const_type
	.long	522                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x984:0x5 DW_TAG_const_type
	.long	437                             # DW_AT_type
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
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	684                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/block_decoder.c" # string offset=105
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
	.asciz	"sequence"                      # string offset=516
.Linfo_string26:
	.asciz	"SEQ_CODE"                      # string offset=525
.Linfo_string27:
	.asciz	"SEQ_PADDING"                   # string offset=534
.Linfo_string28:
	.asciz	"SEQ_CHECK"                     # string offset=546
.Linfo_string29:
	.asciz	"next"                          # string offset=556
.Linfo_string30:
	.asciz	"coder"                         # string offset=561
.Linfo_string31:
	.asciz	"lzma_coder"                    # string offset=567
.Linfo_string32:
	.asciz	"id"                            # string offset=578
.Linfo_string33:
	.asciz	"unsigned long"                 # string offset=581
.Linfo_string34:
	.asciz	"__uint64_t"                    # string offset=595
.Linfo_string35:
	.asciz	"uint64_t"                      # string offset=606
.Linfo_string36:
	.asciz	"lzma_vli"                      # string offset=615
.Linfo_string37:
	.asciz	"init"                          # string offset=624
.Linfo_string38:
	.asciz	"uintptr_t"                     # string offset=629
.Linfo_string39:
	.asciz	"code"                          # string offset=639
.Linfo_string40:
	.asciz	"lzma_ret"                      # string offset=644
.Linfo_string41:
	.asciz	"alloc"                         # string offset=653
.Linfo_string42:
	.asciz	"size_t"                        # string offset=659
.Linfo_string43:
	.asciz	"free"                          # string offset=666
.Linfo_string44:
	.asciz	"opaque"                        # string offset=671
.Linfo_string45:
	.asciz	"lzma_allocator"                # string offset=678
.Linfo_string46:
	.asciz	"unsigned char"                 # string offset=693
.Linfo_string47:
	.asciz	"__uint8_t"                     # string offset=707
.Linfo_string48:
	.asciz	"uint8_t"                       # string offset=717
.Linfo_string49:
	.asciz	"lzma_action"                   # string offset=725
.Linfo_string50:
	.asciz	"lzma_code_function"            # string offset=737
.Linfo_string51:
	.asciz	"end"                           # string offset=756
.Linfo_string52:
	.asciz	"lzma_end_function"             # string offset=760
.Linfo_string53:
	.asciz	"get_check"                     # string offset=778
.Linfo_string54:
	.asciz	"lzma_check"                    # string offset=788
.Linfo_string55:
	.asciz	"memconfig"                     # string offset=799
.Linfo_string56:
	.asciz	"update"                        # string offset=809
.Linfo_string57:
	.asciz	"options"                       # string offset=816
.Linfo_string58:
	.asciz	"lzma_filter"                   # string offset=824
.Linfo_string59:
	.asciz	"lzma_next_coder_s"             # string offset=836
.Linfo_string60:
	.asciz	"lzma_next_coder"               # string offset=854
.Linfo_string61:
	.asciz	"block"                         # string offset=870
.Linfo_string62:
	.asciz	"version"                       # string offset=876
.Linfo_string63:
	.asciz	"__uint32_t"                    # string offset=884
.Linfo_string64:
	.asciz	"uint32_t"                      # string offset=895
.Linfo_string65:
	.asciz	"header_size"                   # string offset=904
.Linfo_string66:
	.asciz	"check"                         # string offset=916
.Linfo_string67:
	.asciz	"compressed_size"               # string offset=922
.Linfo_string68:
	.asciz	"uncompressed_size"             # string offset=938
.Linfo_string69:
	.asciz	"filters"                       # string offset=956
.Linfo_string70:
	.asciz	"raw_check"                     # string offset=964
.Linfo_string71:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=974
.Linfo_string72:
	.asciz	"reserved_ptr1"                 # string offset=994
.Linfo_string73:
	.asciz	"reserved_ptr2"                 # string offset=1008
.Linfo_string74:
	.asciz	"reserved_ptr3"                 # string offset=1022
.Linfo_string75:
	.asciz	"reserved_int1"                 # string offset=1036
.Linfo_string76:
	.asciz	"reserved_int2"                 # string offset=1050
.Linfo_string77:
	.asciz	"reserved_int3"                 # string offset=1064
.Linfo_string78:
	.asciz	"reserved_int4"                 # string offset=1078
.Linfo_string79:
	.asciz	"reserved_int5"                 # string offset=1092
.Linfo_string80:
	.asciz	"reserved_int6"                 # string offset=1106
.Linfo_string81:
	.asciz	"reserved_int7"                 # string offset=1120
.Linfo_string82:
	.asciz	"reserved_int8"                 # string offset=1134
.Linfo_string83:
	.asciz	"reserved_enum1"                # string offset=1148
.Linfo_string84:
	.asciz	"lzma_reserved_enum"            # string offset=1163
.Linfo_string85:
	.asciz	"reserved_enum2"                # string offset=1182
.Linfo_string86:
	.asciz	"reserved_enum3"                # string offset=1197
.Linfo_string87:
	.asciz	"reserved_enum4"                # string offset=1212
.Linfo_string88:
	.asciz	"reserved_bool1"                # string offset=1227
.Linfo_string89:
	.asciz	"lzma_bool"                     # string offset=1242
.Linfo_string90:
	.asciz	"reserved_bool2"                # string offset=1252
.Linfo_string91:
	.asciz	"reserved_bool3"                # string offset=1267
.Linfo_string92:
	.asciz	"reserved_bool4"                # string offset=1282
.Linfo_string93:
	.asciz	"reserved_bool5"                # string offset=1297
.Linfo_string94:
	.asciz	"reserved_bool6"                # string offset=1312
.Linfo_string95:
	.asciz	"reserved_bool7"                # string offset=1327
.Linfo_string96:
	.asciz	"reserved_bool8"                # string offset=1342
.Linfo_string97:
	.asciz	"lzma_block"                    # string offset=1357
.Linfo_string98:
	.asciz	"compressed_limit"              # string offset=1368
.Linfo_string99:
	.asciz	"check_pos"                     # string offset=1385
.Linfo_string100:
	.asciz	"buffer"                        # string offset=1395
.Linfo_string101:
	.asciz	"u8"                            # string offset=1402
.Linfo_string102:
	.asciz	"u32"                           # string offset=1405
.Linfo_string103:
	.asciz	"u64"                           # string offset=1409
.Linfo_string104:
	.asciz	"state"                         # string offset=1413
.Linfo_string105:
	.asciz	"crc32"                         # string offset=1419
.Linfo_string106:
	.asciz	"crc64"                         # string offset=1425
.Linfo_string107:
	.asciz	"sha256"                        # string offset=1431
.Linfo_string108:
	.asciz	"size"                          # string offset=1438
.Linfo_string109:
	.asciz	"lzma_check_state"              # string offset=1443
.Linfo_string110:
	.asciz	"lzma_coder_s"                  # string offset=1460
.Linfo_string111:
	.asciz	"ISEQ_RUN"                      # string offset=1473
.Linfo_string112:
	.asciz	"ISEQ_SYNC_FLUSH"               # string offset=1482
.Linfo_string113:
	.asciz	"ISEQ_FULL_FLUSH"               # string offset=1498
.Linfo_string114:
	.asciz	"ISEQ_FINISH"                   # string offset=1514
.Linfo_string115:
	.asciz	"ISEQ_END"                      # string offset=1526
.Linfo_string116:
	.asciz	"ISEQ_ERROR"                    # string offset=1535
.Linfo_string117:
	.asciz	"avail_in"                      # string offset=1546
.Linfo_string118:
	.asciz	"supported_actions"             # string offset=1555
.Linfo_string119:
	.asciz	"_Bool"                         # string offset=1573
.Linfo_string120:
	.asciz	"allow_buf_error"               # string offset=1579
.Linfo_string121:
	.asciz	"lzma_internal_s"               # string offset=1595
.Linfo_string122:
	.asciz	"lzma_next_end"                 # string offset=1611
.Linfo_string123:
	.asciz	"lzma_block_unpadded_size"      # string offset=1625
.Linfo_string124:
	.asciz	"lzma_alloc"                    # string offset=1650
.Linfo_string125:
	.asciz	"lzma_check_size"               # string offset=1661
.Linfo_string126:
	.asciz	"lzma_check_init"               # string offset=1677
.Linfo_string127:
	.asciz	"lzma_raw_decoder_init"         # string offset=1693
.Linfo_string128:
	.asciz	"update_size"                   # string offset=1715
.Linfo_string129:
	.asciz	"add"                           # string offset=1727
.Linfo_string130:
	.asciz	"limit"                         # string offset=1731
.Linfo_string131:
	.asciz	"is_size_valid"                 # string offset=1737
.Linfo_string132:
	.asciz	"reference"                     # string offset=1751
.Linfo_string133:
	.asciz	"lzma_check_update"             # string offset=1761
.Linfo_string134:
	.asciz	"lzma_check_finish"             # string offset=1779
.Linfo_string135:
	.asciz	"lzma_bufcpy"                   # string offset=1797
.Linfo_string136:
	.asciz	"lzma_check_is_supported"       # string offset=1809
.Linfo_string137:
	.asciz	"lzma_free"                     # string offset=1833
.Linfo_string138:
	.asciz	"lzma_strm_init"                # string offset=1843
.Linfo_string139:
	.asciz	"next_in"                       # string offset=1858
.Linfo_string140:
	.asciz	"total_in"                      # string offset=1866
.Linfo_string141:
	.asciz	"next_out"                      # string offset=1875
.Linfo_string142:
	.asciz	"avail_out"                     # string offset=1884
.Linfo_string143:
	.asciz	"total_out"                     # string offset=1894
.Linfo_string144:
	.asciz	"allocator"                     # string offset=1904
.Linfo_string145:
	.asciz	"internal"                      # string offset=1914
.Linfo_string146:
	.asciz	"lzma_internal"                 # string offset=1923
.Linfo_string147:
	.asciz	"reserved_ptr4"                 # string offset=1937
.Linfo_string148:
	.asciz	"lzma_stream"                   # string offset=1951
.Linfo_string149:
	.asciz	"lzma_end"                      # string offset=1963
.Linfo_string150:
	.asciz	"lzma_block_decoder_init"       # string offset=1972
.Linfo_string151:
	.asciz	"block_decode"                  # string offset=1996
.Linfo_string152:
	.asciz	"block_decoder_end"             # string offset=2009
.Linfo_string153:
	.asciz	"lzma_block_decoder"            # string offset=2027
.Linfo_string154:
	.asciz	"pcoder"                        # string offset=2046
.Linfo_string155:
	.asciz	"in"                            # string offset=2053
.Linfo_string156:
	.asciz	"in_pos"                        # string offset=2056
.Linfo_string157:
	.asciz	"in_size"                       # string offset=2063
.Linfo_string158:
	.asciz	"out"                           # string offset=2071
.Linfo_string159:
	.asciz	"out_pos"                       # string offset=2075
.Linfo_string160:
	.asciz	"out_size"                      # string offset=2083
.Linfo_string161:
	.asciz	"action"                        # string offset=2092
.Linfo_string162:
	.asciz	"in_start"                      # string offset=2099
.Linfo_string163:
	.asciz	"out_start"                     # string offset=2108
.Linfo_string164:
	.asciz	"ret"                           # string offset=2118
.Linfo_string165:
	.asciz	"in_used"                       # string offset=2122
.Linfo_string166:
	.asciz	"out_used"                      # string offset=2130
.Linfo_string167:
	.asciz	"check_size"                    # string offset=2139
.Linfo_string168:
	.asciz	"strm"                          # string offset=2150
.Linfo_string169:
	.asciz	"ret_"                          # string offset=2155
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp3
	.quad	.Ltmp5
	.quad	.Ltmp10
	.quad	.Ltmp17
	.quad	.Ltmp19
	.quad	.Ltmp22
	.quad	.Lfunc_begin1
	.quad	.Ltmp35
	.quad	.Ltmp64
	.quad	.Ltmp67
	.quad	.Ltmp100
	.quad	.Ltmp42
	.quad	.Ltmp60
	.quad	.Ltmp99
	.quad	.Ltmp101
	.quad	.Ltmp103
	.quad	.Ltmp107
	.quad	.Lfunc_begin2
	.quad	.Ltmp121
	.quad	.Ltmp123
	.quad	.Lfunc_begin3
	.quad	.Ltmp125
	.quad	.Ltmp126
	.quad	.Ltmp131
	.quad	.Ltmp135
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
