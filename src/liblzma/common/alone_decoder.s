	.text
	.file	"alone_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/alone_decoder.c" md5 0x3e33dd073c64eb400f430c607a596c8a
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
	.globl	lzma_alone_decoder_init         # -- Begin function lzma_alone_decoder_init
	.p2align	4, 0x90
	.type	lzma_alone_decoder_init,@function
lzma_alone_decoder_init:                # @lzma_alone_decoder_init
.Lfunc_begin0:
	.loc	0 201 0                         # liblzma/common/alone_decoder.c:201:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $rdx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
.Ltmp0:
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- $bpl
	.loc	0 202 2 prologue_end            # liblzma/common/alone_decoder.c:202:2
	cmpq	$lzma_alone_decoder_init, 16(%rdi)
.Ltmp1:
	.loc	0 202 2 is_stmt 0               # liblzma/common/alone_decoder.c:202:2
	je	.LBB0_2
.Ltmp2:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- $bpl
	.loc	0 202 2                         # liblzma/common/alone_decoder.c:202:2
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	lzma_next_end@PLT
.Ltmp3:
.LBB0_2:                                # %if.end
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- $bpl
	.loc	0 202 2                         # liblzma/common/alone_decoder.c:202:2
	movq	$lzma_alone_decoder_init, 16(%r14)
.Ltmp4:
	.loc	0 204 15 is_stmt 1              # liblzma/common/alone_decoder.c:204:15
	testq	%rbx, %rbx
.Ltmp5:
	.loc	0 204 6 is_stmt 0               # liblzma/common/alone_decoder.c:204:6
	je	.LBB0_3
.Ltmp6:
# %bb.4:                                # %if.end4
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- $bpl
	.loc	0 207 12 is_stmt 1              # liblzma/common/alone_decoder.c:207:12
	movq	(%r14), %rax
	.loc	0 207 18 is_stmt 0              # liblzma/common/alone_decoder.c:207:18
	testq	%rax, %rax
.Ltmp7:
	.loc	0 207 6                         # liblzma/common/alone_decoder.c:207:6
	jne	.LBB0_8
.Ltmp8:
# %bb.5:                                # %if.then6
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- $bpl
	.loc	0 208 17 is_stmt 1              # liblzma/common/alone_decoder.c:208:17
	movl	$216, %edi
	movq	%r15, %rsi
	callq	lzma_alloc@PLT
.Ltmp9:
	.loc	0 208 15 is_stmt 0              # liblzma/common/alone_decoder.c:208:15
	movq	%rax, (%r14)
.Ltmp10:
	.loc	0 209 19 is_stmt 1              # liblzma/common/alone_decoder.c:209:19
	testq	%rax, %rax
.Ltmp11:
	.loc	0 209 7 is_stmt 0               # liblzma/common/alone_decoder.c:209:7
	je	.LBB0_6
.Ltmp12:
# %bb.7:                                # %if.end11
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- $bpl
	.loc	0 212 14 is_stmt 1              # liblzma/common/alone_decoder.c:212:14
	movq	$alone_decode, 24(%r14)
	.loc	0 213 13                        # liblzma/common/alone_decoder.c:213:13
	movq	$alone_decoder_end, 32(%r14)
	.loc	0 214 19                        # liblzma/common/alone_decoder.c:214:19
	movq	$alone_decoder_memconfig, 48(%r14)
	.loc	0 215 47                        # liblzma/common/alone_decoder.c:215:47
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
.Ltmp13:
	.loc	0 218 31                        # liblzma/common/alone_decoder.c:218:31
	movq	(%r14), %rax
.Ltmp14:
.LBB0_8:                                # %if.end19
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- $bpl
	.loc	0 218 48 is_stmt 0              # liblzma/common/alone_decoder.c:218:48
	movl	$0, 64(%rax)
	.loc	0 219 31 is_stmt 1              # liblzma/common/alone_decoder.c:219:31
	movq	(%r14), %rax
	.loc	0 219 45 is_stmt 0              # liblzma/common/alone_decoder.c:219:45
	movb	%bpl, 68(%rax)
	.loc	0 220 31 is_stmt 1              # liblzma/common/alone_decoder.c:220:31
	movq	(%r14), %rax
	.loc	0 220 43 is_stmt 0              # liblzma/common/alone_decoder.c:220:43
	movq	$0, 72(%rax)
	.loc	0 221 31 is_stmt 1              # liblzma/common/alone_decoder.c:221:31
	movq	(%r14), %rax
	.loc	0 221 57 is_stmt 0              # liblzma/common/alone_decoder.c:221:57
	movl	$0, 104(%rax)
	.loc	0 222 31 is_stmt 1              # liblzma/common/alone_decoder.c:222:31
	movq	(%r14), %rax
	.loc	0 222 59 is_stmt 0              # liblzma/common/alone_decoder.c:222:59
	movq	$0, 112(%rax)
	.loc	0 223 31 is_stmt 1              # liblzma/common/alone_decoder.c:223:31
	movq	(%r14), %rax
	.loc	0 223 64 is_stmt 0              # liblzma/common/alone_decoder.c:223:64
	movl	$0, 120(%rax)
	.loc	0 224 31 is_stmt 1              # liblzma/common/alone_decoder.c:224:31
	movq	(%r14), %rax
	.loc	0 224 57 is_stmt 0              # liblzma/common/alone_decoder.c:224:57
	movq	$0, 80(%rax)
	.loc	0 225 31 is_stmt 1              # liblzma/common/alone_decoder.c:225:31
	movq	(%r14), %rax
	.loc	0 225 48 is_stmt 0              # liblzma/common/alone_decoder.c:225:48
	movq	%rbx, 88(%rax)
	.loc	0 226 31 is_stmt 1              # liblzma/common/alone_decoder.c:226:31
	movq	(%r14), %rax
	.loc	0 226 48 is_stmt 0              # liblzma/common/alone_decoder.c:226:48
	movq	$32768, 96(%rax)                # imm = 0x8000
	xorl	%eax, %eax
	jmp	.LBB0_9
.Ltmp15:
.LBB0_3:
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- $bpl
	.loc	0 0 48                          # liblzma/common/alone_decoder.c:0:48
	movl	$11, %eax
.Ltmp16:
.LBB0_9:                                # %return
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- $bpl
	.loc	0 229 1 epilogue_begin is_stmt 1 # liblzma/common/alone_decoder.c:229:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp17:
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp18:
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp19:
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp20:
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- [DW_OP_LLVM_entry_value 1] $cl
	.cfi_def_cfa_offset 8
	retq
.Ltmp21:
.LBB0_6:
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- $bpl
	.loc	0 0 1 is_stmt 0                 # liblzma/common/alone_decoder.c:0:1
	movl	$5, %eax
.Ltmp22:
	.loc	0 209 7 is_stmt 1               # liblzma/common/alone_decoder.c:209:7
	jmp	.LBB0_9
.Ltmp23:
.Lfunc_end0:
	.size	lzma_alone_decoder_init, .Lfunc_end0-lzma_alone_decoder_init
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function alone_decode
.LCPI1_0:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	alone_decode,@function
alone_decode:                           # @alone_decode
.Lfunc_begin1:
	.loc	0 59 0                          # liblzma/common/alone_decoder.c:59:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: alone_decode:pcoder <- $rdi
	#DEBUG_VALUE: alone_decode:allocator <- $rsi
	#DEBUG_VALUE: alone_decode:in <- $rdx
	#DEBUG_VALUE: alone_decode:in_pos <- $rcx
	#DEBUG_VALUE: alone_decode:in_size <- $r8
	#DEBUG_VALUE: alone_decode:out <- $r9
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
.Ltmp24:
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	movq	%r9, 24(%rsp)                   # 8-byte Spill
.Ltmp25:
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	movq	%rcx, %r13
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
.Ltmp26:
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	movq	152(%rsp), %rcx
.Ltmp27:
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	movq	144(%rsp), %rax
.Ltmp28:
	#DEBUG_VALUE: alone_decode:coder <- undef
	xorl	%ebx, %ebx
.Ltmp29:
	.loc	0 61 18 prologue_end            # liblzma/common/alone_decoder.c:61:18
	cmpq	%rcx, (%rax)
	.loc	0 62 4                          # liblzma/common/alone_decoder.c:62:4
	jae	.LBB1_4
.Ltmp30:
# %bb.1:                                # %land.rhs.lr.ph
	#DEBUG_VALUE: alone_decode:pcoder <- $rdi
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rdx
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r8
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 0 4 is_stmt 0                 # liblzma/common/alone_decoder.c:0:4
	movq	%r8, %r12
	movq	%rdx, %rbp
	movq	%rdi, %r14
	.loc	0 62 15                         # liblzma/common/alone_decoder.c:62:15
	movl	64(%rdi), %ecx
	.loc	0 62 24                         # liblzma/common/alone_decoder.c:62:24
	cmpl	$4, %ecx
	.loc	0 62 36                         # liblzma/common/alone_decoder.c:62:36
	jne	.LBB1_5
.Ltmp31:
.LBB1_2:                                # %sw.bb98
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 0 36                          # liblzma/common/alone_decoder.c:0:36
	movl	160(%rsp), %eax
.Ltmp32:
	.loc	0 156 39 is_stmt 1              # liblzma/common/alone_decoder.c:156:39
	movq	(%r14), %rdi
	.loc	0 156 10 is_stmt 0              # liblzma/common/alone_decoder.c:156:10
	subq	$8, %rsp
.Ltmp33:
	.cfi_adjust_cfa_offset 8
	.loc	0 0 10                          # liblzma/common/alone_decoder.c:0:10
	movq	24(%rsp), %rsi                  # 8-byte Reload
	.loc	0 156 10                        # liblzma/common/alone_decoder.c:156:10
	movq	%rbp, %rdx
	movq	%r13, %rcx
	movq	%r12, %r8
	movq	32(%rsp), %r9                   # 8-byte Reload
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	*24(%r14)
.Ltmp34:
	addq	$32, %rsp
.Ltmp35:
	.cfi_adjust_cfa_offset -32
.LBB1_3:                                # %cleanup95
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	.loc	0 0 10                          # liblzma/common/alone_decoder.c:0:10
	movl	%eax, %ebx
.Ltmp36:
.LBB1_4:                                # %cleanup103
	#DEBUG_VALUE: alone_decode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	.loc	0 166 1 is_stmt 1               # liblzma/common/alone_decoder.c:166:1
	movl	%ebx, %eax
	.loc	0 166 1 epilogue_begin is_stmt 0 # liblzma/common/alone_decoder.c:166:1
	addq	$88, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
.Ltmp37:
	#DEBUG_VALUE: alone_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp38:
.LBB1_5:                                # %lor.rhs.preheader
	.cfi_def_cfa_offset 144
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 0 1                           # liblzma/common/alone_decoder.c:0:1
	leaq	104(%r14), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB1_9
.Ltmp39:
.LBB1_6:                                # %if.end39
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 96 15 is_stmt 1               # liblzma/common/alone_decoder.c:96:15
	movq	$0, 72(%r14)
	.loc	0 97 20                         # liblzma/common/alone_decoder.c:97:20
	movl	$2, 64(%r14)
	movl	$2, %ecx
.Ltmp40:
.LBB1_7:                                # %if.end42
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 100 3                         # liblzma/common/alone_decoder.c:100:3
	incq	%r15
	movq	%r15, (%r13)
.Ltmp41:
.LBB1_8:                                # %sw.epilog
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 62 24                         # liblzma/common/alone_decoder.c:62:24
	cmpl	$4, %ecx
	.loc	0 62 36 is_stmt 0               # liblzma/common/alone_decoder.c:62:36
	je	.LBB1_2
.Ltmp42:
.LBB1_9:                                # %lor.rhs
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 62 39                         # liblzma/common/alone_decoder.c:62:39
	movq	(%r13), %r15
	.loc	0 62 47                         # liblzma/common/alone_decoder.c:62:47
	cmpq	%r12, %r15
	.loc	0 61 2 is_stmt 1                # liblzma/common/alone_decoder.c:61:2
	jae	.LBB1_4
.Ltmp43:
# %bb.10:                               # %while.body
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 63 2                          # liblzma/common/alone_decoder.c:63:2
	cmpl	$3, %ecx
	ja	.LBB1_28
.Ltmp44:
# %bb.11:                               # %while.body
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	movl	%ecx, %eax
	jmpq	*.LJTI1_0(,%rax,8)
.Ltmp45:
.LBB1_12:                               # %sw.bb
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 65 48                         # liblzma/common/alone_decoder.c:65:48
	movzbl	(%rbp,%r15), %esi
	movq	8(%rsp), %rdi                   # 8-byte Reload
	.loc	0 65 7 is_stmt 0                # liblzma/common/alone_decoder.c:65:7
	callq	lzma_lzma_lclppb_decode@PLT
.Ltmp46:
	.loc	0 65 7                          # liblzma/common/alone_decoder.c:65:7
	testb	%al, %al
	jne	.LBB1_29
.Ltmp47:
# %bb.13:                               # %if.end
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 68 19 is_stmt 1               # liblzma/common/alone_decoder.c:68:19
	movl	$1, 64(%r14)
	.loc	0 69 3                          # liblzma/common/alone_decoder.c:69:3
	incq	%r15
	movq	%r15, (%r13)
	movl	$1, %ecx
	jmp	.LBB1_8
.Ltmp48:
	.p2align	4, 0x90
.LBB1_14:                               # %sw.bb44
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 105 19                        # liblzma/common/alone_decoder.c:105:19
	movzbl	(%rbp,%r15), %eax
	.loc	0 105 43 is_stmt 0              # liblzma/common/alone_decoder.c:105:43
	movq	72(%r14), %rdx
	.loc	0 105 47                        # liblzma/common/alone_decoder.c:105:47
	leal	(,%rdx,8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	.loc	0 105 32                        # liblzma/common/alone_decoder.c:105:32
	shlq	%cl, %rax
	.loc	0 105 5                         # liblzma/common/alone_decoder.c:105:5
	orq	80(%r14), %rax
	movq	%rax, 80(%r14)
	.loc	0 106 3 is_stmt 1               # liblzma/common/alone_decoder.c:106:3
	incq	%r15
	movq	%r15, (%r13)
.Ltmp49:
	.loc	0 107 7                         # liblzma/common/alone_decoder.c:107:7
	incq	%rdx
	movq	%rdx, 72(%r14)
	movl	$2, %ecx
	.loc	0 107 20 is_stmt 0              # liblzma/common/alone_decoder.c:107:20
	cmpq	$8, %rdx
.Ltmp50:
	.loc	0 107 7                         # liblzma/common/alone_decoder.c:107:7
	jb	.LBB1_8
.Ltmp51:
# %bb.15:                               # %if.end57
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 114 5 is_stmt 1               # liblzma/common/alone_decoder.c:114:5
	cmpb	$1, 68(%r14)
	jne	.LBB1_17
.Ltmp52:
# %bb.16:                               # %if.end57
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 0 5 is_stmt 0                 # liblzma/common/alone_decoder.c:0:5
	movabsq	$-274877906945, %rcx            # imm = 0xFFFFFFBFFFFFFFFF
	addq	%rcx, %rax
	incq	%rax
	.loc	0 114 5                         # liblzma/common/alone_decoder.c:114:5
	cmpq	%rcx, %rax
	jb	.LBB1_29
.Ltmp53:
.LBB1_17:                               # %if.end70
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 0 5                           # liblzma/common/alone_decoder.c:0:5
	movq	8(%rsp), %rdi                   # 8-byte Reload
	.loc	0 121 21 is_stmt 1              # liblzma/common/alone_decoder.c:121:21
	callq	lzma_lzma_decoder_memusage@PLT
.Ltmp54:
	.loc	0 122 5                         # liblzma/common/alone_decoder.c:122:5
	addq	$32768, %rax                    # imm = 0x8000
	.loc	0 121 19                        # liblzma/common/alone_decoder.c:121:19
	movq	%rax, 96(%r14)
	.loc	0 124 14                        # liblzma/common/alone_decoder.c:124:14
	movq	$0, 72(%r14)
	.loc	0 125 19                        # liblzma/common/alone_decoder.c:125:19
	movl	$3, 64(%r14)
	jmp	.LBB1_19
.Ltmp55:
	.p2align	4, 0x90
.LBB1_18:                               # %while.body.sw.bb75_crit_edge
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 130 14                        # liblzma/common/alone_decoder.c:130:14
	movq	96(%r14), %rax
.Ltmp56:
.LBB1_19:                               # %sw.bb75
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 130 23 is_stmt 0              # liblzma/common/alone_decoder.c:130:23
	cmpq	88(%r14), %rax
.Ltmp57:
	.loc	0 130 7                         # liblzma/common/alone_decoder.c:130:7
	ja	.LBB1_27
.Ltmp58:
# %bb.20:                               # %if.end80
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 134 4 is_stmt 1               # liblzma/common/alone_decoder.c:134:4
	movq	$0, 32(%rsp)
	movq	lzma_lzma_decoder_init@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, 48(%rsp)
	leaq	56(%rsp), %rax
	.loc	0 133 33                        # liblzma/common/alone_decoder.c:133:33
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	.loc	0 142 24                        # liblzma/common/alone_decoder.c:142:24
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	leaq	32(%rsp), %rdx
	callq	lzma_next_filter_init@PLT
.Ltmp59:
	#DEBUG_VALUE: ret <- $eax
	.loc	0 144 11                        # liblzma/common/alone_decoder.c:144:11
	testl	%eax, %eax
.Ltmp60:
	.loc	0 144 7 is_stmt 0               # liblzma/common/alone_decoder.c:144:7
	jne	.LBB1_3
.Ltmp61:
# %bb.21:                               # %cleanup95.thread
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: ret <- $eax
	.loc	0 148 44 is_stmt 1              # liblzma/common/alone_decoder.c:148:44
	movq	(%r14), %rdi
	.loc	0 149 12                        # liblzma/common/alone_decoder.c:149:12
	movq	80(%r14), %rsi
	.loc	0 148 3                         # liblzma/common/alone_decoder.c:148:3
	callq	lzma_lz_decoder_uncompressed@PLT
.Ltmp62:
	.loc	0 151 19                        # liblzma/common/alone_decoder.c:151:19
	movl	$4, 64(%r14)
	movl	$4, %ecx
	jmp	.LBB1_8
.Ltmp63:
	.p2align	4, 0x90
.LBB1_22:                               # %sw.bb5
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 74 17                         # liblzma/common/alone_decoder.c:74:17
	movzbl	(%rbp,%r15), %eax
	.loc	0 74 41 is_stmt 0               # liblzma/common/alone_decoder.c:74:41
	movq	72(%r14), %rdx
	.loc	0 74 45                         # liblzma/common/alone_decoder.c:74:45
	leal	(,%rdx,8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	.loc	0 74 30                         # liblzma/common/alone_decoder.c:74:30
	shlq	%cl, %rax
	.loc	0 74 5                          # liblzma/common/alone_decoder.c:74:5
	orl	104(%r14), %eax
	movl	%eax, 104(%r14)
.Ltmp64:
	.loc	0 76 7 is_stmt 1                # liblzma/common/alone_decoder.c:76:7
	incq	%rdx
	movq	%rdx, 72(%r14)
	movl	$1, %ecx
	.loc	0 76 20 is_stmt 0               # liblzma/common/alone_decoder.c:76:20
	cmpq	$4, %rdx
.Ltmp65:
	.loc	0 76 7                          # liblzma/common/alone_decoder.c:76:7
	jne	.LBB1_7
.Ltmp66:
# %bb.23:                               # %if.then14
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 77 21 is_stmt 1               # liblzma/common/alone_decoder.c:77:21
	cmpb	$1, 68(%r14)
	jne	.LBB1_6
.Ltmp67:
# %bb.24:                               # %if.then14
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	cmpl	$-1, %eax
	je	.LBB1_6
.Ltmp68:
# %bb.25:                               # %if.then20
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 84 43                         # liblzma/common/alone_decoder.c:84:43
	leal	-1(%rax), %ecx
.Ltmp69:
	#DEBUG_VALUE: d <- $ecx
	.loc	0 85 12                         # liblzma/common/alone_decoder.c:85:12
	movl	%ecx, %edx
	shrl	$2, %edx
	.loc	0 85 7 is_stmt 0                # liblzma/common/alone_decoder.c:85:7
	orl	%ecx, %edx
.Ltmp70:
	#DEBUG_VALUE: d <- $edx
	.loc	0 86 12 is_stmt 1               # liblzma/common/alone_decoder.c:86:12
	movl	%edx, %ecx
	shrl	$3, %ecx
	.loc	0 86 7 is_stmt 0                # liblzma/common/alone_decoder.c:86:7
	orl	%edx, %ecx
.Ltmp71:
	#DEBUG_VALUE: d <- $ecx
	.loc	0 87 12 is_stmt 1               # liblzma/common/alone_decoder.c:87:12
	movl	%ecx, %edx
	shrl	$4, %edx
	.loc	0 87 7 is_stmt 0                # liblzma/common/alone_decoder.c:87:7
	orl	%ecx, %edx
.Ltmp72:
	#DEBUG_VALUE: d <- $edx
	.loc	0 88 12 is_stmt 1               # liblzma/common/alone_decoder.c:88:12
	movl	%edx, %ecx
	shrl	$8, %ecx
	.loc	0 88 7 is_stmt 0                # liblzma/common/alone_decoder.c:88:7
	orl	%edx, %ecx
.Ltmp73:
	#DEBUG_VALUE: d <- $ecx
	.loc	0 89 12 is_stmt 1               # liblzma/common/alone_decoder.c:89:12
	movl	%ecx, %edx
	shrl	$16, %edx
	.loc	0 89 7 is_stmt 0                # liblzma/common/alone_decoder.c:89:7
	orl	%ecx, %edx
.Ltmp74:
	#DEBUG_VALUE: d <- $edx
	.loc	0 90 5 is_stmt 1                # liblzma/common/alone_decoder.c:90:5
	incl	%edx
.Ltmp75:
	#DEBUG_VALUE: d <- $edx
	.loc	0 92 11                         # liblzma/common/alone_decoder.c:92:11
	cmpl	%eax, %edx
	je	.LBB1_6
.Ltmp76:
.LBB1_29:
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 0 11 is_stmt 0                # liblzma/common/alone_decoder.c:0:11
	movl	$7, %ebx
.Ltmp77:
	.loc	0 114 5 is_stmt 1               # liblzma/common/alone_decoder.c:114:5
	jmp	.LBB1_4
.Ltmp78:
.LBB1_27:
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 0 5 is_stmt 0                 # liblzma/common/alone_decoder.c:0:5
	movl	$6, %ebx
.Ltmp79:
	.loc	0 130 7 is_stmt 1               # liblzma/common/alone_decoder.c:130:7
	jmp	.LBB1_4
.Ltmp80:
.LBB1_28:
	#DEBUG_VALUE: alone_decode:pcoder <- $r14
	#DEBUG_VALUE: alone_decode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: alone_decode:in <- $rbp
	#DEBUG_VALUE: alone_decode:in_pos <- $r13
	#DEBUG_VALUE: alone_decode:in_size <- $r12
	#DEBUG_VALUE: alone_decode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: alone_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: alone_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 0 7 is_stmt 0                 # liblzma/common/alone_decoder.c:0:7
	movl	$11, %ebx
	.loc	0 63 2 is_stmt 1                # liblzma/common/alone_decoder.c:63:2
	jmp	.LBB1_4
.Ltmp81:
.Lfunc_end1:
	.size	alone_decode, .Lfunc_end1-alone_decode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_12
	.quad	.LBB1_22
	.quad	.LBB1_14
	.quad	.LBB1_18
	.file	11 "liblzma/lzma" "lzma_decoder.h" md5 0x0caa14a517fbe6eb5d1a0f4dac3f4c24
	.file	12 "liblzma/lz" "lz_decoder.h" md5 0x27344aa2da5754ad4a118fbd9137003b
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function alone_decoder_end
	.type	alone_decoder_end,@function
alone_decoder_end:                      # @alone_decoder_end
.Lfunc_begin2:
	.loc	0 171 0                         # liblzma/common/alone_decoder.c:171:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: alone_decoder_end:pcoder <- $rdi
	#DEBUG_VALUE: alone_decoder_end:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp82:
	#DEBUG_VALUE: alone_decoder_end:coder <- $rdi
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp83:
	.loc	0 173 2 prologue_end            # liblzma/common/alone_decoder.c:173:2
	callq	lzma_next_end@PLT
.Ltmp84:
	#DEBUG_VALUE: alone_decoder_end:allocator <- $rbx
	#DEBUG_VALUE: alone_decoder_end:coder <- $r14
	#DEBUG_VALUE: alone_decoder_end:pcoder <- $r14
	.loc	0 174 2                         # liblzma/common/alone_decoder.c:174:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 174 2 epilogue_begin is_stmt 0 # liblzma/common/alone_decoder.c:174:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp85:
	#DEBUG_VALUE: alone_decoder_end:allocator <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp86:
	#DEBUG_VALUE: alone_decoder_end:coder <- $rdi
	#DEBUG_VALUE: alone_decoder_end:pcoder <- $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp87:
.Lfunc_end2:
	.size	alone_decoder_end, .Lfunc_end2-alone_decoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function alone_decoder_memconfig
	.type	alone_decoder_memconfig,@function
alone_decoder_memconfig:                # @alone_decoder_memconfig
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: alone_decoder_memconfig:pcoder <- $rdi
	#DEBUG_VALUE: alone_decoder_memconfig:memusage <- $rsi
	#DEBUG_VALUE: alone_decoder_memconfig:old_memlimit <- $rdx
	#DEBUG_VALUE: alone_decoder_memconfig:new_memlimit <- $rcx
	#DEBUG_VALUE: alone_decoder_memconfig:coder <- $rdi
	.loc	0 184 21 prologue_end is_stmt 1 # liblzma/common/alone_decoder.c:184:21
	movq	96(%rdi), %rax
	.loc	0 184 12 is_stmt 0              # liblzma/common/alone_decoder.c:184:12
	movq	%rax, (%rsi)
	.loc	0 185 25 is_stmt 1              # liblzma/common/alone_decoder.c:185:25
	movq	88(%rdi), %rax
	.loc	0 185 16 is_stmt 0              # liblzma/common/alone_decoder.c:185:16
	movq	%rax, (%rdx)
	xorl	%eax, %eax
.Ltmp88:
	.loc	0 187 19 is_stmt 1              # liblzma/common/alone_decoder.c:187:19
	testq	%rcx, %rcx
.Ltmp89:
	.loc	0 187 6 is_stmt 0               # liblzma/common/alone_decoder.c:187:6
	je	.LBB3_3
.Ltmp90:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: alone_decoder_memconfig:pcoder <- $rdi
	#DEBUG_VALUE: alone_decoder_memconfig:memusage <- $rsi
	#DEBUG_VALUE: alone_decoder_memconfig:old_memlimit <- $rdx
	#DEBUG_VALUE: alone_decoder_memconfig:new_memlimit <- $rcx
	#DEBUG_VALUE: alone_decoder_memconfig:coder <- $rdi
	.loc	0 0 6                           # liblzma/common/alone_decoder.c:0:6
	movl	$6, %eax
.Ltmp91:
	.loc	0 188 20 is_stmt 1              # liblzma/common/alone_decoder.c:188:20
	cmpq	%rcx, 96(%rdi)
.Ltmp92:
	.loc	0 188 7 is_stmt 0               # liblzma/common/alone_decoder.c:188:7
	ja	.LBB3_3
.Ltmp93:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: alone_decoder_memconfig:pcoder <- $rdi
	#DEBUG_VALUE: alone_decoder_memconfig:memusage <- $rsi
	#DEBUG_VALUE: alone_decoder_memconfig:old_memlimit <- $rdx
	#DEBUG_VALUE: alone_decoder_memconfig:new_memlimit <- $rcx
	#DEBUG_VALUE: alone_decoder_memconfig:coder <- $rdi
	.loc	0 191 19 is_stmt 1              # liblzma/common/alone_decoder.c:191:19
	movq	%rcx, 88(%rdi)
	xorl	%eax, %eax
.Ltmp94:
.LBB3_3:                                # %cleanup
	#DEBUG_VALUE: alone_decoder_memconfig:pcoder <- $rdi
	#DEBUG_VALUE: alone_decoder_memconfig:memusage <- $rsi
	#DEBUG_VALUE: alone_decoder_memconfig:old_memlimit <- $rdx
	#DEBUG_VALUE: alone_decoder_memconfig:new_memlimit <- $rcx
	#DEBUG_VALUE: alone_decoder_memconfig:coder <- $rdi
	.loc	0 195 1                         # liblzma/common/alone_decoder.c:195:1
	retq
.Ltmp95:
.Lfunc_end3:
	.size	alone_decoder_memconfig, .Lfunc_end3-alone_decoder_memconfig
	.cfi_endproc
                                        # -- End function
	.globl	lzma_alone_decoder              # -- Begin function lzma_alone_decoder
	.p2align	4, 0x90
	.type	lzma_alone_decoder,@function
lzma_alone_decoder:                     # @lzma_alone_decoder
.Lfunc_begin4:
	.loc	0 234 0                         # liblzma/common/alone_decoder.c:234:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_alone_decoder:strm <- $rdi
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- $rsi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp96:
	.loc	0 235 2 prologue_end            # liblzma/common/alone_decoder.c:235:2
	callq	lzma_strm_init@PLT
.Ltmp97:
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder:strm <- $rbx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 235 2 is_stmt 0               # liblzma/common/alone_decoder.c:235:2
	testl	%eax, %eax
	jne	.LBB4_11
.Ltmp98:
# %bb.1:                                # %do.end
	#DEBUG_VALUE: lzma_alone_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- $r14
	.loc	0 235 2                         # liblzma/common/alone_decoder.c:235:2
	movq	48(%rbx), %r12
.Ltmp99:
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r12
	movq	56(%rbx), %r15
.Ltmp100:
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- 0
	.loc	0 202 2 is_stmt 1               # liblzma/common/alone_decoder.c:202:2
	cmpq	$lzma_alone_decoder_init, 16(%r15)
.Ltmp101:
	.loc	0 202 2 is_stmt 0               # liblzma/common/alone_decoder.c:202:2
	je	.LBB4_3
.Ltmp102:
# %bb.2:                                # %if.then.i
	#DEBUG_VALUE: lzma_alone_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- 0
	.loc	0 202 2                         # liblzma/common/alone_decoder.c:202:2
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	lzma_next_end@PLT
.Ltmp103:
.LBB4_3:                                # %if.end.i
	#DEBUG_VALUE: lzma_alone_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- 0
	.loc	0 202 2                         # liblzma/common/alone_decoder.c:202:2
	movq	$lzma_alone_decoder_init, 16(%r15)
.Ltmp104:
	.loc	0 204 15 is_stmt 1              # liblzma/common/alone_decoder.c:204:15
	testq	%r14, %r14
.Ltmp105:
	.loc	0 204 6 is_stmt 0               # liblzma/common/alone_decoder.c:204:6
	je	.LBB4_4
.Ltmp106:
# %bb.5:                                # %if.end4.i
	#DEBUG_VALUE: lzma_alone_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- 0
	.loc	0 207 12 is_stmt 1              # liblzma/common/alone_decoder.c:207:12
	movq	(%r15), %rax
	.loc	0 207 18 is_stmt 0              # liblzma/common/alone_decoder.c:207:18
	testq	%rax, %rax
.Ltmp107:
	.loc	0 207 6                         # liblzma/common/alone_decoder.c:207:6
	jne	.LBB4_10
.Ltmp108:
# %bb.6:                                # %if.then6.i
	#DEBUG_VALUE: lzma_alone_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- 0
	.loc	0 208 17 is_stmt 1              # liblzma/common/alone_decoder.c:208:17
	movl	$216, %edi
	movq	%r12, %rsi
	callq	lzma_alloc@PLT
.Ltmp109:
	.loc	0 208 15 is_stmt 0              # liblzma/common/alone_decoder.c:208:15
	movq	%rax, (%r15)
.Ltmp110:
	.loc	0 209 19 is_stmt 1              # liblzma/common/alone_decoder.c:209:19
	testq	%rax, %rax
.Ltmp111:
	.loc	0 209 7 is_stmt 0               # liblzma/common/alone_decoder.c:209:7
	je	.LBB4_7
.Ltmp112:
# %bb.9:                                # %if.end11.i
	#DEBUG_VALUE: lzma_alone_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- 0
	.loc	0 212 14 is_stmt 1              # liblzma/common/alone_decoder.c:212:14
	movq	$alone_decode, 24(%r15)
	.loc	0 213 13                        # liblzma/common/alone_decoder.c:213:13
	movq	$alone_decoder_end, 32(%r15)
	.loc	0 214 19                        # liblzma/common/alone_decoder.c:214:19
	movq	$alone_decoder_memconfig, 48(%r15)
	.loc	0 215 47                        # liblzma/common/alone_decoder.c:215:47
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
.Ltmp113:
	.loc	0 218 31                        # liblzma/common/alone_decoder.c:218:31
	movq	(%r15), %rax
.Ltmp114:
.LBB4_10:                               # %do.end10
	#DEBUG_VALUE: lzma_alone_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- 0
	.loc	0 218 48 is_stmt 0              # liblzma/common/alone_decoder.c:218:48
	movl	$0, 64(%rax)
	.loc	0 219 31 is_stmt 1              # liblzma/common/alone_decoder.c:219:31
	movq	(%r15), %rax
	.loc	0 219 45 is_stmt 0              # liblzma/common/alone_decoder.c:219:45
	movb	$0, 68(%rax)
	.loc	0 220 31 is_stmt 1              # liblzma/common/alone_decoder.c:220:31
	movq	(%r15), %rax
	.loc	0 220 43 is_stmt 0              # liblzma/common/alone_decoder.c:220:43
	movq	$0, 72(%rax)
	.loc	0 221 31 is_stmt 1              # liblzma/common/alone_decoder.c:221:31
	movq	(%r15), %rax
	.loc	0 221 57 is_stmt 0              # liblzma/common/alone_decoder.c:221:57
	movl	$0, 104(%rax)
	.loc	0 222 31 is_stmt 1              # liblzma/common/alone_decoder.c:222:31
	movq	(%r15), %rax
	.loc	0 222 59 is_stmt 0              # liblzma/common/alone_decoder.c:222:59
	movq	$0, 112(%rax)
	.loc	0 223 31 is_stmt 1              # liblzma/common/alone_decoder.c:223:31
	movq	(%r15), %rax
	.loc	0 223 64 is_stmt 0              # liblzma/common/alone_decoder.c:223:64
	movl	$0, 120(%rax)
	.loc	0 224 31 is_stmt 1              # liblzma/common/alone_decoder.c:224:31
	movq	(%r15), %rax
	.loc	0 224 57 is_stmt 0              # liblzma/common/alone_decoder.c:224:57
	movq	$0, 80(%rax)
	.loc	0 225 31 is_stmt 1              # liblzma/common/alone_decoder.c:225:31
	movq	(%r15), %rax
	.loc	0 225 48 is_stmt 0              # liblzma/common/alone_decoder.c:225:48
	movq	%r14, 88(%rax)
	.loc	0 226 31 is_stmt 1              # liblzma/common/alone_decoder.c:226:31
	movq	(%r15), %rax
	.loc	0 226 48 is_stmt 0              # liblzma/common/alone_decoder.c:226:48
	movq	$32768, 96(%rax)                # imm = 0x8000
.Ltmp115:
	#DEBUG_VALUE: ret_ <- 0
	.loc	0 237 8 is_stmt 1               # liblzma/common/alone_decoder.c:237:8
	movq	56(%rbx), %rax
	.loc	0 237 46 is_stmt 0              # liblzma/common/alone_decoder.c:237:46
	movb	$1, 80(%rax)
	.loc	0 238 8 is_stmt 1               # liblzma/common/alone_decoder.c:238:8
	movq	56(%rbx), %rax
	.loc	0 238 49 is_stmt 0              # liblzma/common/alone_decoder.c:238:49
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	jmp	.LBB4_11
.Ltmp116:
.LBB4_4:
	#DEBUG_VALUE: lzma_alone_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- 0
	.loc	0 0 49                          # liblzma/common/alone_decoder.c:0:49
	movl	$11, %ebp
.Ltmp117:
.LBB4_8:                                # %cleanup7
	#DEBUG_VALUE: lzma_alone_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- $r14
	#DEBUG_VALUE: ret_ <- $ebp
	.loc	0 235 2 is_stmt 1               # liblzma/common/alone_decoder.c:235:2
	movq	%rbx, %rdi
	callq	lzma_end@PLT
.Ltmp118:
	.loc	0 0 2 is_stmt 0                 # liblzma/common/alone_decoder.c:0:2
	movl	%ebp, %eax
.Ltmp119:
.LBB4_11:                               # %return
	#DEBUG_VALUE: lzma_alone_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- $r14
	.loc	0 241 1 epilogue_begin is_stmt 1 # liblzma/common/alone_decoder.c:241:1
	popq	%rbx
.Ltmp120:
	#DEBUG_VALUE: lzma_alone_decoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp121:
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp122:
.LBB4_7:
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: lzma_alone_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_alone_decoder:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:allocator <- $r12
	#DEBUG_VALUE: lzma_alone_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_alone_decoder_init:memlimit <- $r14
	#DEBUG_VALUE: lzma_alone_decoder_init:picky <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/alone_decoder.c:0:1
	movl	$5, %ebp
	jmp	.LBB4_8
.Lfunc_end4:
	.size	lzma_alone_decoder, .Lfunc_end4-lzma_alone_decoder
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	22                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
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
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # 144
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # 144
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	152                             # 152
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	152                             # 152
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	160                             # 160
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	160                             # 160
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
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
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
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
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
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
	.byte	44                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
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
	.byte	1                               # Abbrev [1] 0xc:0x892 DW_TAG_compile_unit
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
	.byte	5                               # Abbrev [5] 0x86:0x66 DW_TAG_structure_type
	.byte	106                             # DW_AT_name
	.byte	216                             # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x8b:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	236                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x94:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	157                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0x9d:0x18 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
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
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xb5:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xbe:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	516                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xc7:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	331                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xd0:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	339                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xd9:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	339                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0xe2:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	776                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xec:0x8 DW_TAG_typedef
	.long	244                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xf4:0x4e DW_TAG_structure_type
	.byte	54                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xf9:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	322                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x102:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	331                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x10b:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	359                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x114:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	367                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x11d:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	605                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x126:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	630                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x12f:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	664                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x138:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	700                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x142:0x5 DW_TAG_pointer_type
	.long	327                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x147:0x4 DW_TAG_typedef
	.byte	26                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x14b:0x8 DW_TAG_typedef
	.long	339                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x153:0x8 DW_TAG_typedef
	.long	347                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x15b:0x8 DW_TAG_typedef
	.long	355                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x163:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x167:0x8 DW_TAG_typedef
	.long	355                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x16f:0x8 DW_TAG_typedef
	.long	375                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x177:0x5 DW_TAG_pointer_type
	.long	380                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x17c:0x33 DW_TAG_subroutine_type
	.long	431                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x181:0x5 DW_TAG_formal_parameter
	.long	322                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x186:0x5 DW_TAG_formal_parameter
	.long	439                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x18b:0x5 DW_TAG_formal_parameter
	.long	541                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x190:0x5 DW_TAG_formal_parameter
	.long	576                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x195:0x5 DW_TAG_formal_parameter
	.long	516                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x19a:0x5 DW_TAG_formal_parameter
	.long	586                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x19f:0x5 DW_TAG_formal_parameter
	.long	576                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1a4:0x5 DW_TAG_formal_parameter
	.long	516                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1a9:0x5 DW_TAG_formal_parameter
	.long	596                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1af:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1b7:0x5 DW_TAG_pointer_type
	.long	444                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1bc:0x9 DW_TAG_typedef
	.long	453                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1c5:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x1ca:0xa DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	489                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1d4:0xa DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1de:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1e9:0x5 DW_TAG_pointer_type
	.long	494                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1ee:0x15 DW_TAG_subroutine_type
	.long	515                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x1f3:0x5 DW_TAG_formal_parameter
	.long	515                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1f8:0x5 DW_TAG_formal_parameter
	.long	516                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1fd:0x5 DW_TAG_formal_parameter
	.long	516                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x203:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0x204:0x8 DW_TAG_typedef
	.long	355                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x20c:0x5 DW_TAG_pointer_type
	.long	529                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x211:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x212:0x5 DW_TAG_formal_parameter
	.long	515                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x217:0x5 DW_TAG_formal_parameter
	.long	515                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x21d:0x5 DW_TAG_restrict_type
	.long	546                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x222:0x5 DW_TAG_pointer_type
	.long	551                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x227:0x5 DW_TAG_const_type
	.long	556                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x22c:0x8 DW_TAG_typedef
	.long	564                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x234:0x8 DW_TAG_typedef
	.long	572                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x23c:0x4 DW_TAG_base_type
	.byte	41                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x240:0x5 DW_TAG_restrict_type
	.long	581                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x245:0x5 DW_TAG_pointer_type
	.long	516                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x24a:0x5 DW_TAG_restrict_type
	.long	591                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x24f:0x5 DW_TAG_pointer_type
	.long	556                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x254:0x9 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x25d:0x8 DW_TAG_typedef
	.long	613                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x265:0x5 DW_TAG_pointer_type
	.long	618                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x26a:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x26b:0x5 DW_TAG_formal_parameter
	.long	322                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x270:0x5 DW_TAG_formal_parameter
	.long	439                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x276:0x5 DW_TAG_pointer_type
	.long	635                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x27b:0xb DW_TAG_subroutine_type
	.long	646                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x280:0x5 DW_TAG_formal_parameter
	.long	654                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x286:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x28e:0x5 DW_TAG_pointer_type
	.long	659                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x293:0x5 DW_TAG_const_type
	.long	327                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x298:0x5 DW_TAG_pointer_type
	.long	669                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x29d:0x1a DW_TAG_subroutine_type
	.long	431                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x2a2:0x5 DW_TAG_formal_parameter
	.long	322                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2a7:0x5 DW_TAG_formal_parameter
	.long	695                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2ac:0x5 DW_TAG_formal_parameter
	.long	695                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2b1:0x5 DW_TAG_formal_parameter
	.long	339                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2b7:0x5 DW_TAG_pointer_type
	.long	339                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2bc:0x5 DW_TAG_pointer_type
	.long	705                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2c1:0x1a DW_TAG_subroutine_type
	.long	431                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x2c6:0x5 DW_TAG_formal_parameter
	.long	322                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2cb:0x5 DW_TAG_formal_parameter
	.long	439                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2d0:0x5 DW_TAG_formal_parameter
	.long	731                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2d5:0x5 DW_TAG_formal_parameter
	.long	731                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2db:0x5 DW_TAG_pointer_type
	.long	736                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2e0:0x5 DW_TAG_const_type
	.long	741                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2e5:0x8 DW_TAG_typedef
	.long	749                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x2ed:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x2f1:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	331                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x2fa:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x304:0x4 DW_TAG_base_type
	.byte	63                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x308:0x9 DW_TAG_typedef
	.long	785                             # DW_AT_type
	.byte	105                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	399                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x311:0xf2 DW_TAG_structure_type
	.byte	112                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x315:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x31e:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x327:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x330:0xa DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x33a:0xa DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x344:0xa DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x34e:0xa DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	1043                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x358:0xa DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x362:0xa DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x36c:0xa DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x376:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x380:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x38a:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x394:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x39e:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3a8:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3b2:0xa DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3bc:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	1027                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3c6:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	1098                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3d0:0xa DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1098                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3da:0xa DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	1098                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	394                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3e4:0xa DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	1098                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	395                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3ee:0xa DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	396                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x3f8:0xa DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.short	397                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x403:0x8 DW_TAG_typedef
	.long	1035                            # DW_AT_type
	.byte	70                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x40b:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	69                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x413:0x8 DW_TAG_typedef
	.long	1051                            # DW_AT_type
	.byte	79                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x41b:0xf DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x423:0x3 DW_TAG_enumerator
	.byte	77                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x426:0x3 DW_TAG_enumerator
	.byte	78                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x42a:0x8 DW_TAG_typedef
	.long	1074                            # DW_AT_type
	.byte	87                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x432:0x18 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x43a:0x3 DW_TAG_enumerator
	.byte	82                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x43d:0x3 DW_TAG_enumerator
	.byte	83                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x440:0x3 DW_TAG_enumerator
	.byte	84                              # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x443:0x3 DW_TAG_enumerator
	.byte	85                              # DW_AT_name
	.byte	19                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x446:0x3 DW_TAG_enumerator
	.byte	86                              # DW_AT_name
	.byte	20                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x44a:0x8 DW_TAG_typedef
	.long	1106                            # DW_AT_type
	.byte	99                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x452:0xc DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x45a:0x3 DW_TAG_enumerator
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x45e:0x4e DW_TAG_structure_type
	.byte	117                             # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x463:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	236                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x46c:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	1141                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	2                               # Abbrev [2] 0x475:0x1b DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x47d:0x3 DW_TAG_enumerator
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x480:0x3 DW_TAG_enumerator
	.byte	108                             # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x483:0x3 DW_TAG_enumerator
	.byte	109                             # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x486:0x3 DW_TAG_enumerator
	.byte	110                             # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x489:0x3 DW_TAG_enumerator
	.byte	111                             # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x48c:0x3 DW_TAG_enumerator
	.byte	112                             # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x490:0x9 DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	516                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x499:0x9 DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	1196                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x4a2:0x9 DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	772                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x4ac:0xc DW_TAG_array_type
	.long	772                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x4b1:0x6 DW_TAG_subrange_type
	.long	1208                            # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x4b8:0x4 DW_TAG_base_type
	.byte	115                             # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x4bc:0x5 DW_TAG_pointer_type
	.long	134                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x4c1:0x31 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	1781                            # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x4cd:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	1789                            # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x4d3:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.long	1797                            # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x4d9:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.long	1805                            # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x4df:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.long	1813                            # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x4e5:0x6 DW_TAG_call_site
	.long	1266                            # DW_AT_call_origin
	.byte	1                               # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x4eb:0x6 DW_TAG_call_site
	.long	1286                            # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x4f2:0xf DW_TAG_subprogram
	.byte	118                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x4f6:0x5 DW_TAG_formal_parameter
	.long	1281                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4fb:0x5 DW_TAG_formal_parameter
	.long	439                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x501:0x5 DW_TAG_pointer_type
	.long	236                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x506:0x13 DW_TAG_subprogram
	.byte	119                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	515                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x50e:0x5 DW_TAG_formal_parameter
	.long	516                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x513:0x5 DW_TAG_formal_parameter
	.long	439                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x519:0xb0 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\360~"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	431                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x52c:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	322                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x535:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.long	439                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x53e:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	541                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x547:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	576                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x550:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.long	516                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x559:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.long	586                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x562:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	576                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x56b:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	516                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x574:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	596                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x57d:0x8 DW_TAG_variable
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	1212                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x585:0x10 DW_TAG_lexical_block
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp76-.Ltmp68                 # DW_AT_high_pc
	.byte	32                              # Abbrev [32] 0x58b:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	156                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	1027                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x595:0x17 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0x597:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	32
	.byte	146                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.long	2188                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x5a2:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.long	2200                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x5ac:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	94
	.byte	5                               # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5b0:0x6 DW_TAG_call_site
	.long	1481                            # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5b6:0x6 DW_TAG_call_site
	.long	1505                            # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5bc:0x6 DW_TAG_call_site
	.long	1525                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x5c2:0x6 DW_TAG_call_site
	.long	1634                            # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x5c9:0x13 DW_TAG_subprogram
	.byte	120                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	772                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5d1:0x5 DW_TAG_formal_parameter
	.long	1500                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5d6:0x5 DW_TAG_formal_parameter
	.long	556                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5dc:0x5 DW_TAG_pointer_type
	.long	776                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x5e1:0xe DW_TAG_subprogram
	.byte	121                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	339                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5e9:0x5 DW_TAG_formal_parameter
	.long	1519                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5ef:0x5 DW_TAG_pointer_type
	.long	1524                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x5f4:0x1 DW_TAG_const_type
	.byte	27                              # Abbrev [27] 0x5f5:0x18 DW_TAG_subprogram
	.byte	122                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	431                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x5fd:0x5 DW_TAG_formal_parameter
	.long	1281                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x602:0x5 DW_TAG_formal_parameter
	.long	439                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x607:0x5 DW_TAG_formal_parameter
	.long	1549                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x60d:0x5 DW_TAG_pointer_type
	.long	1554                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x612:0x5 DW_TAG_const_type
	.long	1559                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x617:0x8 DW_TAG_typedef
	.long	1567                            # DW_AT_type
	.byte	125                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x61f:0x21 DW_TAG_structure_type
	.byte	124                             # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x624:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	331                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x62d:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	1600                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	6                               # Abbrev [6] 0x636:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x640:0x8 DW_TAG_typedef
	.long	1608                            # DW_AT_type
	.byte	123                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x648:0x5 DW_TAG_pointer_type
	.long	1613                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x64d:0x15 DW_TAG_subroutine_type
	.long	431                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x652:0x5 DW_TAG_formal_parameter
	.long	1281                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x657:0x5 DW_TAG_formal_parameter
	.long	439                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x65c:0x5 DW_TAG_formal_parameter
	.long	1549                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x662:0xf DW_TAG_subprogram
	.byte	126                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x666:0x5 DW_TAG_formal_parameter
	.long	322                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x66b:0x5 DW_TAG_formal_parameter
	.long	331                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x671:0x33 DW_TAG_subprogram
	.byte	10                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	29                              # Abbrev [29] 0x67c:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.long	322                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x685:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.long	439                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x68e:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.long	1212                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x697:0x6 DW_TAG_call_site
	.long	1266                            # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	38                              # Abbrev [38] 0x69d:0x6 DW_TAG_call_site
	.long	1700                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	12                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x6a4:0xf DW_TAG_subprogram
	.byte	127                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x6a8:0x5 DW_TAG_formal_parameter
	.long	515                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6ad:0x5 DW_TAG_formal_parameter
	.long	439                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x6b3:0x42 DW_TAG_subprogram
	.byte	13                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	431                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x6c2:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.long	322                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x6cc:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	67                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.long	695                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x6d6:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.long	695                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x6e0:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	158                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.long	339                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x6ea:0xa DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.long	1212                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x6f5:0x29 DW_TAG_subprogram
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	431                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	41                              # Abbrev [41] 0x6fd:0x8 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.long	1281                            # DW_AT_type
	.byte	41                              # Abbrev [41] 0x705:0x8 DW_TAG_formal_parameter
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.long	439                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x70d:0x8 DW_TAG_formal_parameter
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.long	339                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x715:0x8 DW_TAG_formal_parameter
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x71e:0x7f DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	431                             # DW_AT_type
                                        # DW_AT_external
	.byte	29                              # Abbrev [29] 0x72d:0x9 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	159                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.long	1963                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x736:0x9 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.long	339                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x73f:0x45 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	32                              # Abbrev [32] 0x741:0x9 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.long	2200                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x74a:0x10 DW_TAG_lexical_block
	.byte	15                              # DW_AT_low_pc
	.long	.Ltmp98-.Ltmp96                 # DW_AT_high_pc
	.byte	32                              # Abbrev [32] 0x750:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.long	2200                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x75a:0x29 DW_TAG_inlined_subroutine
	.long	1781                            # DW_AT_abstract_origin
	.byte	16                              # DW_AT_low_pc
	.long	.Ltmp115-.Ltmp100               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	235                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	44                              # Abbrev [44] 0x767:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	1789                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x76e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	92
	.long	1797                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x775:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1805                            # DW_AT_abstract_origin
	.byte	45                              # Abbrev [45] 0x77c:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1813                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x784:0x6 DW_TAG_call_site
	.long	1949                            # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x78a:0x6 DW_TAG_call_site
	.long	1266                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x790:0x6 DW_TAG_call_site
	.long	1286                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	25                              # Abbrev [25] 0x796:0x6 DW_TAG_call_site
	.long	2177                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x79d:0xe DW_TAG_subprogram
	.byte	130                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	431                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x7a5:0x5 DW_TAG_formal_parameter
	.long	1963                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x7ab:0x5 DW_TAG_pointer_type
	.long	1968                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x7b0:0x9 DW_TAG_typedef
	.long	1977                            # DW_AT_type
	.byte	140                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x7b9:0xba DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x7be:0xa DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	546                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7c8:0xa DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	516                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7d2:0xa DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	339                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7dc:0xa DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	591                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7e6:0xa DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	516                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7f0:0xa DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	339                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7fa:0xa DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	439                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x804:0xa DW_TAG_member
	.byte	136                             # DW_AT_name
	.long	2163                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x80e:0xa DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x818:0xa DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x822:0xa DW_TAG_member
	.byte	138                             # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x82c:0xa DW_TAG_member
	.byte	139                             # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x836:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	339                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x840:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	339                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x84a:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	516                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x854:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	516                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x85e:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	1098                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x868:0xa DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1098                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x873:0x5 DW_TAG_pointer_type
	.long	2168                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x878:0x9 DW_TAG_typedef
	.long	1118                            # DW_AT_type
	.byte	137                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	46                              # Abbrev [46] 0x881:0xb DW_TAG_subprogram
	.byte	141                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x886:0x5 DW_TAG_formal_parameter
	.long	1963                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x88c:0xc DW_TAG_array_type
	.long	1559                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x891:0x6 DW_TAG_subrange_type
	.long	1208                            # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x898:0x5 DW_TAG_const_type
	.long	431                             # DW_AT_type
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
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	648                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/alone_decoder.c" # string offset=105
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
	.asciz	"SEQ_PROPERTIES"                # string offset=820
.Linfo_string58:
	.asciz	"SEQ_DICTIONARY_SIZE"           # string offset=835
.Linfo_string59:
	.asciz	"SEQ_UNCOMPRESSED_SIZE"         # string offset=855
.Linfo_string60:
	.asciz	"SEQ_CODER_INIT"                # string offset=877
.Linfo_string61:
	.asciz	"SEQ_CODE"                      # string offset=892
.Linfo_string62:
	.asciz	"picky"                         # string offset=901
.Linfo_string63:
	.asciz	"_Bool"                         # string offset=907
.Linfo_string64:
	.asciz	"pos"                           # string offset=913
.Linfo_string65:
	.asciz	"uncompressed_size"             # string offset=917
.Linfo_string66:
	.asciz	"memlimit"                      # string offset=935
.Linfo_string67:
	.asciz	"memusage"                      # string offset=944
.Linfo_string68:
	.asciz	"dict_size"                     # string offset=953
.Linfo_string69:
	.asciz	"__uint32_t"                    # string offset=963
.Linfo_string70:
	.asciz	"uint32_t"                      # string offset=974
.Linfo_string71:
	.asciz	"preset_dict"                   # string offset=983
.Linfo_string72:
	.asciz	"preset_dict_size"              # string offset=995
.Linfo_string73:
	.asciz	"lc"                            # string offset=1012
.Linfo_string74:
	.asciz	"lp"                            # string offset=1015
.Linfo_string75:
	.asciz	"pb"                            # string offset=1018
.Linfo_string76:
	.asciz	"mode"                          # string offset=1021
.Linfo_string77:
	.asciz	"LZMA_MODE_FAST"                # string offset=1026
.Linfo_string78:
	.asciz	"LZMA_MODE_NORMAL"              # string offset=1041
.Linfo_string79:
	.asciz	"lzma_mode"                     # string offset=1058
.Linfo_string80:
	.asciz	"nice_len"                      # string offset=1068
.Linfo_string81:
	.asciz	"mf"                            # string offset=1077
.Linfo_string82:
	.asciz	"LZMA_MF_HC3"                   # string offset=1080
.Linfo_string83:
	.asciz	"LZMA_MF_HC4"                   # string offset=1092
.Linfo_string84:
	.asciz	"LZMA_MF_BT2"                   # string offset=1104
.Linfo_string85:
	.asciz	"LZMA_MF_BT3"                   # string offset=1116
.Linfo_string86:
	.asciz	"LZMA_MF_BT4"                   # string offset=1128
.Linfo_string87:
	.asciz	"lzma_match_finder"             # string offset=1140
.Linfo_string88:
	.asciz	"depth"                         # string offset=1158
.Linfo_string89:
	.asciz	"reserved_int1"                 # string offset=1164
.Linfo_string90:
	.asciz	"reserved_int2"                 # string offset=1178
.Linfo_string91:
	.asciz	"reserved_int3"                 # string offset=1192
.Linfo_string92:
	.asciz	"reserved_int4"                 # string offset=1206
.Linfo_string93:
	.asciz	"reserved_int5"                 # string offset=1220
.Linfo_string94:
	.asciz	"reserved_int6"                 # string offset=1234
.Linfo_string95:
	.asciz	"reserved_int7"                 # string offset=1248
.Linfo_string96:
	.asciz	"reserved_int8"                 # string offset=1262
.Linfo_string97:
	.asciz	"reserved_enum1"                # string offset=1276
.Linfo_string98:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=1291
.Linfo_string99:
	.asciz	"lzma_reserved_enum"            # string offset=1310
.Linfo_string100:
	.asciz	"reserved_enum2"                # string offset=1329
.Linfo_string101:
	.asciz	"reserved_enum3"                # string offset=1344
.Linfo_string102:
	.asciz	"reserved_enum4"                # string offset=1359
.Linfo_string103:
	.asciz	"reserved_ptr1"                 # string offset=1374
.Linfo_string104:
	.asciz	"reserved_ptr2"                 # string offset=1388
.Linfo_string105:
	.asciz	"lzma_options_lzma"             # string offset=1402
.Linfo_string106:
	.asciz	"lzma_coder_s"                  # string offset=1420
.Linfo_string107:
	.asciz	"ISEQ_RUN"                      # string offset=1433
.Linfo_string108:
	.asciz	"ISEQ_SYNC_FLUSH"               # string offset=1442
.Linfo_string109:
	.asciz	"ISEQ_FULL_FLUSH"               # string offset=1458
.Linfo_string110:
	.asciz	"ISEQ_FINISH"                   # string offset=1474
.Linfo_string111:
	.asciz	"ISEQ_END"                      # string offset=1486
.Linfo_string112:
	.asciz	"ISEQ_ERROR"                    # string offset=1495
.Linfo_string113:
	.asciz	"avail_in"                      # string offset=1506
.Linfo_string114:
	.asciz	"supported_actions"             # string offset=1515
.Linfo_string115:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1533
.Linfo_string116:
	.asciz	"allow_buf_error"               # string offset=1553
.Linfo_string117:
	.asciz	"lzma_internal_s"               # string offset=1569
.Linfo_string118:
	.asciz	"lzma_next_end"                 # string offset=1585
.Linfo_string119:
	.asciz	"lzma_alloc"                    # string offset=1599
.Linfo_string120:
	.asciz	"lzma_lzma_lclppb_decode"       # string offset=1610
.Linfo_string121:
	.asciz	"lzma_lzma_decoder_memusage"    # string offset=1634
.Linfo_string122:
	.asciz	"lzma_next_filter_init"         # string offset=1661
.Linfo_string123:
	.asciz	"lzma_init_function"            # string offset=1683
.Linfo_string124:
	.asciz	"lzma_filter_info_s"            # string offset=1702
.Linfo_string125:
	.asciz	"lzma_filter_info"              # string offset=1721
.Linfo_string126:
	.asciz	"lzma_lz_decoder_uncompressed"  # string offset=1738
.Linfo_string127:
	.asciz	"lzma_free"                     # string offset=1767
.Linfo_string128:
	.asciz	"lzma_alone_decoder_init"       # string offset=1777
.Linfo_string129:
	.asciz	"allocator"                     # string offset=1801
.Linfo_string130:
	.asciz	"lzma_strm_init"                # string offset=1811
.Linfo_string131:
	.asciz	"next_in"                       # string offset=1826
.Linfo_string132:
	.asciz	"total_in"                      # string offset=1834
.Linfo_string133:
	.asciz	"next_out"                      # string offset=1843
.Linfo_string134:
	.asciz	"avail_out"                     # string offset=1852
.Linfo_string135:
	.asciz	"total_out"                     # string offset=1862
.Linfo_string136:
	.asciz	"internal"                      # string offset=1872
.Linfo_string137:
	.asciz	"lzma_internal"                 # string offset=1881
.Linfo_string138:
	.asciz	"reserved_ptr3"                 # string offset=1895
.Linfo_string139:
	.asciz	"reserved_ptr4"                 # string offset=1909
.Linfo_string140:
	.asciz	"lzma_stream"                   # string offset=1923
.Linfo_string141:
	.asciz	"lzma_end"                      # string offset=1935
.Linfo_string142:
	.asciz	"alone_decode"                  # string offset=1944
.Linfo_string143:
	.asciz	"alone_decoder_end"             # string offset=1957
.Linfo_string144:
	.asciz	"alone_decoder_memconfig"       # string offset=1975
.Linfo_string145:
	.asciz	"lzma_alone_decoder"            # string offset=1999
.Linfo_string146:
	.asciz	"filters"                       # string offset=2018
.Linfo_string147:
	.asciz	"pcoder"                        # string offset=2026
.Linfo_string148:
	.asciz	"in"                            # string offset=2033
.Linfo_string149:
	.asciz	"in_pos"                        # string offset=2036
.Linfo_string150:
	.asciz	"in_size"                       # string offset=2043
.Linfo_string151:
	.asciz	"out"                           # string offset=2051
.Linfo_string152:
	.asciz	"out_pos"                       # string offset=2055
.Linfo_string153:
	.asciz	"out_size"                      # string offset=2063
.Linfo_string154:
	.asciz	"action"                        # string offset=2072
.Linfo_string155:
	.asciz	"ret"                           # string offset=2079
.Linfo_string156:
	.asciz	"d"                             # string offset=2083
.Linfo_string157:
	.asciz	"old_memlimit"                  # string offset=2085
.Linfo_string158:
	.asciz	"new_memlimit"                  # string offset=2098
.Linfo_string159:
	.asciz	"strm"                          # string offset=2111
.Linfo_string160:
	.asciz	"ret_"                          # string offset=2116
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp3
	.quad	.Ltmp9
	.quad	.Lfunc_begin1
	.quad	.Ltmp68
	.quad	.Ltmp34
	.quad	.Ltmp46
	.quad	.Ltmp54
	.quad	.Ltmp59
	.quad	.Ltmp62
	.quad	.Lfunc_begin2
	.quad	.Ltmp84
	.quad	.Ltmp86
	.quad	.Lfunc_begin3
	.quad	.Lfunc_begin4
	.quad	.Ltmp96
	.quad	.Ltmp100
	.quad	.Ltmp97
	.quad	.Ltmp103
	.quad	.Ltmp109
	.quad	.Ltmp118
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
