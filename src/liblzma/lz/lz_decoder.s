	.text
	.file	"lz_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/lz/lz_decoder.c" md5 0xed19f3c26d5c9c90f2e6eec526321cb7
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	5 "liblzma/lz" "lz_decoder.h" md5 0x27344aa2da5754ad4a118fbd9137003b
	.file	6 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	7 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	8 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	9 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	10 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.globl	lzma_lz_decoder_init            # -- Begin function lzma_lz_decoder_init
	.p2align	4, 0x90
	.type	lzma_lz_decoder_init,@function
lzma_lz_decoder_init:                   # @lzma_lz_decoder_init
.Lfunc_begin0:
	.loc	0 212 0                         # liblzma/lz/lz_decoder.c:212:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- $rdx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- $rcx
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
.Ltmp0:
	.loc	0 214 12 prologue_end           # liblzma/lz/lz_decoder.c:214:12
	movq	(%rdi), %rdi
.Ltmp1:
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	.loc	0 214 18 is_stmt 0              # liblzma/lz/lz_decoder.c:214:18
	testq	%rdi, %rdi
.Ltmp2:
	.loc	0 214 6                         # liblzma/lz/lz_decoder.c:214:6
	jne	.LBB0_3
.Ltmp3:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- $r12
	.loc	0 215 17 is_stmt 1              # liblzma/lz/lz_decoder.c:215:17
	movl	$4272, %edi                     # imm = 0x10B0
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp4:
	.loc	0 215 15 is_stmt 0              # liblzma/lz/lz_decoder.c:215:15
	movq	%rax, (%r15)
.Ltmp5:
	.loc	0 216 19 is_stmt 1              # liblzma/lz/lz_decoder.c:216:19
	testq	%rax, %rax
.Ltmp6:
	.loc	0 216 7 is_stmt 0               # liblzma/lz/lz_decoder.c:216:7
	je	.LBB0_13
.Ltmp7:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- $r12
	.loc	0 219 14 is_stmt 1              # liblzma/lz/lz_decoder.c:219:14
	movq	$lz_decode, 24(%r15)
	.loc	0 220 13                        # liblzma/lz/lz_decoder.c:220:13
	movq	$lz_decoder_end, 32(%r15)
	.loc	0 222 49                        # liblzma/lz/lz_decoder.c:222:49
	movq	$0, (%rax)
	.loc	0 223 32                        # liblzma/lz/lz_decoder.c:223:32
	movq	(%r15), %rax
	.loc	0 223 50 is_stmt 0              # liblzma/lz/lz_decoder.c:223:50
	movq	$0, 32(%rax)
	.loc	0 224 32 is_stmt 1              # liblzma/lz/lz_decoder.c:224:32
	movq	(%r15), %rax
	.loc	0 224 45 is_stmt 0              # liblzma/lz/lz_decoder.c:224:45
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%rax)
	movups	%xmm0, 48(%rax)
	movq	$0, 80(%rax)
	.loc	0 225 32 is_stmt 1              # liblzma/lz/lz_decoder.c:225:32
	movq	(%r15), %rax
	.loc	0 225 47 is_stmt 0              # liblzma/lz/lz_decoder.c:225:47
	movq	$0, 88(%rax)
	movq	$-1, 96(%rax)
	movups	%xmm0, 104(%rax)
	movups	%xmm0, 120(%rax)
	movups	%xmm0, 136(%rax)
.Ltmp8:
	.loc	0 231 2 is_stmt 1               # liblzma/lz/lz_decoder.c:231:2
	movq	(%r15), %rdi
.Ltmp9:
.LBB0_3:                                # %if.end18
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- $r12
	addq	$48, %rdi
	movq	16(%rbx), %rdx
	movq	%rsp, %rcx
	movq	%r14, %rsi
	callq	*%r12
.Ltmp10:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 231 2 is_stmt 0               # liblzma/lz/lz_decoder.c:231:2
	testl	%eax, %eax
	jne	.LBB0_14
.Ltmp11:
# %bb.4:                                # %do.end
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- $r12
	.loc	0 239 17 is_stmt 1              # liblzma/lz/lz_decoder.c:239:17
	movq	(%rsp), %rdx
	movl	$4096, %ecx                     # imm = 0x1000
	.loc	0 239 27 is_stmt 0              # liblzma/lz/lz_decoder.c:239:27
	cmpq	$4096, %rdx                     # imm = 0x1000
.Ltmp12:
	.loc	0 239 6                         # liblzma/lz/lz_decoder.c:239:6
	jb	.LBB0_6
.Ltmp13:
# %bb.5:                                # %if.end28
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- $r12
	.loc	0 0 6                           # liblzma/lz/lz_decoder.c:0:6
	movl	$5, %eax
	movq	%rdx, %rcx
.Ltmp14:
	.loc	0 249 27 is_stmt 1              # liblzma/lz/lz_decoder.c:249:27
	cmpq	$-16, %rdx
.Ltmp15:
	.loc	0 249 6 is_stmt 0               # liblzma/lz/lz_decoder.c:249:6
	ja	.LBB0_14
.Ltmp16:
.LBB0_6:                                # %if.end32
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- $r12
	.loc	0 252 47 is_stmt 1              # liblzma/lz/lz_decoder.c:252:47
	addq	$15, %rcx
	.loc	0 252 53 is_stmt 0              # liblzma/lz/lz_decoder.c:252:53
	andq	$-16, %rcx
	.loc	0 252 23                        # liblzma/lz/lz_decoder.c:252:23
	movq	%rcx, (%rsp)
.Ltmp17:
	.loc	0 255 35 is_stmt 1              # liblzma/lz/lz_decoder.c:255:35
	movq	(%r15), %rax
	.loc	0 255 53 is_stmt 0              # liblzma/lz/lz_decoder.c:255:53
	cmpq	%rcx, 32(%rax)
.Ltmp18:
	.loc	0 255 6                         # liblzma/lz/lz_decoder.c:255:6
	je	.LBB0_9
.Ltmp19:
# %bb.7:                                # %if.then40
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- $r12
	.loc	0 256 55 is_stmt 1              # liblzma/lz/lz_decoder.c:256:55
	movq	(%rax), %rdi
	.loc	0 256 3 is_stmt 0               # liblzma/lz/lz_decoder.c:256:3
	movq	%r14, %rsi
	callq	lzma_free@PLT
.Ltmp20:
	.loc	0 258 29 is_stmt 1              # liblzma/lz/lz_decoder.c:258:29
	movq	(%rsp), %rdi
	.loc	0 258 7 is_stmt 0               # liblzma/lz/lz_decoder.c:258:7
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp21:
	.loc	0 257 32 is_stmt 1              # liblzma/lz/lz_decoder.c:257:32
	movq	(%r15), %rcx
	.loc	0 258 5                         # liblzma/lz/lz_decoder.c:258:5
	movq	%rax, (%rcx)
.Ltmp22:
	.loc	0 259 36                        # liblzma/lz/lz_decoder.c:259:36
	movq	(%r15), %rax
	.loc	0 259 53 is_stmt 0              # liblzma/lz/lz_decoder.c:259:53
	cmpq	$0, (%rax)
.Ltmp23:
	.loc	0 259 7                         # liblzma/lz/lz_decoder.c:259:7
	je	.LBB0_13
.Ltmp24:
# %bb.8:                                # %if.end54
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- $r12
	.loc	0 262 63 is_stmt 1              # liblzma/lz/lz_decoder.c:262:63
	movq	(%rsp), %rcx
	.loc	0 262 50 is_stmt 0              # liblzma/lz/lz_decoder.c:262:50
	movq	%rcx, 32(%rax)
.Ltmp25:
	.loc	0 265 25 is_stmt 1              # liblzma/lz/lz_decoder.c:265:25
	movq	(%r15), %rax
.Ltmp26:
	.loc	0 60 30                         # liblzma/lz/lz_decoder.c:60:30
	movq	32(%rax), %rcx
.Ltmp27:
.LBB0_9:                                # %if.end59
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- $r12
	#DEBUG_VALUE: lz_decoder_reset:pcoder <- $rax
	#DEBUG_VALUE: lz_decoder_reset:coder <- $rax
	.loc	0 59 19                         # liblzma/lz/lz_decoder.c:59:19
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	.loc	0 60 14                         # liblzma/lz/lz_decoder.c:60:14
	movq	(%rax), %rdx
	.loc	0 60 40 is_stmt 0               # liblzma/lz/lz_decoder.c:60:40
	movb	$0, -1(%rdx,%rcx)
	.loc	0 61 25 is_stmt 1               # liblzma/lz/lz_decoder.c:61:25
	movb	$0, 40(%rax)
.Ltmp28:
	.loc	0 268 17                        # liblzma/lz/lz_decoder.c:268:17
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rax
.Ltmp29:
	.loc	0 268 29 is_stmt 0              # liblzma/lz/lz_decoder.c:268:29
	testq	%rsi, %rsi
	setne	%cl
	testq	%rax, %rax
	setne	%dl
	.loc	0 269 4 is_stmt 1               # liblzma/lz/lz_decoder.c:269:4
	andb	%cl, %dl
	cmpb	$1, %dl
	jne	.LBB0_11
.Ltmp30:
# %bb.10:                               # %if.then63
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- $r12
	.loc	0 272 28                        # liblzma/lz/lz_decoder.c:272:28
	movq	(%rsp), %r12
.Ltmp31:
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- [DW_OP_LLVM_entry_value 1] $rcx
	cmpq	%r12, %rax
	cmovbq	%rax, %r12
.Ltmp32:
	#DEBUG_VALUE: copy_size <- $r12
	.loc	0 274 53                        # liblzma/lz/lz_decoder.c:274:53
	subq	%r12, %rax
.Ltmp33:
	#DEBUG_VALUE: offset <- $rax
	.loc	0 275 39                        # liblzma/lz/lz_decoder.c:275:39
	movq	(%r15), %rcx
	.loc	0 275 52 is_stmt 0              # liblzma/lz/lz_decoder.c:275:52
	movq	(%rcx), %rdi
	.loc	0 275 80                        # liblzma/lz/lz_decoder.c:275:80
	addq	%rax, %rsi
	.loc	0 275 3                         # liblzma/lz/lz_decoder.c:275:3
	movq	%r12, %rdx
	callq	memcpy@PLT
.Ltmp34:
	.loc	0 277 32 is_stmt 1              # liblzma/lz/lz_decoder.c:277:32
	movq	(%r15), %rax
	.loc	0 277 49 is_stmt 0              # liblzma/lz/lz_decoder.c:277:49
	movq	%r12, 8(%rax)
	.loc	0 278 32 is_stmt 1              # liblzma/lz/lz_decoder.c:278:32
	movq	(%r15), %rax
	.loc	0 278 50 is_stmt 0              # liblzma/lz/lz_decoder.c:278:50
	movq	%r12, 16(%rax)
.Ltmp35:
.LBB0_11:                               # %if.end78
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 282 31 is_stmt 1              # liblzma/lz/lz_decoder.c:282:31
	movq	(%r15), %rax
	.loc	0 282 53 is_stmt 0              # liblzma/lz/lz_decoder.c:282:53
	movb	$0, 152(%rax)
	.loc	0 283 31 is_stmt 1              # liblzma/lz/lz_decoder.c:283:31
	movq	(%r15), %rax
	.loc	0 283 53 is_stmt 0              # liblzma/lz/lz_decoder.c:283:53
	movb	$0, 153(%rax)
	.loc	0 284 31 is_stmt 1              # liblzma/lz/lz_decoder.c:284:31
	movq	(%r15), %rax
	.loc	0 284 48 is_stmt 0              # liblzma/lz/lz_decoder.c:284:48
	movq	$0, 160(%rax)
	.loc	0 285 31 is_stmt 1              # liblzma/lz/lz_decoder.c:285:31
	movq	(%r15), %rax
	.loc	0 285 49 is_stmt 0              # liblzma/lz/lz_decoder.c:285:49
	movq	$0, 168(%rax)
	.loc	0 288 61 is_stmt 1              # liblzma/lz/lz_decoder.c:288:61
	movq	(%r15), %rdi
	.loc	0 288 69 is_stmt 0              # liblzma/lz/lz_decoder.c:288:69
	addq	$88, %rdi
	.loc	0 289 12 is_stmt 1              # liblzma/lz/lz_decoder.c:289:12
	addq	$24, %rbx
.Ltmp36:
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 288 9                         # liblzma/lz/lz_decoder.c:288:9
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	lzma_next_filter_init@PLT
.Ltmp37:
	.loc	0 0 9 is_stmt 0                 # liblzma/lz/lz_decoder.c:0:9
	jmp	.LBB0_14
.Ltmp38:
.LBB0_13:
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- $r12
	movl	$5, %eax
.Ltmp39:
.LBB0_14:                               # %return
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_decoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lz_decoder_init:lz_init <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 290 1 epilogue_begin is_stmt 1 # liblzma/lz/lz_decoder.c:290:1
	addq	$24, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp40:
	#DEBUG_VALUE: lzma_lz_decoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp41:
	#DEBUG_VALUE: lzma_lz_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp42:
.Lfunc_end0:
	.size	lzma_lz_decoder_init, .Lfunc_end0-lzma_lz_decoder_init
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lz_decode
.LCPI1_0:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	lz_decode,@function
lz_decode:                              # @lz_decode
.Lfunc_begin1:
	.loc	0 136 0                         # liblzma/lz/lz_decoder.c:136:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lz_decode:pcoder <- $rdi
	#DEBUG_VALUE: lz_decode:allocator <- $rsi
	#DEBUG_VALUE: lz_decode:in <- $rdx
	#DEBUG_VALUE: lz_decode:in_pos <- $rcx
	#DEBUG_VALUE: lz_decode:in_size <- $r8
	#DEBUG_VALUE: lz_decode:out <- $r9
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
.Ltmp43:
	#DEBUG_VALUE: lz_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: lz_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- $rdi
	movq	%r9, 64(%rsp)                   # 8-byte Spill
.Ltmp44:
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	movq	%r8, 40(%rsp)                   # 8-byte Spill
.Ltmp45:
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
.Ltmp46:
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
.Ltmp47:
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
.Ltmp48:
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	movq	%rdi, %rsi
	movq	152(%rsp), %rcx
	movq	144(%rsp), %rax
.Ltmp49:
	.loc	0 138 23 prologue_end           # liblzma/lz/lz_decoder.c:138:23
	cmpq	$0, 112(%rdi)
	movq	%rdi, (%rsp)                    # 8-byte Spill
.Ltmp50:
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	.loc	0 138 6 is_stmt 0               # liblzma/lz/lz_decoder.c:138:6
	je	.LBB1_8
.Ltmp51:
# %bb.1:                                # %while.cond.preheader
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: lz_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	.loc	0 0 6                           # liblzma/lz/lz_decoder.c:0:6
	movq	(%rax), %rbp
	.loc	0 144 18 is_stmt 1              # liblzma/lz/lz_decoder.c:144:18
	cmpq	%rcx, %rbp
	.loc	0 144 2 is_stmt 0               # liblzma/lz/lz_decoder.c:144:2
	jae	.LBB1_31
.Ltmp52:
# %bb.2:                                # %while.body.lr.ph
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: lz_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	.loc	0 0 2                           # liblzma/lz/lz_decoder.c:0:2
	leaq	160(%rsi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	168(%rsi), %r14
	leaq	176(%rsi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leaq	8(%rsi), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB1_3
.Ltmp53:
	.p2align	4, 0x90
.LBB1_27:                               # %decode_buffer.exit139
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: ret <- $r12d
	.loc	0 177 7 is_stmt 1               # liblzma/lz/lz_decoder.c:177:7
	testl	%r12d, %r12d
	je	.LBB1_35
.Ltmp54:
# %bb.28:                               # %decode_buffer.exit139
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: ret <- $r12d
	cmpl	$1, %r12d
	jne	.LBB1_38
.Ltmp55:
# %bb.29:                               # %if.then50
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: ret <- $r12d
	.loc	0 178 25                        # liblzma/lz/lz_decoder.c:178:25
	movb	$1, 153(%rsi)
.Ltmp56:
.LBB1_30:                               # %cleanup64
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	.loc	0 144 18                        # liblzma/lz/lz_decoder.c:144:18
	cmpq	%rcx, %rbp
	movq	80(%rsp), %r14                  # 8-byte Reload
	.loc	0 144 2 is_stmt 0               # liblzma/lz/lz_decoder.c:144:2
	jae	.LBB1_31
.Ltmp57:
.LBB1_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	.loc	0 147 5 is_stmt 1               # liblzma/lz/lz_decoder.c:147:5
	cmpb	$0, 152(%rsi)
	jne	.LBB1_18
.Ltmp58:
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	.loc	0 0 5 is_stmt 0                 # liblzma/lz/lz_decoder.c:0:5
	movq	16(%rsp), %rax                  # 8-byte Reload
	.loc	0 147 20                        # liblzma/lz/lz_decoder.c:147:20
	movq	(%rax), %rax
	.loc	0 147 24                        # liblzma/lz/lz_decoder.c:147:24
	cmpq	(%r14), %rax
.Ltmp59:
	.loc	0 146 7 is_stmt 1               # liblzma/lz/lz_decoder.c:146:7
	jne	.LBB1_18
.Ltmp60:
# %bb.5:                                # %if.then4
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	.loc	0 0 7 is_stmt 0                 # liblzma/lz/lz_decoder.c:0:7
	movq	16(%rsp), %rax                  # 8-byte Reload
.Ltmp61:
	.loc	0 149 21 is_stmt 1              # liblzma/lz/lz_decoder.c:149:21
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	.loc	0 152 18                        # liblzma/lz/lz_decoder.c:152:18
	movq	88(%rsi), %rdi
	.loc	0 151 25                        # liblzma/lz/lz_decoder.c:151:25
	subq	$8, %rsp
.Ltmp62:
	.cfi_adjust_cfa_offset 8
	.loc	0 0 25 is_stmt 0                # liblzma/lz/lz_decoder.c:0:25
	movq	%rsi, %r10
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	64(%rsp), %r9                   # 8-byte Reload
	.loc	0 151 25                        # liblzma/lz/lz_decoder.c:151:25
	movl	168(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$4096                           # imm = 0x1000
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*112(%r10)
.Ltmp63:
	#DEBUG_VALUE: ret <- $eax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	.loc	0 157 8 is_stmt 1               # liblzma/lz/lz_decoder.c:157:8
	testl	%eax, %eax
	je	.LBB1_17
.Ltmp64:
# %bb.6:                                # %if.then4
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: ret <- $eax
	.loc	0 0 0 is_stmt 0                 # liblzma/lz/lz_decoder.c:0:0
	movl	%eax, %r12d
	.loc	0 157 8                         # liblzma/lz/lz_decoder.c:157:8
	cmpl	$1, %eax
	jne	.LBB1_38
.Ltmp65:
# %bb.7:                                # %if.then18
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: ret <- $r12d
	.loc	0 0 8                           # liblzma/lz/lz_decoder.c:0:8
	movq	(%rsp), %rsi                    # 8-byte Reload
.Ltmp66:
	.loc	0 158 26 is_stmt 1              # liblzma/lz/lz_decoder.c:158:26
	movb	$1, 152(%rsi)
	movq	152(%rsp), %rcx
	.loc	0 158 5 is_stmt 0               # liblzma/lz/lz_decoder.c:158:5
	jmp	.LBB1_18
.Ltmp67:
.LBB1_17:                               # %lor.lhs.false
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: ret <- $eax
	.loc	0 159 48 is_stmt 1              # liblzma/lz/lz_decoder.c:159:48
	cmpq	$0, (%r14)
	movq	152(%rsp), %rcx
	movq	(%rsp), %rsi                    # 8-byte Reload
.Ltmp68:
	.loc	0 159 13 is_stmt 0              # liblzma/lz/lz_decoder.c:159:13
	je	.LBB1_31
.Ltmp69:
	.p2align	4, 0x90
.LBB1_18:                               # %if.end27
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	.loc	0 0 0                           # liblzma/lz/lz_decoder.c:0:0
	movq	168(%rsi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	.loc	0 163 7 is_stmt 1               # liblzma/lz/lz_decoder.c:163:7
	cmpb	$1, 153(%rsi)
	je	.LBB1_19
.Ltmp70:
# %bb.21:                               # %if.end39
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out_pos <- undef
	#DEBUG_VALUE: decode_buffer:out_size <- undef
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	.loc	0 0 7 is_stmt 0                 # liblzma/lz/lz_decoder.c:0:7
	movq	%rbp, %r13
.Ltmp71:
	.p2align	4, 0x90
.LBB1_22:                               # %while.cond.i112
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	.loc	0 75 19 is_stmt 1               # liblzma/lz/lz_decoder.c:75:19
	movq	8(%rsi), %r15
	.loc	0 75 38 is_stmt 0               # liblzma/lz/lz_decoder.c:75:38
	movq	32(%rsi), %rax
	.loc	0 75 23                         # liblzma/lz/lz_decoder.c:75:23
	cmpq	%rax, %r15
.Ltmp72:
	.loc	0 75 7                          # liblzma/lz/lz_decoder.c:75:7
	jne	.LBB1_24
.Ltmp73:
# %bb.23:                               # %if.then.i138
                                        #   in Loop: Header=BB1_22 Depth=2
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	.loc	0 0 7                           # liblzma/lz/lz_decoder.c:0:7
	movq	48(%rsp), %rdx                  # 8-byte Reload
.Ltmp74:
	.loc	0 76 20 is_stmt 1               # liblzma/lz/lz_decoder.c:76:20
	movq	$0, (%rdx)
	xorl	%r15d, %r15d
.Ltmp75:
.LBB1_24:                               # %if.end.i114
                                        #   in Loop: Header=BB1_22 Depth=2
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: dict_start <- $r15
	.loc	0 87 7                          # liblzma/lz/lz_decoder.c:87:7
	subq	%r13, %rcx
	subq	%r15, %rax
	cmpq	%rax, %rcx
	cmovbq	%rcx, %rax
	.loc	0 87 5 is_stmt 0                # liblzma/lz/lz_decoder.c:87:5
	addq	%r15, %rax
	.loc	0 86 21 is_stmt 1               # liblzma/lz/lz_decoder.c:86:21
	movq	%rax, 24(%rsi)
	.loc	0 92 15                         # liblzma/lz/lz_decoder.c:92:15
	movq	48(%rsi), %rdi
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	(%rsp), %rax                    # 8-byte Reload
	.loc	0 91 24                         # liblzma/lz/lz_decoder.c:91:24
	callq	*56(%rax)
.Ltmp76:
	movl	%eax, %ebx
.Ltmp77:
	#DEBUG_VALUE: ret <- $ebx
	.loc	0 0 24 is_stmt 0                # liblzma/lz/lz_decoder.c:0:24
	movq	(%rsp), %rax                    # 8-byte Reload
	.loc	0 99 38 is_stmt 1               # liblzma/lz/lz_decoder.c:99:38
	movq	(%rax), %r12
	movq	(%rsp), %rax                    # 8-byte Reload
	.loc	0 97 40                         # liblzma/lz/lz_decoder.c:97:40
	movq	8(%rax), %r14
	.loc	0 97 44 is_stmt 0               # liblzma/lz/lz_decoder.c:97:44
	movq	%r14, %rbp
	subq	%r15, %rbp
.Ltmp78:
	#DEBUG_VALUE: copy_size <- $rbp
	.loc	0 0 44                          # liblzma/lz/lz_decoder.c:0:44
	movq	64(%rsp), %rax                  # 8-byte Reload
	.loc	0 99 14 is_stmt 1               # liblzma/lz/lz_decoder.c:99:14
	leaq	(%rax,%r13), %rdi
	.loc	0 99 42 is_stmt 0               # liblzma/lz/lz_decoder.c:99:42
	addq	%r12, %r15
.Ltmp79:
	.loc	0 99 3                          # liblzma/lz/lz_decoder.c:99:3
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memcpy@PLT
.Ltmp80:
	.loc	0 0 3                           # liblzma/lz/lz_decoder.c:0:3
	movq	(%rsp), %rsi                    # 8-byte Reload
	.loc	0 101 12 is_stmt 1              # liblzma/lz/lz_decoder.c:101:12
	addq	%r13, %rbp
.Ltmp81:
	movq	144(%rsp), %rax
	movq	%rbp, (%rax)
	.loc	0 104 7                         # liblzma/lz/lz_decoder.c:104:7
	cmpb	$1, 40(%rsi)
	jne	.LBB1_32
.Ltmp82:
# %bb.25:                               # %if.then31.i133
                                        #   in Loop: Header=BB1_22 Depth=2
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $ebx
	#DEBUG_VALUE: lz_decoder_reset:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: lz_decoder_reset:coder <- [DW_OP_deref] $rsp
	.loc	0 0 7 is_stmt 0                 # liblzma/lz/lz_decoder.c:0:7
	movq	48(%rsp), %rax                  # 8-byte Reload
.Ltmp83:
	.loc	0 59 19 is_stmt 1               # liblzma/lz/lz_decoder.c:59:19
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	.loc	0 60 30                         # liblzma/lz/lz_decoder.c:60:30
	movq	32(%rsi), %rax
	.loc	0 60 40 is_stmt 0               # liblzma/lz/lz_decoder.c:60:40
	movb	$0, -1(%r12,%rax)
	.loc	0 61 25 is_stmt 1               # liblzma/lz/lz_decoder.c:61:25
	movb	$0, 40(%rsi)
.Ltmp84:
	.loc	0 109 12                        # liblzma/lz/lz_decoder.c:109:12
	testl	%ebx, %ebx
	movq	152(%rsp), %rcx
	movl	%ebx, %r12d
.Ltmp85:
	#DEBUG_VALUE: ret <- $r12d
	.loc	0 109 23 is_stmt 0              # liblzma/lz/lz_decoder.c:109:23
	jne	.LBB1_27
.Ltmp86:
# %bb.26:                               # %if.then31.i133
                                        #   in Loop: Header=BB1_22 Depth=2
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $r12d
	.loc	0 0 23                          # liblzma/lz/lz_decoder.c:0:23
	movq	%rbp, %r13
	.loc	0 109 23                        # liblzma/lz/lz_decoder.c:109:23
	cmpq	%rcx, %rbp
	jne	.LBB1_22
	jmp	.LBB1_27
.Ltmp87:
	.p2align	4, 0x90
.LBB1_32:                               # %if.else.i125
                                        #   in Loop: Header=BB1_22 Depth=2
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $ebx
	.loc	0 121 12 is_stmt 1              # liblzma/lz/lz_decoder.c:121:12
	testl	%ebx, %ebx
	movq	152(%rsp), %rcx
	movl	%ebx, %r12d
.Ltmp88:
	#DEBUG_VALUE: ret <- $r12d
	.loc	0 121 23 is_stmt 0              # liblzma/lz/lz_decoder.c:121:23
	jne	.LBB1_27
.Ltmp89:
# %bb.33:                               # %if.else.i125
                                        #   in Loop: Header=BB1_22 Depth=2
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $r12d
	cmpq	%rcx, %rbp
	je	.LBB1_27
.Ltmp90:
# %bb.34:                               # %lor.lhs.false39.i129
                                        #   in Loop: Header=BB1_22 Depth=2
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 56, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $r12d
	.loc	0 0 23                          # liblzma/lz/lz_decoder.c:0:23
	movq	%rbp, %r13
	.loc	0 122 25 is_stmt 1              # liblzma/lz/lz_decoder.c:122:25
	cmpq	32(%rsi), %r14
.Ltmp91:
	.loc	0 121 8                         # liblzma/lz/lz_decoder.c:121:8
	jae	.LBB1_22
.Ltmp92:
.LBB1_35:                               # %if.else55
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	.loc	0 181 33                        # liblzma/lz/lz_decoder.c:181:33
	cmpb	$1, 152(%rsi)
	jne	.LBB1_30
.Ltmp93:
# %bb.36:                               # %if.else55
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	cmpq	%rcx, %rbp
	jae	.LBB1_30
.Ltmp94:
# %bb.37:
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	.loc	0 0 33 is_stmt 0                # liblzma/lz/lz_decoder.c:0:33
	movl	$9, %r12d
	jmp	.LBB1_38
.Ltmp95:
.LBB1_8:                                # %if.then
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: lz_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out_pos <- $rax
	#DEBUG_VALUE: decode_buffer:out_size <- $rcx
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	leaq	8(%rsi), %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	(%rax), %rbp
.Ltmp96:
	.p2align	4, 0x90
.LBB1_9:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: lz_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	.loc	0 75 19 is_stmt 1               # liblzma/lz/lz_decoder.c:75:19
	movq	8(%rsi), %r14
	.loc	0 75 38 is_stmt 0               # liblzma/lz/lz_decoder.c:75:38
	movq	32(%rsi), %rax
	.loc	0 75 23                         # liblzma/lz/lz_decoder.c:75:23
	cmpq	%rax, %r14
.Ltmp97:
	.loc	0 75 7                          # liblzma/lz/lz_decoder.c:75:7
	jne	.LBB1_11
.Ltmp98:
# %bb.10:                               # %if.then.i
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: lz_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	.loc	0 0 7                           # liblzma/lz/lz_decoder.c:0:7
	movq	8(%rsp), %rdx                   # 8-byte Reload
.Ltmp99:
	.loc	0 76 20 is_stmt 1               # liblzma/lz/lz_decoder.c:76:20
	movq	$0, (%rdx)
	xorl	%r14d, %r14d
.Ltmp100:
.LBB1_11:                               # %if.end.i
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: lz_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: dict_start <- $r14
	.loc	0 87 7                          # liblzma/lz/lz_decoder.c:87:7
	subq	%rbp, %rcx
	subq	%r14, %rax
	cmpq	%rax, %rcx
	cmovbq	%rcx, %rax
	.loc	0 87 5 is_stmt 0                # liblzma/lz/lz_decoder.c:87:5
	addq	%r14, %rax
	.loc	0 86 21 is_stmt 1               # liblzma/lz/lz_decoder.c:86:21
	movq	%rax, 24(%rsi)
	.loc	0 92 15                         # liblzma/lz/lz_decoder.c:92:15
	movq	48(%rsi), %rdi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	(%rsp), %rax                    # 8-byte Reload
	.loc	0 91 24                         # liblzma/lz/lz_decoder.c:91:24
	callq	*56(%rax)
.Ltmp101:
	movl	%eax, %r12d
.Ltmp102:
	#DEBUG_VALUE: ret <- $r12d
	.loc	0 0 24 is_stmt 0                # liblzma/lz/lz_decoder.c:0:24
	movq	(%rsp), %rax                    # 8-byte Reload
	.loc	0 99 38 is_stmt 1               # liblzma/lz/lz_decoder.c:99:38
	movq	(%rax), %r13
	movq	(%rsp), %rax                    # 8-byte Reload
	.loc	0 97 40                         # liblzma/lz/lz_decoder.c:97:40
	movq	8(%rax), %r15
	movq	%r15, %rbx
	.loc	0 97 44 is_stmt 0               # liblzma/lz/lz_decoder.c:97:44
	subq	%r14, %r15
.Ltmp103:
	#DEBUG_VALUE: copy_size <- $r15
	.loc	0 0 44                          # liblzma/lz/lz_decoder.c:0:44
	movq	64(%rsp), %rax                  # 8-byte Reload
	.loc	0 99 14 is_stmt 1               # liblzma/lz/lz_decoder.c:99:14
	leaq	(%rax,%rbp), %rdi
	.loc	0 99 42 is_stmt 0               # liblzma/lz/lz_decoder.c:99:42
	addq	%r13, %r14
.Ltmp104:
	.loc	0 99 3                          # liblzma/lz/lz_decoder.c:99:3
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
.Ltmp105:
	.loc	0 0 3                           # liblzma/lz/lz_decoder.c:0:3
	movq	(%rsp), %rsi                    # 8-byte Reload
	.loc	0 101 12 is_stmt 1              # liblzma/lz/lz_decoder.c:101:12
	addq	%r15, %rbp
	movq	144(%rsp), %rax
	movq	%rbp, (%rax)
	.loc	0 104 7                         # liblzma/lz/lz_decoder.c:104:7
	cmpb	$1, 40(%rsi)
	jne	.LBB1_14
.Ltmp106:
# %bb.12:                               # %if.then31.i
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: lz_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $r12d
	#DEBUG_VALUE: copy_size <- $r15
	#DEBUG_VALUE: lz_decoder_reset:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: lz_decoder_reset:coder <- [DW_OP_deref] $rsp
	.loc	0 0 7 is_stmt 0                 # liblzma/lz/lz_decoder.c:0:7
	movq	8(%rsp), %rax                   # 8-byte Reload
.Ltmp107:
	.loc	0 59 19 is_stmt 1               # liblzma/lz/lz_decoder.c:59:19
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	.loc	0 60 30                         # liblzma/lz/lz_decoder.c:60:30
	movq	32(%rsi), %rax
	.loc	0 60 40 is_stmt 0               # liblzma/lz/lz_decoder.c:60:40
	movb	$0, -1(%r13,%rax)
	.loc	0 61 25 is_stmt 1               # liblzma/lz/lz_decoder.c:61:25
	movb	$0, 40(%rsi)
.Ltmp108:
	.loc	0 109 12                        # liblzma/lz/lz_decoder.c:109:12
	testl	%r12d, %r12d
	.loc	0 109 23 is_stmt 0              # liblzma/lz/lz_decoder.c:109:23
	jne	.LBB1_38
.Ltmp109:
# %bb.13:                               # %if.then31.i
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: lz_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $r12d
	#DEBUG_VALUE: copy_size <- $r15
	.loc	0 0 23                          # liblzma/lz/lz_decoder.c:0:23
	movq	152(%rsp), %rcx
	.loc	0 109 23                        # liblzma/lz/lz_decoder.c:109:23
	cmpq	%rcx, %rbp
	jne	.LBB1_9
	jmp	.LBB1_38
.Ltmp110:
	.p2align	4, 0x90
.LBB1_14:                               # %if.else.i
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: lz_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $r12d
	#DEBUG_VALUE: copy_size <- $r15
	.loc	0 121 12 is_stmt 1              # liblzma/lz/lz_decoder.c:121:12
	testl	%r12d, %r12d
	.loc	0 121 23 is_stmt 0              # liblzma/lz/lz_decoder.c:121:23
	jne	.LBB1_38
.Ltmp111:
# %bb.15:                               # %if.else.i
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: lz_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $r12d
	#DEBUG_VALUE: copy_size <- $r15
	.loc	0 0 23                          # liblzma/lz/lz_decoder.c:0:23
	movq	152(%rsp), %rcx
	.loc	0 121 23                        # liblzma/lz/lz_decoder.c:121:23
	cmpq	%rcx, %rbp
	je	.LBB1_38
.Ltmp112:
# %bb.16:                               # %lor.lhs.false39.i
                                        #   in Loop: Header=BB1_9 Depth=1
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_pos <- [DW_OP_plus_uconst 144] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out_size <- [DW_OP_plus_uconst 152] [$rsp+0]
	#DEBUG_VALUE: lz_decode:action <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	#DEBUG_VALUE: decode_buffer:pcoder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:in_size <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:out <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	#DEBUG_VALUE: decode_buffer:coder <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: ret <- $r12d
	#DEBUG_VALUE: copy_size <- $r15
	.loc	0 122 25 is_stmt 1              # liblzma/lz/lz_decoder.c:122:25
	cmpq	32(%rsi), %rbx
.Ltmp113:
	.loc	0 121 8                         # liblzma/lz/lz_decoder.c:121:8
	jae	.LBB1_9
.Ltmp114:
.LBB1_31:
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	.loc	0 0 8 is_stmt 0                 # liblzma/lz/lz_decoder.c:0:8
	xorl	%r12d, %r12d
.Ltmp115:
.LBB1_38:                               # %cleanup67
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	.loc	0 186 1 is_stmt 1               # liblzma/lz/lz_decoder.c:186:1
	movl	%r12d, %eax
	.loc	0 186 1 epilogue_begin is_stmt 0 # liblzma/lz/lz_decoder.c:186:1
	addq	$88, %rsp
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
.Ltmp116:
.LBB1_19:                               # %if.then29
	.cfi_def_cfa_offset 144
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	.loc	0 0 1                           # liblzma/lz/lz_decoder.c:0:1
	movl	$9, %r12d
.Ltmp117:
	.loc	0 164 25 is_stmt 1              # liblzma/lz/lz_decoder.c:164:25
	cmpq	$0, 8(%rsp)                     # 8-byte Folded Reload
.Ltmp118:
	.loc	0 164 8 is_stmt 0               # liblzma/lz/lz_decoder.c:164:8
	jne	.LBB1_38
.Ltmp119:
# %bb.20:                               # %if.end34
	#DEBUG_VALUE: lz_decode:pcoder <- [$rsp+0]
	#DEBUG_VALUE: lz_decode:allocator <- [DW_OP_plus_uconst 72] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_pos <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_decode:in_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lz_decode:out <- [DW_OP_plus_uconst 64] [$rsp+0]
	#DEBUG_VALUE: lz_decode:coder <- [$rsp+0]
	.loc	0 167 15 is_stmt 1              # liblzma/lz/lz_decoder.c:167:15
	movzbl	152(%rsi), %r12d
.Ltmp120:
	.loc	0 0 0 is_stmt 0                 # liblzma/lz/lz_decoder.c:0:0
	jmp	.LBB1_38
.Ltmp121:
.Lfunc_end1:
	.size	lz_decode, .Lfunc_end1-lz_decode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lz_decoder_end
	.type	lz_decoder_end,@function
lz_decoder_end:                         # @lz_decoder_end
.Lfunc_begin2:
	.loc	0 191 0 is_stmt 1               # liblzma/lz/lz_decoder.c:191:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lz_decoder_end:pcoder <- $rdi
	#DEBUG_VALUE: lz_decoder_end:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp122:
	#DEBUG_VALUE: lz_decoder_end:coder <- $rdi
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp123:
	.loc	0 193 24 prologue_end           # liblzma/lz/lz_decoder.c:193:24
	addq	$88, %rdi
.Ltmp124:
	#DEBUG_VALUE: lz_decoder_end:coder <- $r14
	#DEBUG_VALUE: lz_decoder_end:pcoder <- $r14
	.loc	0 193 2 is_stmt 0               # liblzma/lz/lz_decoder.c:193:2
	callq	lzma_next_end@PLT
.Ltmp125:
	#DEBUG_VALUE: lz_decoder_end:allocator <- $rbx
	.loc	0 194 24 is_stmt 1              # liblzma/lz/lz_decoder.c:194:24
	movq	(%r14), %rdi
	.loc	0 194 2 is_stmt 0               # liblzma/lz/lz_decoder.c:194:2
	movq	%rbx, %rsi
	callq	lzma_free@PLT
.Ltmp126:
	.loc	0 0 0                           # liblzma/lz/lz_decoder.c:0:0
	movq	48(%r14), %rdi
	.loc	0 196 16 is_stmt 1              # liblzma/lz/lz_decoder.c:196:16
	movq	80(%r14), %rax
	.loc	0 199 3                         # liblzma/lz/lz_decoder.c:199:3
	movq	%rbx, %rsi
	.loc	0 196 20                        # liblzma/lz/lz_decoder.c:196:20
	testq	%rax, %rax
.Ltmp127:
	.loc	0 196 6 is_stmt 0               # liblzma/lz/lz_decoder.c:196:6
	je	.LBB2_2
.Ltmp128:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lz_decoder_end:pcoder <- $r14
	#DEBUG_VALUE: lz_decoder_end:allocator <- $rbx
	#DEBUG_VALUE: lz_decoder_end:coder <- $r14
	.loc	0 197 3 is_stmt 1               # liblzma/lz/lz_decoder.c:197:3
	callq	*%rax
.Ltmp129:
	jmp	.LBB2_3
.Ltmp130:
.LBB2_2:                                # %if.else
	#DEBUG_VALUE: lz_decoder_end:pcoder <- $r14
	#DEBUG_VALUE: lz_decoder_end:allocator <- $rbx
	#DEBUG_VALUE: lz_decoder_end:coder <- $r14
	.loc	0 199 3                         # liblzma/lz/lz_decoder.c:199:3
	callq	lzma_free@PLT
.Ltmp131:
.LBB2_3:                                # %if.end
	#DEBUG_VALUE: lz_decoder_end:pcoder <- $r14
	#DEBUG_VALUE: lz_decoder_end:allocator <- $rbx
	#DEBUG_VALUE: lz_decoder_end:coder <- $r14
	.loc	0 201 2                         # liblzma/lz/lz_decoder.c:201:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 201 2 epilogue_begin is_stmt 0 # liblzma/lz/lz_decoder.c:201:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp132:
	#DEBUG_VALUE: lz_decoder_end:allocator <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp133:
	#DEBUG_VALUE: lz_decoder_end:coder <- $rdi
	#DEBUG_VALUE: lz_decoder_end:pcoder <- $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp134:
.Lfunc_end2:
	.size	lz_decoder_end, .Lfunc_end2-lz_decoder_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lz_decoder_memusage        # -- Begin function lzma_lz_decoder_memusage
	.p2align	4, 0x90
	.type	lzma_lz_decoder_memusage,@function
lzma_lz_decoder_memusage:               # @lzma_lz_decoder_memusage
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lz_decoder_memusage:dictionary_size <- $rdi
	.loc	0 296 37 prologue_end is_stmt 1 # liblzma/lz/lz_decoder.c:296:37
	leaq	4272(%rdi), %rax
	.loc	0 296 2 is_stmt 0               # liblzma/lz/lz_decoder.c:296:2
	retq
.Ltmp135:
.Lfunc_end3:
	.size	lzma_lz_decoder_memusage, .Lfunc_end3-lzma_lz_decoder_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lz_decoder_uncompressed    # -- Begin function lzma_lz_decoder_uncompressed
	.p2align	4, 0x90
	.type	lzma_lz_decoder_uncompressed,@function
lzma_lz_decoder_uncompressed:           # @lzma_lz_decoder_uncompressed
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lz_decoder_uncompressed:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lz_decoder_uncompressed:uncompressed_size <- $rsi
	#DEBUG_VALUE: lzma_lz_decoder_uncompressed:coder <- $rdi
	.loc	0 304 39 prologue_end is_stmt 1 # liblzma/lz/lz_decoder.c:304:39
	movq	48(%rdi), %rax
	.loc	0 304 12 is_stmt 0              # liblzma/lz/lz_decoder.c:304:12
	movq	72(%rdi), %rcx
	.loc	0 304 2                         # liblzma/lz/lz_decoder.c:304:2
	movq	%rax, %rdi
.Ltmp136:
	#DEBUG_VALUE: lzma_lz_decoder_uncompressed:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	jmpq	*%rcx                           # TAILCALL
.Ltmp137:
.Lfunc_end4:
	.size	lzma_lz_decoder_uncompressed, .Lfunc_end4-lzma_lz_decoder_uncompressed
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
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
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
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # 144
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # 144
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	152                             # 152
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	152                             # 152
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	160                             # 160
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	160                             # 160
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp133-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp134-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp134-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp133-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp134-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
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
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
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
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
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
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
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
	.byte	45                              # Abbreviation Code
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
	.byte	46                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	47                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	48                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
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
	.byte	52                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
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
	.byte	53                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	54                              # Abbreviation Code
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
	.byte	55                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x80b DW_TAG_compile_unit
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
	.byte	5                               # Abbrev [5] 0x86:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x87:0x5 DW_TAG_pointer_type
	.long	140                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x8c:0x5e DW_TAG_structure_type
	.byte	74                              # DW_AT_name
	.short	4272                            # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x92:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	234                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x9b:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	342                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xa4:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	667                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xad:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	338                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xb6:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	338                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	153                             # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xbf:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	200                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0xc8:0x21 DW_TAG_structure_type
	.short	4112                            # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xcd:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	326                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xd6:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	326                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xdf:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	989                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xea:0x8 DW_TAG_typedef
	.long	242                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xf2:0x3b DW_TAG_structure_type
	.byte	48                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xf6:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	301                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xff:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	326                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x108:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	326                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x111:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	326                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x11a:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	326                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x123:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	338                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x12d:0x5 DW_TAG_pointer_type
	.long	306                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x132:0x8 DW_TAG_typedef
	.long	314                             # DW_AT_type
	.byte	28                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x13a:0x8 DW_TAG_typedef
	.long	322                             # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x142:0x4 DW_TAG_base_type
	.byte	26                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x146:0x8 DW_TAG_typedef
	.long	334                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x14e:0x4 DW_TAG_base_type
	.byte	30                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x152:0x4 DW_TAG_base_type
	.byte	36                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x156:0x8 DW_TAG_typedef
	.long	350                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x15e:0x32 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x162:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	400                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x16b:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	409                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x174:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	493                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x17d:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	516                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x186:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x190:0x5 DW_TAG_pointer_type
	.long	405                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x195:0x4 DW_TAG_typedef
	.byte	40                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x199:0x5 DW_TAG_pointer_type
	.long	414                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x19e:0x1f DW_TAG_subroutine_type
	.long	445                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x1a3:0x5 DW_TAG_formal_parameter
	.long	453                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1a8:0x5 DW_TAG_formal_parameter
	.long	458                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1ad:0x5 DW_TAG_formal_parameter
	.long	468                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1b2:0x5 DW_TAG_formal_parameter
	.long	483                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1b7:0x5 DW_TAG_formal_parameter
	.long	326                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1bd:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x1c5:0x5 DW_TAG_restrict_type
	.long	400                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1ca:0x5 DW_TAG_restrict_type
	.long	463                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1cf:0x5 DW_TAG_pointer_type
	.long	234                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1d4:0x5 DW_TAG_restrict_type
	.long	473                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1d9:0x5 DW_TAG_pointer_type
	.long	478                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1de:0x5 DW_TAG_const_type
	.long	306                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1e3:0x5 DW_TAG_restrict_type
	.long	488                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1e8:0x5 DW_TAG_pointer_type
	.long	326                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1ed:0x5 DW_TAG_pointer_type
	.long	498                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1f2:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x1f3:0x5 DW_TAG_formal_parameter
	.long	400                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1f8:0x5 DW_TAG_formal_parameter
	.long	510                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1fe:0x5 DW_TAG_pointer_type
	.long	515                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x203:0x1 DW_TAG_const_type
	.byte	6                               # Abbrev [6] 0x204:0x5 DW_TAG_pointer_type
	.long	521                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x209:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x20a:0x5 DW_TAG_formal_parameter
	.long	400                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x20f:0x5 DW_TAG_formal_parameter
	.long	533                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x215:0x8 DW_TAG_typedef
	.long	541                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x21d:0x8 DW_TAG_typedef
	.long	549                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x225:0x8 DW_TAG_typedef
	.long	334                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x22d:0x5 DW_TAG_pointer_type
	.long	562                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x232:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x233:0x5 DW_TAG_formal_parameter
	.long	400                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x238:0x5 DW_TAG_formal_parameter
	.long	574                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x23e:0x5 DW_TAG_pointer_type
	.long	579                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x243:0x9 DW_TAG_typedef
	.long	588                             # DW_AT_type
	.byte	52                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x24c:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x251:0xa DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	624                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x25b:0xa DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	650                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x265:0xa DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x270:0x5 DW_TAG_pointer_type
	.long	629                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x275:0x15 DW_TAG_subroutine_type
	.long	134                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x27a:0x5 DW_TAG_formal_parameter
	.long	134                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x27f:0x5 DW_TAG_formal_parameter
	.long	326                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x284:0x5 DW_TAG_formal_parameter
	.long	326                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x28a:0x5 DW_TAG_pointer_type
	.long	655                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x28f:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x290:0x5 DW_TAG_formal_parameter
	.long	134                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x295:0x5 DW_TAG_formal_parameter
	.long	134                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x29b:0x8 DW_TAG_typedef
	.long	675                             # DW_AT_type
	.byte	68                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2a3:0x4e DW_TAG_structure_type
	.byte	67                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2a8:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	400                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2b1:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	533                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2ba:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	753                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2c3:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	761                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2cc:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	839                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2d5:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	847                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2de:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	881                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2e7:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	917                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2f1:0x8 DW_TAG_typedef
	.long	334                             # DW_AT_type
	.byte	57                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2f9:0x8 DW_TAG_typedef
	.long	769                             # DW_AT_type
	.byte	59                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x301:0x5 DW_TAG_pointer_type
	.long	774                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x306:0x33 DW_TAG_subroutine_type
	.long	445                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x30b:0x5 DW_TAG_formal_parameter
	.long	400                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x310:0x5 DW_TAG_formal_parameter
	.long	574                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x315:0x5 DW_TAG_formal_parameter
	.long	468                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x31a:0x5 DW_TAG_formal_parameter
	.long	483                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x31f:0x5 DW_TAG_formal_parameter
	.long	326                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x324:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x329:0x5 DW_TAG_formal_parameter
	.long	483                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x32e:0x5 DW_TAG_formal_parameter
	.long	326                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x333:0x5 DW_TAG_formal_parameter
	.long	830                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x339:0x5 DW_TAG_restrict_type
	.long	301                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x33e:0x9 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	58                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x347:0x8 DW_TAG_typedef
	.long	557                             # DW_AT_type
	.byte	60                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x34f:0x5 DW_TAG_pointer_type
	.long	852                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x354:0xb DW_TAG_subroutine_type
	.long	863                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x359:0x5 DW_TAG_formal_parameter
	.long	871                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x35f:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	62                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x367:0x5 DW_TAG_pointer_type
	.long	876                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x36c:0x5 DW_TAG_const_type
	.long	405                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x371:0x5 DW_TAG_pointer_type
	.long	886                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x376:0x1a DW_TAG_subroutine_type
	.long	445                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x37b:0x5 DW_TAG_formal_parameter
	.long	400                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x380:0x5 DW_TAG_formal_parameter
	.long	912                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x385:0x5 DW_TAG_formal_parameter
	.long	912                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x38a:0x5 DW_TAG_formal_parameter
	.long	541                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x390:0x5 DW_TAG_pointer_type
	.long	541                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x395:0x5 DW_TAG_pointer_type
	.long	922                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x39a:0x1a DW_TAG_subroutine_type
	.long	445                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x39f:0x5 DW_TAG_formal_parameter
	.long	400                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x3a4:0x5 DW_TAG_formal_parameter
	.long	574                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x3a9:0x5 DW_TAG_formal_parameter
	.long	948                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x3ae:0x5 DW_TAG_formal_parameter
	.long	948                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3b4:0x5 DW_TAG_pointer_type
	.long	953                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x3b9:0x5 DW_TAG_const_type
	.long	958                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3be:0x8 DW_TAG_typedef
	.long	966                             # DW_AT_type
	.byte	66                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3c6:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x3ca:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	533                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3d3:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x3dd:0xd DW_TAG_array_type
	.long	306                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x3e2:0x7 DW_TAG_subrange_type
	.long	1002                            # DW_AT_type
	.short	4096                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x3ea:0x4 DW_TAG_base_type
	.byte	73                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	26                              # Abbrev [26] 0x3ee:0x15 DW_TAG_subprogram
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	27                              # Abbrev [27] 0x3f2:0x8 DW_TAG_formal_parameter
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	400                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x3fa:0x8 DW_TAG_variable
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	135                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x403:0xa1 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	445                             # DW_AT_type
                                        # DW_AT_external
	.byte	30                              # Abbrev [30] 0x412:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.long	1246                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x41b:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.long	574                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x424:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.long	1251                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x42d:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.long	2029                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x436:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.long	1989                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x441:0x10 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp11-.Ltmp8                  # DW_AT_high_pc
	.byte	33                              # Abbrev [33] 0x447:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.long	1440                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x451:0x1b DW_TAG_inlined_subroutine
	.long	1006                            # DW_AT_abstract_origin
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp28-.Ltmp26                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	265                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x45f:0x6 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.long	1010                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x465:0x6 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.long	1018                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x46c:0x1b DW_TAG_lexical_block
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp35-.Ltmp30                 # DW_AT_high_pc
	.byte	37                              # Abbrev [37] 0x472:0xa DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	272                             # DW_AT_decl_line
	.long	1435                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x47c:0xa DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	274                             # DW_AT_decl_line
	.long	1435                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x487:0x6 DW_TAG_call_site
	.long	1188                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	39                              # Abbrev [39] 0x48d:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	92
	.byte	5                               # DW_AT_call_return_pc
	.byte	38                              # Abbrev [38] 0x491:0x6 DW_TAG_call_site
	.long	1207                            # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	38                              # Abbrev [38] 0x497:0x6 DW_TAG_call_site
	.long	1188                            # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	38                              # Abbrev [38] 0x49d:0x6 DW_TAG_call_site
	.long	1222                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x4a4:0x13 DW_TAG_subprogram
	.byte	77                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	134                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x4ac:0x5 DW_TAG_formal_parameter
	.long	326                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x4b1:0x5 DW_TAG_formal_parameter
	.long	574                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x4b7:0xf DW_TAG_subprogram
	.byte	78                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x4bb:0x5 DW_TAG_formal_parameter
	.long	134                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x4c0:0x5 DW_TAG_formal_parameter
	.long	574                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x4c6:0x18 DW_TAG_subprogram
	.byte	79                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	445                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x4ce:0x5 DW_TAG_formal_parameter
	.long	1246                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x4d3:0x5 DW_TAG_formal_parameter
	.long	574                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x4d8:0x5 DW_TAG_formal_parameter
	.long	1251                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x4de:0x5 DW_TAG_pointer_type
	.long	667                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x4e3:0x5 DW_TAG_pointer_type
	.long	1256                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x4e8:0x5 DW_TAG_const_type
	.long	1261                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4ed:0x8 DW_TAG_typedef
	.long	1269                            # DW_AT_type
	.byte	82                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x4f5:0x21 DW_TAG_structure_type
	.byte	81                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x4fa:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	533                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x503:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	1302                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x50c:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	134                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x516:0x8 DW_TAG_typedef
	.long	1310                            # DW_AT_type
	.byte	80                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x51e:0x5 DW_TAG_pointer_type
	.long	1315                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x523:0x15 DW_TAG_subroutine_type
	.long	445                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x528:0x5 DW_TAG_formal_parameter
	.long	1246                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x52d:0x5 DW_TAG_formal_parameter
	.long	574                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x532:0x5 DW_TAG_formal_parameter
	.long	1251                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x538:0x63 DW_TAG_subprogram
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	445                             # DW_AT_type
                                        # DW_AT_inline
	.byte	27                              # Abbrev [27] 0x540:0x8 DW_TAG_formal_parameter
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	400                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x548:0x8 DW_TAG_formal_parameter
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	468                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x550:0x8 DW_TAG_formal_parameter
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	483                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x558:0x8 DW_TAG_formal_parameter
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	326                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x560:0x8 DW_TAG_formal_parameter
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	825                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x568:0x8 DW_TAG_formal_parameter
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	483                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x570:0x8 DW_TAG_formal_parameter
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	326                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x578:0x8 DW_TAG_variable
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	135                             # DW_AT_type
	.byte	43                              # Abbrev [43] 0x580:0x1a DW_TAG_lexical_block
	.byte	28                              # Abbrev [28] 0x581:0x8 DW_TAG_variable
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.long	1435                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x589:0x8 DW_TAG_variable
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	1440                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x591:0x8 DW_TAG_variable
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.long	1435                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x59b:0x5 DW_TAG_const_type
	.long	326                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x5a0:0x5 DW_TAG_const_type
	.long	445                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x5a5:0x182 DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\360~"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	445                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x5b8:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.long	400                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x5c1:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.long	574                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x5ca:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.long	468                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x5d3:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.long	483                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x5dc:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.long	326                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x5e5:0x9 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.long	825                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x5ee:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.long	483                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x5f7:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.long	326                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x600:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.long	830                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x609:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.long	135                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x612:0x76 DW_TAG_inlined_subroutine
	.long	1336                            # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp114-.Ltmp96                # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	139                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	46                              # Abbrev [46] 0x61f:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	1344                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x627:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	24
	.long	1352                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x62f:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	32
	.long	1360                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x637:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	40
	.long	1368                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x63f:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\300"
	.long	1376                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0x648:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	1400                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x650:0x37 DW_TAG_lexical_block
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp114-.Ltmp96                # DW_AT_high_pc
	.byte	36                              # Abbrev [36] 0x656:0x6 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.long	1409                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x65c:0x6 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.long	1417                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x662:0x6 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.long	1425                            # DW_AT_abstract_origin
	.byte	45                              # Abbrev [45] 0x668:0x1e DW_TAG_inlined_subroutine
	.long	1006                            # DW_AT_abstract_origin
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp108-.Ltmp107               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	105                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	46                              # Abbrev [46] 0x675:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	1010                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0x67d:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	1018                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0x688:0x92 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	33                              # Abbrev [33] 0x68a:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.long	1440                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x693:0x10 DW_TAG_lexical_block
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp69-.Ltmp61                 # DW_AT_high_pc
	.byte	33                              # Abbrev [33] 0x699:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	1440                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x6a3:0x76 DW_TAG_inlined_subroutine
	.long	1336                            # DW_AT_abstract_origin
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp92-.Ltmp71                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	173                             # DW_AT_call_line
	.byte	24                              # DW_AT_call_column
	.byte	46                              # Abbrev [46] 0x6b0:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	1344                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x6b8:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	56
	.long	1352                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x6c0:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.long	1360                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x6c8:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.long	1368                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x6d0:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\300"
	.long	1376                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0x6d9:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	1400                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x6e1:0x37 DW_TAG_lexical_block
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp92-.Ltmp71                 # DW_AT_high_pc
	.byte	36                              # Abbrev [36] 0x6e7:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.long	1409                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x6ed:0x6 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.long	1417                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x6f3:0x6 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.long	1425                            # DW_AT_abstract_origin
	.byte	45                              # Abbrev [45] 0x6f9:0x1e DW_TAG_inlined_subroutine
	.long	1006                            # DW_AT_abstract_origin
	.byte	14                              # DW_AT_low_pc
	.long	.Ltmp84-.Ltmp83                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	105                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	46                              # Abbrev [46] 0x706:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	1010                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0x70e:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	1018                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x71a:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	90
	.byte	15                              # DW_AT_call_return_pc
	.byte	39                              # Abbrev [39] 0x71e:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	16                              # DW_AT_call_return_pc
	.byte	39                              # Abbrev [39] 0x722:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	17                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x727:0x43 DW_TAG_subprogram
	.byte	18                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	30                              # Abbrev [30] 0x732:0x9 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.long	400                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x73b:0x9 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.long	574                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x744:0x9 DW_TAG_variable
	.byte	29                              # DW_AT_location
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.long	135                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x74d:0x6 DW_TAG_call_site
	.long	1898                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	38                              # Abbrev [38] 0x753:0x6 DW_TAG_call_site
	.long	1207                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	39                              # Abbrev [39] 0x759:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	21                              # DW_AT_call_return_pc
	.byte	38                              # Abbrev [38] 0x75d:0x6 DW_TAG_call_site
	.long	1207                            # DW_AT_call_origin
	.byte	22                              # DW_AT_call_return_pc
	.byte	50                              # Abbrev [50] 0x763:0x6 DW_TAG_call_site
	.long	1207                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	23                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x76a:0xf DW_TAG_subprogram
	.byte	93                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x76e:0x5 DW_TAG_formal_parameter
	.long	1246                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x773:0x5 DW_TAG_formal_parameter
	.long	574                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x779:0x1c DW_TAG_subprogram
	.byte	24                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	541                             # DW_AT_type
                                        # DW_AT_external
	.byte	52                              # Abbrev [52] 0x789:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
	.long	326                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	53                              # Abbrev [53] 0x795:0x30 DW_TAG_subprogram
	.byte	25                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	54                              # Abbrev [54] 0x7a1:0xa DW_TAG_formal_parameter
	.byte	30                              # DW_AT_location
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.long	400                             # DW_AT_type
	.byte	52                              # Abbrev [52] 0x7ab:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	111                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.long	533                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x7b6:0xa DW_TAG_variable
	.byte	31                              # DW_AT_location
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	303                             # DW_AT_decl_line
	.long	135                             # DW_AT_type
	.byte	55                              # Abbrev [55] 0x7c0:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	82
                                        # DW_AT_call_tail_call
	.byte	26                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7c5:0x8 DW_TAG_typedef
	.long	1997                            # DW_AT_type
	.byte	103                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7cd:0x20 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x7d1:0x9 DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	326                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x7da:0x9 DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	473                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x7e3:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	326                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x7ed:0x5 DW_TAG_pointer_type
	.long	2034                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x7f2:0x1a DW_TAG_subroutine_type
	.long	445                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x7f7:0x5 DW_TAG_formal_parameter
	.long	2060                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x7fc:0x5 DW_TAG_formal_parameter
	.long	574                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x801:0x5 DW_TAG_formal_parameter
	.long	510                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x806:0x5 DW_TAG_formal_parameter
	.long	2065                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x80c:0x5 DW_TAG_pointer_type
	.long	342                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x811:0x5 DW_TAG_pointer_type
	.long	1989                            # DW_AT_type
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
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	452                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/lz/lz_decoder.c"       # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=129
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=161
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=174
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=182
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=198
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=212
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=235
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=250
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=265
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=285
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=303
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=322
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=338
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=353
.Linfo_string16:
	.asciz	"LZMA_RUN"                      # string offset=369
.Linfo_string17:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=378
.Linfo_string18:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=394
.Linfo_string19:
	.asciz	"LZMA_FINISH"                   # string offset=410
.Linfo_string20:
	.asciz	"LZMA_CHECK_NONE"               # string offset=422
.Linfo_string21:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=438
.Linfo_string22:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=455
.Linfo_string23:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=472
.Linfo_string24:
	.asciz	"dict"                          # string offset=490
.Linfo_string25:
	.asciz	"buf"                           # string offset=495
.Linfo_string26:
	.asciz	"unsigned char"                 # string offset=499
.Linfo_string27:
	.asciz	"__uint8_t"                     # string offset=513
.Linfo_string28:
	.asciz	"uint8_t"                       # string offset=523
.Linfo_string29:
	.asciz	"pos"                           # string offset=531
.Linfo_string30:
	.asciz	"unsigned long"                 # string offset=535
.Linfo_string31:
	.asciz	"size_t"                        # string offset=549
.Linfo_string32:
	.asciz	"full"                          # string offset=556
.Linfo_string33:
	.asciz	"limit"                         # string offset=561
.Linfo_string34:
	.asciz	"size"                          # string offset=567
.Linfo_string35:
	.asciz	"need_reset"                    # string offset=572
.Linfo_string36:
	.asciz	"_Bool"                         # string offset=583
.Linfo_string37:
	.asciz	"lzma_dict"                     # string offset=589
.Linfo_string38:
	.asciz	"lz"                            # string offset=599
.Linfo_string39:
	.asciz	"coder"                         # string offset=602
.Linfo_string40:
	.asciz	"lzma_coder"                    # string offset=608
.Linfo_string41:
	.asciz	"code"                          # string offset=619
.Linfo_string42:
	.asciz	"lzma_ret"                      # string offset=624
.Linfo_string43:
	.asciz	"reset"                         # string offset=633
.Linfo_string44:
	.asciz	"set_uncompressed"              # string offset=639
.Linfo_string45:
	.asciz	"__uint64_t"                    # string offset=656
.Linfo_string46:
	.asciz	"uint64_t"                      # string offset=667
.Linfo_string47:
	.asciz	"lzma_vli"                      # string offset=676
.Linfo_string48:
	.asciz	"end"                           # string offset=685
.Linfo_string49:
	.asciz	"alloc"                         # string offset=689
.Linfo_string50:
	.asciz	"free"                          # string offset=695
.Linfo_string51:
	.asciz	"opaque"                        # string offset=700
.Linfo_string52:
	.asciz	"lzma_allocator"                # string offset=707
.Linfo_string53:
	.asciz	"lzma_lz_decoder"               # string offset=722
.Linfo_string54:
	.asciz	"next"                          # string offset=738
.Linfo_string55:
	.asciz	"id"                            # string offset=743
.Linfo_string56:
	.asciz	"init"                          # string offset=746
.Linfo_string57:
	.asciz	"uintptr_t"                     # string offset=751
.Linfo_string58:
	.asciz	"lzma_action"                   # string offset=761
.Linfo_string59:
	.asciz	"lzma_code_function"            # string offset=773
.Linfo_string60:
	.asciz	"lzma_end_function"             # string offset=792
.Linfo_string61:
	.asciz	"get_check"                     # string offset=810
.Linfo_string62:
	.asciz	"lzma_check"                    # string offset=820
.Linfo_string63:
	.asciz	"memconfig"                     # string offset=831
.Linfo_string64:
	.asciz	"update"                        # string offset=841
.Linfo_string65:
	.asciz	"options"                       # string offset=848
.Linfo_string66:
	.asciz	"lzma_filter"                   # string offset=856
.Linfo_string67:
	.asciz	"lzma_next_coder_s"             # string offset=868
.Linfo_string68:
	.asciz	"lzma_next_coder"               # string offset=886
.Linfo_string69:
	.asciz	"next_finished"                 # string offset=902
.Linfo_string70:
	.asciz	"this_finished"                 # string offset=916
.Linfo_string71:
	.asciz	"temp"                          # string offset=930
.Linfo_string72:
	.asciz	"buffer"                        # string offset=935
.Linfo_string73:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=942
.Linfo_string74:
	.asciz	"lzma_coder_s"                  # string offset=962
.Linfo_string75:
	.asciz	"lz_decoder_reset"              # string offset=975
.Linfo_string76:
	.asciz	"pcoder"                        # string offset=992
.Linfo_string77:
	.asciz	"lzma_alloc"                    # string offset=999
.Linfo_string78:
	.asciz	"lzma_free"                     # string offset=1010
.Linfo_string79:
	.asciz	"lzma_next_filter_init"         # string offset=1020
.Linfo_string80:
	.asciz	"lzma_init_function"            # string offset=1042
.Linfo_string81:
	.asciz	"lzma_filter_info_s"            # string offset=1061
.Linfo_string82:
	.asciz	"lzma_filter_info"              # string offset=1080
.Linfo_string83:
	.asciz	"decode_buffer"                 # string offset=1097
.Linfo_string84:
	.asciz	"in"                            # string offset=1111
.Linfo_string85:
	.asciz	"in_pos"                        # string offset=1114
.Linfo_string86:
	.asciz	"in_size"                       # string offset=1121
.Linfo_string87:
	.asciz	"out"                           # string offset=1129
.Linfo_string88:
	.asciz	"out_pos"                       # string offset=1133
.Linfo_string89:
	.asciz	"out_size"                      # string offset=1141
.Linfo_string90:
	.asciz	"dict_start"                    # string offset=1150
.Linfo_string91:
	.asciz	"ret"                           # string offset=1161
.Linfo_string92:
	.asciz	"copy_size"                     # string offset=1165
.Linfo_string93:
	.asciz	"lzma_next_end"                 # string offset=1175
.Linfo_string94:
	.asciz	"lzma_lz_decoder_init"          # string offset=1189
.Linfo_string95:
	.asciz	"lz_decode"                     # string offset=1210
.Linfo_string96:
	.asciz	"lz_decoder_end"                # string offset=1220
.Linfo_string97:
	.asciz	"lzma_lz_decoder_memusage"      # string offset=1235
.Linfo_string98:
	.asciz	"lzma_lz_decoder_uncompressed"  # string offset=1260
.Linfo_string99:
	.asciz	"lz_options"                    # string offset=1289
.Linfo_string100:
	.asciz	"dict_size"                     # string offset=1300
.Linfo_string101:
	.asciz	"preset_dict"                   # string offset=1310
.Linfo_string102:
	.asciz	"preset_dict_size"              # string offset=1322
.Linfo_string103:
	.asciz	"lzma_lz_options"               # string offset=1339
.Linfo_string104:
	.asciz	"allocator"                     # string offset=1355
.Linfo_string105:
	.asciz	"filters"                       # string offset=1365
.Linfo_string106:
	.asciz	"lz_init"                       # string offset=1373
.Linfo_string107:
	.asciz	"ret_"                          # string offset=1381
.Linfo_string108:
	.asciz	"offset"                        # string offset=1386
.Linfo_string109:
	.asciz	"action"                        # string offset=1393
.Linfo_string110:
	.asciz	"dictionary_size"               # string offset=1400
.Linfo_string111:
	.asciz	"uncompressed_size"             # string offset=1416
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp8
	.quad	.Ltmp26
	.quad	.Ltmp30
	.quad	.Ltmp4
	.quad	.Ltmp10
	.quad	.Ltmp20
	.quad	.Ltmp21
	.quad	.Ltmp37
	.quad	.Lfunc_begin1
	.quad	.Ltmp96
	.quad	.Ltmp107
	.quad	.Ltmp61
	.quad	.Ltmp71
	.quad	.Ltmp83
	.quad	.Ltmp63
	.quad	.Ltmp76
	.quad	.Ltmp101
	.quad	.Lfunc_begin2
	.quad	.Ltmp125
	.quad	.Ltmp126
	.quad	.Ltmp129
	.quad	.Ltmp131
	.quad	.Ltmp133
	.quad	.Lfunc_begin3
	.quad	.Lfunc_begin4
	.quad	.Ltmp136
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
