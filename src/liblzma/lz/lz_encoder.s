	.text
	.file	"lz_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/lz/lz_encoder.c" md5 0x65da03540b3892812a4487523e184b85
	.file	1 "liblzma/api/lzma" "lzma.h" md5 0xc59c540efa0aff44f03d71331089fff8
	.file	2 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	3 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	6 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	7 "liblzma/lz" "lz_encoder.h" md5 0x780f78e6e21a3ca52f57df68bfdc6f53
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	10 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	11 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.globl	lzma_lz_encoder_memusage        # -- Begin function lzma_lz_encoder_memusage
	.p2align	4, 0x90
	.type	lzma_lz_encoder_memusage,@function
lzma_lz_encoder_memusage:               # @lzma_lz_encoder_memusage
.Lfunc_begin0:
	.loc	0 445 0                         # liblzma/lz/lz_encoder.c:445:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lz_encoder_memusage:lz_options <- $rdi
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, %rdx
.Ltmp0:
	.loc	0 447 10 prologue_end           # liblzma/lz/lz_encoder.c:447:10
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movq	$0, 112(%rsp)
	movq	%rsp, %rdi
.Ltmp1:
	#DEBUG_VALUE: lzma_lz_encoder_memusage:lz_options <- $rdx
	.loc	0 455 6                         # liblzma/lz/lz_encoder.c:455:6
	xorl	%esi, %esi
	callq	lz_encoder_prepare
.Ltmp2:
	#DEBUG_VALUE: lzma_lz_encoder_memusage:lz_options <- [DW_OP_LLVM_entry_value 1] $rdi
	movl	%eax, %ecx
	movq	$-1, %rax
.Ltmp3:
	.loc	0 455 6 is_stmt 0               # liblzma/lz/lz_encoder.c:455:6
	testb	%cl, %cl
	jne	.LBB0_2
.Ltmp4:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: lzma_lz_encoder_memusage:lz_options <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 461 41 is_stmt 1              # liblzma/lz/lz_encoder.c:461:41
	movl	8(%rsp), %eax
	.loc	0 459 42                        # liblzma/lz/lz_encoder.c:459:42
	movl	112(%rsp), %ecx
	.loc	0 459 37 is_stmt 0              # liblzma/lz/lz_encoder.c:459:37
	addl	108(%rsp), %ecx
	.loc	0 461 47 is_stmt 1              # liblzma/lz/lz_encoder.c:461:47
	leaq	(%rax,%rcx,4), %rax
	addq	$216, %rax
.Ltmp5:
.LBB0_2:                                # %cleanup
	#DEBUG_VALUE: lzma_lz_encoder_memusage:lz_options <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 462 1 epilogue_begin          # liblzma/lz/lz_encoder.c:462:1
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp6:
.Lfunc_end0:
	.size	lzma_lz_encoder_memusage, .Lfunc_end0-lzma_lz_encoder_memusage
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lz_encoder_prepare
	.type	lz_encoder_prepare,@function
lz_encoder_prepare:                     # @lz_encoder_prepare
.Lfunc_begin1:
	.loc	0 186 0                         # liblzma/lz/lz_encoder.c:186:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lz_encoder_prepare:mf <- $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- $rdx
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
	.loc	0 190 18 prologue_end           # liblzma/lz/lz_encoder.c:190:18
	movq	8(%rdx), %rax
	.loc	0 191 4                         # liblzma/lz/lz_encoder.c:191:4
	leaq	-1610612737(%rax), %rcx
	movb	$1, %bl
	cmpq	$-1610608641, %rcx              # imm = 0xA0000FFF
	jb	.LBB1_21
.Ltmp7:
# %bb.1:                                # %lor.lhs.false3
	#DEBUG_VALUE: lz_encoder_prepare:mf <- $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- $rdx
	.loc	0 193 19                        # liblzma/lz/lz_encoder.c:193:19
	movq	32(%rdx), %rcx
	.loc	0 193 28 is_stmt 0              # liblzma/lz/lz_encoder.c:193:28
	cmpq	24(%rdx), %rcx
.Ltmp8:
	.loc	0 190 6 is_stmt 1               # liblzma/lz/lz_encoder.c:190:6
	ja	.LBB1_21
.Ltmp9:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lz_encoder_prepare:mf <- $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- $rdx
	.loc	0 196 49                        # liblzma/lz/lz_encoder.c:196:49
	addl	(%rdx), %eax
	.loc	0 196 23 is_stmt 0              # liblzma/lz/lz_encoder.c:196:23
	movl	%eax, 12(%rdi)
	.loc	0 199 18 is_stmt 1              # liblzma/lz/lz_encoder.c:199:18
	movl	24(%rdx), %r8d
	.loc	0 199 4 is_stmt 0               # liblzma/lz/lz_encoder.c:199:4
	addl	16(%rdx), %r8d
	.loc	0 198 22 is_stmt 1              # liblzma/lz/lz_encoder.c:198:22
	movl	%r8d, 16(%rdi)
	.loc	0 212 33                        # liblzma/lz/lz_encoder.c:212:33
	movq	8(%rdx), %r9
	.loc	0 216 52                        # liblzma/lz/lz_encoder.c:216:52
	movq	24(%rdx), %r10
	.loc	0 212 43                        # liblzma/lz/lz_encoder.c:212:43
	shrq	%r9
.Ltmp10:
	#DEBUG_VALUE: lz_encoder_prepare:reserve <- $r9d
	.loc	0 213 14                        # liblzma/lz/lz_encoder.c:213:14
	cmpl	$1073741825, %r9d               # imm = 0x40000001
	setae	%cl
.Ltmp11:
	.loc	0 213 6 is_stmt 0               # liblzma/lz/lz_encoder.c:213:6
	shrl	%cl, %r9d
.Ltmp12:
	#DEBUG_VALUE: lz_encoder_prepare:reserve <- $r9d
	.loc	0 216 38 is_stmt 1              # liblzma/lz/lz_encoder.c:216:38
	addq	(%rdx), %r10
	.loc	0 217 4                         # liblzma/lz/lz_encoder.c:217:4
	addq	16(%rdx), %r10
	.loc	0 217 30 is_stmt 0              # liblzma/lz/lz_encoder.c:217:30
	shrq	%r10
.Ltmp13:
	#DEBUG_VALUE: lz_encoder_prepare:reserve <- undef
	.loc	0 219 32 is_stmt 1              # liblzma/lz/lz_encoder.c:219:32
	movl	8(%rdi), %ecx
.Ltmp14:
	#DEBUG_VALUE: lz_encoder_prepare:old_size <- $ecx
	.loc	0 216 10                        # liblzma/lz/lz_encoder.c:216:10
	addl	%eax, %r8d
	addl	%r9d, %r8d
	.loc	0 220 44                        # liblzma/lz/lz_encoder.c:220:44
	addl	%r10d, %r8d
	addl	$524288, %r8d                   # imm = 0x80000
	.loc	0 220 11 is_stmt 0              # liblzma/lz/lz_encoder.c:220:11
	movl	%r8d, 8(%rdi)
.Ltmp15:
	.loc	0 224 10 is_stmt 1              # liblzma/lz/lz_encoder.c:224:10
	movq	(%rdi), %rax
	.loc	0 224 17 is_stmt 0              # liblzma/lz/lz_encoder.c:224:17
	testq	%rax, %rax
	.loc	0 224 25                        # liblzma/lz/lz_encoder.c:224:25
	je	.LBB1_5
.Ltmp16:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: lz_encoder_prepare:mf <- $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- $rdx
	#DEBUG_VALUE: lz_encoder_prepare:old_size <- $ecx
	cmpl	%r8d, %ecx
	je	.LBB1_5
.Ltmp17:
# %bb.4:                                # %if.then36
	#DEBUG_VALUE: lz_encoder_prepare:mf <- $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- $rdx
	#DEBUG_VALUE: lz_encoder_prepare:old_size <- $ecx
	.loc	0 0 25                          # liblzma/lz/lz_encoder.c:0:25
	movq	%rdi, %r15
.Ltmp18:
	#DEBUG_VALUE: lz_encoder_prepare:mf <- $r15
	.loc	0 225 3 is_stmt 1               # liblzma/lz/lz_encoder.c:225:3
	movq	%rax, %rdi
	movq	%rsi, %r14
	movq	%rdx, %r12
.Ltmp19:
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- $r12
	callq	lzma_free@PLT
.Ltmp20:
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- $r14
	.loc	0 0 3 is_stmt 0                 # liblzma/lz/lz_encoder.c:0:3
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%r15, %rdi
	.loc	0 226 14 is_stmt 1              # liblzma/lz/lz_encoder.c:226:14
	movq	$0, (%r15)
.Ltmp21:
.LBB1_5:                                # %if.end39
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 230 34                        # liblzma/lz/lz_encoder.c:230:34
	movl	24(%rdx), %eax
	.loc	0 230 20 is_stmt 0              # liblzma/lz/lz_encoder.c:230:20
	movl	%eax, 100(%rdi)
	.loc	0 231 29 is_stmt 1              # liblzma/lz/lz_encoder.c:231:29
	movl	32(%rdx), %r8d
	.loc	0 231 15 is_stmt 0              # liblzma/lz/lz_encoder.c:231:15
	movl	%r8d, 96(%rdi)
	.loc	0 248 32 is_stmt 1              # liblzma/lz/lz_encoder.c:248:32
	movl	8(%rdx), %eax
	.loc	0 248 20 is_stmt 0              # liblzma/lz/lz_encoder.c:248:20
	incl	%eax
	.loc	0 248 18                        # liblzma/lz/lz_encoder.c:248:18
	movl	%eax, 84(%rdi)
	.loc	0 251 22 is_stmt 1              # liblzma/lz/lz_encoder.c:251:22
	movl	40(%rdx), %ecx
	.loc	0 251 2 is_stmt 0               # liblzma/lz/lz_encoder.c:251:2
	addl	$-3, %ecx
	cmpl	$17, %ecx
	ja	.LBB1_21
.Ltmp22:
# %bb.6:                                # %if.end39
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	jmpq	*.LJTI1_0(,%rcx,8)
.Ltmp23:
.LBB1_7:
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 0 2                           # liblzma/lz/lz_encoder.c:0:2
	movq	lzma_mf_hc3_skip@GOTPCREL(%rip), %rcx
	movq	lzma_mf_hc3_find@GOTPCREL(%rip), %r9
	jmp	.LBB1_12
.Ltmp24:
.LBB1_9:                                # %sw.bb52
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	movq	lzma_mf_bt2_skip@GOTPCREL(%rip), %rcx
	movq	lzma_mf_bt2_find@GOTPCREL(%rip), %r9
	jmp	.LBB1_12
.Ltmp25:
.LBB1_8:                                # %sw.bb49
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	movq	lzma_mf_hc4_skip@GOTPCREL(%rip), %rcx
	movq	lzma_mf_hc4_find@GOTPCREL(%rip), %r9
	jmp	.LBB1_12
.Ltmp26:
.LBB1_10:                               # %sw.bb55
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	movq	lzma_mf_bt3_skip@GOTPCREL(%rip), %rcx
	movq	lzma_mf_bt3_find@GOTPCREL(%rip), %r9
	jmp	.LBB1_12
.Ltmp27:
.LBB1_11:                               # %sw.bb58
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	movq	lzma_mf_bt4_skip@GOTPCREL(%rip), %rcx
	movq	lzma_mf_bt4_find@GOTPCREL(%rip), %r9
.Ltmp28:
.LBB1_12:                               # %sw.epilog
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	movq	%r9, 48(%rdi)
	movq	%rcx, 56(%rdi)
.Ltmp29:
	.loc	0 289 42 is_stmt 1              # liblzma/lz/lz_encoder.c:289:42
	movl	40(%rdx), %ebp
	.loc	0 289 55 is_stmt 0              # liblzma/lz/lz_encoder.c:289:55
	movl	%ebp, %ecx
	andl	$15, %ecx
.Ltmp30:
	#DEBUG_VALUE: lz_encoder_prepare:hash_bytes <- $ecx
	.loc	0 290 17 is_stmt 1              # liblzma/lz/lz_encoder.c:290:17
	cmpl	%r8d, %ecx
.Ltmp31:
	.loc	0 290 6 is_stmt 0               # liblzma/lz/lz_encoder.c:290:6
	ja	.LBB1_21
.Ltmp32:
# %bb.13:                               # %if.end66
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lz_encoder_prepare:hash_bytes <- $ecx
	.loc	0 293 47 is_stmt 1              # liblzma/lz/lz_encoder.c:293:47
	andl	$16, %ebp
	movl	$65535, %r8d                    # imm = 0xFFFF
.Ltmp33:
	#DEBUG_VALUE: lz_encoder_prepare:is_bt <- undef
	.loc	0 296 17                        # liblzma/lz/lz_encoder.c:296:17
	cmpl	$2, %ecx
.Ltmp34:
	.loc	0 296 6 is_stmt 0               # liblzma/lz/lz_encoder.c:296:6
	je	.LBB1_16
.Ltmp35:
# %bb.14:                               # %if.else
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lz_encoder_prepare:hash_bytes <- $ecx
	.loc	0 301 20 is_stmt 1              # liblzma/lz/lz_encoder.c:301:20
	movl	8(%rdx), %r8d
	.loc	0 301 8 is_stmt 0               # liblzma/lz/lz_encoder.c:301:8
	decl	%r8d
.Ltmp36:
	#DEBUG_VALUE: lz_encoder_prepare:hs <- $r8d
	.loc	0 302 12 is_stmt 1              # liblzma/lz/lz_encoder.c:302:12
	movl	%r8d, %r9d
	shrl	%r9d
	.loc	0 302 6 is_stmt 0               # liblzma/lz/lz_encoder.c:302:6
	orl	%r8d, %r9d
.Ltmp37:
	#DEBUG_VALUE: lz_encoder_prepare:hs <- $r9d
	.loc	0 303 12 is_stmt 1              # liblzma/lz/lz_encoder.c:303:12
	movl	%r9d, %r10d
	shrl	$2, %r10d
	.loc	0 303 6 is_stmt 0               # liblzma/lz/lz_encoder.c:303:6
	orl	%r9d, %r10d
.Ltmp38:
	#DEBUG_VALUE: lz_encoder_prepare:hs <- $r10d
	.loc	0 304 12 is_stmt 1              # liblzma/lz/lz_encoder.c:304:12
	movl	%r10d, %r8d
	shrl	$4, %r8d
	.loc	0 304 6 is_stmt 0               # liblzma/lz/lz_encoder.c:304:6
	orl	%r10d, %r8d
.Ltmp39:
	#DEBUG_VALUE: lz_encoder_prepare:hs <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 8, DW_OP_shr, DW_OP_or, DW_OP_stack_value] $r8d, $r8d
	.loc	0 306 6 is_stmt 1               # liblzma/lz/lz_encoder.c:306:6
	movl	%r8d, %r9d
	shrl	$9, %r9d
	shrl	%r8d
.Ltmp40:
	#DEBUG_VALUE: lz_encoder_prepare:hs <- undef
	.loc	0 307 6                         # liblzma/lz/lz_encoder.c:307:6
	orl	%r9d, %r8d
	orl	$65535, %r8d                    # imm = 0xFFFF
.Ltmp41:
	#DEBUG_VALUE: lz_encoder_prepare:hs <- $r8d
	.loc	0 309 10                        # liblzma/lz/lz_encoder.c:309:10
	cmpl	$16777217, %r8d                 # imm = 0x1000001
.Ltmp42:
	.loc	0 309 7 is_stmt 0               # liblzma/lz/lz_encoder.c:309:7
	jb	.LBB1_16
.Ltmp43:
# %bb.15:                               # %if.then86
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lz_encoder_prepare:hash_bytes <- $ecx
	#DEBUG_VALUE: lz_encoder_prepare:hs <- $r8d
	.loc	0 0 7                           # liblzma/lz/lz_encoder.c:0:7
	shrl	%r8d
.Ltmp44:
	.loc	0 310 19 is_stmt 1              # liblzma/lz/lz_encoder.c:310:19
	cmpl	$3, %ecx
	movl	$16777215, %r9d                 # imm = 0xFFFFFF
.Ltmp45:
	.loc	0 310 8 is_stmt 0               # liblzma/lz/lz_encoder.c:310:8
	cmovel	%r9d, %r8d
.Ltmp46:
.LBB1_16:                               # %if.end94
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lz_encoder_prepare:hash_bytes <- $ecx
	#DEBUG_VALUE: lz_encoder_prepare:hs <- $r8d
	.loc	0 317 16 is_stmt 1              # liblzma/lz/lz_encoder.c:317:16
	movl	%r8d, 88(%rdi)
.Ltmp47:
	#DEBUG_VALUE: lz_encoder_prepare:hs <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8d
	.loc	0 320 17                        # liblzma/lz/lz_encoder.c:320:17
	xorl	%r9d, %r9d
	cmpl	$3, %ecx
	setae	%r9b
.Ltmp48:
	.loc	0 320 6 is_stmt 0               # liblzma/lz/lz_encoder.c:320:6
	shll	$10, %r9d
	addl	%r8d, %r9d
.Ltmp49:
	#DEBUG_VALUE: lz_encoder_prepare:hs <- undef
	.loc	0 322 17 is_stmt 1              # liblzma/lz/lz_encoder.c:322:17
	xorl	%r8d, %r8d
	cmpl	$4, %ecx
	setae	%r8b
.Ltmp50:
	.loc	0 322 6 is_stmt 0               # liblzma/lz/lz_encoder.c:322:6
	shll	$16, %r8d
	leal	(%r8,%r9), %r10d
	incl	%r10d
.Ltmp51:
	#DEBUG_VALUE: lz_encoder_prepare:hs <- $r10d
	addl	%r9d, %r8d
	.loc	0 336 53 is_stmt 1              # liblzma/lz/lz_encoder.c:336:53
	movl	112(%rdi), %r9d
	.loc	0 336 47 is_stmt 0              # liblzma/lz/lz_encoder.c:336:47
	addl	108(%rdi), %r9d
.Ltmp52:
	#DEBUG_VALUE: lz_encoder_prepare:old_count <- $r9d
	.loc	0 339 6 is_stmt 1               # liblzma/lz/lz_encoder.c:339:6
	movl	%ebp, %ecx
.Ltmp53:
	shrl	$4, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	.loc	0 337 20                        # liblzma/lz/lz_encoder.c:337:20
	movl	%r10d, 108(%rdi)
	.loc	0 0 0 is_stmt 0                 # liblzma/lz/lz_encoder.c:0:0
	movl	%eax, 112(%rdi)
	.loc	0 342 47 is_stmt 1              # liblzma/lz/lz_encoder.c:342:47
	addl	%r8d, %eax
	incl	%eax
.Ltmp54:
	#DEBUG_VALUE: lz_encoder_prepare:new_count <- $eax
	.loc	0 346 16                        # liblzma/lz/lz_encoder.c:346:16
	cmpl	%eax, %r9d
.Ltmp55:
	.loc	0 346 6 is_stmt 0               # liblzma/lz/lz_encoder.c:346:6
	je	.LBB1_18
.Ltmp56:
# %bb.17:                               # %if.then117
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lz_encoder_prepare:hs <- $r10d
	#DEBUG_VALUE: lz_encoder_prepare:old_count <- $r9d
	#DEBUG_VALUE: lz_encoder_prepare:new_count <- $eax
	.loc	0 347 17 is_stmt 1              # liblzma/lz/lz_encoder.c:347:17
	movq	64(%rdi), %rax
.Ltmp57:
	.loc	0 0 17 is_stmt 0                # liblzma/lz/lz_encoder.c:0:17
	movq	%rdi, %rbx
	.loc	0 347 3                         # liblzma/lz/lz_encoder.c:347:3
	movq	%rax, %rdi
	movq	%rdx, %r14
	callq	lzma_free@PLT
.Ltmp58:
	.loc	0 0 3                           # liblzma/lz/lz_encoder.c:0:3
	movq	%r14, %rdx
	movq	%rbx, %rdi
	.loc	0 348 12 is_stmt 1              # liblzma/lz/lz_encoder.c:348:12
	movq	$0, 64(%rbx)
.Ltmp59:
.LBB1_18:                               # %if.end119
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 352 26                        # liblzma/lz/lz_encoder.c:352:26
	movl	44(%rdx), %eax
	.loc	0 352 12 is_stmt 0              # liblzma/lz/lz_encoder.c:352:12
	movl	%eax, 92(%rdi)
.Ltmp60:
	.loc	0 353 16 is_stmt 1              # liblzma/lz/lz_encoder.c:353:16
	testl	%eax, %eax
.Ltmp61:
	.loc	0 353 6 is_stmt 0               # liblzma/lz/lz_encoder.c:353:6
	jne	.LBB1_20
.Ltmp62:
# %bb.19:                               # %if.then124
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 293 55 is_stmt 1              # liblzma/lz/lz_encoder.c:293:55
	testl	%ebp, %ebp
	sete	%cl
.Ltmp63:
	.loc	0 0 0 is_stmt 0                 # liblzma/lz/lz_encoder.c:0:0
	movl	96(%rdi), %eax
	incb	%cl
	shrl	%cl, %eax
	leal	4(%rax), %ecx
	addl	$16, %eax
.Ltmp64:
	.loc	0 293 55                        # liblzma/lz/lz_encoder.c:293:55
	testl	%ebp, %ebp
.Ltmp65:
	.loc	0 0 0                           # liblzma/lz/lz_encoder.c:0:0
	cmovel	%ecx, %eax
	movl	%eax, 92(%rdi)
.Ltmp66:
.LBB1_20:                               # %return
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	xorl	%ebx, %ebx
.Ltmp67:
.LBB1_21:                               # %return
	#DEBUG_VALUE: lz_encoder_prepare:mf <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lz_encoder_prepare:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lz_encoder_prepare:lz_options <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 361 1 is_stmt 1               # liblzma/lz/lz_encoder.c:361:1
	movl	%ebx, %eax
	.loc	0 361 1 epilogue_begin is_stmt 0 # liblzma/lz/lz_encoder.c:361:1
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp68:
.Lfunc_end1:
	.size	lz_encoder_prepare, .Lfunc_end1-lz_encoder_prepare
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_7
	.quad	.LBB1_8
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_9
	.quad	.LBB1_10
	.quad	.LBB1_11
                                        # -- End function
	.text
	.globl	lzma_lz_encoder_init            # -- Begin function lzma_lz_encoder_init
	.p2align	4, 0x90
	.type	lzma_lz_encoder_init,@function
lzma_lz_encoder_init:                   # @lzma_lz_encoder_init
.Lfunc_begin2:
	.loc	0 507 0 is_stmt 1               # liblzma/lz/lz_encoder.c:507:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rdx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- $rcx
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
	subq	$64, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
.Ltmp69:
	.loc	0 514 12 prologue_end           # liblzma/lz/lz_encoder.c:514:12
	movq	(%rdi), %rdi
.Ltmp70:
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	.loc	0 514 18 is_stmt 0              # liblzma/lz/lz_encoder.c:514:18
	testq	%rdi, %rdi
.Ltmp71:
	.loc	0 514 6                         # liblzma/lz/lz_encoder.c:514:6
	jne	.LBB2_3
.Ltmp72:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- $r12
	.loc	0 515 17 is_stmt 1              # liblzma/lz/lz_encoder.c:515:17
	movl	$216, %edi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp73:
	.loc	0 515 15 is_stmt 0              # liblzma/lz/lz_encoder.c:515:15
	movq	%rax, (%r15)
.Ltmp74:
	.loc	0 516 19 is_stmt 1              # liblzma/lz/lz_encoder.c:516:19
	testq	%rax, %rax
.Ltmp75:
	.loc	0 516 7 is_stmt 0               # liblzma/lz/lz_encoder.c:516:7
	je	.LBB2_13
.Ltmp76:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- $r12
	.loc	0 519 14 is_stmt 1              # liblzma/lz/lz_encoder.c:519:14
	movq	$lz_encode, 24(%r15)
	.loc	0 520 13                        # liblzma/lz/lz_encoder.c:520:13
	movq	$lz_encoder_end, 32(%r15)
	.loc	0 521 16                        # liblzma/lz/lz_encoder.c:521:16
	movq	$lz_encoder_update, 56(%r15)
	.loc	0 523 49                        # liblzma/lz/lz_encoder.c:523:49
	movq	$0, (%rax)
	.loc	0 524 32                        # liblzma/lz/lz_encoder.c:524:32
	movq	(%r15), %rax
	.loc	0 524 48 is_stmt 0              # liblzma/lz/lz_encoder.c:524:48
	movq	$0, 8(%rax)
	.loc	0 525 32 is_stmt 1              # liblzma/lz/lz_encoder.c:525:32
	movq	(%r15), %rax
	.loc	0 525 47 is_stmt 0              # liblzma/lz/lz_encoder.c:525:47
	movq	$0, 16(%rax)
	.loc	0 527 32 is_stmt 1              # liblzma/lz/lz_encoder.c:527:32
	movq	(%r15), %rax
	.loc	0 527 50 is_stmt 0              # liblzma/lz/lz_encoder.c:527:50
	movq	$0, 32(%rax)
	.loc	0 528 32 is_stmt 1              # liblzma/lz/lz_encoder.c:528:32
	movq	(%r15), %rax
	.loc	0 528 48 is_stmt 0              # liblzma/lz/lz_encoder.c:528:48
	movq	$0, 96(%rax)
	.loc	0 529 32 is_stmt 1              # liblzma/lz/lz_encoder.c:529:32
	movq	(%r15), %rax
	.loc	0 529 57 is_stmt 0              # liblzma/lz/lz_encoder.c:529:57
	movl	$0, 140(%rax)
	.loc	0 530 32 is_stmt 1              # liblzma/lz/lz_encoder.c:530:32
	movq	(%r15), %rax
	.loc	0 530 54 is_stmt 0              # liblzma/lz/lz_encoder.c:530:54
	movl	$0, 144(%rax)
	.loc	0 532 32 is_stmt 1              # liblzma/lz/lz_encoder.c:532:32
	movq	(%r15), %rax
	.loc	0 532 47 is_stmt 0              # liblzma/lz/lz_encoder.c:532:47
	movq	$0, 152(%rax)
	movq	$-1, 160(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 168(%rax)
	movups	%xmm0, 184(%rax)
	movups	%xmm0, 200(%rax)
.Ltmp77:
	.loc	0 537 2 is_stmt 1               # liblzma/lz/lz_encoder.c:537:2
	movq	(%r15), %rdi
.Ltmp78:
.LBB2_3:                                # %if.end26
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- $r12
	movq	16(%rbx), %rdx
	movq	%rsp, %rcx
	movq	%r14, %rsi
	callq	*%r12
.Ltmp79:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 537 2 is_stmt 0               # liblzma/lz/lz_encoder.c:537:2
	testl	%eax, %eax
	jne	.LBB2_14
.Ltmp80:
# %bb.4:                                # %do.end
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- $r12
	.loc	0 542 55 is_stmt 1              # liblzma/lz/lz_encoder.c:542:55
	movq	(%r15), %rdi
	.loc	0 542 63 is_stmt 0              # liblzma/lz/lz_encoder.c:542:63
	addq	$32, %rdi
	movq	%rsp, %rdx
	.loc	0 542 6                         # liblzma/lz/lz_encoder.c:542:6
	movq	%r14, %rsi
	callq	lz_encoder_prepare
.Ltmp81:
	movl	%eax, %ecx
	movl	$8, %eax
.Ltmp82:
	.loc	0 542 6                         # liblzma/lz/lz_encoder.c:542:6
	testb	%cl, %cl
	jne	.LBB2_14
.Ltmp83:
# %bb.5:                                # %if.end37
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- $r12
	.loc	0 547 52 is_stmt 1              # liblzma/lz/lz_encoder.c:547:52
	movq	(%r15), %r13
.Ltmp84:
	#DEBUG_VALUE: lz_encoder_init:mf <- undef
	#DEBUG_VALUE: lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lz_encoder_init:lz_options <- $rsp
	.loc	0 369 17                        # liblzma/lz/lz_encoder.c:369:17
	cmpq	$0, 32(%r13)
.Ltmp85:
	.loc	0 369 6 is_stmt 0               # liblzma/lz/lz_encoder.c:369:6
	jne	.LBB2_7
.Ltmp86:
# %bb.6:                                # %if.then.i
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- $r12
	#DEBUG_VALUE: lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lz_encoder_init:lz_options <- $rsp
	.loc	0 370 31 is_stmt 1              # liblzma/lz/lz_encoder.c:370:31
	movl	40(%r13), %edi
	.loc	0 370 16 is_stmt 0              # liblzma/lz/lz_encoder.c:370:16
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp87:
	.loc	0 370 14                        # liblzma/lz/lz_encoder.c:370:14
	movq	%rax, 32(%r13)
.Ltmp88:
	.loc	0 371 18 is_stmt 1              # liblzma/lz/lz_encoder.c:371:18
	testq	%rax, %rax
.Ltmp89:
	.loc	0 371 7 is_stmt 0               # liblzma/lz/lz_encoder.c:371:7
	je	.LBB2_13
.Ltmp90:
.LBB2_7:                                # %if.end6.i
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- $r12
	#DEBUG_VALUE: lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lz_encoder_init:lz_options <- $rsp
	.loc	0 379 19 is_stmt 1              # liblzma/lz/lz_encoder.c:379:19
	movl	116(%r13), %eax
	.loc	0 379 13 is_stmt 0              # liblzma/lz/lz_encoder.c:379:13
	movl	%eax, 52(%r13)
.Ltmp91:
	#DEBUG_VALUE: lz_encoder_init:alloc_count <- undef
	.loc	0 381 17 is_stmt 1              # liblzma/lz/lz_encoder.c:381:17
	xorps	%xmm0, %xmm0
	movups	%xmm0, 56(%r13)
	movl	$0, 72(%r13)
.Ltmp92:
	.loc	0 396 10                        # liblzma/lz/lz_encoder.c:396:10
	movq	96(%r13), %rdi
	.loc	0 396 15 is_stmt 0              # liblzma/lz/lz_encoder.c:396:15
	testq	%rdi, %rdi
.Ltmp93:
	.loc	0 396 6                         # liblzma/lz/lz_encoder.c:396:6
	jne	.LBB2_9
.Ltmp94:
# %bb.8:                                # %if.then10.i
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- $r12
	#DEBUG_VALUE: lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lz_encoder_init:lz_options <- $rsp
	.loc	0 387 53 is_stmt 1              # liblzma/lz/lz_encoder.c:387:53
	movl	144(%r13), %edi
.Ltmp95:
	#DEBUG_VALUE: lz_encoder_init:alloc_count <- undef
	.loc	0 387 47 is_stmt 0              # liblzma/lz/lz_encoder.c:387:47
	addl	140(%r13), %edi
.Ltmp96:
	#DEBUG_VALUE: lz_encoder_init:alloc_count <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_stack_value] $edi
	#DEBUG_VALUE: lz_encoder_init:alloc_count <- $edi
	.loc	0 397 37 is_stmt 1              # liblzma/lz/lz_encoder.c:397:37
	shlq	$2, %rdi
.Ltmp97:
	.loc	0 397 14 is_stmt 0              # liblzma/lz/lz_encoder.c:397:14
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp98:
	movq	%rax, %rdi
	.loc	0 397 12                        # liblzma/lz/lz_encoder.c:397:12
	movq	%rax, 96(%r13)
.Ltmp99:
	.loc	0 399 16 is_stmt 1              # liblzma/lz/lz_encoder.c:399:16
	testq	%rax, %rax
.Ltmp100:
	.loc	0 399 7 is_stmt 0               # liblzma/lz/lz_encoder.c:399:7
	je	.LBB2_13
.Ltmp101:
.LBB2_9:                                # %if.end18.i
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- $r12
	#DEBUG_VALUE: lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lz_encoder_init:lz_options <- $rsp
	.loc	0 403 27 is_stmt 1              # liblzma/lz/lz_encoder.c:403:27
	movl	140(%r13), %edx
	.loc	0 403 21 is_stmt 0              # liblzma/lz/lz_encoder.c:403:21
	leaq	(%rdi,%rdx,4), %rax
	.loc	0 403 10                        # liblzma/lz/lz_encoder.c:403:10
	movq	%rax, 104(%r13)
	.loc	0 404 17 is_stmt 1              # liblzma/lz/lz_encoder.c:404:17
	movl	$0, 112(%r13)
	.loc	0 403 21                        # liblzma/lz/lz_encoder.c:403:21
	shlq	$2, %rdx
	.loc	0 412 2                         # liblzma/lz/lz_encoder.c:412:2
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp102:
	.loc	0 425 18                        # liblzma/lz/lz_encoder.c:425:18
	movq	48(%rsp), %rsi
	.loc	0 425 30 is_stmt 0              # liblzma/lz/lz_encoder.c:425:30
	testq	%rsi, %rsi
	.loc	0 426 4 is_stmt 1               # liblzma/lz/lz_encoder.c:426:4
	je	.LBB2_12
.Ltmp103:
# %bb.10:                               # %land.lhs.true.i
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- $r12
	#DEBUG_VALUE: lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lz_encoder_init:lz_options <- $rsp
	.loc	0 426 19 is_stmt 0              # liblzma/lz/lz_encoder.c:426:19
	movl	56(%rsp), %eax
	testq	%rax, %rax
.Ltmp104:
	.loc	0 425 6 is_stmt 1               # liblzma/lz/lz_encoder.c:425:6
	je	.LBB2_12
.Ltmp105:
# %bb.11:                               # %if.then29.i
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- $r12
	#DEBUG_VALUE: lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lz_encoder_init:lz_options <- $rsp
	.loc	0 0 6 is_stmt 0                 # liblzma/lz/lz_encoder.c:0:6
	leaq	32(%r13), %r12
.Ltmp106:
	#DEBUG_VALUE: lz_encoder_init:mf <- $r12
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 429 19 is_stmt 1              # liblzma/lz/lz_encoder.c:429:19
	movl	40(%r13), %edx
	cmpl	%edx, %eax
	cmovbl	%eax, %edx
	.loc	0 429 17 is_stmt 0              # liblzma/lz/lz_encoder.c:429:17
	movl	%edx, 68(%r13)
	.loc	0 430 14 is_stmt 1              # liblzma/lz/lz_encoder.c:430:14
	movq	32(%r13), %rdi
	.loc	0 431 5                         # liblzma/lz/lz_encoder.c:431:5
	addq	%rax, %rsi
	.loc	0 431 36 is_stmt 0              # liblzma/lz/lz_encoder.c:431:36
	subq	%rdx, %rsi
	.loc	0 430 3 is_stmt 1               # liblzma/lz/lz_encoder.c:430:3
	callq	memcpy@PLT
.Ltmp107:
	.loc	0 433 14                        # liblzma/lz/lz_encoder.c:433:14
	movl	$1, 136(%r13)
	.loc	0 434 20                        # liblzma/lz/lz_encoder.c:434:20
	movl	68(%r13), %esi
	.loc	0 434 3 is_stmt 0               # liblzma/lz/lz_encoder.c:434:3
	movq	%r12, %rdi
	callq	*88(%r13)
.Ltmp108:
.LBB2_12:                               # %if.end42
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lz_encoder_init:lz_options <- $rsp
	.loc	0 437 13 is_stmt 1              # liblzma/lz/lz_encoder.c:437:13
	movl	$0, 136(%r13)
	movl	$152, %edi
.Ltmp109:
	.loc	0 551 69                        # liblzma/lz/lz_encoder.c:551:69
	addq	(%r15), %rdi
	.loc	0 552 12                        # liblzma/lz/lz_encoder.c:552:12
	addq	$24, %rbx
.Ltmp110:
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 551 9                         # liblzma/lz/lz_encoder.c:551:9
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	lzma_next_filter_init@PLT
.Ltmp111:
	.loc	0 0 9 is_stmt 0                 # liblzma/lz/lz_encoder.c:0:9
	jmp	.LBB2_14
.Ltmp112:
.LBB2_13:
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- $rbx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- $r12
	movl	$5, %eax
.Ltmp113:
.LBB2_14:                               # %return
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- $r15
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- $r14
	#DEBUG_VALUE: lzma_lz_encoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lz_encoder_init:lz_init <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 553 1 epilogue_begin is_stmt 1 # liblzma/lz/lz_encoder.c:553:1
	addq	$64, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp114:
	#DEBUG_VALUE: lzma_lz_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp115:
	#DEBUG_VALUE: lzma_lz_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp116:
.Lfunc_end2:
	.size	lzma_lz_encoder_init, .Lfunc_end2-lzma_lz_encoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lz_encode
	.type	lz_encode,@function
lz_encode:                              # @lz_encode
.Lfunc_begin3:
	.loc	0 157 0                         # liblzma/lz/lz_encoder.c:157:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lz_encode:pcoder <- $rdi
	#DEBUG_VALUE: lz_encode:allocator <- $rsi
	#DEBUG_VALUE: lz_encode:in <- $rdx
	#DEBUG_VALUE: lz_encode:in_pos <- $rcx
	#DEBUG_VALUE: lz_encode:in_size <- $r8
	#DEBUG_VALUE: lz_encode:out <- $r9
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
.Ltmp117:
	#DEBUG_VALUE: lz_encode:out_pos <- [DW_OP_plus_uconst 96] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out_size <- [DW_OP_plus_uconst 104] [$rsp+0]
	#DEBUG_VALUE: lz_encode:action <- [DW_OP_plus_uconst 112] [$rsp+0]
	movq	%r9, %rbx
	movq	%r8, 16(%rsp)                   # 8-byte Spill
.Ltmp118:
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	movq	%rcx, (%rsp)                    # 8-byte Spill
.Ltmp119:
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
.Ltmp120:
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
.Ltmp121:
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	movq	%rdi, %r12
	movq	104(%rsp), %rbp
	movq	96(%rsp), %r13
.Ltmp122:
	#DEBUG_VALUE: lz_encode:coder <- $r12
	leaq	32(%rdi), %r14
	jmp	.LBB3_1
.Ltmp123:
.LBB3_21:                               # %fill_window.exit
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: ret_ <- undef
	.loc	0 164 4 prologue_end            # liblzma/lz/lz_encoder.c:164:4
	testl	%r15d, %r15d
	jne	.LBB3_24
.Ltmp124:
	.p2align	4, 0x90
.LBB3_22:                               # %if.end10
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	.loc	0 168 49                        # liblzma/lz/lz_encoder.c:168:49
	movq	(%r12), %rdi
	.loc	0 168 24 is_stmt 0              # liblzma/lz/lz_encoder.c:168:24
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	%rbp, %r8
	callq	*8(%r12)
.Ltmp125:
	#DEBUG_VALUE: ret <- $eax
	.loc	0 170 11 is_stmt 1              # liblzma/lz/lz_encoder.c:170:11
	testl	%eax, %eax
.Ltmp126:
	.loc	0 170 7 is_stmt 0               # liblzma/lz/lz_encoder.c:170:7
	jne	.LBB3_23
.Ltmp127:
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	.loc	0 0 7                           # liblzma/lz/lz_encoder.c:0:7
	xorl	%r15d, %r15d
	.loc	0 159 18 is_stmt 1              # liblzma/lz/lz_encoder.c:159:18
	cmpq	%rbp, (%r13)
	.loc	0 160 4                         # liblzma/lz/lz_encoder.c:160:4
	jae	.LBB3_24
.Ltmp128:
# %bb.2:                                # %land.rhs
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	.loc	0 0 4 is_stmt 0                 # liblzma/lz/lz_encoder.c:0:4
	movl	112(%rsp), %eax
	testl	%eax, %eax
	.loc	0 159 2 is_stmt 1               # liblzma/lz/lz_encoder.c:159:2
	jne	.LBB3_4
.Ltmp129:
# %bb.3:                                # %land.rhs
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	.loc	0 0 2 is_stmt 0                 # liblzma/lz/lz_encoder.c:0:2
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	.loc	0 159 2                         # liblzma/lz/lz_encoder.c:159:2
	cmpq	%rax, (%rcx)
	jae	.LBB3_24
.Ltmp130:
.LBB3_4:                                # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	.loc	0 162 24 is_stmt 1              # liblzma/lz/lz_encoder.c:162:24
	cmpl	$0, 136(%r12)
	.loc	0 162 36 is_stmt 0              # liblzma/lz/lz_encoder.c:162:36
	jne	.LBB3_22
.Ltmp131:
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	.loc	0 162 49                        # liblzma/lz/lz_encoder.c:162:49
	movl	56(%r12), %r15d
	.loc	0 163 5 is_stmt 1               # liblzma/lz/lz_encoder.c:163:5
	cmpl	64(%r12), %r15d
.Ltmp132:
	.loc	0 162 7                         # liblzma/lz/lz_encoder.c:162:7
	jb	.LBB3_22
.Ltmp133:
# %bb.6:                                # %do.body
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:write_pos <- undef
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:action <- undef
	#DEBUG_VALUE: fill_window:coder <- $r12
	.loc	0 86 38                         # liblzma/lz/lz_encoder.c:86:38
	movl	40(%r12), %eax
	.loc	0 86 43 is_stmt 0               # liblzma/lz/lz_encoder.c:86:43
	subl	48(%r12), %eax
	.loc	0 86 25                         # liblzma/lz/lz_encoder.c:86:25
	cmpl	%eax, %r15d
.Ltmp134:
	.loc	0 86 6                          # liblzma/lz/lz_encoder.c:86:6
	jae	.LBB3_8
.Ltmp135:
# %bb.7:                                # %entry.if.end_crit_edge.i
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:coder <- $r12
	.loc	0 92 31 is_stmt 1               # liblzma/lz/lz_encoder.c:92:31
	movl	68(%r12), %eax
	jmp	.LBB3_9
.Ltmp136:
.LBB3_8:                                # %if.then.i
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:coder <- $r12
	#DEBUG_VALUE: move_window:mf <- $r14
	.loc	0 52 19                         # liblzma/lz/lz_encoder.c:52:19
	subl	44(%r12), %r15d
	.loc	0 52 43 is_stmt 0               # liblzma/lz/lz_encoder.c:52:43
	andl	$-16, %r15d
.Ltmp137:
	#DEBUG_VALUE: move_window:move_offset <- $r15d
	.loc	0 55 31 is_stmt 1               # liblzma/lz/lz_encoder.c:55:31
	movl	68(%r12), %edx
	.loc	0 55 41 is_stmt 0               # liblzma/lz/lz_encoder.c:55:41
	subl	%r15d, %edx
.Ltmp138:
	#DEBUG_VALUE: move_window:move_size <- $edx
	.loc	0 59 14 is_stmt 1               # liblzma/lz/lz_encoder.c:59:14
	movq	32(%r12), %rdi
	.loc	0 59 33 is_stmt 0               # liblzma/lz/lz_encoder.c:59:33
	leaq	(%r15,%rdi), %rsi
	.loc	0 59 2                          # liblzma/lz/lz_encoder.c:59:2
	callq	memmove@PLT
.Ltmp139:
	.loc	0 61 13 is_stmt 1               # liblzma/lz/lz_encoder.c:61:13
	addl	%r15d, 52(%r12)
	.loc	0 62 15                         # liblzma/lz/lz_encoder.c:62:15
	subl	%r15d, 56(%r12)
	.loc	0 63 17                         # liblzma/lz/lz_encoder.c:63:17
	subl	%r15d, 64(%r12)
	.loc	0 64 16                         # liblzma/lz/lz_encoder.c:64:16
	movl	68(%r12), %eax
	subl	%r15d, %eax
	movl	%eax, 68(%r12)
.Ltmp140:
.LBB3_9:                                # %if.end.i
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:coder <- $r12
	.loc	0 0 16 is_stmt 0                # liblzma/lz/lz_encoder.c:0:16
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	(%rsp), %r11                    # 8-byte Reload
	.loc	0 92 21 is_stmt 1               # liblzma/lz/lz_encoder.c:92:21
	movl	%eax, %eax
	.loc	0 92 9 is_stmt 0                # liblzma/lz/lz_encoder.c:92:9
	movq	%rax, 8(%rsp)
.Ltmp141:
	#DEBUG_VALUE: fill_window:write_pos <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	.loc	0 94 18 is_stmt 1               # liblzma/lz/lz_encoder.c:94:18
	movq	176(%r12), %rax
	.loc	0 94 23 is_stmt 0               # liblzma/lz/lz_encoder.c:94:23
	testq	%rax, %rax
.Ltmp142:
	.loc	0 94 6                          # liblzma/lz/lz_encoder.c:94:6
	je	.LBB3_10
.Ltmp143:
# %bb.14:                               # %if.else.i
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:write_pos <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:coder <- $r12
	.loc	0 103 38 is_stmt 1              # liblzma/lz/lz_encoder.c:103:38
	movq	152(%r12), %rdi
	.loc	0 105 15                        # liblzma/lz/lz_encoder.c:105:15
	movq	32(%r12), %r9
	.loc	0 106 15                        # liblzma/lz/lz_encoder.c:106:15
	movl	40(%r12), %r10d
	.loc	0 103 9                         # liblzma/lz/lz_encoder.c:103:9
	subq	$8, %rsp
.Ltmp144:
	.cfi_adjust_cfa_offset 8
	.loc	0 0 9 is_stmt 0                 # liblzma/lz/lz_encoder.c:0:9
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	.loc	0 103 9                         # liblzma/lz/lz_encoder.c:103:9
	movq	%r11, %rcx
	movl	120(%rsp), %r11d
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	leaq	32(%rsp), %r10
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	*%rax
.Ltmp145:
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	%eax, %r15d
.Ltmp146:
	#DEBUG_VALUE: fill_window:ret <- $r15d
	#DEBUG_VALUE: fill_window:ret <- $r15d
	.loc	0 109 24 is_stmt 1              # liblzma/lz/lz_encoder.c:109:24
	movl	8(%rsp), %eax
	.loc	0 109 22 is_stmt 0              # liblzma/lz/lz_encoder.c:109:22
	movl	%eax, 68(%r12)
.Ltmp147:
	.loc	0 115 10 is_stmt 1              # liblzma/lz/lz_encoder.c:115:10
	cmpl	$1, %r15d
.Ltmp148:
	.loc	0 115 6 is_stmt 0               # liblzma/lz/lz_encoder.c:115:6
	je	.LBB3_16
.Ltmp149:
.LBB3_12:                               # %if.else39.i
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:coder <- $r12
	#DEBUG_VALUE: fill_window:ret <- $r15d
	.loc	0 121 33 is_stmt 1              # liblzma/lz/lz_encoder.c:121:33
	subl	48(%r12), %eax
	ja	.LBB3_17
.Ltmp150:
.LBB3_18:                               # %if.end55.i
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:coder <- $r12
	#DEBUG_VALUE: fill_window:ret <- $r15d
	.loc	0 130 16                        # liblzma/lz/lz_encoder.c:130:16
	movl	72(%r12), %esi
	.loc	0 130 24 is_stmt 0              # liblzma/lz/lz_encoder.c:130:24
	testl	%esi, %esi
	jne	.LBB3_19
	jmp	.LBB3_21
.Ltmp151:
.LBB3_10:                               # %if.then8.i
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:write_pos <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:coder <- $r12
	.loc	0 96 46 is_stmt 1               # liblzma/lz/lz_encoder.c:96:46
	movq	32(%r12), %rcx
	.loc	0 97 27                         # liblzma/lz/lz_encoder.c:97:27
	movl	40(%r12), %r9d
	movq	24(%rsp), %rdi                  # 8-byte Reload
	.loc	0 96 3                          # liblzma/lz/lz_encoder.c:96:3
	movq	%r11, %rsi
	movq	%r8, %rdx
	movq	%r8, %r15
	leaq	8(%rsp), %r8
	callq	lzma_bufcpy@PLT
.Ltmp152:
	.loc	0 0 3 is_stmt 0                 # liblzma/lz/lz_encoder.c:0:3
	movl	112(%rsp), %eax
	testl	%eax, %eax
	.loc	0 99 28 is_stmt 1               # liblzma/lz/lz_encoder.c:99:28
	je	.LBB3_11
.Ltmp153:
# %bb.13:                               # %land.rhs.i
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:write_pos <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:coder <- $r12
	.loc	0 0 28 is_stmt 0                # liblzma/lz/lz_encoder.c:0:28
	movq	%r15, %rax
	.loc	0 99 39                         # liblzma/lz/lz_encoder.c:99:39
	xorl	%r15d, %r15d
	movq	(%rsp), %rcx                    # 8-byte Reload
	cmpq	%rax, (%rcx)
	sete	%r15b
.Ltmp154:
	#DEBUG_VALUE: fill_window:ret <- $r15d
	.loc	0 109 24 is_stmt 1              # liblzma/lz/lz_encoder.c:109:24
	movl	8(%rsp), %eax
	.loc	0 109 22 is_stmt 0              # liblzma/lz/lz_encoder.c:109:22
	movl	%eax, 68(%r12)
.Ltmp155:
	.loc	0 115 10 is_stmt 1              # liblzma/lz/lz_encoder.c:115:10
	cmpl	$1, %r15d
.Ltmp156:
	.loc	0 115 6 is_stmt 0               # liblzma/lz/lz_encoder.c:115:6
	jne	.LBB3_12
.Ltmp157:
.LBB3_16:                               # %if.then33.i
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:coder <- $r12
	#DEBUG_VALUE: fill_window:ret <- $r15d
	#DEBUG_VALUE: fill_window:ret <- 0
	.loc	0 118 20 is_stmt 1              # liblzma/lz/lz_encoder.c:118:20
	movl	112(%rsp), %ecx
	movl	%ecx, 136(%r12)
	xorl	%r15d, %r15d
.Ltmp158:
.LBB3_17:                               # %if.end55.sink.split.i
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:coder <- $r12
	.loc	0 0 0 is_stmt 0                 # liblzma/lz/lz_encoder.c:0:0
	movl	%eax, 64(%r12)
.Ltmp159:
	#DEBUG_VALUE: fill_window:ret <- $r15d
	.loc	0 130 16 is_stmt 1              # liblzma/lz/lz_encoder.c:130:16
	movl	72(%r12), %esi
	.loc	0 130 24 is_stmt 0              # liblzma/lz/lz_encoder.c:130:24
	testl	%esi, %esi
	.loc	0 131 4 is_stmt 1               # liblzma/lz/lz_encoder.c:131:4
	je	.LBB3_21
.Ltmp160:
.LBB3_19:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:coder <- $r12
	#DEBUG_VALUE: fill_window:ret <- $r15d
	.loc	0 131 17 is_stmt 0              # liblzma/lz/lz_encoder.c:131:17
	movl	56(%r12), %eax
	.loc	0 131 26                        # liblzma/lz/lz_encoder.c:131:26
	cmpl	64(%r12), %eax
.Ltmp161:
	.loc	0 130 6 is_stmt 1               # liblzma/lz/lz_encoder.c:130:6
	jae	.LBB3_21
.Ltmp162:
# %bb.20:                               # %if.then65.i
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:coder <- $r12
	#DEBUG_VALUE: fill_window:ret <- $r15d
	#DEBUG_VALUE: pending <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_stack_value] undef
	.loc	0 135 21                        # liblzma/lz/lz_encoder.c:135:21
	movl	$0, 72(%r12)
	.loc	0 140 22                        # liblzma/lz/lz_encoder.c:140:22
	subl	%esi, %eax
	movl	%eax, 56(%r12)
	.loc	0 144 3                         # liblzma/lz/lz_encoder.c:144:3
	movq	%r14, %rdi
	callq	*88(%r12)
.Ltmp163:
	.loc	0 0 3 is_stmt 0                 # liblzma/lz/lz_encoder.c:0:3
	jmp	.LBB3_21
.Ltmp164:
.LBB3_11:                               # %if.end27.thread.i
                                        #   in Loop: Header=BB3_1 Depth=1
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: fill_window:write_pos <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:pcoder <- $r12
	#DEBUG_VALUE: fill_window:allocator <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_pos <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:in_size <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: fill_window:coder <- $r12
	#DEBUG_VALUE: fill_window:ret <- 0
	.loc	0 109 24 is_stmt 1              # liblzma/lz/lz_encoder.c:109:24
	movl	8(%rsp), %eax
	.loc	0 109 22 is_stmt 0              # liblzma/lz/lz_encoder.c:109:22
	movl	%eax, 68(%r12)
	xorl	%r15d, %r15d
.Ltmp165:
	.loc	0 121 33 is_stmt 1              # liblzma/lz/lz_encoder.c:121:33
	subl	48(%r12), %eax
	jbe	.LBB3_18
	jmp	.LBB3_17
.Ltmp166:
.LBB3_23:                               # %cleanup20.thread
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	#DEBUG_VALUE: ret <- $eax
	.loc	0 0 0 is_stmt 0                 # liblzma/lz/lz_encoder.c:0:0
	movl	%eax, %r15d
.Ltmp167:
	.loc	0 174 21 is_stmt 1              # liblzma/lz/lz_encoder.c:174:21
	movl	$0, 136(%r12)
.Ltmp168:
.LBB3_24:                               # %cleanup23
	#DEBUG_VALUE: lz_encode:pcoder <- $r12
	#DEBUG_VALUE: lz_encode:allocator <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_pos <- [$rsp+0]
	#DEBUG_VALUE: lz_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lz_encode:out <- $rbx
	#DEBUG_VALUE: lz_encode:coder <- $r12
	.loc	0 180 1                         # liblzma/lz/lz_encoder.c:180:1
	movl	%r15d, %eax
	.loc	0 180 1 epilogue_begin is_stmt 0 # liblzma/lz/lz_encoder.c:180:1
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp169:
	#DEBUG_VALUE: lz_encode:out <- [DW_OP_LLVM_entry_value 1] $r9
	.cfi_def_cfa_offset 48
	popq	%r12
.Ltmp170:
	#DEBUG_VALUE: lz_encode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
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
.Ltmp171:
.Lfunc_end3:
	.size	lz_encode, .Lfunc_end3-lz_encode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lz_encoder_end
	.type	lz_encoder_end,@function
lz_encoder_end:                         # @lz_encoder_end
.Lfunc_begin4:
	.loc	0 467 0 is_stmt 1               # liblzma/lz/lz_encoder.c:467:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lz_encoder_end:pcoder <- $rdi
	#DEBUG_VALUE: lz_encoder_end:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp172:
	#DEBUG_VALUE: lz_encoder_end:coder <- $rdi
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp173:
	.loc	0 469 24 prologue_end           # liblzma/lz/lz_encoder.c:469:24
	addq	$152, %rdi
.Ltmp174:
	#DEBUG_VALUE: lz_encoder_end:coder <- $r14
	#DEBUG_VALUE: lz_encoder_end:pcoder <- $r14
	.loc	0 469 2 is_stmt 0               # liblzma/lz/lz_encoder.c:469:2
	callq	lzma_next_end@PLT
.Ltmp175:
	#DEBUG_VALUE: lz_encoder_end:allocator <- $rbx
	.loc	0 471 22 is_stmt 1              # liblzma/lz/lz_encoder.c:471:22
	movq	96(%r14), %rdi
	.loc	0 471 2 is_stmt 0               # liblzma/lz/lz_encoder.c:471:2
	movq	%rbx, %rsi
	callq	lzma_free@PLT
.Ltmp176:
	.loc	0 472 22 is_stmt 1              # liblzma/lz/lz_encoder.c:472:22
	movq	32(%r14), %rdi
	.loc	0 472 2 is_stmt 0               # liblzma/lz/lz_encoder.c:472:2
	movq	%rbx, %rsi
	callq	lzma_free@PLT
.Ltmp177:
	.loc	0 0 0                           # liblzma/lz/lz_encoder.c:0:0
	movq	(%r14), %rdi
	.loc	0 474 16 is_stmt 1              # liblzma/lz/lz_encoder.c:474:16
	movq	16(%r14), %rax
	.loc	0 477 3                         # liblzma/lz/lz_encoder.c:477:3
	movq	%rbx, %rsi
	.loc	0 474 20                        # liblzma/lz/lz_encoder.c:474:20
	testq	%rax, %rax
.Ltmp178:
	.loc	0 474 6 is_stmt 0               # liblzma/lz/lz_encoder.c:474:6
	je	.LBB4_2
.Ltmp179:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lz_encoder_end:pcoder <- $r14
	#DEBUG_VALUE: lz_encoder_end:allocator <- $rbx
	#DEBUG_VALUE: lz_encoder_end:coder <- $r14
	.loc	0 475 3 is_stmt 1               # liblzma/lz/lz_encoder.c:475:3
	callq	*%rax
.Ltmp180:
	jmp	.LBB4_3
.Ltmp181:
.LBB4_2:                                # %if.else
	#DEBUG_VALUE: lz_encoder_end:pcoder <- $r14
	#DEBUG_VALUE: lz_encoder_end:allocator <- $rbx
	#DEBUG_VALUE: lz_encoder_end:coder <- $r14
	.loc	0 477 3                         # liblzma/lz/lz_encoder.c:477:3
	callq	lzma_free@PLT
.Ltmp182:
.LBB4_3:                                # %if.end
	#DEBUG_VALUE: lz_encoder_end:pcoder <- $r14
	#DEBUG_VALUE: lz_encoder_end:allocator <- $rbx
	#DEBUG_VALUE: lz_encoder_end:coder <- $r14
	.loc	0 479 2                         # liblzma/lz/lz_encoder.c:479:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 479 2 epilogue_begin is_stmt 0 # liblzma/lz/lz_encoder.c:479:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp183:
	#DEBUG_VALUE: lz_encoder_end:allocator <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp184:
	#DEBUG_VALUE: lz_encoder_end:coder <- $rdi
	#DEBUG_VALUE: lz_encoder_end:pcoder <- $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp185:
.Lfunc_end4:
	.size	lz_encoder_end, .Lfunc_end4-lz_encoder_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lz_encoder_update
	.type	lz_encoder_update,@function
lz_encoder_update:                      # @lz_encoder_update
.Lfunc_begin5:
	.loc	0 488 0 is_stmt 1               # liblzma/lz/lz_encoder.c:488:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lz_encoder_update:pcoder <- $rdi
	#DEBUG_VALUE: lz_encoder_update:allocator <- $rsi
	#DEBUG_VALUE: lz_encoder_update:reversed_filters <- $rcx
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
.Ltmp186:
	#DEBUG_VALUE: lz_encoder_update:coder <- $rdi
	.loc	0 490 16 prologue_end           # liblzma/lz/lz_encoder.c:490:16
	movq	24(%rdi), %rax
	.loc	0 490 31 is_stmt 0              # liblzma/lz/lz_encoder.c:490:31
	testq	%rax, %rax
.Ltmp187:
	.loc	0 490 6                         # liblzma/lz/lz_encoder.c:490:6
	je	.LBB5_1
.Ltmp188:
# %bb.2:                                # %do.body
	#DEBUG_VALUE: lz_encoder_update:pcoder <- $rdi
	#DEBUG_VALUE: lz_encoder_update:allocator <- $rsi
	#DEBUG_VALUE: lz_encoder_update:reversed_filters <- $rcx
	#DEBUG_VALUE: lz_encoder_update:coder <- $rdi
	.loc	0 0 6                           # liblzma/lz/lz_encoder.c:0:6
	movq	%rcx, %rbx
	movq	%rsi, %r14
.Ltmp189:
	#DEBUG_VALUE: lz_encoder_update:allocator <- $r14
	movq	%rdi, %r15
.Ltmp190:
	.loc	0 493 2 is_stmt 1               # liblzma/lz/lz_encoder.c:493:2
	movq	(%rdi), %rdi
.Ltmp191:
	#DEBUG_VALUE: lz_encoder_update:coder <- $r15
	#DEBUG_VALUE: lz_encoder_update:pcoder <- $r15
	movq	%rcx, %rsi
	callq	*%rax
.Ltmp192:
	#DEBUG_VALUE: lz_encoder_update:reversed_filters <- $rbx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 493 2 is_stmt 0               # liblzma/lz/lz_encoder.c:493:2
	testl	%eax, %eax
	je	.LBB5_4
.Ltmp193:
# %bb.3:                                # %cleanup9
	#DEBUG_VALUE: lz_encoder_update:pcoder <- $r15
	#DEBUG_VALUE: lz_encoder_update:allocator <- $r14
	#DEBUG_VALUE: lz_encoder_update:reversed_filters <- $rbx
	#DEBUG_VALUE: lz_encoder_update:coder <- $r15
	.loc	0 498 1 epilogue_begin is_stmt 1 # liblzma/lz/lz_encoder.c:498:1
	popq	%rbx
.Ltmp194:
	#DEBUG_VALUE: lz_encoder_update:reversed_filters <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp195:
	#DEBUG_VALUE: lz_encoder_update:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp196:
	#DEBUG_VALUE: lz_encoder_update:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp197:
.LBB5_1:
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lz_encoder_update:pcoder <- $rdi
	#DEBUG_VALUE: lz_encoder_update:allocator <- $rsi
	#DEBUG_VALUE: lz_encoder_update:reversed_filters <- $rcx
	#DEBUG_VALUE: lz_encoder_update:coder <- $rdi
	.loc	0 0 1 is_stmt 0                 # liblzma/lz/lz_encoder.c:0:1
	movl	$11, %eax
	.loc	0 498 1 epilogue_begin          # liblzma/lz/lz_encoder.c:498:1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp198:
.LBB5_4:                                # %do.end
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lz_encoder_update:pcoder <- $r15
	#DEBUG_VALUE: lz_encoder_update:allocator <- $r14
	#DEBUG_VALUE: lz_encoder_update:reversed_filters <- $rbx
	#DEBUG_VALUE: lz_encoder_update:coder <- $r15
	.loc	0 0 1                           # liblzma/lz/lz_encoder.c:0:1
	movq	%r15, %rdi
	.loc	0 497 12 is_stmt 1              # liblzma/lz/lz_encoder.c:497:12
	addq	$152, %rdi
	.loc	0 497 46 is_stmt 0              # liblzma/lz/lz_encoder.c:497:46
	addq	$16, %rbx
.Ltmp199:
	#DEBUG_VALUE: lz_encoder_update:reversed_filters <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 496 9 is_stmt 1               # liblzma/lz/lz_encoder.c:496:9
	movq	%r14, %rsi
	movq	%rbx, %rdx
	.loc	0 496 9 epilogue_begin is_stmt 0 # liblzma/lz/lz_encoder.c:496:9
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp200:
	#DEBUG_VALUE: lz_encoder_update:allocator <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp201:
	#DEBUG_VALUE: lz_encoder_update:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_next_filter_update@PLT     # TAILCALL
.Ltmp202:
.Lfunc_end5:
	.size	lz_encoder_update, .Lfunc_end5-lz_encoder_update
	.cfi_endproc
                                        # -- End function
	.globl	lzma_mf_is_supported            # -- Begin function lzma_mf_is_supported
	.p2align	4, 0x90
	.type	lzma_mf_is_supported,@function
lzma_mf_is_supported:                   # @lzma_mf_is_supported
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_mf_is_supported:mf <- $edi
	#DEBUG_VALUE: lzma_mf_is_supported:ret <- [DW_OP_constu 3, DW_OP_eq, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edi
                                        # kill: def $edi killed $edi def $rdi
	.loc	0 567 6 prologue_end is_stmt 1  # liblzma/lz/lz_encoder.c:567:6
	leal	-3(%rdi), %eax
	cmpl	$2, %eax
	setb	%cl
.Ltmp203:
	#DEBUG_VALUE: lzma_mf_is_supported:ret <- [DW_OP_LLVM_arg 0, DW_OP_constu 18, DW_OP_eq, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edi, $cl
	.loc	0 577 6                         # liblzma/lz/lz_encoder.c:577:6
	movl	%edi, %eax
	andl	$-2, %eax
	cmpl	$18, %eax
	sete	%dl
.Ltmp204:
	#DEBUG_VALUE: lzma_mf_is_supported:ret <- undef
	.loc	0 582 9                         # liblzma/lz/lz_encoder.c:582:9
	cmpl	$20, %edi
	sete	%al
.Ltmp205:
	.loc	0 577 6                         # liblzma/lz/lz_encoder.c:577:6
	orb	%dl, %al
	.loc	0 582 6                         # liblzma/lz/lz_encoder.c:582:6
	orb	%cl, %al
.Ltmp206:
	#DEBUG_VALUE: lzma_mf_is_supported:ret <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $al
	.loc	0 586 2                         # liblzma/lz/lz_encoder.c:586:2
	retq
.Ltmp207:
.Lfunc_end6:
	.size	lzma_mf_is_supported, .Lfunc_end6-lzma_mf_is_supported
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	45                              # Offset entry count
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
	.long	.Ldebug_loc42-.Lloclists_table_base0
	.long	.Ldebug_loc43-.Lloclists_table_base0
	.long	.Ldebug_loc44-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	22                              # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	120                             # DW_OP_breg8
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	56                              # DW_OP_lit8
	.byte	37                              # DW_OP_shr
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	10                              # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp170-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp169-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	232                             # 104
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 112
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp170-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp164-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp154-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp164-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp174-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp184-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp175-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp183-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp172-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp174-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp184-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp191-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp191-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp196-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp198-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp198-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp201-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp201-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp189-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp189-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp198-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp198-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp202-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp192-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp194-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp194-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp198-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp198-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp199-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp199-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp186-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp191-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp191-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp196-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp198-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp198-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp201-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp192-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp193-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp203-.Lfunc_begin0         #   ending offset
	.byte	22                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	51                              # DW_OP_lit3
	.byte	41                              # DW_OP_eq
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp204-.Lfunc_begin0         #   ending offset
	.byte	29                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	66                              # DW_OP_lit18
	.byte	41                              # DW_OP_eq
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 255
	.byte	1                               # 
	.byte	26                              # DW_OP_and
	.byte	33                              # DW_OP_or
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp206-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	17                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 255
	.byte	1                               # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
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
	.byte	7                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	52                              # DW_TAG_variable
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
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
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
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
	.byte	42                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
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
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	47                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	48                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	50                              # Abbreviation Code
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
	.byte	51                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	1                               # Abbrev [1] 0xc:0x9e9 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	128                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	127                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0x18 DW_TAG_enumeration_type
	.long	75                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x3b:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x3e:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x41:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x44:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	19                              # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x47:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	20                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x4b:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x4f:0x15 DW_TAG_enumeration_type
	.long	75                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x57:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x5a:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x5d:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x60:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x64:0x2d DW_TAG_enumeration_type
	.long	75                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x6c:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x6f:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x72:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x75:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x78:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x7b:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x7e:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x81:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x84:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x87:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x8a:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x8d:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x91:0x15 DW_TAG_enumeration_type
	.long	75                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x99:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x9c:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x9f:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0xa2:0x3 DW_TAG_enumerator
	.byte	28                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xa6:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0xa7:0x8 DW_TAG_typedef
	.long	175                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xaf:0x8 DW_TAG_typedef
	.long	183                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0xb7:0x4 DW_TAG_base_type
	.byte	29                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0xbb:0x5 DW_TAG_pointer_type
	.long	192                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xc0:0x21 DW_TAG_structure_type
	.byte	95                              # DW_AT_name
	.byte	216                             # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xc5:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	225                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0xce:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	342                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0xd7:0x9 DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	895                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xe1:0x8 DW_TAG_typedef
	.long	233                             # DW_AT_type
	.byte	82                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xe9:0x29 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xed:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	274                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0xf6:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	283                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0xff:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	715                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x108:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	825                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x112:0x5 DW_TAG_pointer_type
	.long	279                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x117:0x4 DW_TAG_typedef
	.byte	34                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x11b:0x5 DW_TAG_pointer_type
	.long	288                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x120:0x1f DW_TAG_subroutine_type
	.long	319                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x125:0x5 DW_TAG_formal_parameter
	.long	327                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x12a:0x5 DW_TAG_formal_parameter
	.long	332                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x12f:0x5 DW_TAG_formal_parameter
	.long	692                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x134:0x5 DW_TAG_formal_parameter
	.long	697                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x139:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x13f:0x8 DW_TAG_typedef
	.long	100                             # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x147:0x5 DW_TAG_restrict_type
	.long	274                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x14c:0x5 DW_TAG_restrict_type
	.long	337                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x151:0x5 DW_TAG_pointer_type
	.long	342                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x156:0x8 DW_TAG_typedef
	.long	350                             # DW_AT_type
	.byte	70                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x15e:0xd5 DW_TAG_structure_type
	.byte	69                              # DW_AT_name
	.byte	120                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x163:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	563                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x16c:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x175:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x17e:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x187:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x190:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x199:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1a2:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1ab:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1b4:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1bd:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	604                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1c6:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1cf:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	678                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1d8:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	678                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1e1:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1ea:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1f3:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x1fc:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x205:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x20e:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x217:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	683                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x220:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x229:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x233:0x5 DW_TAG_pointer_type
	.long	568                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x238:0x8 DW_TAG_typedef
	.long	576                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x240:0x8 DW_TAG_typedef
	.long	584                             # DW_AT_type
	.byte	39                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x248:0x4 DW_TAG_base_type
	.byte	38                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x24c:0x8 DW_TAG_typedef
	.long	596                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x254:0x8 DW_TAG_typedef
	.long	75                              # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x25c:0x5 DW_TAG_pointer_type
	.long	609                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x261:0x10 DW_TAG_subroutine_type
	.long	588                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x266:0x5 DW_TAG_formal_parameter
	.long	337                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x26b:0x5 DW_TAG_formal_parameter
	.long	625                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x271:0x5 DW_TAG_pointer_type
	.long	630                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x276:0x8 DW_TAG_typedef
	.long	638                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x27e:0x17 DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x282:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x28b:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x295:0x5 DW_TAG_pointer_type
	.long	666                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x29a:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x29b:0x5 DW_TAG_formal_parameter
	.long	337                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2a0:0x5 DW_TAG_formal_parameter
	.long	588                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2a6:0x5 DW_TAG_pointer_type
	.long	588                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2ab:0x9 DW_TAG_typedef
	.long	79                              # DW_AT_type
	.byte	66                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x2b4:0x5 DW_TAG_restrict_type
	.long	563                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x2b9:0x5 DW_TAG_restrict_type
	.long	702                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2be:0x5 DW_TAG_pointer_type
	.long	707                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2c3:0x8 DW_TAG_typedef
	.long	183                             # DW_AT_type
	.byte	71                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x2cb:0x5 DW_TAG_pointer_type
	.long	720                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2d0:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x2d1:0x5 DW_TAG_formal_parameter
	.long	274                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2d6:0x5 DW_TAG_formal_parameter
	.long	732                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2dc:0x5 DW_TAG_pointer_type
	.long	737                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2e1:0x9 DW_TAG_typedef
	.long	746                             # DW_AT_type
	.byte	76                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x2ea:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x2ef:0xa DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x2f9:0xa DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	808                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x303:0xa DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x30e:0x5 DW_TAG_pointer_type
	.long	787                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x313:0x15 DW_TAG_subroutine_type
	.long	166                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x318:0x5 DW_TAG_formal_parameter
	.long	166                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x31d:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x322:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x328:0x5 DW_TAG_pointer_type
	.long	813                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x32d:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x32e:0x5 DW_TAG_formal_parameter
	.long	166                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x333:0x5 DW_TAG_formal_parameter
	.long	166                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x339:0x5 DW_TAG_pointer_type
	.long	830                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x33e:0x10 DW_TAG_subroutine_type
	.long	319                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x343:0x5 DW_TAG_formal_parameter
	.long	274                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x348:0x5 DW_TAG_formal_parameter
	.long	846                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x34e:0x5 DW_TAG_pointer_type
	.long	851                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x353:0x5 DW_TAG_const_type
	.long	856                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x358:0x8 DW_TAG_typedef
	.long	864                             # DW_AT_type
	.byte	81                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x360:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x364:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	887                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x36d:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x377:0x8 DW_TAG_typedef
	.long	167                             # DW_AT_type
	.byte	79                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x37f:0x8 DW_TAG_typedef
	.long	903                             # DW_AT_type
	.byte	94                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x387:0x4e DW_TAG_structure_type
	.byte	93                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x38c:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	274                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x395:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	887                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x39e:0x9 DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	981                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x3a7:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	989                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x3b0:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	1068                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x3b9:0x9 DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1076                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x3c2:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	1110                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x3cb:0x9 DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	1146                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3d5:0x8 DW_TAG_typedef
	.long	183                             # DW_AT_type
	.byte	86                              # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x3dd:0x8 DW_TAG_typedef
	.long	997                             # DW_AT_type
	.byte	87                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x3e5:0x5 DW_TAG_pointer_type
	.long	1002                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3ea:0x33 DW_TAG_subroutine_type
	.long	319                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x3ef:0x5 DW_TAG_formal_parameter
	.long	274                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3f4:0x5 DW_TAG_formal_parameter
	.long	732                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3f9:0x5 DW_TAG_formal_parameter
	.long	1053                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3fe:0x5 DW_TAG_formal_parameter
	.long	697                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x403:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x408:0x5 DW_TAG_formal_parameter
	.long	692                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x40d:0x5 DW_TAG_formal_parameter
	.long	697                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x412:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x417:0x5 DW_TAG_formal_parameter
	.long	683                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x41d:0x5 DW_TAG_restrict_type
	.long	1058                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x422:0x5 DW_TAG_pointer_type
	.long	1063                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x427:0x5 DW_TAG_const_type
	.long	568                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x42c:0x8 DW_TAG_typedef
	.long	715                             # DW_AT_type
	.byte	88                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x434:0x5 DW_TAG_pointer_type
	.long	1081                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x439:0xb DW_TAG_subroutine_type
	.long	1092                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x43e:0x5 DW_TAG_formal_parameter
	.long	1100                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x444:0x8 DW_TAG_typedef
	.long	145                             # DW_AT_type
	.byte	90                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x44c:0x5 DW_TAG_pointer_type
	.long	1105                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x451:0x5 DW_TAG_const_type
	.long	279                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x456:0x5 DW_TAG_pointer_type
	.long	1115                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x45b:0x1a DW_TAG_subroutine_type
	.long	319                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x460:0x5 DW_TAG_formal_parameter
	.long	274                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x465:0x5 DW_TAG_formal_parameter
	.long	1141                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x46a:0x5 DW_TAG_formal_parameter
	.long	1141                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x46f:0x5 DW_TAG_formal_parameter
	.long	167                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x475:0x5 DW_TAG_pointer_type
	.long	167                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x47a:0x5 DW_TAG_pointer_type
	.long	1151                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x47f:0x1a DW_TAG_subroutine_type
	.long	319                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x484:0x5 DW_TAG_formal_parameter
	.long	274                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x489:0x5 DW_TAG_formal_parameter
	.long	732                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x48e:0x5 DW_TAG_formal_parameter
	.long	846                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x493:0x5 DW_TAG_formal_parameter
	.long	846                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x499:0x2d DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	444                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	167                             # DW_AT_type
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x4a9:0xa DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	444                             # DW_AT_decl_line
	.long	1409                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x4b3:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	447                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x4bf:0x6 DW_TAG_call_site
	.long	1222                            # DW_AT_call_origin
	.byte	1                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x4c6:0x7a DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1405                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4d5:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.long	337                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4de:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.long	732                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4e7:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.long	1409                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x4f0:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.long	588                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x4f9:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.long	1944                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x502:0xa DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	139                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	289                             # DW_AT_decl_line
	.long	1944                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x50c:0xa DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
	.long	588                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x516:0xa DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	336                             # DW_AT_decl_line
	.long	1944                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x520:0xa DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.long	1944                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x52a:0x9 DW_TAG_variable
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.long	2491                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x533:0x6 DW_TAG_call_site
	.long	1344                            # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	23                              # Abbrev [23] 0x539:0x6 DW_TAG_call_site
	.long	1344                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x540:0xf DW_TAG_subprogram
	.byte	96                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x544:0x5 DW_TAG_formal_parameter
	.long	166                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x549:0x5 DW_TAG_formal_parameter
	.long	732                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x54f:0x2e DW_TAG_subprogram
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	365                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1405                            # DW_AT_type
                                        # DW_AT_inline
	.byte	31                              # Abbrev [31] 0x558:0x9 DW_TAG_formal_parameter
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	365                             # DW_AT_decl_line
	.long	337                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x561:0x9 DW_TAG_formal_parameter
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	365                             # DW_AT_decl_line
	.long	732                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x56a:0x9 DW_TAG_formal_parameter
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	366                             # DW_AT_decl_line
	.long	1409                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x573:0x9 DW_TAG_variable
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.long	1521                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x57d:0x4 DW_TAG_base_type
	.byte	98                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x581:0x5 DW_TAG_pointer_type
	.long	1414                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x586:0x5 DW_TAG_const_type
	.long	1419                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x58b:0x8 DW_TAG_typedef
	.long	1427                            # DW_AT_type
	.byte	108                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x593:0x56 DW_TAG_structure_type
	.byte	64                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x597:0x9 DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	707                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5a0:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	707                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5a9:0x9 DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	707                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5b2:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	707                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5bb:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	707                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5c4:0x9 DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	1513                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5cd:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5d6:0x9 DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	1058                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x5df:0x9 DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x5e9:0x8 DW_TAG_typedef
	.long	51                              # DW_AT_type
	.byte	105                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x5f1:0x5 DW_TAG_const_type
	.long	707                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x5f6:0xa5 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	319                             # DW_AT_type
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x606:0xa DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
	.long	1734                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x610:0xa DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
	.long	732                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x61a:0xa DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	503                             # DW_AT_decl_line
	.long	1739                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x624:0xa DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	504                             # DW_AT_decl_line
	.long	2496                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x62e:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
	.long	1419                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x63a:0x11 DW_TAG_lexical_block
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp80-.Ltmp77                 # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x640:0xa DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	146                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	537                             # DW_AT_decl_line
	.long	2543                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x64b:0x29 DW_TAG_inlined_subroutine
	.long	1359                            # DW_AT_abstract_origin
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp109-.Ltmp84                # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	547                             # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x659:0x6 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.long	1368                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x65f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1377                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x666:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	87
	.long	1386                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x66d:0x6 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.long	1395                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x674:0x6 DW_TAG_call_site
	.long	1691                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x67a:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	92
	.byte	9                               # DW_AT_call_return_pc
	.byte	23                              # Abbrev [23] 0x67e:0x6 DW_TAG_call_site
	.long	1222                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	23                              # Abbrev [23] 0x684:0x6 DW_TAG_call_site
	.long	1691                            # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	23                              # Abbrev [23] 0x68a:0x6 DW_TAG_call_site
	.long	1691                            # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x690:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	93
	.byte	13                              # DW_AT_call_return_pc
	.byte	23                              # Abbrev [23] 0x694:0x6 DW_TAG_call_site
	.long	1710                            # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x69b:0x13 DW_TAG_subprogram
	.byte	110                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	166                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x6a3:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x6a8:0x5 DW_TAG_formal_parameter
	.long	732                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x6ae:0x18 DW_TAG_subprogram
	.byte	111                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	319                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x6b6:0x5 DW_TAG_formal_parameter
	.long	1734                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x6bb:0x5 DW_TAG_formal_parameter
	.long	732                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x6c0:0x5 DW_TAG_formal_parameter
	.long	1739                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6c6:0x5 DW_TAG_pointer_type
	.long	895                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x6cb:0x5 DW_TAG_pointer_type
	.long	1744                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x6d0:0x5 DW_TAG_const_type
	.long	1749                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x6d5:0x8 DW_TAG_typedef
	.long	1757                            # DW_AT_type
	.byte	114                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x6dd:0x21 DW_TAG_structure_type
	.byte	113                             # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x6e2:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	887                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x6eb:0x9 DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	1790                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	9                               # Abbrev [9] 0x6f4:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	166                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x6fe:0x8 DW_TAG_typedef
	.long	1798                            # DW_AT_type
	.byte	112                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x706:0x5 DW_TAG_pointer_type
	.long	1803                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x70b:0x15 DW_TAG_subroutine_type
	.long	319                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x710:0x5 DW_TAG_formal_parameter
	.long	1734                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x715:0x5 DW_TAG_formal_parameter
	.long	732                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x71a:0x5 DW_TAG_formal_parameter
	.long	1739                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x720:0x5b DW_TAG_subprogram
	.byte	115                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	319                             # DW_AT_type
                                        # DW_AT_inline
	.byte	40                              # Abbrev [40] 0x728:0x8 DW_TAG_formal_parameter
	.byte	116                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x730:0x8 DW_TAG_formal_parameter
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	732                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x738:0x8 DW_TAG_formal_parameter
	.byte	117                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	1058                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x740:0x8 DW_TAG_formal_parameter
	.byte	118                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.long	702                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x748:0x8 DW_TAG_formal_parameter
	.byte	119                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.long	707                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x750:0x8 DW_TAG_formal_parameter
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.long	683                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x758:0x8 DW_TAG_variable
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	707                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x760:0x8 DW_TAG_variable
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x768:0x8 DW_TAG_variable
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	319                             # DW_AT_type
	.byte	42                              # Abbrev [42] 0x770:0xa DW_TAG_lexical_block
	.byte	41                              # Abbrev [41] 0x771:0x8 DW_TAG_variable
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.long	1521                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x77b:0x1d DW_TAG_subprogram
	.byte	121                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	40                              # Abbrev [40] 0x77f:0x8 DW_TAG_formal_parameter
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	337                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x787:0x8 DW_TAG_variable
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	1944                            # DW_AT_type
	.byte	41                              # Abbrev [41] 0x78f:0x8 DW_TAG_variable
	.byte	123                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	1521                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x798:0x5 DW_TAG_const_type
	.long	588                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x79d:0xf8 DW_TAG_subprogram
	.byte	15                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\240\177"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	319                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x7b0:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	116                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x7b9:0x9 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.long	732                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x7c2:0x9 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.byte	117                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.long	1053                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x7cb:0x9 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.byte	118                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.long	697                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x7d4:0x9 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.byte	119                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.long	707                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x7dd:0x9 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.long	692                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x7e6:0x9 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.long	697                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x7ef:0x9 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.long	707                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x7f8:0x9 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.long	683                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x801:0x9 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x80a:0x78 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	26                              # Abbrev [26] 0x80c:0x9 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.long	2543                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x815:0x6c DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	41                              # Abbrev [41] 0x817:0x8 DW_TAG_variable
	.byte	146                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.long	2543                            # DW_AT_type
	.byte	45                              # Abbrev [45] 0x81f:0x61 DW_TAG_inlined_subroutine
	.long	1824                            # DW_AT_abstract_origin
	.byte	16                              # DW_AT_low_pc
	.long	.Ltmp166-.Ltmp133               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	164                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x82c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	92
	.long	1832                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x833:0x6 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_location
	.long	1840                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x839:0x6 DW_TAG_formal_parameter
	.byte	30                              # DW_AT_location
	.long	1848                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x83f:0x6 DW_TAG_formal_parameter
	.byte	31                              # DW_AT_location
	.long	1856                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x845:0x6 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_location
	.long	1864                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x84b:0x6 DW_TAG_variable
	.byte	28                              # DW_AT_location
	.long	1880                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x851:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	92
	.long	1888                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x858:0x6 DW_TAG_variable
	.byte	35                              # DW_AT_location
	.long	1896                            # DW_AT_abstract_origin
	.byte	45                              # Abbrev [45] 0x85e:0x21 DW_TAG_inlined_subroutine
	.long	1915                            # DW_AT_abstract_origin
	.byte	17                              # DW_AT_low_pc
	.long	.Ltmp140-.Ltmp136               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	87                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x86b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1919                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x872:0x6 DW_TAG_variable
	.byte	33                              # DW_AT_location
	.long	1927                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x878:0x6 DW_TAG_variable
	.byte	34                              # DW_AT_location
	.long	1935                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x882:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	92
	.byte	18                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x886:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	19                              # DW_AT_call_return_pc
	.byte	23                              # Abbrev [23] 0x88a:0x6 DW_TAG_call_site
	.long	2197                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x890:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	92
	.byte	21                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x895:0x27 DW_TAG_subprogram
	.byte	124                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	707                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x89d:0x5 DW_TAG_formal_parameter
	.long	1053                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x8a2:0x5 DW_TAG_formal_parameter
	.long	697                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x8a7:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x8ac:0x5 DW_TAG_formal_parameter
	.long	692                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x8b1:0x5 DW_TAG_formal_parameter
	.long	697                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x8b6:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0x8bc:0x4d DW_TAG_subprogram
	.byte	22                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	466                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x8c8:0xa DW_TAG_formal_parameter
	.byte	36                              # DW_AT_location
	.byte	116                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	466                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x8d2:0xa DW_TAG_formal_parameter
	.byte	37                              # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	466                             # DW_AT_decl_line
	.long	732                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x8dc:0xa DW_TAG_variable
	.byte	38                              # DW_AT_location
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x8e6:0x6 DW_TAG_call_site
	.long	2313                            # DW_AT_call_origin
	.byte	23                              # DW_AT_call_return_pc
	.byte	23                              # Abbrev [23] 0x8ec:0x6 DW_TAG_call_site
	.long	1344                            # DW_AT_call_origin
	.byte	24                              # DW_AT_call_return_pc
	.byte	23                              # Abbrev [23] 0x8f2:0x6 DW_TAG_call_site
	.long	1344                            # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	37                              # Abbrev [37] 0x8f8:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	26                              # DW_AT_call_return_pc
	.byte	23                              # Abbrev [23] 0x8fc:0x6 DW_TAG_call_site
	.long	1344                            # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	48                              # Abbrev [48] 0x902:0x6 DW_TAG_call_site
	.long	1344                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	28                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x909:0xf DW_TAG_subprogram
	.byte	125                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x90d:0x5 DW_TAG_formal_parameter
	.long	1734                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x912:0x5 DW_TAG_formal_parameter
	.long	732                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x918:0x5d DW_TAG_subprogram
	.byte	29                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	134                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	319                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x928:0xa DW_TAG_formal_parameter
	.byte	39                              # DW_AT_location
	.byte	116                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.long	274                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x932:0xa DW_TAG_formal_parameter
	.byte	40                              # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.long	732                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x93c:0x9 DW_TAG_formal_parameter
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.long	846                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x945:0xa DW_TAG_formal_parameter
	.byte	41                              # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.long	846                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x94f:0xa DW_TAG_variable
	.byte	42                              # DW_AT_location
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	489                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x959:0x11 DW_TAG_lexical_block
	.byte	30                              # DW_AT_low_pc
	.long	.Ltmp193-.Ltmp190               # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x95f:0xa DW_TAG_variable
	.byte	43                              # DW_AT_location
	.byte	146                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	493                             # DW_AT_decl_line
	.long	2543                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x96a:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	31                              # DW_AT_call_return_pc
	.byte	48                              # Abbrev [48] 0x96e:0x6 DW_TAG_call_site
	.long	2421                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	32                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x975:0x18 DW_TAG_subprogram
	.byte	126                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	319                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x97d:0x5 DW_TAG_formal_parameter
	.long	1734                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x982:0x5 DW_TAG_formal_parameter
	.long	732                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x987:0x5 DW_TAG_formal_parameter
	.long	846                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x98d:0x26 DW_TAG_subprogram
	.byte	33                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	135                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	557                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2483                            # DW_AT_type
                                        # DW_AT_external
	.byte	50                              # Abbrev [50] 0x99d:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	557                             # DW_AT_decl_line
	.long	1513                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x9a8:0xa DW_TAG_variable
	.byte	44                              # DW_AT_location
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	559                             # DW_AT_decl_line
	.long	1405                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x9b3:0x8 DW_TAG_typedef
	.long	584                             # DW_AT_type
	.byte	136                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x9bb:0x5 DW_TAG_const_type
	.long	1405                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x9c0:0x5 DW_TAG_pointer_type
	.long	2501                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x9c5:0x1a DW_TAG_subroutine_type
	.long	319                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x9ca:0x5 DW_TAG_formal_parameter
	.long	2527                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x9cf:0x5 DW_TAG_formal_parameter
	.long	732                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x9d4:0x5 DW_TAG_formal_parameter
	.long	2532                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x9d9:0x5 DW_TAG_formal_parameter
	.long	2538                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x9df:0x5 DW_TAG_pointer_type
	.long	225                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x9e4:0x5 DW_TAG_pointer_type
	.long	2537                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x9e9:0x1 DW_TAG_const_type
	.byte	7                               # Abbrev [7] 0x9ea:0x5 DW_TAG_pointer_type
	.long	1419                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x9ef:0x5 DW_TAG_const_type
	.long	319                             # DW_AT_type
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
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	612                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/lz/lz_encoder.c"       # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=129
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=161
.Linfo_string4:
	.asciz	"LZMA_MF_HC3"                   # string offset=174
.Linfo_string5:
	.asciz	"LZMA_MF_HC4"                   # string offset=186
.Linfo_string6:
	.asciz	"LZMA_MF_BT2"                   # string offset=198
.Linfo_string7:
	.asciz	"LZMA_MF_BT3"                   # string offset=210
.Linfo_string8:
	.asciz	"LZMA_MF_BT4"                   # string offset=222
.Linfo_string9:
	.asciz	"LZMA_RUN"                      # string offset=234
.Linfo_string10:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=243
.Linfo_string11:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=259
.Linfo_string12:
	.asciz	"LZMA_FINISH"                   # string offset=275
.Linfo_string13:
	.asciz	"LZMA_OK"                       # string offset=287
.Linfo_string14:
	.asciz	"LZMA_STREAM_END"               # string offset=295
.Linfo_string15:
	.asciz	"LZMA_NO_CHECK"                 # string offset=311
.Linfo_string16:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=325
.Linfo_string17:
	.asciz	"LZMA_GET_CHECK"                # string offset=348
.Linfo_string18:
	.asciz	"LZMA_MEM_ERROR"                # string offset=363
.Linfo_string19:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=378
.Linfo_string20:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=398
.Linfo_string21:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=416
.Linfo_string22:
	.asciz	"LZMA_DATA_ERROR"               # string offset=435
.Linfo_string23:
	.asciz	"LZMA_BUF_ERROR"                # string offset=451
.Linfo_string24:
	.asciz	"LZMA_PROG_ERROR"               # string offset=466
.Linfo_string25:
	.asciz	"LZMA_CHECK_NONE"               # string offset=482
.Linfo_string26:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=498
.Linfo_string27:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=515
.Linfo_string28:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=532
.Linfo_string29:
	.asciz	"unsigned long"                 # string offset=550
.Linfo_string30:
	.asciz	"__uint64_t"                    # string offset=564
.Linfo_string31:
	.asciz	"uint64_t"                      # string offset=575
.Linfo_string32:
	.asciz	"lz"                            # string offset=584
.Linfo_string33:
	.asciz	"coder"                         # string offset=587
.Linfo_string34:
	.asciz	"lzma_coder"                    # string offset=593
.Linfo_string35:
	.asciz	"code"                          # string offset=604
.Linfo_string36:
	.asciz	"lzma_ret"                      # string offset=609
.Linfo_string37:
	.asciz	"buffer"                        # string offset=618
.Linfo_string38:
	.asciz	"unsigned char"                 # string offset=625
.Linfo_string39:
	.asciz	"__uint8_t"                     # string offset=639
.Linfo_string40:
	.asciz	"uint8_t"                       # string offset=649
.Linfo_string41:
	.asciz	"size"                          # string offset=657
.Linfo_string42:
	.asciz	"__uint32_t"                    # string offset=662
.Linfo_string43:
	.asciz	"uint32_t"                      # string offset=673
.Linfo_string44:
	.asciz	"keep_size_before"              # string offset=682
.Linfo_string45:
	.asciz	"keep_size_after"               # string offset=699
.Linfo_string46:
	.asciz	"offset"                        # string offset=715
.Linfo_string47:
	.asciz	"read_pos"                      # string offset=722
.Linfo_string48:
	.asciz	"read_ahead"                    # string offset=731
.Linfo_string49:
	.asciz	"read_limit"                    # string offset=742
.Linfo_string50:
	.asciz	"write_pos"                     # string offset=753
.Linfo_string51:
	.asciz	"pending"                       # string offset=763
.Linfo_string52:
	.asciz	"find"                          # string offset=771
.Linfo_string53:
	.asciz	"len"                           # string offset=776
.Linfo_string54:
	.asciz	"dist"                          # string offset=780
.Linfo_string55:
	.asciz	"lzma_match"                    # string offset=785
.Linfo_string56:
	.asciz	"skip"                          # string offset=796
.Linfo_string57:
	.asciz	"hash"                          # string offset=801
.Linfo_string58:
	.asciz	"son"                           # string offset=806
.Linfo_string59:
	.asciz	"cyclic_pos"                    # string offset=810
.Linfo_string60:
	.asciz	"cyclic_size"                   # string offset=821
.Linfo_string61:
	.asciz	"hash_mask"                     # string offset=833
.Linfo_string62:
	.asciz	"depth"                         # string offset=843
.Linfo_string63:
	.asciz	"nice_len"                      # string offset=849
.Linfo_string64:
	.asciz	"match_len_max"                 # string offset=858
.Linfo_string65:
	.asciz	"action"                        # string offset=872
.Linfo_string66:
	.asciz	"lzma_action"                   # string offset=879
.Linfo_string67:
	.asciz	"hash_size_sum"                 # string offset=891
.Linfo_string68:
	.asciz	"sons_count"                    # string offset=905
.Linfo_string69:
	.asciz	"lzma_mf_s"                     # string offset=916
.Linfo_string70:
	.asciz	"lzma_mf"                       # string offset=926
.Linfo_string71:
	.asciz	"size_t"                        # string offset=934
.Linfo_string72:
	.asciz	"end"                           # string offset=941
.Linfo_string73:
	.asciz	"alloc"                         # string offset=945
.Linfo_string74:
	.asciz	"free"                          # string offset=951
.Linfo_string75:
	.asciz	"opaque"                        # string offset=956
.Linfo_string76:
	.asciz	"lzma_allocator"                # string offset=963
.Linfo_string77:
	.asciz	"options_update"                # string offset=978
.Linfo_string78:
	.asciz	"id"                            # string offset=993
.Linfo_string79:
	.asciz	"lzma_vli"                      # string offset=996
.Linfo_string80:
	.asciz	"options"                       # string offset=1005
.Linfo_string81:
	.asciz	"lzma_filter"                   # string offset=1013
.Linfo_string82:
	.asciz	"lzma_lz_encoder"               # string offset=1025
.Linfo_string83:
	.asciz	"mf"                            # string offset=1041
.Linfo_string84:
	.asciz	"next"                          # string offset=1044
.Linfo_string85:
	.asciz	"init"                          # string offset=1049
.Linfo_string86:
	.asciz	"uintptr_t"                     # string offset=1054
.Linfo_string87:
	.asciz	"lzma_code_function"            # string offset=1064
.Linfo_string88:
	.asciz	"lzma_end_function"             # string offset=1083
.Linfo_string89:
	.asciz	"get_check"                     # string offset=1101
.Linfo_string90:
	.asciz	"lzma_check"                    # string offset=1111
.Linfo_string91:
	.asciz	"memconfig"                     # string offset=1122
.Linfo_string92:
	.asciz	"update"                        # string offset=1132
.Linfo_string93:
	.asciz	"lzma_next_coder_s"             # string offset=1139
.Linfo_string94:
	.asciz	"lzma_next_coder"               # string offset=1157
.Linfo_string95:
	.asciz	"lzma_coder_s"                  # string offset=1173
.Linfo_string96:
	.asciz	"lzma_free"                     # string offset=1186
.Linfo_string97:
	.asciz	"lz_encoder_init"               # string offset=1196
.Linfo_string98:
	.asciz	"_Bool"                         # string offset=1212
.Linfo_string99:
	.asciz	"allocator"                     # string offset=1218
.Linfo_string100:
	.asciz	"lz_options"                    # string offset=1228
.Linfo_string101:
	.asciz	"before_size"                   # string offset=1239
.Linfo_string102:
	.asciz	"dict_size"                     # string offset=1251
.Linfo_string103:
	.asciz	"after_size"                    # string offset=1261
.Linfo_string104:
	.asciz	"match_finder"                  # string offset=1272
.Linfo_string105:
	.asciz	"lzma_match_finder"             # string offset=1285
.Linfo_string106:
	.asciz	"preset_dict"                   # string offset=1303
.Linfo_string107:
	.asciz	"preset_dict_size"              # string offset=1315
.Linfo_string108:
	.asciz	"lzma_lz_options"               # string offset=1332
.Linfo_string109:
	.asciz	"alloc_count"                   # string offset=1348
.Linfo_string110:
	.asciz	"lzma_alloc"                    # string offset=1360
.Linfo_string111:
	.asciz	"lzma_next_filter_init"         # string offset=1371
.Linfo_string112:
	.asciz	"lzma_init_function"            # string offset=1393
.Linfo_string113:
	.asciz	"lzma_filter_info_s"            # string offset=1412
.Linfo_string114:
	.asciz	"lzma_filter_info"              # string offset=1431
.Linfo_string115:
	.asciz	"fill_window"                   # string offset=1448
.Linfo_string116:
	.asciz	"pcoder"                        # string offset=1460
.Linfo_string117:
	.asciz	"in"                            # string offset=1467
.Linfo_string118:
	.asciz	"in_pos"                        # string offset=1470
.Linfo_string119:
	.asciz	"in_size"                       # string offset=1477
.Linfo_string120:
	.asciz	"ret"                           # string offset=1485
.Linfo_string121:
	.asciz	"move_window"                   # string offset=1489
.Linfo_string122:
	.asciz	"move_offset"                   # string offset=1501
.Linfo_string123:
	.asciz	"move_size"                     # string offset=1513
.Linfo_string124:
	.asciz	"lzma_bufcpy"                   # string offset=1523
.Linfo_string125:
	.asciz	"lzma_next_end"                 # string offset=1535
.Linfo_string126:
	.asciz	"lzma_next_filter_update"       # string offset=1549
.Linfo_string127:
	.asciz	"DW_ATE_unsigned_8"             # string offset=1573
.Linfo_string128:
	.asciz	"DW_ATE_unsigned_1"             # string offset=1591
.Linfo_string129:
	.asciz	"lzma_lz_encoder_memusage"      # string offset=1609
.Linfo_string130:
	.asciz	"lz_encoder_prepare"            # string offset=1634
.Linfo_string131:
	.asciz	"lzma_lz_encoder_init"          # string offset=1653
.Linfo_string132:
	.asciz	"lz_encode"                     # string offset=1674
.Linfo_string133:
	.asciz	"lz_encoder_end"                # string offset=1684
.Linfo_string134:
	.asciz	"lz_encoder_update"             # string offset=1699
.Linfo_string135:
	.asciz	"lzma_mf_is_supported"          # string offset=1717
.Linfo_string136:
	.asciz	"lzma_bool"                     # string offset=1738
.Linfo_string137:
	.asciz	"reserve"                       # string offset=1748
.Linfo_string138:
	.asciz	"old_size"                      # string offset=1756
.Linfo_string139:
	.asciz	"hash_bytes"                    # string offset=1765
.Linfo_string140:
	.asciz	"hs"                            # string offset=1776
.Linfo_string141:
	.asciz	"old_count"                     # string offset=1779
.Linfo_string142:
	.asciz	"new_count"                     # string offset=1789
.Linfo_string143:
	.asciz	"is_bt"                         # string offset=1799
.Linfo_string144:
	.asciz	"filters"                       # string offset=1805
.Linfo_string145:
	.asciz	"lz_init"                       # string offset=1813
.Linfo_string146:
	.asciz	"ret_"                          # string offset=1821
.Linfo_string147:
	.asciz	"out"                           # string offset=1826
.Linfo_string148:
	.asciz	"out_pos"                       # string offset=1830
.Linfo_string149:
	.asciz	"out_size"                      # string offset=1838
.Linfo_string150:
	.asciz	"reversed_filters"              # string offset=1847
.Linfo_string151:
	.asciz	"filters_null"                  # string offset=1864
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp2
	.quad	.Lfunc_begin1
	.quad	.Ltmp20
	.quad	.Ltmp58
	.quad	.Lfunc_begin2
	.quad	.Ltmp77
	.quad	.Ltmp84
	.quad	.Ltmp73
	.quad	.Ltmp79
	.quad	.Ltmp81
	.quad	.Ltmp87
	.quad	.Ltmp98
	.quad	.Ltmp108
	.quad	.Ltmp111
	.quad	.Lfunc_begin3
	.quad	.Ltmp133
	.quad	.Ltmp136
	.quad	.Ltmp125
	.quad	.Ltmp145
	.quad	.Ltmp152
	.quad	.Ltmp163
	.quad	.Lfunc_begin4
	.quad	.Ltmp175
	.quad	.Ltmp176
	.quad	.Ltmp177
	.quad	.Ltmp180
	.quad	.Ltmp182
	.quad	.Ltmp184
	.quad	.Lfunc_begin5
	.quad	.Ltmp190
	.quad	.Ltmp192
	.quad	.Ltmp201
	.quad	.Lfunc_begin6
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
